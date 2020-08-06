# shell para configurar xrdp en Linux
# Para ahorrarme pasos al configurar mis virtualizados en WSL2

sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bkp
sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/max_bpp=32/# max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/xserverbpp=24/# xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/test -x \/etc\/X11\/Xsession \&\& exec \/etc\/X11\/Xsession/# test -x \/etc\/X11\/Xsession \&\& exec \/etc\/X11\/Xsession/g' /etc/xrdp/startwm.sh
sudo sed -i 's/exec \/bin\/sh \/etc\/X11\/Xsession/# exec \/bin\/sh \/etc\/X11\/Xsession/g' /etc/xrdp/startwm.sh
echo xfce4-session >  ~/.xsession
echo \# >> /etc/xrdp/startwm.sh
echo \#xfce >> /etc/xrdp/startwm.sh
echo startxfce4 >> /etc/xrdp/startwm.sh
# sudo vim /etc/xrdp/startmw.sh
sudo /etc/init.d/xrdp start

