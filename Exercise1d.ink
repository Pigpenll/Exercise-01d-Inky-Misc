/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. 

//{&You hear seagulls.|The sun blazes directly above you.|It's getting pretty dark out.|The moon shines above you.}

It is { advance_time() }.

+ [Wait.] -> seashore

+ [Stand up and walk.] -> beach2
+ {not photo2} [Look at photgraph.] -> photo1
-> DONE

== photo1 ==
You pull the photograph out of your pocket.

{Your family stares back at you, grins stretched across their faces.|Familiar faces with no names stare at you, smiling.|A group of smiling strangers is depicted.|The polaroid is blank.}

+ [Wait.] -> seashore
+ [Stand up and walk.] -> beach2
* [Toss the photo away.] -> photo2
* {photo1 > 3} [Try to remember.] -> remember
-> DONE

== remember ==
You focus on the sound of the crashing waves.

Faces and names swim around your thoughts.

* [You hear a faint beeping.] -> END
-> DONE

== photo2 ==
You toss the photo into the waves. You watch it slowly drift away.

You forget what you are looking at.

+ [Walk.] -> beach2
-> DONE

== beach2 ==
A continuous stretch of sand.

{time == 0 && not shells:Ornate shells decorate the sand around you.}

It is { advance_time() }.

+ [Continue walking.] -> beach2
+ [Sit back down.] -> seashore
* {time == 1} [Pick up seashells.] -> shells
->DONE

== shells ==
You put the seashells in your pocket. {not photo2:The photo is slightly crinkled.}
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "morning"
        
        - time == 1:
            ~ return "noon"
        
        - time == 2:
            ~ return "night"
    
    }
    
    
        
    ~ return time
    
    
    
