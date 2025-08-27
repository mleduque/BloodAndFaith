BEGIN d_BFMal

IF ~Global("g_BFMt","GLOBAL",0)~ THEN BEGIN 0
	SAY ~So, the predator becomes the prey. Such is the natural order of things. Look for me deeper within and join me in this bloody hunt for the glory of Malar!~
 
IF ~~ THEN DO ~
   SetGlobal("g_BFMt","GLOBAL",0) EscapeArea()~ EXIT
END
