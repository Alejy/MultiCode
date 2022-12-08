import sys

args = sys.argv[1:]
if len(args) < 2:
        print('Indica el rango de numeros (ejemplo.py 1 500)')
        sys.exit(1)

num1 = int(sys.argv[1])
num2 = int(sys.argv[2])
lista = list(range(num1, num2))

f = open('NumberList.txt','a')

for i in lista:
    num = str(i).zfill(len(str(num2)))
    f.write('\n' + num)

f.close()
