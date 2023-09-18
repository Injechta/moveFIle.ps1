# Chemin du répertoire source à archiver
$source = "K:\commer\Affaire\J010 - SAINT ALBAN"

# Emplacement où stocker l'archive
$target = "\\business2\commer\Affaire"

# Nom du fichier de log qui sera généré
$directory = (Get-Item $source).Name
$logName = "Copie - $directory"

# Copie avec robocopy sans l'option /MIR et avec journalisation
robocopy "$source" "$target" /256 /NP /LOG:"C:\Archivage\Log\$logName.txt"

# Suppression du répertoire source (optionnel, à décommenter si nécessaire)
# Remove-Item -Path $source -Recurse -Force
