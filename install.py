#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import os.path
import shutil
import time

file_list = []
ignore_list = [".git", ".gitignore"]
template_list = ["license", "gitconfig"]
HOME = os.path.expanduser('~')
DOTFILES_HOME = os.path.join(HOME, "dotfiles")


def __get_file_list():
    for i in os.listdir(DOTFILES_HOME):
        if (i.startswith('.') and i not in ignore_list):
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


# 实例化模板
def __instantiation():
    name = input("姓名: ")
    corporation = input("组织名: ")
    mail = input("邮箱: ")
    year = time.localtime(time.time()).tm_year
    for i in template_list:
        src = os.path.join(DOTFILES_HOME, i)
        dest = os.path.join(HOME, "." + i)

        with open(src, 'r') as fin:
            filedata = fin.read()

        filedata = filedata.replace('`Name`', name)
        filedata = filedata.replace('`Corporation`', corporation)
        filedata = filedata.replace('`Mail`', mail)
        filedata = filedata.replace('`Year`', str(year))

        with open(dest, 'w') as fout:
            fout.write(filedata)


def main():
    __get_file_list()
    __install()
    __instantiation()


if __name__ == "__main__":
    main()
