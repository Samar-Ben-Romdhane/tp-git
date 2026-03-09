# Makefile pour le programme "bienvenue" avec module séparé
TARGET := bienvenue
MODULE := fonction-bienvenue
CXX := g++
CXXFLAGS := -Wall -std=c++11
LDFLAGS :=
RM := rm -f
# Cible par défaut
all: $(TARGET)
# Édition de liens pour créer l'exécutable
$(TARGET): $(TARGET).o $(MODULE).o
	$(CXX) $(LDFLAGS) $^ -o $@
# Compilation du fichier principal
$(TARGET).o: $(TARGET).cpp $(MODULE).h
	$(CXX) $(CXXFLAGS) -c $< -o $@
# Compilation du module
$(MODULE).o: $(MODULE).cpp $(MODULE).h
	$(CXX) $(CXXFLAGS) -c $< -o $@
# Nettoyage des fichiers objets
clean:
	$(RM) *.o
# Nettoyage complet (objets + exécutable)
cleanall: clean
	$(RM) $(TARGET)
# Déclaration des cibles qui ne sont pas des fichiers
.PHONY: all clean cleanall
