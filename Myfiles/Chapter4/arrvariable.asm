//for(i = 0; i < n; i++)
//{
//	arr[i] = -1;
//}

// suppose arr = 100 and n =10

//Let arr = 100

@100
D = A
@arr
M = D

//Let n = 10

@10
D = A
@n
M = D

//Let i = 0
@i
M = 0

(Loop)
// if(i == n) goto END
@i
D = M
@n
D = D-M
@END
D;JEQ

//RAM[arr + i] = -1

@arr
D = M
@i
A = D + M
M = -1

@i
M = M + 1
@Loop
0;JMP

(END)
@END
0;JMP