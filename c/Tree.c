#include <stdio.h>

struct Simpul {
	char data[15];
	char *anakKiri;
	char *anakKanan;
};

struct Tree {
	struct Simpul simpul[7];
};

struct Tree pohon;

void anak(int a, int b, int c) {
	pohon.simpul[a].anakKiri = pohon.simpul[b].data;
	pohon.simpul[a].anakKanan = pohon.simpul[c].data;
} 

int main(){
	int i;
	for (i=0;i<7;i++) {
		printf("Masukkan simpul ke-%d = ",(i+1));
		scanf("%s",pohon.simpul[i].data);
	}
	anak(0,1,2);
	anak(1,3,4);
	anak(2,5,6);
	printf("Alamat\t\tSimpul\tData\tAnakKiri\tAnakKanan\n");
	for (i=0;i<7;i++) {
		printf("%p\t%d\t%s\t%p\t%p\n",&pohon.simpul[i].data,i+1
			,pohon.simpul[i].data,pohon.simpul[i].anakKiri,pohon.simpul[i].anakKanan);
	}
}
