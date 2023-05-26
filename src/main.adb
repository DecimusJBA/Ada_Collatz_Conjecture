-----------------------------------------------------
-- This is the Collatz Conjecture Program          --
-- The 3x+1 problem concerns an iterated function  --
-- and the question of whether it always reaches 1 --
-- when starting from any positive integer. It is  --
-- also known as the Collatz problem or the        --
-- hailstone problem.                              --
-----------------------------------------------------
-- Updated to handle Long_Long_Integers  5/25/2023 --
-----------------------------------------------------
-- Simple Program created by: BTD                  --
-----------------------------------------------------

with Ada.Text_IO; with Ada.Integer_Text_IO; with Ada.Strings.Unbounded;
use Ada.Text_IO; use Ada.Integer_Text_IO; use Ada.Strings.Unbounded;
with Ada.Strings.Bounded;
with Ada.Strings;
use Ada.Strings;

procedure Main is

    package B_Str is new
     Ada.Strings.Bounded.Generic_Bounded_Length
       (Max => 63); --MAX SIZE OF THE BOUNDED STRING.
   use B_Str;

   --Variables declared here--

   str1 : Bounded_String;
   num : Long_Long_Integer;
   User_Input : String(1 .. 100);
   ctr : Integer := 1;
   endValue : Long_Long_Integer := 1;
   len : Integer;
   --must read in number as a string them convert to int for comparsion then convert to string for output.

begin

   New_Line(2);
   Put_Line("=============================================");
   Put_Line("~ Welcome to the Collatz Conjecture Program ~");
   Put_Line("=============================================");
   New_Line(2);

   Put("Input a starting integer value: ");
   Get_Line(User_Input, len); --user input read in as a string.
   Put_Line("The user_input: " & User_Input(1 .. len)); --outputting the user_input string.
   num := Long_Long_Integer'Value(User_Input(1 .. len)); --converting the user_input into Long_Long_Integer.
   str1 := To_Bounded_String (User_Input(1 .. len)); --how to correctly convert fixed string to bounded_string.
   Put_Line ("-------------------------------------------");

   while num > endValue loop

     -- Put_Line("The loop value is: " & to_String(str1));
      num := Long_Long_Integer'Value(To_String(str1));
      Put_Line("The num value is: " & Long_Long_Integer'Image(num));

      if num mod 2 = 0 then --check if even
         num := num / 2;
         str1 := To_Bounded_String(Long_Long_Integer'Image(num));
         num := Long_Long_Integer'Value(To_String(str1));
         ctr := ctr + 1;
      else
         num := num * 3 + 1;
         str1 := To_Bounded_String(Long_Long_Integer'Image(num));
         ctr := ctr + 1;
      end if;

      if num = endValue then
         str1 := To_Bounded_String(Long_Long_Integer'Image(num));
         num := Long_Long_Integer'Value(To_String(str1));
         Put_Line("The end value is: " & to_String(str1));
      end if;

   end loop;
   Put_Line ("-------------------------------------------");
   Put_Line("Total Iteration is: " & Integer'Image(ctr));


   Put_Line("=============================================");
   Put_Line("~   End of the Collatz Conjecture Program   ~");
   Put_Line("=============================================");
   New_Line(4);

end Main;
