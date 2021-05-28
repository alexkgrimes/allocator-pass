#include <stdio.h>
#include <string.h>
#include <stdlib.h>

struct Book {
  char  title[50];
  char  author[50];
  char  subject[100];
  int   book_id;
  double book_rating;
};

struct Bear {
  char name[50];
};

int main (){
  int64_t iter_num = 1000000;
  int list_size = 200;

  struct Book *array[list_size];

  int64_t sum_ratings = 0;
  
  for (int i = 0; i < iter_num; i++) {
    for (int i = 0; i < list_size; i++) {
      struct Book *b;
      b = (struct Book*) malloc(sizeof(struct Book));

      strcpy(b->title, "C Programming");
      strcpy(b->author, "Nuha Ali"); 
      strcpy(b->subject, "C Programming Tutorial");
      b->book_id = 6495407;
      b->book_rating = rand() % 5;

      array[i] = b;
    }
    
    for (int i = 0; i < list_size; i++) {
      sum_ratings += array[i]->book_rating;
    }

    for (int i = list_size - 1; i >= 0; i--) {
      free(array[i]);
    }
  }

  double average_rating = sum_ratings / (iter_num + list_size);
  printf("average rating: %f", average_rating);

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