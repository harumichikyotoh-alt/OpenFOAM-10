#include "decompositionMethod.H"

int main() {
    Foam::decompositionMethod* method = Foam::decompositionMethod::New("scotch");
    method->decompose();
    return 0;
}
