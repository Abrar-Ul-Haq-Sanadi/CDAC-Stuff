#include<iostream>
#include<string>

using namespace std;

class Student                                                   //Student is a class
{
public:
        int id;                                                 //variables of class
        string name;
        int marks;
        string grade;

    Student()
        {
            id=0;
            name="";
            marks = 0;
            grade = "";
        }

    Student(int id, string name, int marks)
        {
            this->id = id ;
            this-> name = name;
            this-> marks = marks;
        }
    

        void print()                                            //print function for printing the ouput 
        {       
                cout << "ID: " << id << endl;
                cout << "Name: " << name << endl;
                cout << "Marks: " << marks << endl;
                cout << "Grade: " << grade << endl;                
        }
};


class Report
{
public:

         //    Pass by refernce
        void calcGrade(Student &s1)                             
        {
                if (s1.marks < 40)
                        s1.grade = 'F';
                else if (s1.marks >= 40 && s1.marks < 60 )
                        s1.grade = 'B';
                else if (s1.marks >= 60 && s1.marks < 75 )
                        s1.grade = 'A';  
                else    
                        s1.grade = 'o' ;       
        }

        

        // pass by Address
        // void calcGrade(Student *s1)
        // {
        //         if (s1->marks < 40)
        //                 s1->grade = 'F';
        //         else if (s1->marks >= 40 && s1->marks < 60 )
        //                 s1->grade = 'B';
        //         else if (s1->marks >= 60 && s1->marks < 75 )
        //                 s1->grade = 'A';  
        //         else    
        //                 s1->grade = 'o' ;       
        // }


// Pass by value

//        Student calcGrade(Student &s1)                           
//          {
//                  if (s1.marks < 40)
//                          s1.grade = 'F';
//                  else if (s1.marks >= 40 && s1.marks < 60 )
//                          s1.grade = 'B';
//                  else if (s1.marks >= 60 && s1.marks < 75 )
//                          s1.grade = 'A';  
//                  else    
//                          s1.grade = 'o' ;       
//                 return s1;                                      // In Pass by value we should compulsory return
//        }

};

int main()                                                              // main function
{

        Student s;                                                      // s is object of the class student
        Report r;                                                       // r is the object of the report r

        cout << "Enter the Student ID, name, Marks" << endl;
        s.id=1;
        s.name = "Abrar";
        s.marks = 50;

        // Pass by reference
           r.calcGrade(s);                                      // two function belonging to different classes are being connected via  objects

        // pass by address
        //r.calcGrade(&s);

        // pass by value
        // r.calcGrade(s);

        s.print();

        Student stu1( 2, " Chanakya", 88);
        r.calcGrade(stu1);                                      // two function belonging to different classes are being connected via  objects
        stu1.print();

return 0;
}
