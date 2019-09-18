# Third Parties

``` bash
$> git clone https://github.com/gautierbureau/dynawo-macos.git
$> cd dynawo-macos
$> ./install.sh -p /Users/Shared/Library -w no -j 1
```

# OpenModelica

``` bash
$> git clone --recursive https://github.com/OpenModelica/OpenModelica.git
$> cd OpenModelica
$> bash <(curl -s https://raw.githubusercontent.com/gautierbureau/OpenModelica-macos/master/deploy.sh)
$> ./patch.sh
$> cp /Users/Shared/Library/install_openmodelica.sh .
$> ./install_openmodelica.sh
```