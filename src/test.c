volatile char hello[] = "Hello,World";
int main() {
	int f[100];
	f[0] = 1;
	f[1] = 1;
	volatile int and = 1&1;
	volatile int xor = 1^1;
	int i;
	for (i = 2; i < 20; i++){
		f[i] = f[i - 1] + f[i - 2];
		and = and ^ f[i];
		xor = and ^ f[i];
	}
	for (i = 0; i < sizeof(hello); ++i)
		if(hello[i] <= 'Z' || hello[i] >= 'A')hello[i] = hello[i] - 'A' + 'a';
	return 0;
}
