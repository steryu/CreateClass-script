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