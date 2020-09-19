mentohust: mentohust.o myini.o md5.o mycheck.o dlfunc.o myfunc.o mystate.o myconfig.o
	llvm-gcc -o $@ $^ -liconv
mentohust.o: mentohust.c myconfig.h mystate.h myfunc.h dlfunc.h
	llvm-gcc -c $<
dlfunc.o: dlfunc.c
	llvm-gcc -c $<
myfunc.o: myfunc.c  md5.h mycheck.h
	llvm-gcc -c $<
..c.o:
	llvm-gcc -c $<
clean:
	rm *.o
	rm mentohust
install:
	@echo "提示：安装mentohust需要root权限"
	@echo "正在配置zsh环境变量"
	@echo "export PATH=/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/sbin" >> /etc/zshrc
	@echo "正在复制mentohust至/usr/local/sbin"
	@cp mentohust /usr/local/sbin
	@echo "正在设置用户和权限" && chown root:wheel /usr/local/sbin/mentohust && chmod 4755 /usr/local/sbin/mentohust
	@echo "安装完成，如需立即启用环境变量请在终端输入: source /etc/zshrc"
uninstall:
	@echo "提示：移除mentohust需要root权限"
	@echo "移除mentohust配置文件" && rm -rf /etc/mentohust.conf
	@echo "移除mentohust程序" && rm -rf /usr/local/sbin/mentohust
	@echo "卸载完成，请手动移除/etc/zshrc中的环境变量: export PATH=/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/sbin"
