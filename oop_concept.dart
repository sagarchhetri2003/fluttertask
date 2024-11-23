// 1. Encapsulation: Protecting data using private properties
class Person {
  String _name; // Private property

  // Constructor
  Person(this._name);

  // Getter method to access the private property
  String getName() {
    return _name;
  }

  // Setter method to modify the private property
  void setName(String newName) {
    _name = newName;
  }
}

// 2. Abstraction: Hiding details using an abstract class
abstract class Animal {
  void makeSound(); // Abstract method (no implementation)
}

// A concrete class implementing the abstract method
class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog says: Woof Woof');
  }
}

// 3. Inheritance: Reusing properties and methods of a parent class
class Employee extends Person {
  String role;

  // Constructor to initialize both parent and child class properties
  Employee(String name, this.role) : super(name);

  void showDetails() {
    print('Employee Name: ${getName()}, Role: $role');
  }
}

// 4. Polymorphism: Using the same method differently
void animalSound(Animal animal) {
  animal.makeSound();
}

void main() {
  // Encapsulation
  var person = Person('John');
  print('Name: ${person.getName()}');
  person.setName('Alice');
  print('Updated Name: ${person.getName()}');

  // Abstraction
  var dog = Dog();
  dog.makeSound();

  // Inheritance
  var employee = Employee('Charlie', 'Manager');
  employee.showDetails();

  // Polymorphism
  animalSound(dog); // Passes a Dog object to the method
}
