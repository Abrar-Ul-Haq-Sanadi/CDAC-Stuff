#include<iostream>
#include "student_Dob.h"
using namespace std;

class Student
{
private:
    int id;
    string name;
    int birth_year;
    int marks;
    Date date;


public:
    Student()
    {
        id = 0;
        name = "";
        marks = 0;
        date = Date();
    }

    Student(int id, string name, int marks, Date date)
    {
        this -> id = id;
        this -> name = name;
        this -> marks = marks;
        this -> date = date;
    }

    void print()
    {
        cout << endl;
        cout << " ID = " << id << endl;
        cout << " Name = " << name << endl;
        cout << " Marks = " << marks << endl;

        date.print_Dob();
    }

    void accept_details()
    {
        cout << "Enter ID, Name and Marks";
        cin >> id >> name >> marks ;

        date.accept_dob();
    }

    void calcAge()
    {
            int age_year;
            int age_mm;
            
            
            age_year =  2024 - getDate().getyear(); 
            age_mm = 3 - getDate().getMm();

    }
  
    int getId()
    {
        return id;
    }

    string getName()
    {
        return name;
    }

    int getMarks()
    {
        return marks;
    }

    Date getDate()
    {
        return date;
    }


    void setId(int id)
    {
        this -> id = id;
    }
    void setName(string name)
    {
        this -> name = name ; 
    }
    
    void setMarks(int marks)
    {
        this -> marks = marks;
    }

    void setDate(Date date)
    {
        this -> date = date;
    }

};

