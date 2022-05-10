rm -rf xraylib
git clone https://github.com/tschoonj/xraylib
cd xraylib
git checkout mesonpep517
python -m pip wheel .
auditwheel repair xraylib-4.1.1-cp37-cp37m-linux_x86_64.whl --plat "manylinux2014_x86_64" -w wheels
python -m twine upload wheels/xraylib-4.1.1-cp37-cp37m-manylinux_2_17_x86_64.manylinux2014_x86_64.whl

