## Building pyORBIT with pyQt5
```bash
yum groupinstall 'Development Tools' 'X Window System'
```
Download sip and PyQt5 from [SF](https://sourceforge.net/projects/pyqt/files/).
```bash
yum install qt5-qtbase qt5-qtbase-devel python-devel epel-release
```
Install sip
```bash
cd sip-4.19.7
python configure.py
make
make install
cd ..
```

Install PyQt5
```bash
cd PyQt5_gpl-5.10
python configure.py --qmake /usr/bin/qmake-qt5
make
make install
cd ..
```
