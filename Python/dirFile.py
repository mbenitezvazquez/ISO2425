import os.path
import shutil

"""
Mario Benítez Vázquez
Fecha:27/03/25
"""

ListaFicheros = []
ListaDirectorios = []
fich =  open("rutas.txt", "r")

contenido = fich.readlines()

for i in contenido:
    r = i.strip()
    if os.path.isfile(r):
        ListaFicheros.append(r)
    elif os.path.isdir(r):
        ListaDirectorios.append(r)

print("Carpetas:", ListaDirectorios)
print("Ficheros:", ListaFicheros)

while True:

    print("Ingrese una opción: ")
    print("A.- Pedir nombre de fichero y eliminarlo ")
    print("B.- Pedir nombre de directorio y mostrar su información ")
    print("C.- Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino ")
    print("D.- Mostrar lista elegida por el usuario ")
    print("E.- Salir ")
    op = input("Elige una opción: ")

    match op:
        case "A":
            fich = input("Dime el nombre de un fichero para eliminarlo:  ")
            if fich in ListaFicheros:
                os.remove(fich)
                ListaFicheros.remove(fich)  # Eliminar de la lista también
                print("Se ha eliminado correctamente el fichero nombrado ")
            else:
                print("El fichero nombrado no se encuentra en la lista. ")

        case "B":
            dir = input("Dime el nombre de un directorio para mostrar su información:  ")
            if dir in ListaDirectorios:
                contenido = os.listdir(dir)
                print("El contenido del directorio ", dir, "es: ", contenido)
            else:
                print("El directorio nombrado no se encuentra en la lista. ")

        case "C":
            fich = input("Dime el nombre del fichero que quieres copiar:  ")
            dest = input("Cuál es el destino en el cuál quieres que se copie el fichero:  ")
            if fich in ListaFicheros and os.path.isdir(dest):
                shutil.copy(fich, dest)
                print("El fichero se ha copiado en el destino", dest, "correctamente. ")
            else:
                print("Error: Verificar que el fichero existe y el destino es un directorio válido." )

        case "D":
            lista = input("Dime qué lista quieres que se muestre (Ficheros/Directorios) ")
            if lista == "Directorios":
                print(ListaDirectorios)
            elif lista == "Ficheros":
                print(ListaFicheros)
            else:
                print("Esa lista no es válida. Escribe 'Ficheros' o 'Directorios'. ")

        case "E":
            print("Saliendo...")
            break

        case _:
            print("Opción invalida")