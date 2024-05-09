#include<iostream>
#include<set>

using namespace std;

int main()
{
    set<int>s1;
    set<int>s2;
    int Max = 100;
    int n;

    cout<< " Enter elemts of set "<< endl;
    cin >> n ;

    for (int i = 0; i <= n; i++)
    {
        s1.insert(rand() % Max);
    }

     for (int i = 0; i <= n; i++)
    {
        s2.insert(rand() % Max);
    }
    
    cout << " Printing the set 1 using Iterator" << endl;
    set <int> :: iterator iter;
        for (iter = s1.begin(); iter != s1.end(); iter++)
    {
            cout << *iter << endl;
            
    }
    cout << " Printing the set 2 using Iterator" << endl;
        for (iter = s2.begin(); iter != s2.end(); iter++)
    {
            cout << *iter << endl;
    }
    

    cout << " Printing the Unified set using Iterator" << endl;
    set <int> :: iterator iter1;
        for (iter1 = s1.begin(); iter1 != s1.end();iter1++)
    {
            s2.insert(*iter1);
    }

        cout << " Printing the set 3 using Iterator" << endl;
        for (iter1 = s2.begin(); iter1 != s2.end(); iter1++)
    {
            cout << *iter1 << endl;
    }


return 0;
}