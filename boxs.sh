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
        echo "3. 综合工具arm"
        echo "4. 编辑SSH"
        echo "5. 重启SSH"
        echo "6. 关闭防火墙"
        echo "7. 同步服务器北京时间"
        echo "8. 重启cron服务"
        echo "9. 密钥文件权限"
        echo "10. screen安装"
        echo "11. screen某个窗口"
        echo "12. 恢复screen窗口"
        echo "13. 增加swap"
        echo "14. Systemd 服务创建工具"
        read -p "输入选项 (1 或 2或其他): " script_choice
        case $script_choice in
            1)
                echo "运行安装依赖"
                apt update && apt upgrade -y && apt-get install curl -y && apt-get install wget -y  && wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
                ;;
            2)
                echo "运行综合工具X86"
                wget -O box.sh https://raw.githubusercontent.com/BlueSkyXN/SKY-BOX/main/box.sh && chmod +x box.sh && clear && ./box.sh
                ;;
            3)
                echo "运行综合工具arm"
                wget -O box.sh https://raw.githubusercontent.com/BlueSkyXN/SKY-BOX/main/armbox.sh && chmod +x box.sh && clear && ./box.sh
                ;;
            4)
                echo "运行编辑SSH"
                vi /etc/ssh/sshd_config
                ;;
            5)
                echo "运行重启SSH"
                service sshd restart
                ;;
             6)
                echo "运行关闭防火墙"
                ufw disable
                ;;
            7)
                echo "运行同步服务器北京时间"
                timedatectl set-timezone Asia/Shanghai
                ;;
            8)
                echo "运行重启cron服务"
                /etc/init.d/cron restart
                ;;
            9)
                echo "运行密钥文件权限"
                chmod 600 ~/.ssh/authorized_keys && chmod 700 ~/.ssh && clear && ./box.sh
                ;;
            10)
                echo "运行screen安装"
                apt-get install screen -y
                ;;
            11)
                echo "运行screen某个窗口1"
                screen -S 1
                ;;
            12)
                echo "运行恢复screen窗口1"
                screen -r 1
                ;;
            13)
                echo "运行增加swap"
                wget https://raw.githubusercontent.com/sduwfc/note/master/swap.sh && bash swap.sh
                ;;
            14)
                echo "运行Systemd 服务创建工具"
                wget https://raw.githubusercontent.com/ours1505/systemdc/refs/heads/main/main.py -O /usr/bin/systemdc
chmod +x /usr/bin/systemdc && systemdc
                ;;               
            *)
                echo "无效选项"
                ;;
        esac
        ;;
    2)
        echo "请选择要运行的脚本："
        echo "1. shellclash"
        echo "2. v2ray-agent"
        echo "3. X-ui"
        echo "4. hysteria 2"
        read -p "输入选项 (1 或 2或其他): " script_choice
        case $script_choice in
            1)
                echo "运行shellclash"
                export url='https://fastly.jsdelivr.net/gh/juewuy/ShellCrash@master' && sh -c "$(curl -kfsSl $url/install.sh)" && source /etc/profile &> /dev/null
                ;;
            2)
                echo "运行v2ray-agent"
                wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
                ;;
            3)
                echo "运行X-ui"
                bash <(curl -Ls https://raw.githubusercontent.com/FranzKafkaYu/x-ui/master/install.sh)
                ;;
            4)
                echo "运行hysteria 2"
                wget -N --no-check-certificate https://raw.githubusercontent.com/Misaka-blog/hysteria-install/main/hy2/hysteria.sh && bash hysteria.sh
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
