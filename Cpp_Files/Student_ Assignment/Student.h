#include<iostream>
using namespace std;

class Student
{
private:
    int id;
    int birth_year;
    int marks;


public:
    Student()
    {
        id = 0;
        birth_year = 0;
        marks = 0;
    }

    Student(int id, int birth_year, int marks)
    {
        this -> id = id;
        this -> birth_year = birth_year;
        this -> marks = marks;
    }

    void print()
    {
        cout << endl;
        cout << " ID = " << id << endl;
        cout << " Birth_year = " << birth_year << endl;
        cout << " Marks = " << marks << endl;
    }

    int getId()
    {
        return id;
    }

        int getBirth_year()
    {
        return birth_year;
    }

    int getMarks()
    {
        return marks;
    }


    void setId(int id)
    {
        this -> id = id;
    }

    void setBirth_year(int birth_year)
    {
        this -> birth_year = birth_year;
    }    

    
    void setMarks(int marks)
    {
        this -> marks = marks;
    }

};


