## Building pyORBIT with pyQt5 on RPM based Linux
```bash
yum groupinstall 'Development Tools' 'X Window System'
yum install qt5-qtbase qt5-qtbase-devel python-devel vim epel-release 
yum install python-pip
```
Download [sip](https://sourceforge.net/projects/pyqt/files/sip/) and [PyQt5](https://sourceforge.net/projects/pyqt/files/PyQt5/).

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
Install matplotlib
```bash
pip install --upgrade pip
pip install -U matplotlib
```

Try standard example with matplotlib (should draw nice plots).
```bash
curl -o test-qt.py https://matplotlib.org/_downloads/embedding_in_qt_sgskip.py
python test-qt.py
```
Proceed with [pyORBIT installation](README.md) as usual. Try to run the same **test-qt.py** script with **pyORBIT** executable
```bash
$ORBIT_ROOT/bin/pyORBIT test-qt.py
```
