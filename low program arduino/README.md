Story of Arduino begin with this board:  
![alt text](https://github.com/costycnc/costycnc-old-programs/blob/master/low%20program%20arduino/board.jpg)
based on this Atmega328 microcontroller
![alt text](https://github.com/costycnc/costycnc-old-programs/blob/master/low%20program%20arduino/F7589339-01.jpg)
The board has heart Atmega328 and some aditional components that help Atmega328 to comunicate better with outside world .
on the board is a component that permit to comunicate with pc, a regulator can permit powered until 12volt (atmega328 resist until 5volt),
 leds,connectors, button for reset,a crystal for better stability , ecc ... so ... you can use Atmega328 alone but better is to use with board because have a lot or facilities!
 But arduino not divented popular if it did not haved a platform with can make program for this.Name of this platform is Arduino IDE.
 ![alt text](https://github.com/costycnc/costycnc-old-programs/blob/master/low%20program%20arduino/arduino.png)
 https://www.arduino.cc/en/main/software you can install arduino IDE in your computer or can make programs online!!!
 But Arduino Ide not stop to make programs for his board ... Arduino Ide continued to make programs for another boards that not have anything in common with Atmega328 and his family!
 For example Arduino IDE can make program for ESP8266(wifi) 
 ![alt text](https://github.com/costycnc/costycnc-old-programs/blob/master/low%20program%20arduino/esp8266.jpg)
 and ESP32(wifi+bluettoth)
 ![alt text](https://github.com/costycnc/costycnc-old-programs/blob/master/low%20program%20arduino/esp32.jpg)
 a powerful boards based on advanced and much much  powerfully micocontrolers than atmega328 family!!!
 In theory looks good ... but in practice is not like that ... because more advanced processor divend more complicated to create programs for them.
 
 # Now a little filosophy about programming
 
 Programming is as if you want to move between 2 points across the globe.
 If you use an IDE and a program already made it's like living in a big city and your destination is another big city, you can use a plane,the journey will be pleasant, comfortable and fast.
 If you used an IDE and use pieces of programs (libraries) to create your pogram it's like living in a big city but your destination is not a big city , you can not use plain , but can use train,bus,car,taxi ,the journey will not be comfortable as the first but comfortable enough for costume and tie.
 But programming language is same  as reality , not all living in a big city or not all destination is a big city... this mean :
 You have IDE but libraries do not do what you want,so you not can make your program!
But if you have the ambition to get to your destination with any price, you need to have beside a suit and a tie and a war equipment.
Name of war ecquipment is Assembler(the word that scare all programmers!!!),C,C++,Python,ecc...!!!
 
 

What is arduino? Fisically ... Arduino is a board with terminals with can make some pulses with can command several machines,robots,etc. 
![alt text](https://github.com/costycnc/costycnc-old-programs/blob/master/low%20program%20arduino/board.jpg)
Also ... Arduino is a Program with can make code for command this board.
![alt text](https://github.com/costycnc/costycnc-old-programs/blob/master/low%20program%20arduino/arduino.png)
"Brain" of this board is a piece of plastic with terminals that inside have memory and can make a decision alt text 
![alt text](https://github.com/costycnc/costycnc-old-programs/blob/master/low%20program%20arduino/F7589339-01.jpg)
, but single not can work with another external boards because not have enough power,can not comunicate,ecc... for this is mounting on a board together with other components The general name of these intelligent piece of plastic is microcontroller and program with can write code for microcontroler is called IDE (integrated development environment) https://searchsoftwarequality.techtarget.com/.../integra


Knowing how to use Arduino or in general "intelligent" boards is a high advantage for you , but Unfortunately need to have some advanced Knowledge about microcontrolers,computers,programs,ecc...

For begginer only to make the Arduino to flash a led is a sophisticated adventure ... because the begginer need to install programs corectly, need to set many parameters of programs correctly, need to know how install libraries, need to have correct libraries, need to select from menu the correct port,correct baud,... tons of things that only one is a mistake ... crash all with error!

I encouradged to use Arduino board and Arduino IDE also I encouradged to study the tutorials made available by Arduino and For these that use and understand Arduino Ide or another ide I congratulate them ... but for those who did not make yet to make the LED blinking and they lost hope I want to bring back they hope that can do it.
