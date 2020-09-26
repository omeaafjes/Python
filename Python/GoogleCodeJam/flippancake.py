inp=open('2016B-mini.txt','r')
inpl=inp.readlines()
inpli=[d.rstrip('\n') for d in inpl]
lin=len(inpli)

def flipList(inlist):
	le=len(inlist)
	for i in range(le):
		if inlist[i]=='+':
			inlist[i]='-'
		elif inlist[i]=='-':
			inlist[i]='+'
	return inlist


def findBorder(pc):
	count=0
	if (pc[0])=='-':
		init='-'
		print("Initial - found!")
	else: 
		init='+'
		print("Initial + found!")
	while (pc[count]==init and count<len(pc)-1): 
		print("COUNT"+str(count))
		count+=1
	return count	

def flipCakes(inp):
	fc=0
	a=[x for x in inp]
	while (a.count('+') < len(a)):
			border=findBorder(a)
			if border==1:
				fc=1
			else:

				print("BORDER: "+str(border))
				top=a[0:border]
				print("TOP:"+str(top))
				bottom=a[border:]
				print("BOTTOM: "+str(bottom))
				flipList(top)
				print("TOP after FLIP: "+str(top))	
				a=top+bottom
				print("A after FLIP: "+str(a))
				fc+=1
				print(a) 
	return fc

for i in range(lin):
	#print(inpli[i])
	print(flipCakes(inpli[i]))



	
 
