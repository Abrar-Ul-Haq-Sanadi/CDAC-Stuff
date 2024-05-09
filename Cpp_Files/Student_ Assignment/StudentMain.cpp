#include "Student.h"
#include <iostream>

using namespace std;


int main()
{
    Student s[2];
        int id ;
        int birth_year;
        int marks;

    for (int i = 0; i < 2; i++)
    {    
        cout << "Enter the student ID, Birth_year and Marks for student "<< i+1 << endl;
        cin >> id >> birth_year >> marks;
    
        Student temp = Student(id, birth_year, marks);
        s[i]=temp;
    }

    int choice;
    bool Found;
    bool IdFound = false;
    bool YearFound = false;

    cout << "Enter 1 to search via Id and 2 via Year";
    cin >> choice;
    switch (choice)
    {
    case 1:

        cout << "Enter the Student id " << endl;
        cin >> id;

        for (int i = 0; i < 2; i++)
        {
            if(s[i].getId() == id)
            {
                IdFound = true;
                s[i].print(); 
            }
            else
                IdFound = false;
        }
        break;
    
    case 2: 
        cout << "Enter the Student Year:  " << endl;
        cin >> birth_year;

        for (int i = 0; i < 2; i++)
        {
            if(s[i].getBirth_year() == birth_year)
            {
                YearFound = true;
                s[i].print();  
            }
            else
                YearFound = false;
        }
        break;

    default:
        cout << "Invalid Entry Student Not Found" <<endl;
        break;
    }



return 0;

}
    
    
