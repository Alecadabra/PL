#include "BookSorter.h"

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define LIST_SIZE 20

/*
 * A program that builds a randomly ordered array of books and sorts them by
 * ID using quick sort, the implemenation of which is adapted from my DSA
 * quick sort in Java.
 */

// Driver function to sort the list.
int main() {

    Book bookList[LIST_SIZE];
    fillBookList(bookList, LIST_SIZE);

    std::cout << "Original list by ID:\n";
    printBookList(bookList, LIST_SIZE);
    std::cout << "Original list verbose:\n";
    printBookListVerbose(bookList, LIST_SIZE);

    std::cout << "\n------\n\nQuick sorting - Visualisation:\n";
    bookQuickSort(bookList, LIST_SIZE);

    std::cout << "\n------\n\nSorted list by ID:\n";
    printBookList(bookList, LIST_SIZE);
    std::cout << "Sorted list verbose:\n";
    printBookListVerbose(bookList, LIST_SIZE);

    return 0;
}

// Fills the list with randomly generated books
void fillBookList(Book* bookList, int size) {
    char buffer[16];
    int bookNum;

    srand(time(NULL));

    for (int i = 0; i < size; i++ ) {
        bookNum = rand() % (size * 2) + 1;
        bookList[i].SetBookID(bookNum);

        sprintf(buffer, "Book %d", bookNum);
        bookList[i].SetBookName(buffer);

        sprintf(buffer, "%05d", bookNum);
        bookList[i].SetBookISBN(buffer);
    }
}

// Print the book list as a simple list of their ID's
void printBookList(Book* bookList, int size) {
    if (size == 0) {
        printf("[]\n");
    } else {
        std::cout << "[" << bookList[0].GetBookID();
        for (int i = 1; i < size; i++) {
            std::cout << ", " << bookList[i].GetBookID();
        }
        std::cout << "]\n";
    }
}

// Print the book list with details on each Book field
void printBookListVerbose(Book* bookList, int size) {
    if (size == 0) {
        printf("[]\n");
    } else {
        std::cout << "[\n\tBook ID: " << bookList[0].GetBookID()
            << ", Name: '" << bookList[0].GetBookName()
            << "', ISBN: '" << bookList[0].GetISBN() << "';\n";
        for (int i = 1; i < size; i++) {
            std::cout << "\tBook ID: " << bookList[i].GetBookID()
                << ", Name: '" << bookList[i].GetBookName()
                << "', ISBN: '" << bookList[i].GetISBN() << "';\n";
        }
        std::cout << "]\n";
    }
}

// Wrapper for bookQuickSortRec
void bookQuickSort(Book* bookList, int size) {
    bookQuickSortRec(bookList, 0, size - 1);
}

// Recursive quick sort
void bookQuickSortRec(Book* bookList, int leftIdx, int rightIdx) {
    int pivIdx;
    int newPivIdx;

    if (rightIdx > leftIdx) {
        pivIdx = median(
            bookList, leftIdx, rightIdx, (leftIdx + rightIdx) / 2
        );
        newPivIdx = bookQuickSortPartition(
            bookList, leftIdx, rightIdx, pivIdx
        );

        // Visualisation
        for (int i = -1; i <= rightIdx + 1; i++) {
            if (i < leftIdx - 1) {
                std::cout << " ";
            } else if (i == leftIdx - 1) {
                std::cout << "[";
            } else if (i == rightIdx + 1) {
                std::cout << "]";
            } else if (i == newPivIdx) {
                if (leftIdx == rightIdx - 1) {
                    std::cout << "*";
                } else {
                    std::cout << "|";
                }
            } else if (i >= leftIdx && i <= rightIdx) {
                if (leftIdx == rightIdx - 1) {
                    std::cout << "*";
                } else {
                    std::cout << "-";
                }
            }
        }
        std::cout << std::endl;

        // Recurse left
        bookQuickSortRec(bookList, leftIdx, newPivIdx - 1);
        // Recurse right
        bookQuickSortRec(bookList, newPivIdx + 1, rightIdx);
    }
}

// Partition the list based on the pivot
int bookQuickSortPartition(
    Book* bookList, int leftIdx, int rightIdx, int pivIdx
) {
    int currIdx;
    Book pivVal;
    Book temp;
    int newPivIdx;

    // Swap pivot value and right-most element
    pivVal = bookList[pivIdx];
    bookList[pivIdx] = bookList[rightIdx];
    bookList[rightIdx] = pivVal;

    // Find all values that are smaller than the pivot and transfer them to
    // the left side of the list
    currIdx = leftIdx;

    for (int i = leftIdx; i <= rightIdx - 1; i++) {
        if (bookList[i].GetBookID() < pivVal.GetBookID()) {
            // Swap i'th book and currIdx book
            temp = bookList[i];
            bookList[i] = bookList[currIdx];
            bookList[currIdx] = temp;

            currIdx++;
        }
    }

    newPivIdx = currIdx;
    bookList[rightIdx] = bookList[newPivIdx];
    bookList[newPivIdx] = pivVal;

    return newPivIdx;
}

// Get the median idx of three elements based on their values in the list
int median(Book* bookList, int a, int b, int c) {
    int med;

    if (
        bookList[a].GetBookID() > bookList[b].GetBookID()
        && bookList[a].GetBookID() > bookList[c].GetBookID()
    ) {
        med = a;
    } else if (
        bookList[b].GetBookID() > bookList[a].GetBookID()
        && bookList[b].GetBookID() > bookList[c].GetBookID()
    ) {
        med = b;
    } else {
        med  = c;
    }

    return med;
}
