from distutils.core import setup
from Cython.Build import cythonize

setup(
    ext_modules = cythonize("cython_nbody2.pyx")
)