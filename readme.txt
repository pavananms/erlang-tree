  
  Erlang is a functional programming language heavily used in many realworld applications all over. I was certainly excited to learn some part of it.

    At first, it was a bit uneasy to grasp the minute syntactic differences (distinction between
 atoms and variables,not able to reassign the variable etc.). It was comforting to see similiar ideas like Lists(as the author said "the bread and butter of functional programming"),tuples etc. Unlike python the cons operator is used heavily to operate with lists. 
 But the main difference I felt was , afcourse, pattern matching. It was not completely alien to me as I had a basic idea of prolog syntax. But It was the first time I used this syntax to do things like recursion etc. In a few tries I started writing recursive declarative functions by myself to sum a list, find the length of a list etc.

  The next big thing to learn was higher order fucntions and I was really surprised by this part. I had previously used higher order functions like (map,filter,etc) in python, but didn't knew the power of using it.
  In erlang (possibly in other functional languages too) higher order functions can be used to create usefull,powerfull and elegent abstractions to code. Map and filter are very simple fucntions to code, But has infinite applications because of their capacity to accept functions as arguement. 

  Now, I tried to do a test Pramode sir gave us in python in erlang. The problem had 3 parts, evaluating a postfix expression, building a expression tree and converting it to inorder form.

  The first of the problems was a direct example in my reference. So cant take much credit for it. But the method used to solve it was typical of the functional approach. They used a very easily defined higher order function called fold(). fold() is generally used in lists to applications where the list should be processed to output a single value, like Summing the list elements and finding the largest element. This does seem beneficial if we think of the above problem, the whole list is to be evaluated to find a single value. The fold() takes 3 arguements, a function, a start value and a list, and it takes each element from the list and calls the function with start value as the other arguement. In this case, the start value is an empty list which is used as a stack. Whenever we see a number in the list, we push it to the stack, and when we see an operator, we pops 2 elements from the stack, finds the result and pushes the result back.

  For the second problem, I decided to make a nested list to represent trees, every sub list having 3 elements.If we look closely at such a representation,( [8, 9, 7, +, -] becomes [[8,[9,7,+],-]]), we convert a list of many elements to a list containing a single nested list. In other words, we need to "fold" the list. To be specific, its same as the above code and needs to change only the pattern of the function,ie. instead of [n1+n2|S], we put [n1,n2,+|S]. As a beginner in functional programming. It was not evident for me and I spent hours going after wrong solutions until I realized that I had the answer all along.

  The third question was too simple. It was a pleasure really to code inorder in almost as simple as pseudocode really. Thanks to the declarative syntax. What we all need is a pattern  [N1,N2,"+"], which should be replaced by [inorder(N1),"+",inorder(N2)]. 

   

                


