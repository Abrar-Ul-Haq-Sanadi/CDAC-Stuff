#include <iostream>
#include <fstream>                            // The fstream library allows us to work with files.

using namespace std;

int main()
{
    ofstream file;                                            // ofstream is a class to (create/open) and write to a file.  file -> is a object of the class
    file.open("/home/vlsi/Desktop/Cprog/C++ Files/File_Handling/output.txt");
    cout << "Writing File." << endl;
    string line1 = "This is a 1st message which I want to write in a file.";         // object line is a string type, 
    string line2 = "This is a 2nd message which I want to write in a file.";                                                                            // throught this object we write to the file
    
    file << line1 << endl;                                       // we use insertion operator to write lines to file                             
    file << line2 << endl;  
    file << "This is a 3rd message which I want to write in a file." << endl;  
    cout << "Writing File Complete." << endl;

    file.close();

    return 0;
}