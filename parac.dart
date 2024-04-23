class animal {
  String type;
  int age;

  // constuctor
 animal(this.age, this.type);

void displayAnimalTraits() {
    print('Animal traits are: $age $type');
  }

}
// Inheritance
class puppy extends animal {
  String breed;
  // constructor
  puppy(this.breed, String type, int age) :super(age, type);

  //method
  void DisplaypuppyInfo () {
    print("My pupppy is: $type $age $breed");
  }

}

void main (){
  //Assign

  puppy myPuppy =puppy("Kenyan", "bosco", 15);

  //call function

  myPuppy.displayAnimalTraits();
  myPuppy.DisplaypuppyInfo();
}


