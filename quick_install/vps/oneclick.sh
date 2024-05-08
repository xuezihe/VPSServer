#!/bin/bash
# Inspired github repo by passeway/vps

# 定义二级菜单函数
upstream_menu() {
    echo "请选择UpStreaming的操作："
    echo "1. 配置Upstream1"
    echo "2. 配置Upstream2"
    echo "3. 配置Upstream3"
    echo "4. 配置Upstream4"
    echo "5. 配置Upstream5"
    
    read -p "请输入UpStreaming选项编号: " suboption
    
    case $suboption in
        1)
            echo "配置Upstream1的操作正在执行..."
            # 在这里添加Upstream1的实际操作命令
            ;;
        2)
            echo "配置Upstream2的操作正在执行..."
            # 在这里添加Upstream2的实际操作命令
            ;;
        3)
            echo "配置Upstream3的操作正在执行..."
            # 在这里添加Upstream3的实际操作命令
            ;;
        4)
            echo "配置Upstream4的操作正在执行..."
            # 在这里添加Upstream4的实际操作命令
            ;;
        5)
            echo "配置Upstream5的操作正在执行..."
            # 在这里添加Upstream5的实际操作命令
            ;;
        *)
            echo "无效的选项"
            ;;
    esac
}

# 主菜单
echo "请选择要执行的操作："
echo "1. 安装Snell"
echo "2. 安装reality"
echo "3. 安装Hysteria"
echo "4. 开放所有端口"
echo "5. 修改root登录"
echo "6. 开启BBR+优化"
echo "7. UpStreaming"

read -p "请输入选项编号: " option

case $option in
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
        upstream_menu
        ;;
    *)
        echo "无效的选项"
        ;;
esac
