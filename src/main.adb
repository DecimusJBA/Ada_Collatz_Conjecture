-----------------------------------------------------
-- This is the Collatz Conjecture Program          --
-- The 3x+1 problem concerns an iterated function  --
-- and the question of whether it always reaches 1 --
-- when starting from any positive integer. It is  --
-- also known as the Collatz problem or the        --
-- hailstone problem.                              --
-----------------------------------------------------
-- Simple Program created by: BTD                  --
-----------------------------------------------------

with Ada.Text_IO; with Ada.Integer_Text_IO;
use Ada.Text_IO; use Ada.Integer_Text_IO;

procedure Main is
  --Variables declared here--
   num : Integer;
   ctr : Integer := 1;
   endValue : Integer := 1;

begin

   New_Line(2);
   Put_Line("=============================================");
   Put_Line("~ Welcome to the Collatz Conjecture Program ~");
   Put_Line("=============================================");
   New_Line(2);

   Put("Input a starting integer value: ");
   Get(num);

   while num > endValue loop
      Put_Line("The value is: " & Integer'Image(num));

      if num mod 2 = 0 then --check if even
         num := num / 2;
         ctr := ctr + 1;
      else
         num := num * 3 + 1;
         ctr := ctr + 1;
      end if;

      if num = endValue then
         Put_Line("The value is: " & Integer'Image(num));
      end if;

   end loop;
   Put_Line ("-------------------------------------------");
   Put_Line("Total Iteration is: " & Integer'Image(ctr));


   Put_Line("=============================================");
   Put_Line("~   End of the Collatz Conjecture Program   ~");
   Put_Line("=============================================");
   New_Line(4);


   null;
end Main;
