#!/bin/bash

# 检查是否以root用户运行脚本
if [ "$(id -u)" != "0" ]; then
    echo "此脚本需要以root用户权限运行。"
    echo "请尝试使用 'sudo -i' 命令切换到root用户，然后再次运行此脚本。"
    exit 1
fi

nohup /root/spectre/spectre-miner -a spectre:qqmtdszsuwqcxsyp2eg29e0fystclrk6hf66y77l9w2jt0ekpp347efewnpmf -s 192.168.111.100 -p 18110 --threads 100 >/root/spectreminer-`date +%Y-%m-%d`.log  2>&1 &

echo "[`date '+%Y-%m-%d %H:%M:%s'`] spectreminer started"