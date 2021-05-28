file1 = open("input file.csv","r") 
d = dict()
a=file1.readlines()
for i in a:
  temp=i.split(',')
  d[temp[0]]=[]
for i in a:
  temp=i.split(',')
  d[temp[0]].append(temp[1].strip())
for i,j in d.items():
  j = list(set(j))
  if(len(j) == 1):
    print(i,end=';')
  else:
     print(i,end=',')
  res = ""
  while(len(j)):
      res+=(j.pop(0)+";")
  print(res[:-1])