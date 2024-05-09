#include <iostream>
#include <fstream>
#include <string.h>

using namespace std;

int main()
{

    ifstream file;
    ofstream Encrypted_file;
    
    file.open("/home/vlsi/Desktop/Cprog/C++ Files/File_Handling/file.txt");
    Encrypted_file.open("/home/vlsi/Desktop/Cprog/C++ Files/File_Handling/file_enc.txt");

    cout << " Reading the file contents" << endl;

    string line = "";
    while (!file.eof())
{
        getline(file, line);
        // line.append("\n");
        cout << line;
        //cout << endl;
    

    for (int i = 0; i < line.length(); i++)
    {
        line[i] = line[i] + 3;
        cout << line[i];
    }

    Encrypted_file << line << endl;
}
    file.close();
    Encrypted_file.close();

    return 0;
}