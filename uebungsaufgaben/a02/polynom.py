class Polynom:
    """Eine einfache Polynomklasse"""

    def __init__(self, koeffizienten):
        """koeffizienten ist entweder ein float, ein int oder eine Sequenz von Koeffizienten."""
        t = type(koeffizienten)
        if t is int or t is float:
            koeffizienten = [float(koeffizienten)]
        self.koef = tuple(koeffizienten)
        # Falls der der groesste Koeffizient 0 ist, schneiden wir ihn ab.
        # Das machen wir iterativ.
        while len(self.koef) > 0 and self.koef[-1] == 0:
            self.koef = self.koef[:-1]

    def grad(self):
        """Gibt den Grad des Polynoms zurueck."""
        return len(self.koef) - 1

    def __str__(self):
        """Erstellt einen schoenen String aus einem Polynom."""
        # Erstelle Sting sukzessive.
        s = ''
        # Wir iterieren durch die koeffizienten.
        # Wir beginnen beim groessten Koeffizienten, gehen immer einen Schritt
        # nach unten bis wir bei (exklusive) -1 angekommen sind.
        for i in range(self.grad(), -1, -1):
            k = self.koef[i]
            # Wir durcken auch ein schoenes Vorzeichen aus.
            vorz, k = ('+', k) if k >= 0 else ('-', -k)
            s = s + ' {} {}*x^{}'.format(vorz, k, i)
        return s

    def __add__(self, other):
        """Erstelle die Summe zweier Polynome. Dabei darf other auch int oder float sein."""

    def __mul__(self, other):
        """Erstelle das Produkt zweier Polynome. Dabei darf other auch int oder float sein."""

    def __ente__(self):
        """Ein Polynom verhaelt sich wie eine Ente, wobei ein Polynom grad-oft quakt."""


help(Polynom)
eins, p, q = Polynom(1), Polynom((3, 7)), Polynom((-3, -4, 1, 0))
print(eins)
print(p)
print(q)
