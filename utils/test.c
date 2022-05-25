#include <stdio.h>
#include <stdint.h>
#include <assert.h>
uint8_t mem[65536*sizeof(uint32_t)];
size_t read_inst(char *img_file) {
    if (img_file == NULL) return 0;
    FILE * fp = fopen(img_file,"rb");
    assert(fp !=NULL);

    fseek(fp, 0, SEEK_END);
    size_t size = ftell(fp);
    fseek(fp, 0, SEEK_SET);
    size_t res = fread(mem, size, 1, fp);
    assert(res == 1);
    fclose(fp);
    return size;
}


int main(int argc,char** argv) {
	int size = read_inst(argv[1]);
	FILE* fp0 = fopen("mem0.txt","w");	
	FILE* fp1 = fopen("mem1.txt","w");	
	FILE* fp2 = fopen("mem2.txt","w");	
	FILE* fp3 = fopen("mem3.txt","w");	
	for (int i = 0 ; i < size / 4 ; i++) {
		fprintf(fp0, "%02x\n",mem[4*i + 3]);
		fprintf(fp1, "%02x\n",mem[4*i + 2]);
		fprintf(fp2, "%02x\n",mem[4*i + 1]);
		fprintf(fp3, "%02x\n",mem[4*i + 0]);
	}
	fclose(fp0);
	fclose(fp1);
	fclose(fp2);
	fclose(fp3);
}
