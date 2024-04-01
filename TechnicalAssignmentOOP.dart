<<<<<<< HEAD
//Interface definition
abstract class Lion {
  void makeHunt();
}

class animal {
  String type;
  int age;

  // constuctor
 animal(this.age, this.type);

void displayAnimalTraits() {
    print('Mbwa kali is $age years old. She is $type kingpin.');
  }

}
// Inheritance
class puppy extends animal implements Lion {
  String breed;
  // constructor
  puppy(this.breed, String type, int age) :super(age, type);

// Override
@override 
void makeHunt () {
  print('Lions kill for food. They rae canivores');
}

  //method
  void DisplaypuppyInfo () {
    print("My pupppy is ${breed}. Commonly known as ${type}. He is $age years old.");
  }
}

void main (){
  //Assign

  puppy myPuppy =puppy("Kenyan", "bosco", 15);

  //call function

  myPuppy.displayAnimalTraits();
  myPuppy.DisplaypuppyInfo();
  myPuppy.makeHunt();
  
=======
//Interface definition
abstract class Lion {
  void makeHunt();
}

class animal {
  String type;
  int age;

  // constuctor
 animal(this.age, this.type);

void displayAnimalTraits() {
    print('Mbwa kali is $age years old. She is $type kingpin.');
  }

}
// Inheritance
class puppy extends animal implements Lion {
  String breed;
  // constructor
  puppy(this.breed, String type, int age) :super(age, type);

// Override
@override 
void makeHunt () {
  print('Lions kill for food. They rae canivores');
}

  //method
  void DisplaypuppyInfo () {
    print("My pupppy is ${breed}. Commonly known as ${type}. He is $age years old.");
  }
}

void main (){
  //Assign

  puppy myPuppy =puppy("Kenyan", "bosco", 15);

  //call function

  myPuppy.displayAnimalTraits();
  myPuppy.DisplaypuppyInfo();
  myPuppy.makeHunt();
  
>>>>>>> 00b2c6addcb5ae2e89472d71c6d144f248c070cf
}