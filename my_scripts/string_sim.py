from strsimpy.levenshtein import Levenshtein
import pickle
import csv
import argparse

# from rich.progress import track

LOCAL_PYPI_TRIE = "assets/pypi-packages-trietree.pkl"
DEFAULT_PICKLE_PROTOCOL = 5


class TrieNode(object):
    # The Trie data structure keeps a set of words, organized with one node for
    # each letter. Each node has a branch for each letter that may follow it in the
    # set of words.

    def __init__(self):
        # TODO: addd homophones support
        self.word = ""
        self.children = {}

    def __getitem__(self, letter):
        return self.children[letter]

    def __str__(self):
        return self.word

    def __iter__(self):
        return iter(self.children)


class TrieTree(object):
    def __init__(self):
        self.root = TrieNode()

    def __getitem__(self, word):
        return self.get(word)

    def __contains__(self, word):
        return self.exists(word)

    def get(self, word, default=None):
        node = self.root
        for letter in word:
            if letter not in node.children:
                return default
            node = node[letter]
        return node

    def add(self, word):
        node = self.root
        for letter in word:
            if letter not in node.children:
                node.children[letter] = TrieNode()
            node = node.children[letter]
        node.word = word

    def exists(self, word, strict=True):
        node = self[word]
        if strict:
            return True if node.word else False
        else:
            return False if node is None else True

    def load_pickle(self, path=LOCAL_PYPI_TRIE):
        with open(path, "rb") as f:
            self.root = pickle.load(f)

    def dump_pickle(self, path=LOCAL_PYPI_TRIE):
        with open(path, "wb") as f:
            pickle.dump(self.root, f, protocol=DEFAULT_PICKLE_PROTOCOL)

    def load_file(self, path):
        with open(path, "r") as f:
            words = f.read().splitlines()
            self.load_words(words)

    def load_words(self, words):
        # for word in track(words, description="Loading words into TrieTree..."):
        for word in words:
            self.add(word.strip())

    def search(self, word, min_cost=1, max_cost=1):
        results = []
        currentRow = range(len(word) + 1)

        def _recursive_search(letter, node, previousRow):
            columns = len(word) + 1
            currentRow = [previousRow[0] + 1]

            # Build one row for the letter, with a column for each letter in the target
            # word, plus one for the empty string at column 0
            for column in range(1, columns):

                insertCost = currentRow[column - 1] + 1
                deleteCost = previousRow[column] + 1

                if word[column - 1] != letter:
                    replaceCost = previousRow[column - 1] + 1
                else:
                    replaceCost = previousRow[column - 1]

                currentRow.append(min(insertCost, deleteCost, replaceCost))

            # if the last entry in the row indicates the optimal cost is less than the
            # maximum cost, and there is a word in this trie node, then add it.
            if currentRow[-1] in range(min_cost, max_cost + 1) and node.word:
                results.append((node.word, currentRow[-1]))

            # if any entries in the row are less than the maximum cost, then
            # recursively search each branch of the trie
            if min(currentRow) <= max_cost:
                for letter in node:
                    _recursive_search(letter, node[letter], currentRow)

        node = self.root
        for letter in node:
            _recursive_search(letter, node[letter], currentRow)

        return results


def get_strsim_csv(file_path, lib1_name, lib2_name, new_csv):
    tmp_dict_list = list()
    with open(file_path, "r") as f:
        csv_reader = csv.DictReader(f)
        for row in csv_reader: 
            # tree = TrieTree()
            # tree.add(row[lib1_name])
            # sim_ans = tree.search(row[lib2_name], max_cost=20)

            levenshtein = Levenshtein()
            ans_len = levenshtein.distance(row[lib1_name], row[lib2_name])
            if ans_len < 2:
                tmp_dict = dict()
                tmp_dict["file_name"] = row["file_name"]
                tmp_dict[lib1_name] = row[lib1_name]
                tmp_dict[lib2_name] = row[lib2_name]
                tmp_dict["sim_value"] = row["sim_value"]
                tmp_dict_list.append(tmp_dict)

    head = list()
    head.append("file_name")
    head.append(lib1_name)
    head.append(lib2_name)
    head.append("sim_value")

    with open(new_csv, 'w') as f:
        w = csv.DictWriter(f, head)
        w.writeheader()

        for item in tmp_dict_list:
            w.writerow(item)

if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument("-old", "--old_csv", help="old file of csv")
    parser.add_argument("-new", "--new_csv", help="new file of csv")
    parser.add_argument("-lib1", "--lib1_name", help="lib1 name")
    parser.add_argument("-lib2", "--lib2_name", help="lib2 name")

    args = parser.parse_args()

    get_strsim_csv(args.old_csv, args.lib1_name, args.lib2_name, args.new_csv)


