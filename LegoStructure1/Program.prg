Function main
	Print "This is my first program."
	Motor On
	Power High
	Speed 20
	Accel 20, 20
	TCLim -1, -1, -1, -1
	SpeedS 300
	SpeedR 60
	AccelS 300, 300
	
	'Move Pick1
	'Call FPick
	'Wait 1
	'Move Place1
	'Call FPlace
	'Wait 1
'Programmed at Z=-47.163	
	
	Integer Counter
	Integer Offset
	
	For Counter = 1 To 3
		
		Offset = (Counter - 1) * 32.5
	
		Jump Pick1
		Call FPick
		Wait .5
		Jump Place2 -X(Offset)
		Call FPlace
		
		Print Counter
		Print Offset
		
		Next Counter
		
	Counter = 0
		
'Start the second layer

	For Counter = 1 To 2
		
		Offset = (Counter - 1) * 32.5 + 16.25
	
		Jump Pick1
		Call FPick
		Wait .5
		Jump Place2 -X(Offset) +Z(9.6)
		Call FPlace
		
		Print Counter
		Print Offset
		
		Next Counter
		
		
		
'	Move Pick1
'	Jump Place1 C0 LimZ -30
	
	
Fend

	Function FPick
		Print "Running Pick Function..."
		On GripperGrip
		On GripperLower
		Wait 0.25
		Off GripperGrip
		Wait 0.25
		Off GripperLower
		Wait 0.25
		Print "Done!"
	Fend
	
	Function FPlace
		Print "Running Place Function..."
		Move Here -Z(10)
		On GripperLower
		Wait 0.25
		On GripperGrip
		Wait 0.25
		Off GripperLower
		Move Here +Z(10)
		Print "Done!"
	Fend
		
		'Move Here -Z(20)
		'Off 85
	
'		Move Here +Z(20)
		'Move PickApproach
		'Move Here -Z(20)
		'On 85
		'Move PickApproach
	
	'Next counter
	
	
't	Move PickApproach2
'	On 85
'	Speed 50
'	Move Here -Z(18)
'	Wait 0.35
'	Off 85
'	Move PickApproach2
'	Move PlaceApproach
'  	Move Here -Z(10)
'	On 85
't	Move PlaceApproach
	
	'Move Here -Z(10)
	'Off 85
	
	'Move Here +Z(20)
	'Move PickApproach
	'Move Here -Z(20)
	'On 85
	'Move PickApproach
	
	
	


