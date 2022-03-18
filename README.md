# mentohust-macos
## 简介
## 2022年03月18日 -- 加入锐捷v4算法（v4算法来自hyrathb）
## v4算法已支持Apple Silicon
支持macOS Monterey的mentohust校园网认证客户端
修改了byte_order的内容，以支持Apple Silicon
修改了dylib的加载，以支持macOS
添加了Makefile，可用make编译
已测试可以用于华南农业大学的锐捷认证
源码来自https://github.com/hyrathb/mentohust
感谢mentohust作者的贡献，已加入github.com/hyrathb/mentohust仓库中的AUTHORS
## 编译
使用终端执行以下命令：
git clone https://github.com/vincenttsang/mentohust-macos && cd mentohust-macos
make
成功后将会产生一个mentohust可执行文件，架构与编译这个程序的Mac的架构一致
## 安装
sudo make install
## 卸载
sudo make uninstall
## 清理源码目录
make clean
