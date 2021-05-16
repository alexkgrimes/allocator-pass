#include <stdio.h>
#include <string.h>
#include <stdlib.h>

struct Book {
  char  title[50];
  char  author[50];
  char  subject[100];
  int   book_id;
};

struct Bear {
  char name[50];
};

int main (){
  int iter_num = 100;

  struct Book *array[iter_num];

  for (int i=0; i < iter_num; i++) {
    struct Book *b;
    b = (struct Book*) malloc(sizeof(struct Book));

    strcpy(b->title, "C Programming");
    strcpy(b->author, "Nuha Ali"); 
    strcpy(b->subject, "C Programming Tutorial");
    b->book_id = 6495407;

    array[i] = b;
  }

  int counter = 0;
  for (int i = 0; i < iter_num; i++) {
    counter += 1;
  }
  printf("counter: %d\n", counter);

  for (int i = iter_num - 1; i >= 0; i--) {
    free(array[i]);
  }

  struct Bear *bear = (struct Bear*) malloc(sizeof(struct Bear));
  strcpy(bear->name, "Big Bear");

  struct Bear *bear2 = (struct Bear*) malloc(sizeof(struct Bear));
  strcpy(bear2->name, "Brown Bear");
  printf("Name: %s\n", bear2->name);

  int* num = (int*) malloc(sizeof(int64_t));
  *num = 86;
  free(num);

  free(bear);
  free(bear2);
}