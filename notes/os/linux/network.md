# Сети Linux
Linux используется для создания всех видов сетевых систем, включая:
- Брандмауэры
- Маршрутизаторы
- Серверы имен
- Сетевые устройства хранения данных 
  И так далее.

__Поддерживаемые команды__
- `ping` Посылает пакеты ICMP ECHO_REQUEST узлам сети
- `traceroute` выводит трассировку маршрута пакетов к сетевому узлу
- `ip` Выводит информацию о маршрутах и устройствах
- `netstat` Выводит список сетевых соединений и пр.
- `ftp` Программа для передачи данных по сети
- `wget` Загрузчик файлов из сети
- `ssh` Программа для удалённого входа в системы

## ping
Это самая простая сетевая команда, она посылает специальные
сетевые пакеты `ICMP ECHO_REQUEST` указанному сетевому узлу.
Большинство сетевых устройств принимает эти пакеты и отвечает на них,
но могут и блокировать в целях безопасности, чтобы запутать.
Если сеть функционирует должным образом, потерь пакетов не будет.
Успешная работа ping означает что: интерфейсные карты, кабели,
маршрутизаторы и шлюзы - находятся в рабочем состоянии.
Синтаксис `ping -c 3 google.com`
```bash
PING google.com (216.58.210.174) 56(84) bytes of data.
64 bytes from hem08s07-in-f14.1e100.net (216.58.210.174): icmp_seq=1 ttl=58 time=49.4 ms
64 bytes from mad06s10-in-f14.1e100.net (216.58.210.174): icmp_seq=2 ttl=58 time=43.5 ms
64 bytes from hem08s07-in-f14.1e100.net (216.58.210.174): icmp_seq=3 ttl=58 time=47.9 ms

--- google.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2004ms
rtt min/avg/max/mdev = 43.505/46.961/49.445/2.520 ms
```

## traceroute 
Програма traceroute (или tracepath) выводит список всех переходов
или hops на пути сетевого трафика между локальной системой и
указанным узлом сети.
Если информация о маршрутизаторах блокируется, можно передать опции
`-T` или `-I`
```bash 
traceroute to google.com (216.58.210.142), 30 hops max, 60 byte packets
 1  _gateway (192.168.0.1)  10.270 ms  10.910 ms  10.689 ms
 2  100.92.0.1 (100.92.0.1)  6.977 ms  7.329 ms  7.156 ms
 3  * * 94.233.252.183 (94.233.252.183)  6.623 ms
 4  * 94.233.252.182 (94.233.252.182)  6.281 ms *
 5  * * *
 6  * * *
 7  72.14.209.89 (72.14.209.89)  30.027 ms  32.859 ms  32.673 ms
 8  * * *
 9  209.85.245.2 (209.85.245.2)  26.821 ms 108.170.250.129 (108.170.250.129)  27.161 ms 108.170.250.33 (108.170.250.33)  29.618 ms
10  108.170.250.34 (108.170.250.34)  26.425 ms 108.170.250.66 (108.170.250.66)  35.910 ms 108.170.250.99 (108.170.250.99)  28.564 ms
11  142.250.238.214 (142.250.238.214)  51.591 ms 216.239.51.32 (216.239.51.32)  56.313 ms 172.253.66.116 (172.253.66.116)  54.881 ms
12  142.251.237.140 (142.251.237.140)  61.234 ms 142.250.232.252 (142.250.232.252)  56.046 ms  55.716 ms
13  142.250.37.81 (142.250.37.81)  47.379 ms 142.250.37.65 (142.250.37.65)  41.380 ms  42.454 ms
14  142.250.229.87 (142.250.229.87)  52.789 ms  52.420 ms 142.250.229.89 (142.250.229.89)  50.619 ms
15  mad06s09-in-f14.1e100.net (216.58.210.142)  52.368 ms  53.102 ms  51.068 ms
```
Здесь можно увидеть что на пути от нашей системы и google.com
находится 15 маршрутизаторов. 
Также для маршрутизаторов выводится
- Имена хостов 
- IP адреса
- Информация о производительности
  время передачи и подтверждения пакетов

## ip
Программа ip это многофункциональный инструмент для настройки
параметров подключения к сети. Является заменой __ifconfig__
С помощью `ip a` можно исследовать сетевые интерфейсы и таблицы маршр.
```bash
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: wlp0s20u1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 3c:33:00:03:44:24 brd ff:ff:ff:ff:ff:ff
    inet 192.168.0.103/24 brd 192.168.0.255 scope global dynamic noprefixroute wlp0s20u1
       valid_lft 5125sec preferred_lft 5125sec
    inet6 fe80::74fc:c788:3c70:f5b2/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```
Вывод выше показывает что наша система имеет два сетевых интерфейса
- lo это петлевой интерфейс (loopback), виртуальный интерфейс
  который система использует чтобы разговарить сама с собой.
- wlp0s20u1 сетевой интерфейс
Наличие слова `UP` в первой строке каждого интерфейса, указывает что он
включен

## netstat
Программа netstat используется для различных настроек сети и статистик.
Опция `netstat -ie` исследует сетевые интерфейсы в системе
```bash
Kernel Interface table
lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 18  bytes 2107 (2.0 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 18  bytes 2107 (2.0 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlp0s20u1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.0.103  netmask 255.255.255.0  broadcast 192.168.0.255
        inet6 fe80::74fc:c788:3c70:f5b2  prefixlen 64  scopeid 0x20<link>
        ether 3c:33:00:03:44:24  txqueuelen 1000  (Ethernet)
        RX packets 15446  bytes 12173943 (11.6 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 6311  bytes 834009 (814.4 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

```
Опция `netstat -r` выводит таблицу маршрутизации ядра
```bash
Kernel IP routing table
Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
default         _gateway        0.0.0.0         UG        0 0          0 wlp0s20u1
192.168.0.0     0.0.0.0         255.255.255.0   U         0 0          0 wlp0s20u1
```
Первое поле - IP адресс. IP адрес заканчивающийся нулём соответствуют
целым сетям. Такие адреса подразумевают - любой узел в лок. сети.
Следущее поле - Gateway (шлюз) определяет имя или IP адрес шлюза
(маршрутизатора) для выхода текущего узла в указанную сеть.
`*` в этом поле указывает что использовать шлюз не требуется.

