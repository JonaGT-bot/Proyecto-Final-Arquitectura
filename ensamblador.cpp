#include <iostream>
using namespace std;

int main() 
{
    int cantidadNumeros, x, multiplos = 0;

    cout << "Ingrese la cantidad de numeros a verificar (desde 1 hasta N): ";
    cin >> cantidadNumeros;

    cout << "Ingrese el valor de X (para contar los multiplos de X): ";
    cin >> x;

    for (int i = 1; i <= cantidadNumeros; ++i) {
        if (i % x == 0) {
            ++multiplos;
        }
    }

    cout << "Hay " << multiplos << " multiplos de " << x << " entre 1 y " << cantidadNumeros << "." << endl;

    return 0;
}