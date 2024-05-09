#include "student.h"
#include <iostream>

using namespace std;


int main()
{
    Student s[2];
    for (int i = 0; i < 2 ; i++)
    {
        cout << "Enter the details of the student: " << i+1 << endl;
        s[i].accept_details();
    }
    
    for (int i = 0; i < 2; i++)
    {
        cout << "The details of the the student: " << i+1 << endl;
        s[i].print();
    }

    int id = 0;
    int dd = 0;
    int mm = 0;
    int year = 0;
    
    int tdd = 0 ;
    int tmm = 0;
    int tyear = 0;

    int choice;
    bool Found;
    bool IdFound = false;
    bool YearFound = false;
    bool DobFound = false;

    cout << "Enter 1 to search via Id and 2 via DOB ,  3 :to calculate age";
    cin >> choice;
    switch (choice)
    {
    case 1:

        cout << "Enter the Student id " << endl;
        cin >> id ;

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
        cout << "Enter the Student Date, month and year:  " << endl;
        cin >> dd >> mm >> year;

        for (int i = 0; i < 2; i++)
        {
            if((s[i].getDate().getDd() == dd) && (s[i].getDate().getMm()== mm) && (s[i].getDate().getyear()== year))
            {
                DobFound = true;
                s[i].print();  
            }
            else
                DobFound = false;
        }
        break;

    case 3: 
        cout << "Enter Todays Date, month and year:  " << endl ; 
        cin >> tdd >> tmm >> tyear;
        



    default:
        cout << "Invalid Entry Student Not Found" <<endl;
        break;
    }



return 0;

}
    
    
