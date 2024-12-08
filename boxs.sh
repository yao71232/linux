#!/bin/bash

echo "请选择要运行的脚本分组："
echo "1. 默认"
echo "2. 科学"
read -p "输入选项 (1 或 2): " group_choice

case $group_choice in
    1)
        echo "请选择要运行的脚本："
        echo "1. 安装依赖"
        echo "2. 综合工具X86"
        read -p "输入选项 (1 或 2): " script_choice
        case $script_choice in
            1)
                echo "运行脚本1"
                apt update && apt upgrade -y && apt-get install curl -y && apt-get install wget -y  && wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
                ;;
            2)
                echo "运行脚本2"
                wget -O box.sh https://raw.githubusercontent.com/BlueSkyXN/SKY-BOX/main/box.sh && chmod +x box.sh && clear && ./box.sh
                ;;
            *)
                echo "无效选项"
                ;;
        esac
        ;;
    2)
        echo "请选择要运行的脚本："
        echo "1. 脚本3"
        echo "2. 脚本4"
        read -p "输入选项 (1 或 2): " script_choice
        case $script_choice in
            1)
                echo "运行脚本3"
                # 在这里添加脚本3的命令
                ;;
            2)
                echo "运行脚本4"
                # 在这里添加脚本4的命令
                ;;
            *)
                echo "无效选项"
                ;;
        esac
        ;;
    *)
        echo "无效选项"
        ;;
esac
