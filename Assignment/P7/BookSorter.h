#pragma once

#include <string>

// Book class
class Book
{
private:
    int bookID;
    std::string bookName;
    std::string ISBN;
public:
    int GetBookID()
    {
        return this->bookID;
    }

    std::string GetBookName()
    {
        return this->bookName;
    }

    std::string GetISBN()
    {
        return this->ISBN;
    }

    void SetBookID(int iID)
    {
        this->bookID = iID;
    }

    void SetBookName(std::string iName)
    {
        this->bookName = iName;
    }

    void SetBookISBN(std::string iISBN)
    {
        this->ISBN = iISBN;
    }

    ~Book() {
        //delete this->bookName;
        //delete this->ISBN;
    }
};

// Forward declarations
void fillBookList(Book*, int);
void printBookList(Book*, int);
void printBookListVerbose(Book*, int);
void bookQuickSort(Book*, int);
void bookQuickSortRec(Book*, int, int);
int bookQuickSortPartition(Book*, int, int, int);
int median(Book*, int, int, int);

