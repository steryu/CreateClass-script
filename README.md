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

### **The Script**
``` sh
#!/usr/bin/env bash
uppercase=$(printf '%s' "$1" | tr a-z A-Z)

CLASSNAME=${1?Error: no class name given}

echo $CLASSNAME "files made";

hpp=$CLASSNAME.hpp
cpp=$CLASSNAME.cpp

#hpp
echo "#ifndef __${uppercase}_HPP__" > $hpp
echo "#define __${uppercase}_HPP__" >> $hpp
echo "#include <iostream>" >> $hpp
echo "" >> $hpp
echo "class ${CLASSNAME}{" >> $hpp

echo "protected:" >> $hpp
echo "private:" >> $hpp

echo "public:" >> $hpp
echo "	${CLASSNAME}();" >> $hpp
echo "	virtual ~${CLASSNAME}();" >> $hpp
echo "	${CLASSNAME}(const ${CLASSNAME} &other);" >> $hpp
echo "	${CLASSNAME}& operator=(const ${CLASSNAME} &other);" >> $hpp

#cpp
echo "};" >> $hpp
echo "" >> $hpp
echo "#endif" >> $hpp

echo '#include "'${CLASSNAME}.hpp'"' > $cpp
echo "" >> $cpp
echo "${CLASSNAME}::${CLASSNAME}(){" >> $cpp
echo '	std::cout << "Default '${CLASSNAME}' constructor called" << std::endl;' >> $cpp
echo "}" >> $cpp
echo "" >> $cpp

echo "${CLASSNAME}::~${CLASSNAME}(){" >> $cpp
echo '	std::cout << "'${CLASSNAME}' destroyed" << std::endl;' >> $cpp
echo "}" >> $cpp
echo "" >> $cpp

echo "${CLASSNAME}::${CLASSNAME}(const ${CLASSNAME} &other){" >> $cpp
echo "	*this = other;" >> $cpp
echo '	std::cout << "'${CLASSNAME}' copied" << std::endl;' >> $cpp
echo "}" >> $cpp
echo "" >> $cpp

echo "${CLASSNAME}& ${CLASSNAME}::operator=(const ${CLASSNAME} &other){" >> $cpp
echo "	return(*this);" >> $cpp
echo '	std::cout << "'${CLASSNAME}' copied using an assignment" << std::endl;' >> $cpp
echo "}" >> $cpp
echo "" >> $cpp

```
The script is inspired by [Maia de Graaf](https://github.com/maiadegraaf/42-Ultimate-Orthodox-Canonical-Class-Creator), who made a more complicated script, this an simplified version.
