.PHONY: install build clean

install:
    @echo "📦 Installation des dépendances..."
    pip install -r requirements.txt
    @echo "✅ Dépendances installées !"

build:
    @echo "🔨 Build du projet en cours..."
    python setup.py build
    @echo "🏗️  Build terminé !"

clean:
    @echo "🧹 Nettoyage du projet..."
    rm -rf build dist *.egg-info __pycache__
    @echo "🗑️  Projet nettoyé !"
