### 优化脚本
#### 脚本说明
优化部分代码来自论坛与网络，本库加入了少数代码与整合，功能如下
1. 去除宝塔面板强制绑定账号 （来自网络）
2. 去除各种计算题与延时等待（来自网络）
3. 去除创建网站自动创建的垃圾文件（来自网络）
4. 关闭未绑定域名提示页面（来自网络）
5. 关闭安全入口登录提示页面（来自网络）
6. 去除消息推送与文件校验（来自网络）
7. 去除面板日志与绑定域名上报（来自网络）
8. 关闭活动推荐与在线客服（来自网络）
9. 去除插件安装限制（来自网络）
10. 去除商城界面广告（本库优化）
11. 去除首页升级红点（本库优化）
12. 修复0点CPU高占用BUG完成（本库优化）
#### 脚本安装
```bash
wget -O crack.sh https://raw.kgithub.com/v2jun/bt-panel/master/bt_happy/crack.sh && chmod +x crack.sh && ./crack.sh
```

### 安装宝塔 7.7

```bash
curl -sSO https://raw.kgithub.com/v2jun/bt-panel/master/bt_7.7/install/install.sh && bash install.sh
```

### 宝塔降级到 7.7（适用centos）

```bash
wget https://slink.ltd/https://raw.githubusercontent.com/elunez/other_script/master/btpanel-v7.7.0/install/src/LinuxPanel-7.7.0.zip
unzip LinuxPanel-*
cd panel
bash update.sh
cd .. && rm -f LinuxPanel-*.zip && rm -rf panel
```

### 卸载宝塔

```
wget http://download.bt.cn/install/bt-uninstall.sh && bash bt-uninstall.sh
```
### 效果图

<img width="1259" alt="image" src="https://user-images.githubusercontent.com/42142420/190320252-4e53840f-98c8-49e0-b6a9-d9517060dadd.png">

<img width="1255" alt="image" src="https://user-images.githubusercontent.com/42142420/190320337-3b8d3de3-479c-460e-be13-0d2ca3170a90.png">
