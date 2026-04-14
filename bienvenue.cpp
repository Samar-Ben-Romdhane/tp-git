#include "fonction-bienvenue.h"
#include <iostream>
#include <cstdlib>
#include <string>

int main(int argc, char* argv[])
{
    if (argc == 1)
    {
        afficherBienvenue();
    }
    else if (argc == 2)
    {
        std::string message = argv[1];
        afficherBienvenue(message);
    }
    else if (argc == 3)
    {
        std::string message = argv[1];
        int nbAffichage = std::atoi(argv[2]);
        if (nbAffichage > 0)
            afficherBienvenue(message, nbAffichage);
        else
            std::cerr << "Erreur : le nombre de répétitions doit être positif." << std::endl;
    }
    else
    {
        std::cerr << "Usage: " << argv[0] << " [message] [nbAffichage]" << std::endl;
        return 1;
    }
    return 0;
}
