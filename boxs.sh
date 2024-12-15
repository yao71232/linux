#!/bin/bash

echo "请选择要运行的脚本分组："
echo "1. 默认"
echo "2. 科学"
echo "3. Cloudflare WARP"
echo "4. 中转"
echo "5. 面版"
echo "6. 测试"
read -p "输入选项 (1 或 2或其他): " group_choice

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
        echo "15. 端口查看"
        read -p "输入选项 (1 或 2或其他): " script_choice
        case $script_choice in
            1)
                echo "运行 安装依赖"
                apt update && apt upgrade -y && apt-get install curl -y && apt-get install wget -y  && wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh
                ;;
            2)
                echo "运行 综合工具X86"
                wget -O box.sh https://raw.githubusercontent.com/BlueSkyXN/SKY-BOX/main/box.sh && chmod +x box.sh && clear && ./box.sh
                ;;
            3)
                echo "运行 综合工具arm"
                wget -O box.sh https://raw.githubusercontent.com/BlueSkyXN/SKY-BOX/main/armbox.sh && chmod +x box.sh && clear && ./box.sh
                ;;
            4)
                echo "运行 编辑SSH"
                vi /etc/ssh/sshd_config
                ;;
            5)
                echo "运行 重启SSH"
                service sshd restart
                ;;
             6)
                echo "运行 关闭防火墙"
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
                echo "运行 密钥文件权限"
                chmod 600 ~/.ssh/authorized_keys && chmod 700 ~/.ssh && clear && ./box.sh
                ;;
            10)
                echo "运行 screen安装"
                apt-get install screen -y
                ;;
            11)
                echo "运行 screen某个窗口1"
                screen -S 1
                ;;
            12)
                echo "运行 恢复screen窗口1"
                screen -r 1
                ;;
            13)
                echo "运行 增加swap"
                wget https://raw.githubusercontent.com/sduwfc/note/master/swap.sh && bash swap.sh
                ;;
            14)
                echo "运行 Systemd 服务创建工具"
                wget https://raw.githubusercontent.com/ours1505/systemdc/refs/heads/main/main.py -O /usr/bin/systemdc
chmod +x /usr/bin/systemdc && systemdc
                ;; 
            15)
                echo "运行 端口查看"
                netstat -ntlp
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
        echo "5. S-ui"
        read -p "输入选项 (1 或 2或其他): " script_choice
        case $script_choice in
            1)
                echo "运行 shellclash"
                export url='https://fastly.jsdelivr.net/gh/juewuy/ShellCrash@master' && sh -c "$(curl -kfsSl $url/install.sh)" && source /etc/profile &> /dev/null
                ;;
            2)
                echo "运行 v2ray-agent"
                wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
                ;;
            3)
                echo "运行 X-ui"
                bash <(curl -Ls https://raw.githubusercontent.com/FranzKafkaYu/x-ui/master/install.sh)
                ;;
            4)
                echo "运行 hysteria 2"
                wget -N --no-check-certificate https://raw.githubusercontent.com/Misaka-blog/hysteria-install/main/hy2/hysteria.sh && bash hysteria.sh
                ;; 
            5)
                echo "运行 S-ui"
                bash <(curl -Ls https://raw.githubusercontent.com/alireza0/s-ui/master/install.sh)
                ;;                
            *)
                echo "无效选项"
                ;;
        esac
        ;;
    3)
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
                wget -N https://gitlab.com/fscarmen/warp/-/raw/main/menu.sh && bash menu.sh
                ;;
            4)
                echo "运行 CFwarp"
                wget -N --no-check-certificate https://gitlab.com/rwkgyg/CFwarp/raw/main/CFwarp.sh && bash CFwarp.sh
                ;;
            5)
                echo "运行 warp-go"
                wget -N https://raw.githubusercontent.com/fscarmen/warp/main/warp-go.sh && bash warp-go.sh
                ;;               
            *)
                echo "无效选项"
                ;;
        esac
        ;;               
    4)
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
    5)
        echo "请选择要运行的脚本："
        echo "1. 1panel"
        echo "2. Nginx Proxy Manager"
        echo "3. 哪吒V1"
        echo "4. docker管理面板"
        read -p "输入选项 (1 或 2或其他): " script_choice
        case $script_choice in
            1)
                echo "运行 1panel"
                curl -sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o quick_start.sh && bash quick_start.sh
                ;;
            2)
                echo "运行 Nginx Proxy Manager"
                docker run -d  --restart=always --name=nginx-proxy-manager -p 18081:81 -p 18080:80 -p 18443:443 -v /docker/appdata/nginx-proxy-manage/letsencrypt:/etc/letsencrypt -v /docker/appdata/nginx-proxy-manage/data:/data jc21/nginx-proxy-manager:latest
                ;;
            3)
                echo "运行 哪吒V1"
                curl -L https://raw.githubusercontent.com/nezhahq/scripts/refs/heads/main/install.sh -o nezha.sh && chmod +x nezha.sh && sudo ./nezha.sh
                ;;
            4)
                echo "运行 docker管理面板"
                docker run -d --restart=always --name="portainer" -p 19000:9000 -v /var/run/docker.sock:/var/run/docker.sock 6053537/portainer-ce
                ;;               
            *)
                echo "无效选项"
                ;;
        esac
        ;;
    6)
        echo "请选择要运行的脚本："
        echo "1. speedtest-x"
        echo "2. 安装iperf3"
        echo "3. VPS测试"
        echo "4. 回程路由1"
        echo "5. 回程路由2"
        echo "6. 流媒体检测"
        echo "7. ip检测"
        echo "8. 安装tcping"
        echo "9. ip检测"
        read -p "输入选项 (1 或 2或其他): " script_choice
        case $script_choice in
            1)
                echo "运行 speedtest-x"
                docker run -d -p 27777:80 ilemonrain/html5-speedtest:alpine
                ;;
            2)
                echo "运行 安装iperf3"
                apt install -y iperf3
                ;;
            3)
                echo "运行 VPS测试"
                bash <(wget -qO- --no-check-certificate https://gitlab.com/spiritysdx/za/-/raw/main/ecs.sh)
                ;;
            4)
                echo "运行 回程路由1"
                wget --no-check-certificate https://tutu.ovh/bash/returnroute/route && chmod +x route && clear && ./route
                ;;
            5)
                echo "运行 回程路由2"
                wget https://raw.githubusercontent.com/vpsxb/testrace/main/testrace.sh -O testrace.sh && bash testrace.sh
                ;; 
            6)
                echo "运行 流媒体检测"
                bash <(curl -L -s https://raw.githubusercontent.com/lmc999/RegionRestrictionCheck/main/check.sh)
                ;; 
            7)
                echo "运行 ip检测"
                bash <(curl -sL IP.Check.PLace)
                ;;
            8)
                echo "运行 安装tcping"
                apt install -y tcptraceroute && wget http://www.vdberg.org/~richard/tcpping -O /usr/bin/tcping && chmod +x /usr/bin/tcping
                ;;
            9)
                echo "运行 ip检测2"
                bash <(curl -sL IP.Check.PLace)                
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
