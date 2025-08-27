APPEND FTOBE3

	IF WEIGHT #-1 ~!Global("gBFq1_ar3311","MYAREA",0) !Global("GhoManSp","MYAREA",0)~ THEN BEGIN d_gFTOBE3
		SAY @7500 /* Oh, you’re the one the Lathanderite’s sent? The ghost is upstairs. Please do something about it! He keeps going on about coins. */
			+ ~!Global("Talked1_gBFq1","MYAREA",1)~ + @7501 /* What can you tell me about this ghost? */ DO ~SetGlobal("Talked1_gBFq1","MYAREA",1)~ EXTERN d_gBF1ho 1
			+ ~!Global("Talked2_gBFq1","MYAREA",1)~ + @7502 /* He keeps going on about coins? */ DO ~SetGlobal("Talked2_gBFq1","MYAREA",1)~ EXTERN d_gBF1ho 2
			+ + @7503 /* I have no further questions. */ EXTERN d_gBF1ho 3
			+ ~Global("gBFq1","GLOBAL",2) !Global("gBFq1_ar3311","MYAREA",0) !Global("gBFq1_ar3311","MYAREA",2)~ + @7508 /* The ghost is gone now. He just wanted his coin collection. */  DO ~SetGlobal("gBFq1_ar3311","MYAREA",2)~ EXTERN d_gBF1ho 5
			+ ~Global("gBFq1","GLOBAL",2) !Global("gBFq1_ar3311","MYAREA",0) !Global("gBFq1_ar3311","MYAREA",2)~ + @7509 /* That's correct. */ DO ~SetGlobal("gBFq1_ar3311","MYAREA",2) SetGlobal("gBFq1_That_correct","MYAREA",1)~ EXTERN d_gBF1ho 6
	END

END

ADD_TRANS_ACTION  MTBE8 BEGIN 0 END BEGIN 0 END ~SetGlobal("gBFq4_MTBE8","MYAREA",1)~

APPEND MTBE8

	IF WEIGHT #-1 ~!Global("gBFq4_ar3325","MYAREA",0) !Global("GwomanSp","MYAREA",0)~ THEN BEGIN d_gMTBE8
		SAY @8500 /* These rats are driving me batty! There’s a huge one upstairs. I don’t care what you do, just get them gone!  */
			IF ~!Dead("g_rk") !Global("gBFq4","GLOBAL",4)~ THEN EXIT
			+ ~Dead("g_rk") !Global("gBFq4_ar3325","MYAREA",0)~ + @8502 /* I've killed the rats for you. */ DO ~SetGlobal("gBFq4_ar3325","MYAREA",2)~ EXTERN d_gBF4ho 2
			+ ~Global("gBFq4","GLOBAL",4) !Global("gBFq4_ar3325","MYAREA",0)~ + @8504 /* The rats left. */ DO ~SetGlobal("gBFq4_ar3325","MYAREA",2)~ EXTERN d_gBF4ho 4
	END

END
