## 👋 Welcome to code 🚀  

Free code editor  
  
  
### Requires scripts to be installed

```shell
sudo bash -c "$(curl -q -LSsf "https://github.com/dfmgr/installer/raw/main/install.sh")" && sudo dfmgr install installer
```

### Automatic install/update

```shell
dfmgr update code
```

OR

```shell
bash -c "$(curl -q -LSsf "https://github.com/dfmgr/code/raw/main/install.sh")"
```
  
requirements:
  
Debian based:

```shell
apt install code
```  

Fedora Based:

```shell
yum install code
```  

Arch Based:

```shell
pacman -S code
```  

MacOS:  

```shell
brew install code
```
  
Manual install:  

  ```shell
APPDIR="$HOME/.local/share/CasjaysDev/dfmgr/code"
mv -fv "$HOME/.config/code" "$HOME/.config/code.bak"
git clone https://github.com/dfmgr/code "$APPDIR"
cp -Rfv "$APPDIR/etc/." "$HOME/.config/code/"
[ -d "$APPDIR/bin" ] && cp -Rfv "$APPDIR/bin/." "$HOME/.local/bin/"
```

## Author  

🤖 casjay: [Github](https://github.com/casjay) 🤖  
⛵ dfmgr: [Github](https://github.com/dfmgr) ⛵  

## Links

<p align=center>
   <a href="https://travis-ci.com/github/dfmgr/code" target="_blank" rel="noopener noreferrer">
     <img src="https://travis-ci.com/dfmgr/code.svg?branch=master" alt="Build Status"></a><br />
  <a href="https://wiki.archlinux.org/index.php/code" target="_blank" rel="noopener noreferrer">code wiki</a>  |  
  <a href="code" target="_blank" rel="noopener noreferrer">code site</a>
</p>  
