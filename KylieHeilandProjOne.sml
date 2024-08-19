(* Finds the cube of a given integer *)
fun cube x = x * x * x;                                   (* Multiplies x to itself three times. *)
cube 7;

(* Adds all the squares of integers 0 through a given integer.*)
fun sqsum n = 
  if n < 0 then 0                                         (* When n has become negative, that means all integers from 0 to n have been squared and added together. *)
  else (n * n) + sqsum(n - 1);                            (* Squares n and recursively adds it to the square sum of n - 1, until n = 0.*)
 sqsum 2;

(* Finds the maximum integer of a given integer list.*)
fun maxHelper (x, maxNumber) = 
  if x = [] then maxNumber                                (* Have reached the end of the list, and the maximum number has been determined.*)
  else if(hd x > maxNumber) then maxHelper(tl x, hd x)    (* If first element in list > current maximum number, first element is now the new maximum number.*)
  else maxHelper(tl x, maxNumber);                        (* If first element is smaller, then the rest of the list is used as a parameter along with the unchanged maximum number.*)

(*Calls the maxHelper function using the list given and the maximum number set to 0, since so maximum number has been found yet.*)
fun max x = 
  maxHelper (x, 0);

max ([~3, 2, 1, 4, 6, 0, 7, ~2]);