module LCD_Controller (
   input    [7:0] lcd_char,  // ascii character to display
   output   [4:0] lcd_index,  // index where character will be displayed
	input          CLOCK_50,	//	50 MHz clock
	output         LCD_ON,		// LCD Power ON/OFF
	output         LCD_BLON,	// LCD Back Light ON/OFF
	output         LCD_RW,		// LCD Read/Write Select, 0 = Write, 1 = Read
	output         LCD_EN,		// LCD Enable
	output         LCD_RS,		// LCD Command/Data Select, 0 = Command, 1 = Data
	inout    [7:0] LCD_DATA		// LCD Data bus 8 bits
	);
   
   wire lcd_reset;
   
   // turn LCD ON
	assign	LCD_ON	=	1'b1;
	assign	LCD_BLON	=	1'b1;

	// reset delay gives some time for peripherals to initialize
   Reset_Delay r0 (
      .iCLK		(CLOCK_50),
      .oRESET	(lcd_reset)
	);
   
   LCD_Display u1(
	// Host Side
		.iCLK_50MHZ	(CLOCK_50),
		.iRST_N		(lcd_reset),
		.oMSG_INDEX	(lcd_index),
		.iMSG_ASCII	(lcd_char),
	// LCD Side
		.DATA_BUS	(LCD_DATA),
		.LCD_RW		(LCD_RW),
		.LCD_E		(LCD_EN),
		.LCD_RS		(LCD_RS)
	);
   
endmodule
