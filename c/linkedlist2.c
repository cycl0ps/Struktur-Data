#include <stdio.h>
#include <string.h>


typedef struct nilaiMatKul{
  char	nim[10];
  char nama[50];
  char nilai[2];
};

typedef struct elemen{
  nilaiMatKul elmt;
  int next;
};

typedef struct list{
  int first;
  elemen data[10];
};

//----------------------
void createList(list *L){


  (*L).first = -1;
  int i;

  for(i=0;i<=10;i++){
    /*proses menginisialisasi isi array*/
    (*L).data[i].next = -2;
  }

}

//----------------------
int countElement(list L){


  int hasil = 0;

  if(L.first != -1){
    /*list tidak kosong*/
    
    int elmt;

    /*inisialisasi*/
    elmt = L.first;

    while(elmt != -1){
      /*proses*/
      hasil = hasil + 1;

      /*iterasi*/
      elmt = L.data[elmt].next;
    }

  }

  return hasil;

}

//----------------------
int emptyElement(list L){


  int hasil = -1;

  if(countElement(L) < 10){

    bool ketemu = false;
    int i = 0;
    while((ketemu == false)&&(i <= 10)){
      if(L.data[i].next == -2){
        hasil = i;
        ketemu = true;
      }
      else{
        i = i + 1;
      }
    }

  }

  return hasil;

}

//----------------------
void addFirst(char nim[], char nama[], char nilai[], list *L){


  if(countElement(*L) < 10){

    int indeks = emptyElement(*L);  

strcpy((*L).data[indeks].elmt.nim, nim);     strcpy((*L).data[indeks].elmt.nama, nama);      strcpy((*L).data[indeks].elmt.nilai, nilai);
    if((*L).first == -1){
      /*jika list kosong*/
      (*L).data[indeks].next = -1;
    }
    else{
      /*jika list tidak kosong*/
    (*L).data[indeks].next = (*L).data[(*L).first].next;
    }

    (*L).first = indeks;
  }
  else{
    /*proses jika array penuh*/
    printf("sudah tidak dapat ditambah\n");
  }

}

//----------------------
void addAfter(int prec, char nim[], char nama[], char nilai[], list *L){


  if(countElement(*L) < 10){

    int indeks = emptyElement(*L); 

strcpy((*L).data[indeks].elmt.nim, nim);
strcpy((*L).data[indeks].elmt.nama, nama);
strcpy((*L).data[indeks].elmt.nilai, nilai);
(*L).data[indeks].next = (*L).data[prec].next;
(*L).data[prec].next = indeks;
  }
  else{
    /*proses jika array penuh*/
    printf("sudah tidak dapat ditambah\n");
  }

}

//----------------------
void addLast(char nim[], char nama[], char nilai[], list *L){


  if((*L).first == -1){
    /*proses jika list masih kosong*/
    int indeks = 0;    
strcpy((*L).data[indeks].elmt.nim, nim);
strcpy((*L).data[indeks].elmt.nama, nama);
strcpy((*L).data[indeks].elmt.nilai, nilai);
(*L).data[indeks].next = -1;
(*L).first = indeks;
  }
  else{
  /*proses jika list telah berisi elemen*/
    if(countElement(*L) < 10){
      /*proses jika array belum penuh*/

      int indeks = emptyElement(*L);

strcpy((*L).data[indeks].elmt.nim, nim);
strcpy((*L).data[indeks].elmt.nama, nama);
strcpy((*L).data[indeks].elmt.nilai, nilai);
(*L).data[indeks].next = -1;

      /*proses mencari elemen terakhir*/

      /*inisialisasi*/
      int last = (*L).first;

      while((*L).data[last].next != -1){

        /*iterasi*/
        last = (*L).data[last].next;

      }

      (*L).data[last].next = indeks;
    }
    else{
      /*proses jika array penuh*/
      printf("sudah tidak dapat ditambah\n");
    }
  }

}

//----------------------
void delFirst(list *L){

  if((*L).first != -1){
    int elmt = (*L).first;
    (*L).first = (*L).data[(*L).first].next;

    /*elemen awal sebelumnya dikosongkan*/
  (*L).data[elmt].next = -2;
  }
  else{
   /*proses jika list kosong*/
    printf("list kosong\n");
  }

}

//----------------------
void delAfter(int prec, list *L){


  int elmt = (*L).data[prec].next;
  (*L).data[prec].next = (*L).data[elmt].next;

  /*pengosongan elemen*/
  (*L).data[elmt].next = -2;

}

//----------------------
void delLast(list *L){

 if((*L).first != -1){
   if(countElement(*L) == 1){    
     /*proses jika list hanya berisi satu elemen*/
     delFirst(L);
   }
   else{
     int last = (*L).first;
     int beforeLast;

     while((*L).data[last].next != -1){

       /*iterasi*/
       beforeLast = last;

       last = (*L).data[last].next;

     }
     /*elemen sebelum elemen terakhir menjadi elemen terakhir*/
     (*L).data[beforeLast].next = -1;
     /*elemen terakhir sebelumnya dikosongkan*/
  (*L).data[last].next = -2;
   }
 }
 else{
  /*proses jika list kosong*/

  printf("list kosong\n");
 }

}

//----------------------
void printElement(list L){  


  if(L.first != -1){
    /*inisialisasi*/
    int elmt = L.first;
    int i = 1;

    while(elmt != -1){
      /*proses*/
      printf("elemen ke : %d\n", i); 
      printf("nim : %s\n", L.data[elmt].elmt.nim);
      printf("nama : %s\n", L.data[elmt].elmt.nama); 
      printf("nilai : %s\n", L.data[elmt].elmt.nilai); 
      printf("next : %d\n", L.data[elmt].next); 
      printf("------------\n");

      /*iterasi*/
    elmt = L.data[elmt].next;
      i = i + 1;
    }

  }
  else{
   /*proses jika list kosong*/
    printf("list kosong\n");
  }

}

//----------------------
void delAll(list *L){ 

  int i;

  for(i=countElement(*L);i>=1;i--){

  /*proses menghapus elemen list*/
    delLast(L);   
  }

}

//----------------------
int main(){

  struct list L;

  createList(&L);
  printElement(L);
  printf("=================\n");
  addFirst("13501019", "Andik", "A", &L);
  addAfter(L.first, "13501037", "Shalahuddin", "A", &L);
  addLast("13501058", "Rosa", "A", &L);
  printElement(L);
  printf("=================\n");
  delLast(&L);
  delAfter(L.first, &L);
  delFirst(&L);
  printElement(L);
  printf("=================\n");
  
  return 0;

}

