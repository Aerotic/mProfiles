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

# export ALL_PROXY=socks5://127.0.0.1:1080

alias srcros="source /opt/ros/foxy/setup.sh"
alias srclocalros="source install/local_setup.bash"
alias urosbuild="ros2 run micro_ros_setup build_firmware.sh"
alias urosflash="ros2 run micro_ros_setup flash_firmware.sh"
alias urosram="ros2 run micro_ros_setup ram_firmware.sh"
alias urosagentserial="ros2 run micro_ros_agent micro_ros_agent serial --dev "

source $MY_PROFILE_HOME/EzMinicom.sh


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