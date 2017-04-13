// Datei: addition.c
// Die Python.h muss vor allen anderen Bibliotheken eingebunden werden.
#include <Python.h>

// Unsere schnelle C-Funktion addition.
int addition( int op1, int op2 )
{
   return op1 + op2;
}

// Die Hilfsfunktion fuer unsere schnelle C-Funktion addition
static PyObject* add_hilfsfkt( PyObject* self, PyObject* args )
{
  // Erstelle fuer Rueckgabe und jeden Parameter eine Variable.
  int op1, op2, reuckgabe;
  // Wandel Python-Variablen in C-Variablen um.
  if( !PyArg_ParseTuple( args, "ii", &op1, &op2 ) ) return NULL;
  // Rufe die C-Funktion auf.
  reuckgabe = addition( op1, op2 );
  // Wandle C-Variable in Python-Variable um.
  return Py_BuildValue( "i", reuckgabe );
}

// Die Method Table.
static PyMethodDef HilfsFunktionen[] =
{
  {"addition_py", add_hilfsfkt, METH_VARARGS, "Addiere zwei Ganzzahlen"},
  {NULL, NULL, 0, NULL}
};

// Die Modulinitialisierung.
PyMODINIT_FUNC inithilfsmodul(void)
{
  (void) Py_InitModule("hilfsmodul", HilfsFunktionen);
}
