#!/bin/bash
# Inspired github repo by passeway/vps

# 定义二级菜单函数
upstream_menu() {
    while true; do
        echo "请选择UpStreaming的操作："
        echo "1. 安装Snell"
        echo "2. 安装reality"
        echo "3. 安装Hysteria"
        echo "4. 开放所有端口"
        echo "5. 修改root登录"
        echo "6. 开启BBR+优化"
        echo "7. 返回上一级菜单"
        
        read -p "请输入UpStreaming选项编号: " suboption
        
        case $suboption in
            1)
                curl -sS -o Snell.sh https://raw.githubusercontent.com/passeway/Snell/main/Snell.sh && chmod +x Snell.sh && ./Snell.sh
                ;;
            2)
                bash <(curl -Ls https://raw.githubusercontent.com/passeway/reality/main/reality.sh)
                ;;
            3)
                bash <(curl -Ls https://raw.githubusercontent.com/passeway/Hysteria/main/Hysteria.sh)
                ;;
            4)
                curl -sS -o ufw.sh https://raw.githubusercontent.com/passeway/ufw/main/ufw.sh && chmod +x ufw.sh && ./ufw.sh
                ;;
            5)
                curl -sS -o root.sh https://raw.githubusercontent.com/passeway/root/main/root.sh && chmod +x root.sh && ./root.sh
                ;;
            6)
                curl -sS -o bbr.sh https://raw.githubusercontent.com/passeway/bbr/main/bbr.sh && chmod +x bbr.sh && ./bbr.sh
                ;;
            7)
                return  # 返回上一级菜单
                ;;
            *)
                echo "无效的选项"
                ;;
        esac
    done
}

# 主菜单
echo "请选择要执行的操作："
echo "1. 开发中"
echo "2. 安装reality"
echo "3. 开发中"
echo "4. 开发中"
echo "5. 修改root登录"
echo "6. 开启BBR+优化"
echo "7. UpStreaming"

read -p "请输入选项编号: " option

case $option in
    1)
        echo "配置Upstream1的操作正在执行..."
        #curl -sS -o Snell.sh https://raw.githubusercontent.com/passeway/Snell/main/Snell.sh && chmod +x Snell.sh && ./Snell.sh
        ;;
    2)
        bash <(curl -Ls https://raw.githubusercontent.com/xuezihe/VPSServer/main/quick_install/vps/reality.shh)
        ;;
    3)
        #bash <(curl -Ls https://raw.githubusercontent.com/passeway/Hysteria/main/Hysteria.sh)
        ;;
    4)
        #curl -sS -o ufw.sh https://raw.githubusercontent.com/passeway/ufw/main/ufw.sh && chmod +x ufw.sh && ./ufw.sh
        ;;
    5)
        #curl -sS -o root.sh https://raw.githubusercontent.com/passeway/root/main/root.sh && chmod +x root.sh && ./root.sh
        ;;
    6)
        #url -sS -o bbr.sh https://raw.githubusercontent.com/passeway/bbr/main/bbr.sh && chmod +x bbr.sh && ./bbr.sh
        ;;
    7)
        upstream_menu
        ;;
    *)
        echo "无效的选项"
        ;;
esac
