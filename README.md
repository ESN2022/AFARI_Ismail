# AFARI_Lab1 

# A-Introduction :

Dans ce TP, nous allons utiliser la carte DE10-Lite et le système Nios2 pour créer un chenillard de LED. Nous allons utiliser du code VHDL pour concevoir un circuit qui permet de contrôler l'allumage des LED en séquence. Ce TP vous permettra de comprendre les concepts de base de la conception de circuits numériques et de découvrir comment utiliser une carte de développement pour tester vos designs.

![image](https://user-images.githubusercontent.com/121948245/213643177-49d85134-236b-42bb-a1f5-9eef20205e37.png)

# B-Architechture :

## 1-Allumer une seule Led :

Dans un premier lieu on va allumer une seule led. Pour ceci on va constuire l'architechture suivante dans laquelle on aura besoin d'une RAM, un processeur NIOS2, un JTAG et un PIO pour les LEDs.

![image](https://user-images.githubusercontent.com/121948245/213645329-1b19f8b8-aa83-44e1-88cc-4852c47249c5.png)

Après le mapping on configure nos composants afin d'avoir la bonne taille du PIO, la bonne taille de la memoire et la bonne version de Nios2 à savoir la version économique.

Ensuite on assigne les adresses d'une facon automatique afin de ne pas avoir des chevauchement:

![image](https://user-images.githubusercontent.com/121948245/213646063-d42b21c0-3cab-43db-bbef-4a9d330c2618.png)

L'étape suivante est de générer le VHDL.
Après la generation du VHDL, on code notre Top Entity en VHDL afin de pouvoir instancier les E/S.

Ensuite on assigne les LEDs et la clock physiquement aux pins de notre FPGA. Pour cela on utilise "Pin Planner".

![image](https://user-images.githubusercontent.com/121948245/213647231-c9ee9e74-f9ec-4e9a-82c0-6e6e2a56affe.png)

La prochaine étape consiste à compiler notre Top level Entity 

![image](https://user-images.githubusercontent.com/121948245/213647466-fb0d6cf8-de78-4028-b4e2-eb777f1849a9.png)

Une fois cette étape est faite on peut flasher notre carte:

![image](https://user-images.githubusercontent.com/121948245/213647780-6e4a3218-20d2-4b5c-942c-3cae69646d65.png)

On genere le bsp, on écrit notre code C et fait notre MakeFile et enfin on compile notre programme (Ces étapes seront détaillées dans la prochaine partie)

## 2-Allumer le chenillard :

Pour allumer le chenillard on utilise le code C suivant :

![image](https://user-images.githubusercontent.com/121948245/213648776-162eba43-4be6-442e-9df5-f1b1d3131c69.png)

Ensuite on lance notre compilation sachant que le bsp et makefile ont été déjà généré.
Pour ceci on utilise la commande suivante :

![image](https://user-images.githubusercontent.com/121948245/213649092-0aa6d6df-832d-4ef7-9c79-a072aff0f4eb.png)

## 3-Controle de la vitesse avec 4 switchs et ajout d'un bouton de lancement:

Dans cette partie on ajoute 4 switchs afin de controler la vitesse du chenillard et un bouton pour lancer le chenillard.
Notre architechture devient la suivante:

![image](https://user-images.githubusercontent.com/121948245/213649744-4e380d2f-ade4-4b63-8d2a-91e5a499eb71.png)

On ajoute les 5 entrés à pio_1.
On regener le VHDL, on modifie notre TOP Level, on map nos entrées avec le FPGA sur Pin Planner et on recompile. Une fois ceci est fait, on reflashe notre carte, on regenere la bsp, et on modifie notre code C de telle facon qu'il prend en charge les nouveaux PIOs ajoutés.

Ensuite j'ai essayé de lire les entrés des switchs afin de pouvoir comprendre la valeure envoyé par chaque changement. Pour celà on utilise la fonction alt_printf et on visualise les résultats sur "nio2-terminal"

![image](https://user-images.githubusercontent.com/121948245/213650657-5d7428c3-6e2d-401d-9964-77637a386153.png)

On remodifie le code en fonction de ces résultats et on obtient à la fin de ce TP un chenillard sur notre carte avec une vitesse variable et controlable par des switchs.


## 4-Résultat :

Sans control de vitesse:

https://user-images.githubusercontent.com/121948245/213652160-2e31c9d9-37ba-41e3-86b7-8af173244a35.mp4

Avec control de vitesse:

https://user-images.githubusercontent.com/121948245/213652767-c055eda9-a970-4e91-be2c-3618080709ba.mp4





