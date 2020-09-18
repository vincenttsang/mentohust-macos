# mentohust-macos
## 简介
支持最新版macOS Catalina的mentohust校园网认证客户端
修改了dylib的加载，以支持macOS Catalina
添加了Makefile，可用make编译
已测试可以用于华南农业大学的锐捷认证
源码来自https://github.com/hyrathb/mentohust，感谢mentohust作者的贡献
## 编译
使用终端执行以下命令：
git clone https://github.com/vincenttsang/mentohust-macos && cd mentohust-macos
make
成功后将会产生一个mentohust的mach-o执行档
