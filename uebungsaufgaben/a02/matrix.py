class Matrix:
    """Eine sehr naive Matrixklasse"""

    def __init__(self, zeilen=0, spalten=0):
        self.zeilen = zeilen
        self.spalten = spalten
        self.elemente = self.zeilen * self.spalten * [0.0]

    def __getitem__(self, ij):
        """Gibt den Koeffizienten der Matrix in der i-ten Zeile und
           der j-ten Spalte zurueck."""
        i,j = ij    # Bei uns ist ij ein Tuple (i,j)
        return self.elemente[i * self.spalten + j]

    def __setitem__(self, ij, z):
        """Setzt den Koeffizienten der Matrix in der i-ten Zeile und
           der j-ten Spalte auf den Wert z."""
        i,j = ij
        self.elemente[i * self.spalten + j] = z

    def __str__(self):
        """Gibt einen String zurueck, der die Matrix beschreibt."""
        s = "Zeilen: {} Spalten: {}\n".format(self.zeilen, self.spalten)
        for i in range(self.zeilen):
            for j in range(self.spalten):
                s = s + "{}; ".format(self[i, j])
            s = s + "\n"
        return s

m = Matrix(zeilen=3, spalten=5)
m[2,4] = 6.4
m.zeilen = 6
print(m)