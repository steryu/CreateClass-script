# CreateClass-script

This an simple but usefull script to create classes in C++. 
During the CPP modules you need to write a lot of them! So this may be handy for you, feel free to use it:)

### **How to use**
- **Clone the repository**
```
  git clone git@github.com:steryu/CreateClass-script.git
```
- **Compile**
``` sh
./createClass.sh {class_name}
```
it will then create a {class_name}.cpp file and a matching {class_name}.hpp file.

### **The Files**

.cpp
``` cpp
  #include "class_name.hpp"

  class_name::class_name(){
    std::cout << "Default class_name constructor called" << std::endl;
  }

  class_name::~class_name(){
    std::cout << "class_name destroyed" << std::endl;
  }

  class_name::class_name(const class_name &other){
    *this = other;
    std::cout << "class_name copied" << std::endl;
  }

  class_name& class_name::operator=(const class_name &other){
    return(*this);
    std::cout << "class_name copied using an assignment" << std::endl;
  }
```
.hpp
``` cpp
  #ifndef __class_name_HPP__
  #define __class_name_HPP__
  #include <iostream>

  class class_name{
  protected:
  private:
  public:
    class_name();
    virtual ~class_name();
    class_name(const class_name &other);
    class_name& operator=(const class_name &other);
};

#endif
```

The script is inspired by [Maia de Graaf](https://github.com/maiadegraaf/42-Ultimate-Orthodox-Canonical-Class-Creator), who made a more complicated script, this a simplified version.
