# Datei: modul_bauen.py

from distutils.core import setup, Extension
modulname = 'hilfsmodul'
c_quellen = ['addition.c']
ordername = 'hilfsmodul'
ver       = '0.1'
beschr    = 'Unser Hilfsmodul'
ext       = Extension(name=modulname, sources=c_quellen)
setup(name=ordername, version=ver, description=beschr, ext_modules=[ext])
