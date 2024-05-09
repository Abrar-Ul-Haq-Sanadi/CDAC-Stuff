#include <iostream>
#include <string>
#include <vector>

using namespace std;

class Voter
{
private:
    int voterId;
    string voterName;
    int age;

public:
    Voter()
    {
        voterId = 0;
        voterName = "";
        age = 0;
    }
    Voter(int voterId, string voterName, int age)
    {
        this->voterId = voterId;
        this->voterName = voterName;
        this->age = age;
    }

    int getage()
    {
        return age;
    }
    int getvoterId()
    {
        return voterId;
    }
    string getvoterName()
    {
        return voterName;
    }


    void print()
    {
        cout << "---------------------------------------------"<< endl;
        cout << endl;
        cout << "Voter ID is " << voterId << endl;
        cout << "voterName is " << voterName << endl;
        cout << "Age is " << age << endl;
    }
};

int main()
{
    vector<Voter> voter;
    int voterId = 0;
    string voterName = "";
    int age = 0;
    int ages = 0;
    int count = 0;
    for (int i = 0; i < 3; i++)
    {
        cout << "Insert Voter Id, Voter Name and Voter Age of voter " << i + 1 << endl;
        cin >> voterId >> voterName >> age;
        cout << endl;
        
        Voter v(voterId, voterName, age);
        voter.push_back(v);
    }

    for (int i = 0; i < 3; i++)
    {
        voter[i].print();
    }
    cout << "*------------------********------------------*" << endl;
    cout  << endl;

    vector<Voter>::iterator Iter; 
    for(Iter = voter.begin(); Iter < voter.end(); Iter++)
    {
        if(Iter ->getage() >=18)
        {
            cout <<  Iter -> getvoterName() << " Is Elgible to Vote " << endl;
            ages = ages + Iter ->getage();
            count++;
        }
        

    }
        float average = ages / count;
        cout << "The average ages of the eligible voters is " << average << endl;

}
