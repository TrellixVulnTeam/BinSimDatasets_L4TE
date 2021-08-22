
#-*- coding:utf-8 -*-
import argparse
import logging
import coloredlogs
from tqdm import tqdm
import os
from shutil import copyfile
import stat

logger = logging.getLogger(__name__)
coloredlogs.install(level=logging.INFO)
coloredlogs.install(level=logging.DEBUG)

# 判断文件是否是elf文件
def is_ELFfile(filepath):
    if not os.path.exists(filepath):
        logger.info('file path {} doesnot exits'.format(filepath))
        return False
    # 文件可能被损坏，捕捉异常
    try:
        FileStates = os.stat(filepath)

        FileMode = FileStates[stat.ST_MODE]
        if not stat.S_ISREG(FileMode) or stat.S_ISLNK(FileMode):  # 如果文件既不是普通文件也不是链接文件
            return False
        with open(filepath, 'rb') as f:
            header = (bytearray(f.read(4))[1:4]).decode(encoding="utf-8")
            # logger.info("header is {}".format(header))
            if header in ["ELF"]:
                # print header
                return True
    except UnicodeDecodeError as e:
        # logger.info("is_ELFfile UnicodeDecodeError {}".format(filepath))
        # logger.info(str(e))
        pass

    return False

def find_elf_files(src_dir):
    elf_file_list = []
    directories = os.listdir(src_dir)
    for item in directories:
        item = os.path.join(src_dir, item)
        if os.path.isdir(item):
            elf_file_list.extend(find_elf_files(item + os.sep))
        elif os.path.isfile(item) and (item.endswith('.oo') or item.endswith('.o')):
            continue
        elif is_ELFfile(item):
            elf_file_list.append(item)
    return elf_file_list

def store_elf_files(elf_file_list, dst_dir):
    pbar = tqdm(total=len(elf_file_list))
    for file in elf_file_list:
        new_file = file.replace("/", "+")
        copyfile(file, os.path.join(dst_dir, new_file))
        pbar.update()
    pbar.close()

if __name__ == '__main__':

    parser = argparse.ArgumentParser()
    parser.add_argument("-d", "--dir", help="Root path of the directory to scan")
    parser.add_argument("-s", "--store", help="Root path of the directory to store elf files")

    args = parser.parse_args()

    logger.info("[*] begin scan elf files")
    elf_file_list = find_elf_files(args.dir)
    logger.info("[*] find %d elf files", len(elf_file_list))

    logger.info("[*] begin copy elf files")
    store_elf_files(elf_file_list, args.store)
    logger.info("[*] copy %d elf files", len(elf_file_list))
    
