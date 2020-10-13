#!/bin/bash
# -*- coding:utf-8 -*-
#
# Filename: main.sh
# Created Date: Thursday, November 1st 2018, 10:11:08 pm
# Author: Aero
# Usage: 个人配置文件载入主文件     
#        
# -----
# Last Modified: Sun Dec 02 2018
# Modified By: Aero
# -----
# HISTORY:
# Date      	By	Comments
# ----------	---	----------------------------------------------------------
#

export ALL_PROXY=socks5://127.0.0.1:1080


#git
if [ -f $MY_PROFILE_HOME/git_conf.sh ]; then
    . $MY_PROFILE_HOME/git_conf.sh
else
    echo -n "\033[31m Fail to load setting of "
    echo "\033[34m Git"
    echo -n "\033[31m Cannot find file "
    echo "\033[34m $MY_PROFILE_HOME/git_conf.sh\n"
fi


#various
if [ -f $MY_PROFILE_HOME/various_conf.sh ]; then
    . $MY_PROFILE_HOME/various_conf.sh
else
    echo -n "\033[31m Fail to load setting of "
    echo "\033[34m various"
    echo -n "\033[31m Cannot find file "
    echo "\033[34m $MY_PROFILE_HOME/various_conf.sh\n"
fi

#texlive
if [ -f $MY_PROFILE_HOME/rv.sh ]; then
    . $MY_PROFILE_HOME/rv.sh
else
    echo -n "\033[31m Fail to load setting of "
    echo "\033[34m RISCV ENV"
    echo -n "\033[31m Cannot find file "
    echo "\033[34m $MY_PROFILE_HOME/rv.sh\n"
fi