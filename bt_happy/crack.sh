PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "
+----------------------------------------------------------------------
| 适用于宝塔 Linux 面板 7.7 版本的一键优化，因为脚本造成的问题请自行负责！
+----------------------------------------------------------------------
"

if [ $(whoami) != "root" ]; then
    echo "请使用root权限执行命令！"
    exit 1
fi
if [ ! -d /www/server/panel ] || [ ! -f /etc/init.d/bt ]; then
    echo "未安装宝塔面板"
    exit 1
fi

while [ "$go" != 'y' ] && [ "$go" != 'n' ]; do
    read -p "请确认你已经安装的版本是7.7，请确保仅用于学习使用！(y/n): " go
done

if [ "$go" == 'n' ]; then
    exit
fi

cancel_mobile() {
    read -t 10 -p "是否去除宝塔面板强制绑定账号 ? (y/n): " yes
    if [ "$yes" == 'y' ]; then
        if [ ! -f /www/server/panel/data/userInfo.json ]; then
            echo "{\"uid\":1000,\"username\":\"admin\",\"serverid\":1}" >/www/server/panel/data/userInfo.json
        fi
        echo "已去除强制绑定账号"
    fi
}

cancel_wait() {
    read -t 10 -p "是否去除各种计算题与延时等待 ? (y/n): " yes
    if [ "$yes" == 'y' ]; then
        Layout_file="/www/server/panel/BTPanel/templates/default/layout.html"
        JS_file="/www/server/panel/BTPanel/static/bt.js"
        if [ $(grep -c "<script src=\"/static/bt.js\"></script>" $Layout_file) -eq '0' ]; then
            sed -i '/{% block scripts %} {% endblock %}/a <script src="/static/bt.js"></script>' $Layout_file
        fi
        wget -q http://f.cccyun.cc/bt/bt.js -O $JS_file
        # cp ./src/bt.js $JS_file
        echo "已去除各种计算题与延时等待"
    fi
}

happy_main() {
    del_mobile
    cancel_wait
}

happy_main

echo -e "=================================================================="
echo -e "\033[32m宝塔面板优化执行完毕\033[0m"
echo -e "=================================================================="
echo "如需还原之前的样子，请在面板首页点击“修复”"
echo -e "=================================================================="
