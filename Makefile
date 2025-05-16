.PHONY: clean build

# clean : désactive (si nécessaire) et supprime totalement le venv
clean:
	@echo "🔒 Si votre venv est actif, faites d'abord: deactivate"
	@echo "🚮 Suppression du dossier venv…"
	rm -rf venv

# build : recrée le venv, installe les dépendances, et indique comment l'activer
build: clean venv/bin/pip
	@echo "🌱 Création du venv…"
	@echo "⚙️ Mise à jour de pip et installation des dépendances…"
	venv/bin/pip install -r requirements.txt
	@echo "✅ Environnement prêt !"

venv/bin/pip:
	python3.12 -m venv venv
