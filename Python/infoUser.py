import os
import cpuinfo as cpu

"""
Autor: Mario Benítez Vázquez
fecha:26/03/2025
"""

if os.getuid() != 0:
   print(" no eres Root ")
   exit()


while True:
   print("Opción 1: Muestra información del SSOO y la información de la CPU.")
   print("Opción 2: Ingrese un usuario, mostrar informacion del usuairo, crear si no existe")
   print("Opción 3: Ingrese un directorio. Comprobar si directorio existente y si es un directorio, si no existe crear.")
   print("Opción 4: Salir del programa")
   
   opt = int(input(" Ingrese una opcion "))
   match opt:
       case 1:
           print(os.uname().sysname)
           print(cpu.get_cpu_info()['brandraw'])
       case 2:
           usuario = input(" Ingrese un usuario ")
           fich = open("/etc/passwd", "r")
           cnt = fich.readlines()
           enc = 0
           for i in cnt:
               if i.split(":")[0] == usuario:
                   enc = 1
                   final = i
                   break
           if enc == 1:
               print(final)
           else:
               print(" Usuario no encontrado ")
               os.system("sudo useradd "+ usuario)
               print(" Usuario creado ")
       case 3:
           directory = input(" Ingrese un directorio ")
           if os.path.exists(directory):
               if os.path.isdir(directory):
                   print(" es un directorio ")
               else:
                   print(" No es un directorio, pero existe ")
           else:
               os.mkdir(directory)
               print(" Carpeta creada ")
       case 4:
           print(" Finalizando... ")
           break
       case _:
           print(" ¡ERROR! ")
