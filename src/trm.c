void halt(int exit_code) {
	asm volatile ("move $v0,%0 ;.word 0xdeadbeef"::"r"(exit_code));
}
void _trm_init(){
	int ret = main();
	halt(ret);
}
