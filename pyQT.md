## Building pyORBIT with pyQt5 on RPM based Linux
### 1. Install required packages
```bash
yum groupinstall 'Development Tools' 'X Window System'
yum install qt5-qtbase qt5-qtbase-devel python-devel vim epel-release 
yum install python-pip
```
### 2. Download [sip](https://sourceforge.net/projects/pyqt/files/sip/) and [PyQt5](https://sourceforge.net/projects/pyqt/files/PyQt5/).

### 3. Install sip
```bash
cd sip-4.19.7
python configure.py
make
make install
cd ..
```
### 4. Install PyQt5
```bash
cd PyQt5_gpl-5.10
python configure.py --qmake /usr/bin/qmake-qt5
make
make install
cd ..
```
### 5. Install matplotlib
```bash
pip install --upgrade pip
pip install -U matplotlib
```

### 6. Try standard example with matplotlib (should draw nice plots).
```bash
curl -o test-qt.py https://matplotlib.org/_downloads/embedding_in_qt_sgskip.py
python test-qt.py
```
### 7. Proceed with [pyORBIT installation](README.md) as usual. 

### 8. Try to run the same **test-qt.py** script with **pyORBIT** executable
```bash
$ORBIT_ROOT/bin/pyORBIT test-qt.py
```

Following imports will set Qt5 as a backend for matplotlib
```python
import matplotlib
matplotlib.use('Qt5Agg')
import matplotlib.pyplot as plt
```
