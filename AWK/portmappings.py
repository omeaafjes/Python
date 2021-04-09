import re
import pprint

f=open('mac-addr.txt','r')
struct={}

for line in f:
	swname=re.search('@(.*)>',line)
	intf=re.search('(.*) (ge-[0-9]/[0-9]/[0-9])',line)
	if swname:
		m=swname.group(1)
		struct[m]={}
	elif intf:
		h=str(intf.group(2))
		l=str(intf.group(1))
		if not h in struct[m].keys():
			struct[m][h]=[]
		struct[m][h].append(l)

pprint.pprint(struct)
