#!/bin/bash

echo_patch() {
  echo '#!/bin/bash

sed -i '"''"' "s/libstdc++/libc++/" OMCompiler/configure.ac

if ! patch -R -d OMSimulator -p1 -s -f --dry-run < OMSimulator/omsimulator_makefile.patch > /dev/null 2>&1; then
  patch -d OMSimulator -p1 < OMSimulator/omsimulator_makefile.patch || { echo "Error while patching OMSimulator."; exit 1; }
fi' > patch.sh
chmod +x patch.sh
}

curl_patch () {
  curl -L -s https://raw.githubusercontent.com/gautierbureau/OpenModelica-macos/master/omsimulator_makefile.patch -o OMSimulator/omsimulator_makefile.patch
}

echo_patch 
curl_patch