#include <iostream>
#include <fstream>
#include <string.h>

using namespace std;

int main()
{

    ifstream file;
    ofstream decrypted_file;
    file.open("/home/vlsi/Desktop/Cprog/C++ Files/File_Handling/file_enc.txt");
    decrypted_file.open("/home/vlsi/Desktop/Cprog/C++ Files/File_Handling/file_dec.txt");
    
    cout << " Reading the file contents" << endl;

    string line = "";
    while (!file.eof())
    {
        getline(file, line);
        // line.append("\n");
        cout << line << "\b";
        //cout << "\b" ;
    for (int i = 0; i < line.length(); i++)
    {
        line[i] = line[i] - 3;
        cout << line[i];
    }
           decrypted_file << line << endl;
    }

    file.close();
    decrypted_file.close();

    return 0;
}