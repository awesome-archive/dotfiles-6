#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import os.path
import shutil
import json

file_list = []
HOME = os.path.expanduser('~')
DOTFILES_HOME = os.path.join(HOME, "dotfiles")


def __get_file_list():
    for i in os.listdir(DOTFILES_HOME):
        if (i.startswith('.')):
            file_list.append(i)

def __file_path_check(file_path):
    if os.path.exists(file_path):
        is_replace = input("文件 %s 已存在，是否替换？(y/N)" % file_path)
        if (is_replace.lower() != 'y'):
            return False
        else:
            if os.path.isfile(file_path) or os.path.islink(file_path):
                os.remove(file_path)
            else:
                shutil.rmtree(file_path)
    return True


def __install():
    for i in file_list:
        src = os.path.join(DOTFILES_HOME, i)
        dest = os.path.join(HOME, i)

        if __file_path_check(dest):
            os.symlink(src, dest)
            print("已创建 %s 到 %s 的软链接" % (dest, src))


def __personalize():
    is_home = input("当前环境是否为个人使用？(Y/n) ")
    LISENCE_INFO_FILE = os.path.join(DOTFILES_HOME, "LICENSE")
    with open(LISENCE_INFO_FILE, "r") as fin:
        license = json.loads(fin.read())
    LISENCE_FILE = os.path.join(HOME, ".vim/pluginconfig/license.txt")
    with open(LISENCE_FILE, "w") as fout:
        if is_home.lower() == 'n':
            fout.write(license["work"])
        else:
            fout.write(license["personal"])


def main():
    __get_file_list()
    __install()
    __personalize()


if __name__ == "__main__":
    main()
