

import argparse
import logging
import coloredlogs
from tqdm import tqdm
import os
from shutil import copyfile


logger = logging.getLogger(__name__)
coloredlogs.install(level=logging.INFO)
coloredlogs.install(level=logging.DEBUG)

def msg():
    msg = "-------------------------------------------------\n"
    msg += "This program is an utility to get object files into project \n"
    msg += "-------------------------------------------------"
    return msg

def find_object_files(src_dir):
    obj_file_list = []
    directories = os.listdir(src_dir)
    for item in directories:
        item = os.path.join(src_dir, item)
        if os.path.isdir(item):
            obj_file_list.extend(find_object_files(item + os.sep))
        elif os.path.isfile(item) and item.endswith('.oo'):
            continue
        elif os.path.isfile(item) and item.endswith('.o'):
            obj_file_list.append(item)
    return obj_file_list

def store_object_files(obj_file_list, dst_dir):
    pbar = tqdm(total=len(obj_file_list))
    for file in obj_file_list:
        new_file = file.replace("/", "+")
        copyfile(file, os.path.join(dst_dir, new_file))
        pbar.update()
    pbar.close()

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description=msg)
    parser.add_argument("-d", "--dir", help="Root path of the directory to scan")
    parser.add_argument("-s", "--store", help="Root path of the directory to store object files")

    try:
        args = parser.parse_args()
    except:
        parser.print_help()
        print(debug_msg())
        exit(0)
    logger.info("[*] begin scan object files")
    obj_file_list = find_object_files(args.dir)
    logger.info("[*] find %d object files", len(obj_file_list))

    logger.info("[*] begin copy object files")
    store_object_files(obj_file_list, args.store)
    logger.info("[*] copy %d object files", len(obj_file_list))
    
