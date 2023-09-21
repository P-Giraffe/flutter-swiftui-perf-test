# Test de performances Flutter vs SwiftUI (et React Native)

Je suis tombé sur un article qui compare les performances entre Flutter, React Native et SwiftUI.
Voici le lien de l'article en question : https://blog.theodo.com/2023/09/ios-rendering-performance/
Pour faire ce test, l'auteur crée sur chacune des plateformes 1000, 2000 et 3000 vues simples, puis des vues avec du texte.
Il mesure le temps de lancement des apps sur SwiftUi, puis React Native et enfin Flutter avec chacun des cas de test.

Les résultats semblaient complètement fous, avec par exemple Flutter qui était 6 fois plus lent que SwiftUI 😱 et même certains tests qui étaient plus rapides avec 2000 éléments qu'avec 1000 éléments sur la même plateforme.

J'ai donc décidé de ré-executer ses tests sur ma machine en optimisant un peu le code Flutter et Dart et avec un processus plus standardisé entre les 3 plateformes.

Les résultats que j'ai obtenu sont radicalement différents ⚡️

# Explications sur YouTube :
J'ai expliqué tous les tests et les conclusions sur https://youtu.be/pxalC4IZb4k

Happy coding!
