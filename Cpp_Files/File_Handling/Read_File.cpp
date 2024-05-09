#include <iostream>
#include <fstream>                      // The fstream library allows us to work with files.

using namespace std;

int main()
{
    ifstream file;                                                              // Reads from files
    file.open("/home/vlsi/Desktop/Cprog/C++ Files/File_Handling/Names.txt");       //path of the file
    cout << "Reading File." << endl;
    string line = "";                                                              // line is a variable of string type
    while (!file.eof())                                                             //to check weather its a end of file, if not it enter the loop
    {
        getline(file, line);                                                        // puts the content of the current line of file into the line variable
       // line.append("\n");                                                        // to put the new line
        cout << line;                                // once a 1st line is read then the, content of the 2nd line is overwriten on the same line(varialbe) once again
    }                                                  // hence it reads line by line
    cout << "Whats in the line ?" << endl;
    cout << line;                                    // outside the loop content of the last line is present         

    file.close();                                     // compilsorily files need to closed as it can clean up unnecessary memory space.

    return 0;
}

///home/vlsi/Desktop/Cprog/C++ Files/File_Handling/Names.txt