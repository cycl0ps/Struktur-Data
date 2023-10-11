#include <stdio.h>

struct Simpul {
	char data[15];
	char *prev;
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
		if (i==0) senarai.simpul[i].prev = senarai.simpul[3].data;
		else senarai.simpul[i].prev = senarai.simpul[i-1].data;
		if (i==3) senarai.simpul[i].next = senarai.simpul[0].data;
		else senarai.simpul[i].next = senarai.simpul[i+1].data;
	}

	printf("Alamat\tData\tPrev\tNext\n");
	for (i=0;i<4;i++) {
		printf("%p\t%s\t%p\t%p\n",&senarai.simpul[i].data
			,senarai.simpul[i].data,senarai.simpul[i].prev
			,senarai.simpul[i].next);
	}
}

