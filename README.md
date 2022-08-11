# Programmer un économiseur d'écran (Magazine Informatique Et Développement n°3)

Sources liés à l'article "[Programmer un économiseur d'écran](https://developpeur-pascal.fr/programmer-un-economiseur-d-ecran-dans-le-magazine-informatique-et-developpement-3-juillet-1999.html)" publié dans le magazine *Informatique Et Développement* n°3 en juillet 1999

Ces projets ont été développés sous Delphi 4 et concluent [le travail initié lors de la précédente publication](https://developpeur-pascal.fr/economiseur-d-ecran-sous-windows-32-en-delphi-4-dans-le-magazine-informatique-et-developpement-1-mai-1999.html).

Pour en savoir plus rendez-vous sur [les publications](https://developpeur-pascal.fr/publications.html) dans le [blog Développeur Pascal](https://developpeur-pascal.fr/) où j'ai repris [l'article d'origine](https://developpeur-pascal.fr/programmer-un-economiseur-d-ecran-dans-le-magazine-informatique-et-developpement-3-juillet-1999.html).

## Codes sources dans le dossier /src

3 exemples de projets pour comprendre le fonctionnement des économiseurs d'écran développés sous Windows.

Le dernier exemple est fonctionnel. Son fichier binaire est à votre disposition si vous voulez l'essayer chez vous.

## Programme de l'économiseur d'écran final dans le dossier /bin

Le programme "ssExemple_6.scr" est un simple économiseur d'écran pour Windows. Il a été compilé en 32 bits le 1 juillet 1999 et fonctionne sur toutes les versions de Windows jusqu'à (au moins) la version 10.

Développé sous Delphi, tout est dans l'exécutable, il n'y a aucune dépendance à des DLL ou un framework qu'il vous faudrait installer en plus si vous voulez le tester ou l'utiliser sur votre ordinateur.

## Captures d'écran dans le dossier /screen-captures

Ces captures d'écran ont été faites par rapport à l'économiseur d'écran final. Celui téléchargeable en version compilée dans le dossier /bin du projet.

![capture écran de l'économiseur dans le panneau de configuration](https://github.com/DeveloppeurPascal/informatiqueetdeveloppement-03/raw/main/screen-captures/paneau_de_config.jpg)

"paneau_de_config.jpg" montre comment l'économiseur d'écran s'intégrait au panneau de configuration de Windows avec une prévisualisation directement dans la fenêtre. Dans Windows 10 ça correspondrait au programme "écran de veille" bien caché quelque part dans les paramètres ou accessible depuis une recherche faite sur le menu de démarrage.

![capture écran du menu contextuel de l'explorateur de fichiers](https://github.com/DeveloppeurPascal/informatiqueetdeveloppement-01/raw/main/screen-captures/option-for-scr-file.png)

"option-for-scr-file.png" correspond aux options disponibles depuis l'explorateur de fichiers Windows pour les fichiers d'extension SCR qui sont des EXE prenant en charge les paramètres définis par Microsoft pour les économiseurs d'écran sous Windows.

![capture écran de la boite de dialogue "à propos" du programme](https://github.com/DeveloppeurPascal/informatiqueetdeveloppement-01/raw/main/screen-captures/about-box.png)

"about-box.png" est la fenêtre que j'ai choisi d'afficher en guise d'écran de paramétrage de l'économiseur d'écran.

![capture écran de l'économiseur en fonctionnement](https://github.com/DeveloppeurPascal/informatiqueetdeveloppement-01/raw/main/screen-captures/screen-saver-in-action.png)

"screen-saver-in-action.png" est une capture de l'activité de l'économiseur d'écran (remplissage de l'écran avec des carrés de couleur).
