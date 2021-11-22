cd /usr/local/lib/X11
ln -sf /etc/X11/app-defaults ./app-defaults
cd /usr/ports/editors/
mv neovim neovim.old
git clone https://github.com/elmarsto/openbsd-neovim-ports neovim
cd neovim
make # can't do install
cd /usr/ports/pobj-neovim-0.6.1-elmarsto/fake-amd64/
pkg_add rsync
rsync -av ./usr/local/ /usr/local/
