#include<iostream>
#include<string.h>
#include<fstream>

using namespace std;

int main()
{
    ifstream file1;
    ifstream file2;
    
    file1.open("/home/vlsi/Desktop/Cprog/C++ Files/File_Handling/file.txt");
    file2.open("/home/vlsi/Desktop/Cprog/C++ Files/File_Handling/file_dec.txt");
    

    cout << " Reading the file contents" << endl;

    string line1 = "";
    string line2 = "";
    int cmp =0;

if (line1.length() == line2)

while (!file1.eof()&& !file2.eof())
{
        getline(file1, line1);
        cout << endl;

        getline(file2, line2);
        cout << endl;

        //cmp = strcmp(line1, line2);
        cout << line1;
        cout << line2;
        //cout << endl;
    

}
return 0;

}

//int result = strcmp(str1, str2);