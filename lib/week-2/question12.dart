/*
Name : Ahmad Amiri
Date : 2025-11-18

Question-12:
Traffic Light System using switch-case
Description: Input a color (Red, Yellow, Green) and display an action (Stop, Ready, Go).
Example:
Input:
Green
Output:
Go
*/



   String  trafficLighSystem(String color) {

       switch (color.toLowerCase()) {
         case 'red':
           return 'Stop';
           break;

         case 'yellow':
           return 'Ready';
           break;

         case 'green':
           return 'Go';
           break;

         default:
           if(color ==''){ return 'Invalid color';}

           return "Invalid color";
       }
     }
