# Datei: subtraktion.py

import ctypes

bib = ctypes.cdll.LoadLibrary("./libminus.so")
subtraktion_py = bib.subtraktion
subtraktion_py.restype  = ctypes.c_double
subtraktion_py.argtypes = [ctypes.c_double, ctypes.c_double]
print( subtraktion_py(3.5, 6.2) )
