#-*- coding:utf-8 -*-

import csv
import math
import numpy as np
from sklearn.metrics.pairwise import *
from tqdm import tqdm

"""
统计函数及其包含的指令集
:param file_name: csv文件的名字 
:return: 字典：{f1:{ins1, ins2, ...}, f2:{ins2, ins3, ...}}
"""
def get_func_instr(file_name):
    with open(file_name,'r') as f:
        reader = csv.reader(f)
        head_1 = next(reader)

    head = list(head_1)
    print "[*] header len: ", len(head)

    func2inst = dict()

    with open(file_name, "r") as f:
        csv_reader = csv.DictReader(f)
        for row in csv_reader:
            tmp_set = set()
            func_name = row["location"].split("/")[-1].split(".")[0]
            for k in head:
                v = row[k]
                if len(v)>0:
                    tmp_set.add(k)
                    
            if func2inst.has_key(func_name):
                func2inst[func_name] = func2inst[func_name].union(tmp_set)
            else:
                func2inst[func_name] = tmp_set
    return func2inst

"""
统计函数及其包含的指令出现的次数
:param file_name: csv文件的名字 
:return: 字典：{f1:{ins1: 12}, f2:{ins2:1}}
"""
def get_func_instr_times(file_name):
    func_instr_dict = dict()
    with open(file_name, "r") as f:
        csv_reader = csv.DictReader(f)
        for row in csv_reader:
            file_name = ""
            for item in row["location"].split("/"):
                if ".c" in item:
                    file_name = item
            if len(file_name) == 0:
                file_name = null   

            func_name = row["location"].split("/")[-1].split(".")[0]

            func_name += "+"
            func_name += file_name
     
            if func_instr_dict.has_key(func_name):
                ddg_dot_path = ""
                tmp_dict = dict()
                for k,v in row.items():
                    if k == "location" and func_name.split("+")[0] in v:
                        ddg_dot_path = v.split("/")[-1] 
                        continue
                    if len(v) > 0:
                        tmp_dict[k] = float(v)
                func_instr_dict[func_name][ddg_dot_path] = tmp_dict
            else:
                func_instr_dict[func_name] = dict()
                ddg_dot_path = ""
                tmp_dict = dict()
                for k,v in row.items():
                    if k == "location" and func_name.split("+")[0] in v:
                        ddg_dot_path = v.split("/")[-1] 
                        continue
                    if len(v) > 0:
                        tmp_dict[k] = float(v)
                func_instr_dict[func_name][ddg_dot_path] = tmp_dict

    # return func_instr_dict
    return norm_func_dict(func_instr_dict)



def get_func_instr_times_old(file_name):
    func_instr_dict = dict()

    with open(file_name, "r") as f:
        csv_reader = csv.DictReader(f)
        cnt = 0
        for i in csv_reader:
            cnt += 1
        pbar = tqdm(total=cnt)

    with open(file_name, "r") as f:
        csv_reader = csv.DictReader(f)

        for row in csv_reader:
            file_name = ""
            for item in row["location"].split("/"):
                if ".c" in item:
                    file_name = item
            if len(file_name) == 0:
                file_name = null   

            func_name = row["location"].split("/")[-1].split(".")[0]

            func_name += "+"
            func_name += file_name
    
            ## 向量简单相加
            if func_instr_dict.has_key(func_name):
                for k,v in row.items():
                    if k == "location":
                        continue
                    if len(v) > 0:
                        if func_instr_dict[func_name].has_key(k):
                            func_instr_dict[func_name][k] += float(v) 
                        else:
                            func_instr_dict[func_name][k] = float(v)
            else:
                func_instr_dict[func_name] = dict()
                for k,v in row.items():
                    if k == "location":
                        continue
                    if len(v) > 0:
                        func_instr_dict[func_name][k] = float(v)
            pbar.update()
    pbar.close()
    # return func_instr_dict
    return norm_func_dict(func_instr_dict)
    
"""
    归一化处理逻辑
"""
def norm_func_dict(func_instr_dict):
    ins_tmp_set = set()
    for k,v in func_instr_dict.items():
        ins_tmp_set.update(v.keys())

    for ins in ins_tmp_set:
        vector_tmp = list()
        for k,v in func_instr_dict.items():
            if v.has_key(ins):
                vector_tmp.append(int(v[ins]))
            else:
                vector_tmp.append(0)
        vector_tmp = norm_vector(vector_tmp)
        
        cnt = 0
        for k,v in func_instr_dict.items():
            if vector_tmp[cnt] != 0:
                v[ins] = vector_tmp[cnt]
            cnt += 1
    return func_instr_dict

"""
    向量归一化
"""
def norm_vector(vector):
    max_value = max(vector)
    min_value = min(vector)
    if max_value == min_value:
        return vector
    tmp = list()
    for i in vector:
        tmp.append(float((i-min_value))/(max_value-min_value))
    return tmp

    # tmp = np.mat(vector)
    # return (tmp - np.min(tmp))/(np.max(tmp) - np.min(tmp))


"""
计算两个向量之间的余弦相似度
:param vector_a: 向量 a 
:param vector_b: 向量 b
:return: sim
"""
def cos_sim(a, b):
    vector_a = []
    vector_b = []
    vector_c = []
    for i in a:
        vector_a.append(float(i))
    for i in b:
        vector_b.append(float(i))

    vector_c.append(vector_a)
    vector_c.append(vector_b)

    ans_d = cosine_similarity(vector_c)

    # vector_a = np.mat(vector_a)
    # vector_b = np.mat(vector_b)

    # num = float(vector_a * vector_b.T)
    # denom = np.linalg.norm(vector_a) * np.linalg.norm(vector_b)
    # cos = num / denom

    return ans_d[0][1]

def caculate_sim_one_hot(func_1, func_1_inst, func_2, func_2_inst):
    tmp_set = func_1_inst.union(func_2_inst)
    vector_1 = list()
    vector_2 = list()
    for item in tmp_set:
        if item in func_1_inst:
            vector_1.append(1)
        else:
            vector_1.append(0)

        if item in func_2_inst:
            vector_2.append(1)
        else:
            vector_2.append(0)

    key_str = str(func_1+"&"+func_2+" sim: ")
    sim_value = cos_sim(vector_1, vector_2)

    # if "do_name_ex" in func_1 and "do_print_ex" in func_2:
    #     print func_1, func_2
    #     print tmp_set
    #     print vector_1
    #     print vector_2
    #     print sim_value
    #     exit(0)

    return key_str, sim_value

def caculate_sim_times(func_1, func_1_inst_times, func_2, func_2_inst_times):
    tmp_list = list(set(list(func_1_inst_times.keys())).union(set(list(func_2_inst_times.keys()))))
    vector_1 = [0]*len(tmp_list)
    vector_2 = [0]*len(tmp_list)

    for item in tmp_list:
        if func_1_inst_times.has_key(item):
            vector_1[tmp_list.index(item)] = func_1_inst_times[item]

        if func_2_inst_times.has_key(item):
            vector_2[tmp_list.index(item)] = func_2_inst_times[item]

    # print vector_1
    # print vector_2

    key_str = str(func_1.split("+")[1]+"_"+func_2.split("+")[1]+"+"+func_1.split("+")[0]+"&"+func_2.split("+")[0]+" sim: ")
    sim_value = cos_sim(vector_1, vector_2)

    return key_str, sim_value
    # return sim_value


def norm_sim_times(f1_path, f2_path, new_csv, target_list):
    func_1_insts = get_func_instr_times_old(f1_path)
    print "[*] func_1_insts's length: ", len(func_1_insts)

    func_2_insts = get_func_instr_times_old(f2_path)
    print "[*] func_2_insts's length: ", len(func_2_insts)

    func_sim_times = dict()
    for k1,v1 in func_1_insts.items():
        for k2,v2 in func_2_insts.items():
            tmp_str = (k1.split("+")[0]).split("_ODD_")[1]+(k2.split("+")[0]).split("_ODD_")[1]
            # if tmp_str in target_list:
            if len(tmp_str) > 0:
                cnt = 0
                for k3,v3 in v1.items():
                    for k4,v4 in v2.items():
                        value = caculate_sim_times(k3, v3, k4, v4)
                        if k3 == k4:
                            print k3, " ", k4, " ", value
                        if value > 0.8:
                            cnt += 1

                key_str = str(k1.split("+")[1]+"_"+k2.split("+")[1]+"+"+k1.split("+")[0]+"&"+k2.split("+")[0]+" count: ")
                func_sim_times[key_str] = str(cnt)+"_"+str(len(v1))+"_"+str(len(v2))
                # print func_sim_times[key_str]

    ans = sorted(func_sim_times.items(), key=lambda item:item[1], reverse=True)
    
    head = list()
    head.append("file_name")
    head.append(f1_path.split(".")[0])
    head.append(f2_path.split(".")[0])
    head.append("count")

    with open(new_csv, 'w') as f:
        w = csv.DictWriter(f, head)
        w.writeheader()

        for item in ans:
            tmp_dict = dict()
            tmp_dict["file_name"] = item[0].split("+")[0]
            tmp_dict[f1_path.split(".")[0]] = item[0].split("&")[0].split("_ODD_")[1]
            tmp_dict[f2_path.split(".")[0]] = item[0].split("&")[1].split("_ODD_")[1].split(" count")[0]
            tmp_dict["count"] = item[1]
            w.writerow(tmp_dict)

def sim_times_old(f1_path, f2_path, new_csv, target_list):
    func_1_insts = get_func_instr_times_old(f1_path)
    print "[*] func_1_insts's length: ", len(func_1_insts)

    func_2_insts = get_func_instr_times_old(f2_path)
    print "[*] func_2_insts's length: ", len(func_2_insts)

    cnt = 0
    func_sim_times = dict()
    pbar = tqdm(total=(len(func_1_insts)*len(func_2_insts)))
    for k1,v1 in func_1_insts.items():
        for k2,v2 in func_2_insts.items():
            if len(v1) > 0 and len(v2) > 0:
                key, value = caculate_sim_times(k1, v1, k2, v2)
                func_sim_times[key] = value
            pbar.update()
    pbar.close()

    ans = sorted(func_sim_times.items(), key=lambda item:item[1], reverse=True)
    
    head = list()
    head.append("file_name")
    head.append(f1_path.split(".")[0])
    head.append(f2_path.split(".")[0])
    head.append("sim_value")

    with open(new_csv, 'w') as f:
        w = csv.DictWriter(f, head)
        w.writeheader()

        for item in ans:
            tmp_dict = dict()
            if item[1] > 0.1:
                tmp_dict["file_name"] = item[0].split("+")[0]
                tmp_dict[f1_path.split(".")[0]] = item[0].split("&")[0].split("_ODD_")[1]
                tmp_dict[f2_path.split(".")[0]] = item[0].split("&")[1].split("_ODD_")[1].split(" sim")[0]
                tmp_dict["sim_value"] = item[1]
                w.writerow(tmp_dict)

def sim_one_hot(f1_path, f2_path, new_csv):
    ans_101f = get_func_instr(f1_path)
    print "[*] ans_times_101f's length: ", len(ans_101f)

    ans_101g = get_func_instr(f2_path)
    print "[*] ans_times_101g's length: ", len(ans_101g)

    func_sim_one_hot = dict()
    for k1,v1 in ans_101f.items():
        for k2,v2 in ans_101g.items():
            key, value = caculate_sim_one_hot(k1, v1, k2, v2)
            func_sim_one_hot[key] = value
    # print func_sim_one_hot

    # ans = sorted(func_sim_one_hot.items(), key=lambda item:item[1], reverse=True)

    # head = list()
    # head.append(f1_path.split(".")[0])
    # head.append(f2_path.split(".")[0])
    # head.append("sim_value")

    # with open(new_csv, 'w') as f:
    #     w = csv.DictWriter(f, head)
    #     w.writeheader()

    #     for item in ans:
    #         tmp_dict = dict()
    #         if item[1] > 0.6:
    #             tmp_dict[f1_path.split(".")[0]] = item[0].split("&")[0].split("_ODD_")[1]
    #             tmp_dict[f2_path.split(".")[0]] = item[0].split("&")[1].split("_ODD_")[1].split(" sim")[0]
    #             tmp_dict["sim_value"] = item[1]
    #             w.writerow(tmp_dict)
    return 1


def pre_process(file_name):
    with open(file_name,'r') as f:
        reader = csv.reader(f)
        head_1 = next(reader)

    func_list = list()
    with open(file_name, "r") as f:
        csv_reader = csv.DictReader(f)
        for row in csv_reader:
            func_name = row["func_name"]
            func_list.append(func_name)

    return func_list 

if __name__ == "__main__":


    target_list = pre_process("/root/FICS/analysis_dataset/afs_g2v/413_norm+4009_file_name_openssl_libressl_3.3.3_times.csv")
    # print len(target_list)
    # exit(0)

    # norm_sim_times("/root/FICS/afs_g2v_datasets/openssl_101f_512/_ODD_whole1_afs_G2v.csv", 
    #         "/root/FICS/afs_g2v_datasets/libressl_3.3.3_512/_ODD_whole1_afs_G2v.csv",
    #         "/root/FICS/analysis_dataset/afs_g2v/512_match_pair_413_g2v_sim_openssl_101f_libressl_3.3.3.csv", target_list)

    # sim_times_old("101ftmp.csv", "101gtmp.csv", "norm_+40+80openssl_1010f_libressl_333.csv", target_list)
    # sim_times_old("openssl_101f.csv", "libressl_3.3.3.csv", "norm_+40+80openssl_1010f_libressl_333.csv", target_list)

    sim_times_old("_ODD_whole1_afs_NN.csv", "_ODD_whole2_afs_NN.csv", "11.csv", target_list)

    # sim_times("/root/FICS/analysis_dataset/afs_g2v/tmp1.csv", 
    #         "/root/FICS/analysis_dataset/afs_g2v/tmp2.csv",
    #         "/root/FICS/analysis_dataset/afs_g2v/tmp3.csv", target_list)

    # sim_one_hot("openssl_101f.csv", "libressl_3.3.3.csv", "2h_file_name_openssl_libressl_3.3.3_times.csv")



