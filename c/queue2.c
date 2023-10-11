#include <stdio.h>
#include <stdlib.h>
#define MAX_QUEUE 6

struct QUEUE {
	int first;
	int last;
	char data[10][MAX_QUEUE];
};

struct QUEUE antrian;

void Create(){
	antrian.first = -1;
	antrian.last = -1;
}

int IsFull(){
	if(antrian.last == MAX_QUEUE - 1) 
		return 1; 
	else 
		return 0;
}

int IsEmpty(){
	if(antrian.last == -1) 
		return 1; 
	else 
		return 0;
}

void Enqueue(char data[i]){
	if(IsEmpty() == 1){
		antrian.first = 0;
		antrian.last = 0;
		antrian.data[antrian.last] = data[i];
		printf("%s masuk!\n", antrian.data[antrian.last]);
	} else {
		if(IsFull() == 0){
			antrian.last++;
			antrian.data[antrian.last] = data[];
			printf("%s masuk!\n", antrian.data[antrian.last]);

		} else {
			printf("Antrian Penuh!\n");
		}
	}	
}

void Dequeue(){
	int i;
	printf("Data yang di Dequeue = %s\n",antrian.data[antrian.first]);
	for(i=antrian.first;i<=antrian.last;i++){
		antrian.data[i] = antrian.data[i+1];
	}
	antrian.last--;
}

void Clear(){
	antrian.first=antrian.last=-1;
	printf("data clear\n");
}

void Print(){
	int i;
	printf("Antrian Data : \n");
	for(i=antrian.last;i>=antrian.first;i--){
		printf("%s ",antrian.data[i]);
	}
	printf("\n");
}

int main(){
	int pilihan;
	int data;
	Create();
	do{
		printf("1. Enqueue\n");
		printf("2. Dequeue\n");
		printf("3. Print\n");
		printf("4. Clear\n");
		printf("5. Exit\n");
		printf("Pilihan : ");scanf("%d",&pilihan);
		
		switch(pilihan){
			case 1: 
				if(IsFull() != 1){
					printf("Data yg akan di Enqueue = ");scanf("%s",&data[]);
					Enqueue(data[]);
				} else printf("\nSudah penuh!\n");
				break;
		
			case 2: 
				if(IsEmpty() != 1) {
					Dequeue();
				} else printf("\nMasih kosong!\n");
				break;

			case 3: 
				if(IsEmpty() != 1) Print();
				else printf("\nMasih kosong!\n");
				break;

			case 4: 
				Clear();
				printf("\nSudah kosong!\n");
				break;

		case 5:
			return 0;		
		default:
			printf("Tidak ada dalam pilihan\n");
		}
	}while(pilihan>=1 && pilihan<=5);
	getchar();
}

