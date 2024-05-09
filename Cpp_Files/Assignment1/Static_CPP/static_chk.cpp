#include <iostream>
using namespace std;
 
class comp {
public:
    static int i;
    comp()
    {
        i++;
    };

    static void print()
    {
        cout << " I is " << i << endl;
    }

};
 
int comp::i = 0;
 
int main()
{
    comp obj1;
    comp obj2, obj3;
    comp::print();

    //   cout << obj1.i<<obj2.i<< endl;
}