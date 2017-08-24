% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x

% 
x=1;
y=x+x

 y =

      2
% Gives a sensisble result because x is a variable representing an integer,
% so y variable will also yield an integer.

a = '1';
b = a+a

%
a='1';
b=a+a

b =

    98
% Does not give a sensible result because a is a character variable (hence
% the quotations). Because it makes no logical sense to mathematically add
% a character variable to a character variable, MATLAB uses type coercion
% to convert the '1' character to a predefined, corresponding numerical value
% of 49. Adding 49 to 49 thus yields 98, accounting for the odd, unexpected
% yield. 

%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]

% 
x2 = [x x]

x2 =

     1     1
% This statement creates a row vector of two x values, which were previously
% made to represent the integer 1. 

% 
a2=[a a]

a2 =

    '11'
% This statement creates a row vector of two a values, which were
% previously made to represent the character value '1'. This array is
% different from that of x2 in that it is a character array; x2 is a
% numerical array. 

% 
x2b=[x; x]

x2b =

     1
     1
% 
size(x2)

ans =

     1     2
% 
size(x2b)

ans =

     2     1
% This statement creates a column vector of two x values that were
% previously made to represent the integer 1. This statement is
% different from x2 in that it is a column vector (has 2 rows and 1 column
% as its form); x2 is a row vector (has 1 row and 2 columns as its form)
% according to the size command. 

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

% 
a=1;
b=2;
a==b

ans =

  logical

   0

a=b

a =

     2

a

a =

     2

b

b =

     2

a==b

ans =

  logical

   1
% The first "==" commands yields a 0 to indicate that a and b are not equal
% to one another (in this case, 0 is the same as claiming that a=b is
% false). Before the second "==" command, a is set to equal "=" b, which causes
% both a and b to be equal to the integer 2. When the second "==" command
% is applied, the result is the logical value 1 as expected (indicating that a=b is
% true), which is the opposite result of that seen in the first "=="
% operation. 

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b

% 
a = [1, 2, 4];
a

a =

     1     2     4
% This operation yields a row vector/array of the values 1, 2, and 4

% 
b=[0,2,7];
b

b =

     0     2     7
% This operation yields a row vector/array of the values 0, 2, and 7

% 
a==b

ans =

  1×3 logical array

   0   1   0
% This operation yields a logical array in which the first element of a is
% compared with the first element of b for equivalency, and so on for each remaining
% element in the arrays. Only the second element of both arrays are
% equivalent to each other, as indicated by the logical value of 1. 


%explain why this gives an error:

b = [2, 3];
a == b

% 
b=[2,3];
a==b
Matrix dimensions
must agree.
%  This gives an error because as inidcated by the MATLAB response, a is an
%  array of dimensions 1x3 while b is an array of dimensions 1x2. The
%  logical comparison therefore, cannot be made between two arrays of
%  different dimensions. 

%explain why this does not give an error
b = 2;
a == b 

% 
b=2;
a==b

ans =

  1×3 logical array

   0   1   0
% This operation does not give an error because MATLAB interprets this as
% comparing the integer value of 2 in the b variable to every value in the
% a array to determine equivalency. The value of b is equal to the second
% element of the a array, as indicated by the logical value of 1 as the
% second element of the yielded logical array. 

%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

% 
oneToTen = 1:10;
oneToTen
ans =

     1
     2
     3
     4
     5
     6
     7
     8
     9
    10

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]

% 
[oneToTen, oneToTen+10]

ans =

  Columns 1 through 3

     1     2     3

  Columns 4 through 6

     4     5     6

  Columns 7 through 9

     7     8     9

  Columns 10 through 12

    10    11    12

  Columns 13 through 15

    13    14    15

  Columns 16 through 18

    16    17    18

  Columns 19 through 20

    19    20
% This second operation works to produce an array of the numbers 1 through
% 20. The second argument in the code ("oneToTen+10") adds the number 10 to
% each number in the consecutive series 1:10, thus yielding a final array
% of the numbers 1-20. 

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty

% 
x=2:2:20

x =

     2     4     6     8    10    12    14    16    18    20
[oneToTen(2:2:10), oneToTen(2:2:10)+10]

ans =

     2     4     6     8    10    12    14    16    18    20

% 2. odd numbers from one to nineteen

% 
y=1:2:19

y =

     1     3     5     7     9    11    13    15    17    19
[oneToTen(1:2:9), oneToTen(1:2:9)+10]

ans =

     1     3     5     7     9    11    13    15    17    19

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)

% 
x=2:2:20

x =

     2     4     6     8    10    12    14    16    18    20

fliplr(x)

ans =

    20    18    16    14    12    10     8     6     4     2

z=[oneToTen(2:2:10), oneToTen(2:2:10)+10]

z =

     2     4     6     8    10    12    14    16    18    20

fliplr(z)

ans =

    20    18    16    14    12    10     8     6     4     2
    
% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)

% 
oneToTen=oneToTen';
oneToTen

oneToTen =

     1
     2
     3
     4
     5
     6
     7
     8
     9
    10

fliplr(oneToTen)

ans =

     1
     2
     3
     4
     5
     6
     7
     8
     9
    10
% The fliplr function is not useful here because it only flips left to
% right along the second dimension, the second dimension being the single
% column of the newly made column vector (made with the ' argument, which
% turns the original oneToTen row vector into a oneToTen column vector).
% To flip the order of the numbers in the array oneToTen (column vector), it would
% be more useful to use the flipud function, which will flip elements
% upside down along the first dimension. 

%
oneToTen=1:10;
oneToTen

oneToTen =

     1     2     3     4     5     6     7     8     9    10

oneToTen=oneToTen';
oneToTen

oneToTen =

     1
     2
     3
     4
     5
     6
     7
     8
     9
    10
% oneToTen was converted into a column vector here, so fliplr command is
% not useful.
% 
flipud(oneToTen)

ans =

    10
     9
     8
     7
     6
     5
     4
     3
     2
     1
% flipud command is useful on the column vector

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

% 
m1=ones(2);
m1

m1 =

     1     1
     1     1

m2=2*ones(2);
m2

m2 =

     2     2
     2     2

%explain the output of these two commands:
m1*m2
m1.*m2

% 
m1*m2

ans =

     4     4
     4     4
% This command "*" will yield the matrix product of m1 and m2. The number
% of columns of m1 equals the number of rows of m2 therefore, matrix
% multiplication can be accomplished here to yield a 2x2 matrix of fours as
% a result.

% 
m1.*m2

ans =

     2     2
     2     2
% The ".*" command denotes element-by-element multiplication, thus yielding
% a 2x2 matrix of twos as a result. 
     
%explain this command:
m2./m1

% 
m2./m1

ans =

     2     2
     2     2
% In this command, "./" indicates element-by-element division, and since m1
% and m2 are matrices of the same size, this command will successfully
% yield a 2x2 matrix of twos as a result. 

%extra credit: explain why this command gives a warning:
m2/m1

%
m2/m1
Warning: Matrix is singular to working precision. 

ans =

   NaN   NaN
   NaN   NaN
% The "/" operator here yields a warning because the slash indicates matrix
% division of m1 into m2, which is the same as taking m2 and multiplying by
% the inverse of m1. The inverse of m1 will yield undefined elements(division by zero),thus
% complicating the matrix division.

%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

% 
rand_nums = rand(5);
rand_nums

rand_nums =

    0.8147    0.0975    0.1576    0.1419    0.6557
    0.9058    0.2785    0.9706    0.4218    0.0357
    0.1270    0.5469    0.9572    0.9157    0.8491
    0.9134    0.9575    0.4854    0.7922    0.9340
    0.6324    0.9649    0.8003    0.9595    0.6787

%explain what is being done in each of the following lines

rand_nums(2,3)

% 
rand_nums(2,3)

ans =

    0.9706
% This line of code is subsetting for the element in the second row and
% third column of the 5x5 random number matrix, which is 0.9706. 

rand_nums(2:4,3)

% 
rand_nums(2:4,3)

ans =

    0.9706
    0.9572
    0.4854
% This line of code is subsetting for the elements in the second, third,
% and fourth rows and third column of the 5x5 random number matrix, which
% are 0.9706, 0.9572, and 0.4854. 

rand_nums(1:2,3:4)

% 
rand_nums(1:2,3:4)

ans =

    0.1576    0.1419
    0.9706    0.4218
% This line of code is subsetting for the elements in the first and second
% rows and third and fourth columns of the 5x5 random number matrix, which
% are 0.1576, 0.1419, 0.9706, and 0.4218. 

rand_nums(:,2)

% 
rand_nums(:,2)

ans =

    0.0975
    0.2785
    0.5469
    0.9575
    0.9649
% This line of code is subsetting for the elements in every row present
% only in the second column of the 5x5 random number matrix.

rand_nums(1,:)

% 
rand_nums(1,:)

ans =

    0.8147    0.0975    0.1576    0.1419    0.6557
% This line of code is subsetting for the elements in the first row of
% every column of the 5x5 random number matrix. In other words, it yields
% the first row of the matrix. 

rand_nums(:,[1 3 5])

% 
rand_nums(:,[1 3 5])

ans =

    0.8147    0.1576    0.6557
    0.9058    0.9706    0.0357
    0.1270    0.9572    0.8491
    0.9134    0.4854    0.9340
    0.6324    0.8003    0.6787
% This line of code is subsetting for the elements that are present in
% every row, but only in the first, third, and fifth columns of the 5x5
% random number matrix. In other words, it yields only the first, third,
% and fifth columns of the matrix. 


