class students {
  // Give properties
  String highschool;
  int index;

  //constractor
  students (this.highschool, this.index);


  void displayStudentGrade () {
    print('This student went to ${highschool} and was index ${index}');
  }
}

  //inheritance
  class university extends students {
    
    //properties
    String course;

    //constractor
    university ( String highschool, int index, this.course) : super (highschool, index);

    //method
    void displayUniversity () {
      print("What got me to universitty is: $highschool $index and I'm persuing $course");

    }
  }

void main () {
  //assign
  university myUniversity = university('Queens', 246475237, 'Economics');


  myUniversity.displayStudentGrade();
  myUniversity.displayUniversity();
}
