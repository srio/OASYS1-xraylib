rm -rf xraylib
git clone https://github.com/tschoonj/xraylib
cd xraylib
git checkout mesonpep517
python -m pip wheel .
#python -m pip install xraylib-4.1.1-cp37-cp37m-linux_x86_64.whl

auditwheel repair xraylib-4.1.1-cp37-cp37m-linux_x86_64.whl --plat "manylinux2014_x86_64" -w wheels

