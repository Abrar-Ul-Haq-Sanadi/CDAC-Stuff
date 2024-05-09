#include <iostream>
using namespace std;


class Date
{
private:
    int dd;
    int mm;
    int year;

public:
    Date()
    {
        dd = 0;
        mm = 0;
        year = 0;

    }
    Date(int dd, int mm , int year)
    {
        this -> dd= dd;
        this -> mm = mm;
        this -> year = year;
    }


    void print_Dob()
    {
        cout << " Date = " << dd << endl;
        cout << " Month = " << mm <<endl;
        cout << " Year = " << year << endl;
    }

    void accept_dob()
    {
        cout << "Enter Date, month and Year for the student DOB " << endl;
        cin >> dd >> mm >> year ;
    }


    int getDd()
    {
        return dd;
    }
    int getMm()
    {
        return mm;
    }
    int getyear()
    {
        return year;
    }

    void setDd(int dd)
    {
        this -> dd = dd;
    }
    void setMm()
    {
        this -> mm = mm;
    }
    void setYear()
    {
        this -> year = year;
    }

};
