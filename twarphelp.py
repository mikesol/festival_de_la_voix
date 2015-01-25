def f(x,y) :
  if y == 0 :
    return x
  if y == 1 : 
    return x + 3
  if y == 2 :
    return x -1
  if y == 3 : 
    return x + 1

for x in range(60) :
  print x, f(x,x%4),