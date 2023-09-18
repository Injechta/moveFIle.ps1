# Script PowerShell de Copie de Répertoire avec Robocopy

Ce script PowerShell permet de copier le contenu d'un répertoire source vers un répertoire cible en utilisant la commande `robocopy`. Il prend également en compte les limitations de longueur de chemin sous Windows.

## Utilisation

1. **Chemin du Répertoire Source à Archiver**

   Modifiez la variable `$source` pour spécifier le chemin du répertoire que vous souhaitez archiver.

2. **Emplacement du Répertoire Cible**

   Modifiez la variable `$target` pour indiquer l'emplacement où vous souhaitez stocker l'archive.

3. **Nom du Fichier de Journal**

   Le nom du fichier de journal est généré automatiquement à partir du nom du répertoire source. Vous pouvez personnaliser le nom en modifiant la variable `$logName`.

4. **Options de Copie Robocopy**

   Le script utilise `robocopy` avec plusieurs options pour effectuer la copie. Voici un aperçu de ces options :
   
   - `/256` : Gère les chemins de longueur supérieure à 260 caractères.
   - `/NP` : Désactive la journalisation de la progression.
   - `/LOG:"C:\Archivage\Log\$logName.txt"` : Spécifie l'emplacement et le nom du fichier journal où les détails de la copie seront enregistrés.

5. **Suppression du Répertoire Source (Optionnel)**

   Le script contient une ligne de commande pour supprimer le répertoire source après la copie. Vous pouvez décommenter cette ligne si vous souhaitez supprimer le répertoire source une fois la copie terminée.

## Exécution du Script

- Vous pouvez exécuter le script en utilisant PowerShell. Assurez-vous d'avoir les autorisations appropriées pour accéder aux répertoires source et cible.

```powershell
.\NomDuScript.ps1
