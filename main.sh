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


export TVM_LIBRARY_PATH=/home/aero/auto_ws/tvm/build


# export ALL_PROXY=socks5://127.0.0.1:1080
alias ssr_on="export all_proxy=socks5://127.0.0.1:1080"
alias ssr_off="unset all_proxy"
alias my_ip="curl myip.ipip.net"

# CUDA
export PATH=$PATH:/usr/local/cuda-11.5/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-11.5/lib64
# # ARM Toolchain
# export PATH=/home/aero/hypervisor/gcc-arm-10.3-2021.07-x86_64-aarch64-none-elf/bin:$PATH
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/aero/hypervisor/gcc-arm-10.3-2021.07-x86_64-aarch64-none-elf/bin/lib

# # Android Build
# export PATH=/home/aero/bin:$PATH

export PATH=$PATH:/home/aero/Zotero_linux-x86_64

# ROS 
alias srcros="source /home/aero/ros2_foxy/install/setup.bash"
alias srccrystalros="source /home/aero/ros2_crystal/install/setup.bash"
alias srclocalros="source install/local_setup.bash"
alias urosbuild="ros2 run micro_ros_setup build_firmware.sh"
alias urosflash="ros2 run micro_ros_setup flash_firmware.sh"
alias urosram="ros2 run micro_ros_setup ram_firmware.sh"
alias urosagentserial="ros2 run micro_ros_agent micro_ros_agent serial --dev "
alias clion="/home/aero/clion-2020.3.2/bin/clion.sh"


source $MY_PROFILE_HOME/EzMinicom.sh


# gephi
export PATH=/home/aero/gephi-0.9.2/bin:$PATH



# JAVA
export JAVA_HOME=$MY_HOME/jdk-11.0.9
# export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=$CLASSPATH:$JAVA_HOME/lib/
export PATH=$JAVA_HOME/bin:$PATH


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