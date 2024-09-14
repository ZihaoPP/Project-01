/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
        [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

VAR time = -1
-> WinterNightMare

== WinterNightMare ==
Now, { advance_time()} clock, and you know winter night gonna be suffer, so you need to arrive your parents place before midnight.

You're struggling with which way to home
+ [HighWay] -> HighWay 
+ [Shortcut] -> Shortcut






== HighWay ==
Mom:You gonna hurry your dad is having panic attack(crying)
+ [Speeding up] -> SpeedingUp 
+ [Follow the law] -> Law

== Law ==
(Vroom~~Vroom~~~Vroom~~~~) 
A Pure black Ford Mustang behind you
You migth wanna use right turning signal to let him overtake
+ [RightBlinker] -> RightBlinker 
->END

== RightBlinker ==
You closed the window tightly, but the loudness of that car's engine panicked you, but you were more worried about your father. You hope he overtakes the car quickly to get away from you...

It left finally...
+ [keep going] -> keepgoing
->END

== keepgoing ==
"Shit!!!! It's a Subaru should not like this"
Engine is not working!
->wakeup

== SpeedingUp ==
(woop~~woop~~~woop~~~~) 
A black Ford police car behind you
You migth wanna use stop because you were speeding
only seeing the red-light
+[Stop]->wakeup

== wakeup ==
You woke up you see the message that your dad already passed away

+[what?]->WinterNightMare
->END

== Shortcut ==
Mom:You gonna hurry your dad is having panic attack(crying)
You:Just hang on I will be ther soon!!
+[speed up]->carcrashed
->END
== carcrashed ==
Your car is suddenly spinning because snow.
+[Get out the car]->OutCar

== OutCar ==
Car can't move now, and it's really cold, {not WearCoat:there is a colubia coat}
*[Wear coat] ->WearCoat
*[No!!!!!!!!]->WinterNightMare


=== WearCoat ===
You now felt warm
*[Still cold?] -> OutCar
->END


== function advance_time ==
    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "8"
        
        - time == 1:
            ~ return "9"
        
        - time == 2:
            ~ return "10"
    
    }
    
    
        
    ~ return time
    

























