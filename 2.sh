#!/bin/bash

echo "请选择要运行的脚本分组："
echo "1. Cloudflare WARP"
echo "2. 中转"
read -p "输入选项 (1 或 2): " group_choice

case $group_choice in
    1)
        echo "请选择要运行的脚本："
        echo "1. WARP集合X86"
        echo "2. WARP集合arm"
        echo "3. fscarmen / warp"
        echo "4. CFwarp"
        echo "5. warp-go"
        read -p "输入选项 (1 或 2或其他): " script_choice
        case $script_choice in
            1)
                echo "运行 WARP集合X86"
                wget -N --no-check-certificate https://raw.githubusercontent.com/YG-tsj/Oracle-warp/main/multiX86.sh && chmod +x multiX86.sh && ./multiX86.sh
                ;;
            2)
                echo "运行 WARP集合arm"
                wget -N --no-check-certificate https://raw.githubusercontent.com/YG-tsj/Oracle-warp/main/multiARM.sh && chmod +x multiARM.sh && ./multiARM.sh
                ;;
            3)
                echo "运行 fscarmen / warp"
                wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
            4)
                echo "运行 CFwarp"
                wget -N --no-check-certificate https://gitlab.com/rwkgyg/CFwarp/raw/main/CFwarp.sh && bash CFwarp.sh                  
            5)
                echo "运行 warp-go"
                wget -N https://raw.githubusercontent.com/fscarmen/warp/main/warp-go.sh && bash warp-go.sh
                ;;               
            *)
                echo "无效选项"
                ;;
        esac
        ;;               
    2)
        echo "请选择要运行的脚本："
        echo "1. Gost 隧道"
        echo "2. iptables"
        echo "3. 极光面板"
        echo "4. zerotier管理端"
        echo "5. 闲蛋面板"
        read -p "输入选项 (1 或 2或其他): " script_choice
        case $script_choice in
            1)
                echo "运行 Gost 隧道"
                wget --no-check-certificate -O gost.sh https://raw.githubusercontent.com/KANIKIG/Multi-EasyGost/master/gost.sh && chmod +x gost.sh && ./gost.sh
                ;;
            2)
                echo "运行 iptables"
                wget --no-check-certificate -qO natcfg.sh https://raw.githubusercontent.com/arloor/iptablesUtils/master/natcfg.sh && bash natcfg.sh
                ;;
            3)
                echo "运行 极光面板"
                bash <(curl -fsSL https://raw.githubusercontent.com/Aurora-Admin-Panel/deploy/main/install.sh)
                ;;
            4)
                echo "运行 zerotier管理端"
                docker run --restart=always -d --name ztncui -e HTTP_PORT=4000 -e HTTP_ALL_INTERFACES=yes -e ZTNCUI_PASSWD=Peizhi#71232 -p 14000:4000 keynetworks/ztncui
                ;;
            5)
                echo "运行 闲蛋面版"
                wget -P /etc/xdzz https://sh.xdmb.xyz/xiandan/xd.mv.db && docker run --restart=always --name=xiandan -v /etc/xdzz:/xiandan -d -p 12080:8080 docker.xdmb.xyz/xiandan/release:latest
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
