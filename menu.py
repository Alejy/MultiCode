import sys

def menu():
    print("Esto es un menu para Python: ")
    print("-h --Reporta el menu de ayuda")
    print("-p 192.168.1.1 -- Reporta la IP indicada")
    print("-r 192.168.1.0/24 -- Reporta el rango de IP indicado")

def report_ip(ip):
    print(ip)

def report_range_ip(range_ip):
    print(range_ip)


if __name__=="__main__":
    if len(sys.argv) > 1:
        if sys.argv[1] == "-h":
            menu()
        elif sys.argv[1] == "-p":
            report_ip(sys.argv[2])
        elif sys.argv[1] == "-r":
            report_range_ip(sys.argv[2])
        else:
            print("Indica un parametro valido")
            menu()
    else:
        menu()
