// Идем влево до начала числа(в самом начале кода, а также после перемещения символа с четной позиции)
00,B,<,00 
00, ,<,00 
00,A,<,00 
00,1,<,00 
00,0,<,00
00,d,<,00
00,a,<,00
00,c,<,00
00,b,<,00
00,R,>,rep
// Идем влево после перемещения символа с нечетной позиции
02,B,<,02 
02, ,<,02 
02,A,<,02 
02,1,<,02 
02,0,<,02
02,a,>,rep2
02,b,>,rep2
02,R,>,rep2
// Замена символа с нечетной позиции и переход в состояние его перемещения
rep,1,a,mv11 
rep, ,>,rep 
rep,0,b,mv10 
rep,A,A,del
rep,a,>,rep
rep,b,>,rep
rep,c,>,rep
rep,d,>,rep
// Замена символа с четной позиции и переход в состояние его перемещения
rep2,1,c,mv21 
rep2, ,>,rep2 
rep2,0,d,mv22
// Перемещение 1 с нечетной позиции
mv11,1,>,mv11 
mv11,0,>,mv11 
mv11,A,>,put1 
mv11, ,>,mv11
mv11,a,>,mv11
// Перемещение 0 с нечетной позиции
mv10,1,>,mv10 
mv10,0,>,mv10 
mv10,A,>,put0 
mv10, ,>,mv10
mv10,b,>,mv10
// Перемещение единицы с четной позиции
mv21,1,>,mv21 
mv21,0,>,mv21 
mv21,B,>,put21 
mv21,A,>,mv21 
mv21, ,>,mv21
mv21,c,>,mv21
// Помещение единицы с четной позиции на место
put21, ,1,00 
put21,1,>,put21 
put21,0,>,put21
// Перемещение 0 с четной позиции
mv22,1,>,mv22 
mv22,0,>,mv22 
mv22,B,>,put22 
mv22,A,>,mv22 
mv22, ,>,mv22
mv22,d,>,mv22
// Помещение 0
put22, ,0,00 
put22,1,>,put22 
put22,0,>,put22

put1, ,1,02 
put1,1,>,put1 
put1,0,>,put1

put0, ,0,02 
put0,1,>,put0 
put0,0,>,put0

del,A, ,del 
del, ,>,del 
del,B, ,del2 
del,1,>,del 
del,0,>,del

del2,1,<,del2 
del2,R, ,del3 
del2,0,<,del2 
del2, ,<,del2
del2,a,1,del2
del2,b,0,del2
del2,c,1,del2
del2,d,0,del2

del3, ,#,00
