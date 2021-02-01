# Lista de pacotes sensíveis ao lançamento de um novo kernel no Fedora (ainda pode ter mais pacotes)
* kernel
* kernel-core
* kernel-debug
* kernel-devel
* kernel-debug-devel
* kernel-headers
* linux-firmware
* perf
* kernel-abi-whitelists
* kernel-tools
* kernel-modules
* kernel-modules-extra
* kernel-tools-libs

# Comando para atualizar os pacotes exceto os descritos acima
```sh
sudo dnf update --exclude=kernel,kernel-core,kernel-debug,kernel-devel,kernel-debug-devel,kernel-headers,linux-firmware,perf,kernel-abi-whitelists,kernel-tools,kernel-modules,kernel-modules-extra,kernel-tools-libs
```

# Ignorar permanantemente a atualização dos pacotes descritos acima

```sh
sudo nvim /etc/dnf/dnf.conf 
# add line
# exclude=kernel,kernel-core,kernel-debug,kernel-devel,kernel-debug-devel,kernel-headers,linux-firmware,perf,kernel-abi-whitelists,kernel-tools,kernel-modules,kernel-modules-extra,kernel-tools-libs
```
