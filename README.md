# about armctf
armctf is a project that provides downloadable vulnerable virtual machines, rebuilt from amd64 to arm64. it's for users to practice ctf challenges on arm-based systems.  

vulnerable machines are sourced from vulnhub, hackmyvm and vulnyx. that's why full credit goes to the original creators.  

## why?
a week ago, a friend asked me if he can find vulnhub-like machines to import and solve on his macbook with m series chip. a few days later i thought about:  

1- not everyone wants to/should pay paid services to solve ctfs. vulnhub, hackmyvm and vulnyx are great resources.  
2- not everyone uses windows systems.  
3- utm'ing is much hassle.  
4- there is no good solution for this. (afaik)  
5- i already have macbook with m series chip.  

so i decided to do it as a side project.  

## important note
don't expect ctfs to be 1:1 in arm64 rebuild. expect some changes, especially suid binaries. some struggles:

1- buffer overflows  
_differ from x86_  

2- binary exploits  
_need source code, which is not possible._  

3- kernel exploits  
_vmware fusion is not supporting linux kernels below 4.idontremember.0. best i can offer is dirtypipe, which is on kernel version 5.10.0-8._  

4- most of cves  
_no arm version, no party._  

5- windows machines  
_currently no, but thinking about it._  

## vm resources
all vms has 2 cpu and 2 ram configuration. you can lower these if you are out of sources.  

## downloading 
downloads handled by nextcloud, server located in germany. every link's password is `KedileriSeverim666`. if you can't reach nextcloud, you're either banned by nextcloud or i'm doing some maintenance. mail me if problem persists.

## importing
ctfs are prepared on vmware fusion, so sticking with it is a good idea.

let's say, you downloaded `driftingblues3.7z` to `emre` folder.  
![](https://raw.githubusercontent.com/armctf/armctf/main/gitassets/2.jpg)


double click it to extract. (or `7z x driftingblues3.7z`)
![](https://raw.githubusercontent.com/armctf/armctf/main/gitassets/1.jpg)


there is now `armctf.vmwarevm` machine folder. its name is `armctf.vmwarevm` because it's a template, which i build machines on original snapshot.
![](https://raw.githubusercontent.com/armctf/armctf/main/gitassets/3.jpg)


open vmware fusion. follow `file > open` or `command + o`. browse your freshly extracted `armctf.vmwarevm` and open it. after importing, library entry is added.  
![](https://raw.githubusercontent.com/armctf/armctf/main/gitassets/4.jpg)
![](https://raw.githubusercontent.com/armctf/armctf/main/gitassets/5.jpg)
![](https://raw.githubusercontent.com/armctf/armctf/main/gitassets/6.jpg)


before starting the vm, don't forget to configure network. nat, cable bridge or wifi bridge.. your choice.
![](https://raw.githubusercontent.com/armctf/armctf/main/gitassets/7.jpg)


let's roll!  

## contributing
since rebuilding ctfs are taking a lot of time, i'm actively seeking your help to expand this project.

you can find base images below. root password is `asd`.  

debian 12 (kernel version 6.1.0-37)  
link: https://nc.zurrak.com/s/sx7k36LtTCK3g8o  
sha256 checksum: 5d87892f7d08e25bb6813538c660b30eb438abd6484b798fcfa222ca533cfd0c  

debian 11 (kernel version 5.10.0-8) >>> it's for ctfs that has kernel exploiting step  
link: https://nc.zurrak.com/s/bjeJo6ekLiS7q4D  
sha256 checksum: 537bdbf37958204d91d54fd6c1afcf82c36313b9cdbf4cce83ad775d058e457e  

you can always contact me from [here](https://armctf.com/contact.html).

