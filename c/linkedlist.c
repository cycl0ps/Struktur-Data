#include <stdio.h>

struct Simpul {
	char data[15];
	char *next;
};

struct LinkedList {
	struct Simpul simpul[4];
};

int main(){
	struct LinkedList senarai;
	int i;
	for (i=0;i<4;i++) {
		printf("Masukkan simpul ke-%d = ",(i+1));
		scanf("%s",senarai.simpul[i].data);
		senarai.simpul[i].next = senarai.simpul[i+1].data;
	}

	printf("  Alamat\tSimpul\tData\tPointer\n");
	for (i=0;i<4;i++) {
		printf("%p\t%3d\t%s\t%p\n",&senarai.simpul[i].data,i+1
			,senarai.simpul[i].data,senarai.simpul[i].next);
	}
}

