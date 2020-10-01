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
	@rm *.o
	@rm mentohust
	@echo "清理完成"
install:
	@echo "提示：安装mentohust需要root权限"
	@echo "正在复制mentohust至/usr/local/bin"
	@cp mentohust /usr/local/bin
	@echo "正在设置用户和权限" && chown root:wheel /usr/local/bin/mentohust && chmod 4755 /usr/local/bin/mentohust && chmod a+w /var/run
uninstall:
	@echo "提示：移除mentohust需要root权限"
	@echo "移除mentohust配置文件" && rm -rf /etc/mentohust.conf
	@echo "移除mentohust程序" && rm -rf /usr/local/bin/mentohust
	@echo "卸载完成"
