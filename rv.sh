# RISCV TOOLS
export RISCV_HOME=$MY_HOME/riscv

# 这个是RocketChip自带的工具链 仅有rv64imac
export ROCKET_GCC=$RISCV_HOME/rvtools # 这个是RocketChip自带的工具链 仅有rv64imac
export RISCV=$ROCKET_GCC
export PATH=$RISCV/bin:$PATH # 使用rocketchip的工具链

# SiFive的工具链 multilib
# export SIFIVE_GCC=$RISCV_HOME/riscv64-unknown-elf-gcc-8.3.0-2019.08.0-x86_64-linux-ubuntu14
# export SIFIVE_OPENOCD=$RISCV_HOME/riscv-openocd-0.10.0-2019.05.1-x86_64-linux-ubuntu14
# export RISCV=$RISCV_HOME/riscv64-unknown-elf-gcc-8.3.0-2019.08.0-x86_64-linux-ubuntu14
# export RISCV_PATH=$SIFIVE_GCC
# export RISCV_OPENOCD_PATH=$SIFIVE_OPENOCD
# export PATH=$SIFIVE_GCC:$SIFIVE_OPENOCD:$PATH
# 使用SiFive的工具链

# verilator
# export VERILATOR_ROOT=$RISCV_HOME/verilator-3.904
export VERILATOR_ROOT=$RISCV_HOME/verilator-4
export PATH=$VERILATOR_ROOT/bin:$PATH

# Vivado
export VIVADO_HOME=$MY_HOME/xilinx/Vivado/2018.2
export PATH=$VIVADO_HOME/bin:$PATH
alias suvivado='/home/rv/xilinx/Vivado/2018.2/bin/vivado'



# Scala
export PATH=$MY_HOME/scala-2.12.4:$PATH