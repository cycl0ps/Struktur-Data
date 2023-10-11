#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAX_STACK 6

struct STACK {
	int top;
	char data[10][MAX_STACK];
};

struct STACK tumpukanBuku;

void inisialisasi(){
	tumpukanBuku.top = -1;
}

int IsFull(){
	if(tumpukanBuku.top == MAX_STACK-1) 
		return 1; 
	else 
		return 0;
}

int IsEmpty(){
	if(tumpukanBuku.top == -1) 
		return 1; 
	else 
		return 0;
}

Push(){
	if(IsFull() != 1){
		printf("Buku yang akan ditumpuk dalam tumpukan : ");
		tumpukanBuku.top++;
		scanf("%s",tumpukanBuku.data[tumpukanBuku.top]);
	} else printf("\nTumpukan buku sudah penuh!\n");
}

Pop(){
	if(IsEmpty() != 1) {
		printf("Buku yang terambil = %s\n",tumpukanBuku.data[tumpukanBuku.top]);
		tumpukanBuku.top--;
	}
	else printf("\nTidak ada buku yang terambil, tumpukan masih kosong!\n");
}

Clear(){
	tumpukanBuku.top=-1;
	printf("\nTumpukan buku sudah kosong!\n");
}

Cetak(){
	if(IsEmpty() != 1) {
		int i;
		printf("Tumpukan Buku : \n");
		for(i=tumpukanBuku.top;i>=0;i--){
			printf("%s\n",tumpukanBuku.data[i]);
		}
	} else printf("\nTumpukan buku masih kosong!\n");
}

int main(){
	int pilihan;
	inisialisasi();
	char dt[10];
	do{
		printf("1. push\n");
		printf("2. pop\n");
		printf("3. cetak\n");
		printf("4. clear\n");
		printf("5. exit\n");
		printf("Pilihan : ");scanf("%d",&pilihan);
		
		switch(pilihan){
			case 1: 
				Push();
				break;
		
			case 2: 
				Pop();
				break;

			case 3: 
				Cetak();
				break;

			case 4: 
				Clear();
				break;
			case 5:
				return 0;		
			default:
				printf("Tidak ada dalam pilihan\n");
		}
	} while(pilihan>=1 && pilihan<=5);
	getchar();
}

