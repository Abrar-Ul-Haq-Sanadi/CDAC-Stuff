#include<iostream>
#include <string.h>
using namespace std;

class Compare
{
public:
        string str1;
        string str2;

    Compare (){
        str1 = "";
        str2 = "";
    }

    int  operator > (string &obj)
    {
        if(str1.length() > str2.length())
            return true;
        return false;


    }

};

int main()
{
    Compare comp;
    comp.str1= "Abc";
    comp.str2 = "DEF";

    bool result = comp.str1 > comp.str2 ;
    
    cout<<"Result = " << result <<endl;

return 0;
}