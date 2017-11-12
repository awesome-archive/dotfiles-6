#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import os.path

file_list = []
HOME = os.path.expanduser('~')
DOTFILES_HOME = os.path.join(HOME, "dotfiles")


def _get_file_list():
    for i in os.listdir(DOTFILES_HOME):
        if (i.startswith('.')):
            file_list.append(i)


def _file_path_check(file_path):
    if os.path.exists(file_path):
        is_dir = os.path.isdir(file_path)
        is_replace = input("文件 %s 已存在，是否替换？(y/N)" % file_path)
        if (is_replace.lower() != 'y'):
            return False
        else:
            if is_dir:
                os.rmdir(file_path)
            else:
                os.remove(file_path)
        return True


def _install():
    for i in file_list:
        src = os.path.join(DOTFILES_HOME, i)
        dest = os.path.join(HOME, i)

        if _file_path_check(dest):
            os.symlink(src, dest)
            print("已创建 %s 到 %s 的软链接" % (dest, src))


def main():
    _get_file_list()
    _install()


if __name__ == "__main__":
    main()
