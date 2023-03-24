# CreateClass-script

This an simple but usefull script to create classes in C++. 
During the CPP module you need to write a lot of them! So this may be handy for you, feel free to use it:)

### **How to use**
- **Clone the repository**
```
  git clone git@github.com:steryu/CreateClass-script.git
```
- **Compile**
``` sh
./createClass.sh {class_name}
```
it will then create a {class_name}.cpp file and an matching {class_name}.hpp file.

### **The Files**

.cpp
``` cpp
  #include "class.hpp"

  class::class(){
    std::cout << "Default class constructor called" << std::endl;
  }

  class::~class(){
    std::cout << "class destroyed" << std::endl;
  }

  class::class(const class &other){
    *this = other;
    std::cout << "class copied" << std::endl;
  }

  class& class::operator=(const class &other){
    return(*this);
    std::cout << "class copied using an assignment" << std::endl;
  }
```
.hpp
``` cpp
  #ifndef __CLASS_HPP__
  #define __CLASS_HPP__
  #include <iostream>

  class class{
  protected:
  private:
  public:
    class();
    virtual ~class();
    class(const class &other);
    class& operator=(const class &other);
};

#endif
```

The script is inspired by [Maia de Graaf](https://github.com/maiadegraaf/42-Ultimate-Orthodox-Canonical-Class-Creator), who made a more complicated script, this an simplified version.
