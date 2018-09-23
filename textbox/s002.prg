/*
 * Textbox Sample n� 2
 * Author: Fernando Yurisich <fyurisich@oohg.org>
 * Licensed under The Code Project Open License (CPOL) 1.02
 * See <http://www.codeproject.com/info/cpol10.aspx>
 *
 * This sample shows how to place controls inside a
 * TextBox controls.
 *
 * Adapted from an original sample by Roberto Lopez.
 *
 * Visit us at https://github.com/oohg/samples
 */

#include "oohg.ch"

PROCEDURE Main

	DEFINE WINDOW Form_1 ;
		AT 0,0 ;
		WIDTH 640 HEIGHT 480 ;
		TITLE 'ooHG textbox Demo' ;
		MAIN 

		@ 10,10 TEXTBOX Txt1 WIDTH 200 OBJ oTxt1 ;
         ACTION MsgInfo("One!") ;
         ACTION2 MsgInfo("Two!")

         @ 0,0 LABEL Label1 OBJ oLbl1 VALUE " Label " WIDTH 40 OF ( oTxt1 ) ;
            BACKCOLOR 0x0000FF

         @ 0,0 BUTTON Btn1 OF ( oTxt1 ) ;
            CAPTION "4" WIDTH 15 ;
            ACTION MsgInfo( "Four!" )

       @ 40,10 BUTTON Move CAPTION "Move" ;
          ACTION iif( oTxt1:Row == 10, oTxt1:Row := 80, oTxt1:Row := 10 )

		@ 120,10 TEXTBOX Text_1 ;
			VALUE 123 ;
			FONT 'Verdana' SIZE 12 ;
			TOOLTIP 'Numeric TextBox' ;
			NUMERIC ;
			INPUTMASK "999,999,999.99"  ;
			RIGHTALIGN ;
			ON LOSTFOCUS iif( This.Value < 100, This.SetFocus, NIL )

		@ 180,10 TEXTBOX Txt2 WIDTH 200 OBJ oTxt2 CTRLSATLEFT ;
         ACTION MsgInfo("One!") ;
         ACTION2 MsgInfo("Two!")

         @ 0,0 LABEL Label2 OBJ oLbl2 VALUE " Label " WIDTH 40 OF ( oTxt2 ) ;
            BACKCOLOR 0x0000FF

         @ 0,0 BUTTON Btn2 OF ( oTxt2 ) ;
            CAPTION "4" WIDTH 15 ;
            ACTION MsgInfo( "Four!" )

       @ 210,10 BUTTON Delete CAPTION "Delete" ;
          ACTION ( oLbl1:Release(), oLbl2:Release() )

      ON KEY ESCAPE ACTION ThisWindow.Release
	END WINDOW

	Form_1.Center
	Form_1.Activate

RETURN 

/*
 *
 */