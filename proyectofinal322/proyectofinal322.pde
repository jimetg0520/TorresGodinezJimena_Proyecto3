//Jimena Torres Godínez Grupo A1
//Nua:146016
//Proyecto 3: Videojuego

//Polimorfismo;
import ddf.minim.*;
  

Personajes uno;Personajes uno1;Personajes uno2;
Personajes dos;Personajes dos1;Personajes dos2;
Personajes tres;Personajes tres1;Personajes tres2;
Personajes cuatro;Personajes cuatro1;Personajes cuatro2;
Personajes cinco;Personajes cinco1;Personajes cinco2;


Minim minim;

AudioPlayer cancion1;

AudioPlayer cancion3;
int vida=1;
int vida1=10;
int vida2=10;
int turnojugador=0;
int pantalla;

int x=200;
int y=500;

int jugador1;
int jugador2;
PFont letra1;
PFont letra2;
PFont letra3;
PImage castle;
PImage batalla2;
PImage cast;
//personajes
PImage mickey2;
PImage w2;
PImage bay2;
PImage furi;
PImage furi2;
PImage bill2;

PImage sefire;
PImage fuego;
PImage kinangry;
PImage kingX;

PImage podium2;
PImage mickeyganador;
PImage woodyganador;
PImage baymaxganador;
PImage furiaganador;
PImage billyganador;


void setup(){
  size(700,700);
  uno= new mickey (2,4,1,90,142,0);
  uno1= new mickey (2,4,1,130,330,0);
  uno2=new mickey(2,4,1,510,300,0);

  dos= new woody (2,4,1,310,260,1);
  dos1= new woody (2,4,1,100,300,1);
  dos2= new woody (2,4,1,510,300,1);
 
   tres= new baymax(2,4,1,495,140,2);
  tres1= new baymax(2,4,1,80,280,2);
  tres2= new baymax(2,4,1,510,260,2);
  
   cuatro= new furia (2,4,1,97,450,3);
   cuatro1= new furia (2,4,1,100,300,3);
    cuatro2= new furia (2,4,1,510,300,3);
    
   cinco= new billy(2,4,1,520,440,4);
  cinco1= new billy(2,4,1,100,300,4);
  cinco2= new billy(2,4,1,520,300,4);
 
   kingX= loadImage("kingX.png");
   kinangry= loadImage("kinangry.png");
   castle= loadImage("castle.jpg");
   batalla2= loadImage("batalla2.jpg");
  cast= loadImage("cast.png");
    fuego= loadImage("fuego.jpg");  
       mickey2= loadImage("mickey2.png");
       w2= loadImage("w2.png");
       bay2= loadImage("bay2.png");
       furi= loadImage("furi.png");
        podium2= loadImage("podium2.jpg");
       bill2= loadImage("bill2.png");
      
       sefire= loadImage("sefire.jpg");
      letra1 = loadFont("WaltDisneyScript-48.vlw");
  letra2 = loadFont("BritannicBold-48.vlw");
 letra3 = loadFont("FireBlock-48.vlw");
 
 mickeyganador= loadImage("mickeyganador.png");
 woodyganador= loadImage("woodyganador.png");
 baymaxganador= loadImage("baymaxganador.png");
 furiaganador= loadImage("furiaganador.png");
 billyganador= loadImage("billyganador.png");
 
  minim = new Minim(this);
 
  cancion1 = minim.loadFile("cancion1.mp3");
  //cancion1.loop();
  
 
  cancion3 = minim.loadFile("ganador.mp3");
}



void draw(){
  background(255,117,020);
  
    switch(pantalla){
      
    
    case 0:
    //vida=1;
    //vida1=10;
    //vida2=10;
    //turnojugador=0;
    inicio();
    break;
   
    case 1:
   seleccion();
     break;
      
    case 2:
   
     seleccion2();
     break; 
 
     case 3:
       
    pelea();
   
   
 
    break;
 
    case 4:
     fin();
     
     break;
     
 
 
    }
    
}


void inicio(){
 image(castle,0,0, 700,700);
 image(cast,180,160,340,350);
  image(kingX,100,360,100,150);
 noStroke();
 textFont(letra1);
     fill(128,255,0);
     rect(200,530,300,100);
     textSize(35);
    fill(255);
    text("EMPEZAR",270,590);
    textSize(15);
    
     
     fill(255);
    textSize(35);
  text("Bienvenido a",120,80);
  textSize(60);
  fill(255);
  text(" MOVIE",30,160);
  text(" BATTLE",230,160);
  text("TREME",490,160);
  fill(255,0,0);
  textSize(70);
  
  text(" X",440,160);
 
  
  if( (mouseX> 200) && (mouseX< 500) && (mouseY>530) && (mouseY< 630)){
    
     
  
    image(fuego,0,0,700,700);
    image(cast,180,160,340,350);
    image(kinangry,100,360,100,150);
    fill(#FF7514);
    rect(190,520,320,120);
    noStroke();
 textFont(letra3);
     fill(255,0,0);
     rect(200,530,300,100);
     textSize(35);
    fill(255);
    text("EMPEZAR",270,590);
    textSize(15);
    
    textFont(letra3);  
     fill(255);
    textSize(35);
  text("Bienvenido a",120,80);
  textSize(60);
  fill(255);
  text(" MOVIE",30,160);
  text(" BATTLE",230,160);
  text("TREME",490,160);
  fill(255,0,0);
  textSize(70);
  
  text(" X",440,160);
  textFont(letra2);
    textSize(15);
    fill(255);
    text("LA BATALLA MÁS ESPERADA HA LLEGADO",220,660);
  
  
  }

}


void seleccion(){
 
image(sefire,0,0,700,700);
textFont(letra3);
 textSize(40);
  fill(0);
  text("Elige tu personaje",80,60);
  fill(0);
   textSize(25);
  text("Jugador 1",500,50);
  
  textFont(letra2);
  textSize(18);
  fill(255,0,0);
  text("Mickey Mouse",80,122);
  uno.display();
  textSize(15);
  fill(0);
  text("CARTA 1",97,320);
  
  textSize(18); 
  fill(0,0,255);
  text("Woody",330,234);
 
   dos.display();
  textSize(15);
  fill(0);
  text("CARTA 2",320,440);
  
  textSize(18);
  fill(0);
  text("Baymax",540,120);
  tres.display();
  textSize(15);
  fill(0);
  text("CARTA 3",540,325);
  
  textSize(18);
  fill(255);
  text("Furia",120,420);
  cuatro.display();
  textSize(15);
  fill(0);
  text("CARTA 4",100,630);
  
  textSize(18);
  fill(0);
  text("Billy Rocket",520,420); 
  cinco.display();  
  textSize(15);
  fill(255);
  text("CARTA 5",525,620);
   
  
     
}

void seleccion2(){

  image(sefire,0,0,700,700);
textFont(letra3);
 textSize(40);
  fill(0);
  text("Elige tu personaje",80,60);
  fill(0);
   textSize(25);
  text("Jugador 2",500,50);
  
  textFont(letra2);
  textSize(18);

  text("Mickey Mouse",80,122);
  
  uno.display();
  textSize(15);
  fill(0);
  text("CARTA 1'",89,320);
  
  textSize(18); 
  fill(0,0,255);
  text("Woody",330,234);
  
   dos.display();
  textSize(15);
  fill(0);
  text("CARTA 2",320,440);
  
  textSize(18);
  fill(0);
  text("Baymax",540,120);
  
  tres.display();
  textSize(15);
  fill(0);
  text("CARTA 3",540,325);
  
  textSize(18);
  fill(255);
  text("Furia",120,420);
  cuatro.display();
  textSize(15);
  fill(0);
  text("CARTA 4",100,630);
  
  textSize(18);
  fill(0);
  text("Billy Rocket",520,420); 
  cinco.display();  
  textSize(15);
  fill(255);
  text("CARTA 5",525,620);
 
 
  
  if(jugador1==1){
    noStroke();  
    fill(255);
    rect(80,100,120,30,10);
    fill(255,0,0);
    textSize(20);
     text("jugador 1",85,120);
     
     }
     
     if(jugador1==2){
       noStroke();
      fill(255);
     rect(300,220,120,20,10);
      fill(0,0,255);
      textSize(20);
     text("jugador 1",310,235);
     }
     
      if(jugador1==3){
      
     textSize(18);
     noStroke();
    fill(255);
    rect(500,100,120,30,10);
       fill(0);
      textSize(20);
     text("jugador 1",515,120);
     }
     
      if(jugador1==4){
    
        noStroke();
       fill(0);
       rect(80,400,120,30,10);
       fill(255);
      textSize(20);
     text("jugador 1",90,420);
     }
      if(jugador1==5){
        noStroke();
       fill(255);
     rect(500,395,125,28,10);
      fill(0);
      textSize(20);
     text("jugador 1",520,418);
     }
  




}

void pelea(){
   image(batalla2,0,0,700,700);
   if(vida1<vida2){
      vida=vida1;
    }
      if (vida2<vida1){
        vida=vida2;
      }
    
    

   textFont(letra3);
 fill( random(100), random(100), random(100));
 textSize(50);
 text("Campo de Batalla",150,80);
 
 
 
 textFont(letra2);
     fill(0);
   textSize(30);
   
    text("Turno ",310,150);
    fill(255,0,0);
    rect(100,140,50,30);
    fill(0,0,255);
    rect(550,140,50,30);
    fill(255);
    textSize(15);
    text(vida2,120,160);
    text(vida1,565,160);
    fill(0);
    textSize(18);
     text("vida",115,130);
    text("vida",555,130);
    
    
    
    
    if(turnojugador%2==0){
      textSize(20);
    fill(0);
    
    text("Jugador 1",90,190);
   
    }
    else{
      
      
      if(turnojugador%2==1){
      }
        fill(0);
        textSize(20);
        text("jugador 2",520,190);
    }
 
    
 if (jugador1==1){
 
  
   uno1.display();
    }
   if (jugador1==2){
     
   dos1.display();
    }
    if (jugador1==3){
     
   tres1.display();
    }
    if (jugador1==4){
     
   cuatro1.display();
    }
    if (jugador1==5){
    
   cinco1.display();
    }
    
    
    if (jugador2==1){
     
  uno2.display();
    }
    if (jugador2==2){
   
   dos2.display();
    }
    if (jugador2==3){
     
   tres2.display();
    }
    if (jugador2==4){
    
   cuatro2.display();
    }
    if (jugador2==5){
    
   cinco2.display();
    }

  

  
    if(jugador1==1 & turnojugador%2==0){
    uno1.atacar1();
    }
    
    else{
    uno1.mover1();
    }
    
     if(jugador2==1 & turnojugador%2==1){
    uno2.atacar2();
    }
    
    else{
    uno2.mover2();
    }

  
 if(jugador1==1 & turnojugador%2==0||jugador2==1 & turnojugador%2==1){
       
 
        fill(255,0,0);
      rect(0,500,700,200);
      textSize(25);
   fill(255);  
   text("Ataques Mickey Mouse", 130,530);
   textSize(20);
    text("Fantasy",160,600);
    text("Mouse-herramienta misteriosa",160,670);
    textSize(15);
    fill(0);
    text("Haz click en el \n recuardo para atacar",500,520);
    fill(0,255,255);
    rect(540,580,40,40);
    rect(540,630,40,40);
    textSize(18);
    fill(0);
    text("1",560,600);
    text("2",560,655);
    }

    
      if(jugador1==2 & turnojugador%2==0){
    dos1.atacar1();
    }
    
    else{
    dos1.mover1();
    }
    
     if(jugador2==2 & turnojugador%2==1){
    dos2.atacar2();
    }
    
    else{
    dos2.mover2();
    }
    
    
    
    if(jugador1==2 & turnojugador%2==0||jugador2==2 & turnojugador%2==1){
        fill(0,0,255);
      rect(0,500,700,200); 
   fill(255);  
   textSize(25);
   text("Ataques Woody", 130,530);
   textSize(20);
    text("Cowboy Power",160,600);
    text("Powerful Hat",160,680);
    textSize(15);
    fill(0);
    text("Haz click en el \n recuardo para atacar",500,520);
    fill(0,255,255);
    rect(540,580,40,40);
    rect(540,630,40,40);
    textSize(18);
    fill(0);
    text("1",560,600);
    text("2",560,655);
  
    }
    
    
      if(jugador1==3 & turnojugador%2==0){
    tres1.atacar1();
    }
    
    else{
    tres1.mover1();
    }
    
     if(jugador2==3 & turnojugador%2==1){
    tres2.atacar2();
    }
    
    else{
    tres2.mover2();
    }
    
  
   if(jugador1==3 & turnojugador%2==0||jugador2==3 & turnojugador%2==1){
        fill(0,255,0);
      rect(0,500,700,200);  
   fill(255);  
   text("Ataques Baymax", 130,520);
   textSize(20);
    text("Balalalala",160,600);
    text("Propulsor",160,680);
    textSize(15);
    fill(0);
    text("Haz click en el \n recuardo para atacar",500,520);
    fill(0,255,255);
    rect(540,580,40,40);
    rect(540,630,40,40);
    textSize(18);
    fill(0);
    text("1",560,600);
    text("2",560,655);
  
    }
    
    
        if(jugador1==4 & turnojugador%2==0){
    cuatro1.atacar1();
    }
    
    else{
    cuatro1.mover1();
    }
    
     if(jugador2==4 & turnojugador%2==1){
    cuatro2.atacar2();
    }
    
    else{
    cuatro2.mover2();
    }
    
    
        
    
     if(jugador1==4 & turnojugador%2==0||jugador2==4 & turnojugador%2==1){
       
        fill(255);
     rect(0,500,700,200); 
   fill(0);  
   text("Ataques Furia", 130,520);
   textSize(20);
    text("Fuego Extremo",160,600);
    text("Ataque de ira",160,680);
    textSize(15);
    fill(0);
    text("Haz click en el \n recuardo para atacar",500,520);
    fill(0,255,255);
    rect(540,580,40,40);
    rect(540,630,40,40);
    textSize(18);
    fill(0);
    text("1",560,600);
    text("2",560,655);
  
    }
    
    if(jugador1==5 & turnojugador%2==0){
    cinco1.atacar1();
    }
    
    else{
    cinco1.mover1();
    }
    
     if(jugador2==5 & turnojugador%2==1){
    cinco2.atacar2();
    }
    
    else{
    cinco2.mover2();
    }
    
    
     if(jugador1==5 & turnojugador%2==0||jugador2==5 & turnojugador%2==1){
        fill(0);
      rect(0,500,700,200); 
   
   fill(255);  
   text("Ataques Billy Rocket", 130,520);
   textSize(20);
    text("Turbo",160,600);
    text("Ataque Estelar",160,680);
    textSize(15);
    fill(255);
    text("Haz click en el \n recuardo para atacar",500,520);
    fill(0,255,255);
    rect(540,580,40,40);
    rect(540,630,40,40);
    textSize(18);
    fill(0);
    text("1",560,600);
    text("2",560,655);
  
    }
  
   if(vida<=0){
      pantalla=4;
    }
 
   

}

void fin(){

image(podium2,0,0,700,700);
 if(vida1<=0){
   if(jugador1==1){
      textFont(letra3);  
      textSize(70);
 fill(0);
 text("El ganador es:",150,150);
     
      textFont(letra2);  
     textSize(20);
     fill(255,0,0);
     text("Mickey Mouse",175,440);
     image(mickeyganador,230,210,200,200);
   }
    
    if(jugador1==2){
      textFont(letra3);  
      textSize(70);
 fill(0);
 text("El ganador es:",150,150);
      textFont(letra2);  
     textSize(20);
     fill(0,0,255);
     text("Woody",210,435);
      image(woodyganador,230,210,200,200);}
     
     
     if(jugador1==3){
       textFont(letra3);  
      textSize(70);
      fill(0);
      text("El ganador es:",150,150);
   textFont(letra2);  
     textSize(22);
     fill(0,255,0);
    text("Baymax",210,440); 
    image(baymaxganador,220,170,250,250);}
 
     if(jugador1==4){
       textFont(letra3);  
      textSize(70);
      fill(0);
     text("El ganador es:",150,150);
     textFont(letra2);  
     textSize(20);
     fill(0);
    text("Furia",220,440);
    image(furiaganador,230,220,200,200);
  }
 
     if(jugador1==5){
        textFont(letra3);  
      textSize(70);
        fill(0);
      text("El ganador es:",150,150);
    textFont(letra2);  
     textSize(20);
     fill(0);
     text("Billy Rocket",190,440);
     image(billyganador,220,190,200,230);}
     textSize(35);
     fill(#FF7514);
 text("Jugador 1",470,340);
    }
 else{
      if (vida2<=0){
        if(jugador2==1){
          textFont(letra3);  
      textSize(70);
 fill(0);
 text("El ganador es:",150,150);
      textFont(letra2);  
     textSize(20);
     fill(255,0,0);
     text("Mickey Mouse",175,440);
     image(mickeyganador,230,210,200,200);}
    
    if(jugador2==2){
        textFont(letra3);  
      textSize(70);
      fill(0);
      text("El ganador es:",150,150);
      textFont(letra2);  
     textSize(20);
     fill(0,0,255);
     text("Woody",210,435);
    image(woodyganador,230,210,200,200);}
     
     
     if(jugador2==3){
       textFont(letra3);  
      textSize(70);
      fill(0);
      text("El ganador es:",150,150);
   textFont(letra2);  
     textSize(22);
     fill(0,255,0);
    text("Baymax",210,440); 
    image(baymaxganador,220,170,250,250);}
 
     if(jugador2==4){
        textFont(letra3);  
      textSize(70);
      fill(0);
     text("El ganador es:",150,150);
     textFont(letra2);  
     textSize(20);
     fill(0);
    text("Furia",220,440);
     image(furiaganador,230,220,200,200);}
 
     if(jugador2==5){
       textFont(letra3);  
      textSize(70);
        fill(0);
      text("El ganador es:",150,150);
    textFont(letra2);  
     textSize(20);
     fill(0);
     text("Billy Rocket",190,440);
      image(billyganador,220,190,200,230);}
     textSize(35);
     fill(#FF7514);
 text("Jugador 2",470,340);
 
    }
 }
 fill(0,0,255);
 noStroke();
     rect(180,545,150,80);
     textSize(25);
     fill(255);
     text("Nuevo\n juego",200,573);
     
      fill(0,0,255);
 noStroke();
     rect(360,545,150,80);
     textSize(25);
     fill(255);
     text("Salir del\n juego",380,575);

}



 void mousePressed() {
  switch(pantalla){
    case 0:
    if( (mouseX> 200) && (mouseX< 500) && (mouseY>530) && (mouseY< 630)){pantalla= 0 ;{
    pantalla =1;
  cancion1.play();
   
  } 
  
  }
  
  break;
  
  case 1:
  
      if( (mouseX> 70) && (mouseX< 200) && (mouseY>110) && (mouseY< 320)){

       jugador1=1;
       pantalla=2;
      }
    if( (mouseX> 280) && (mouseX<430 ) && (mouseY>190) && (mouseY< 450)){
        
       jugador1=2;
       pantalla=2;
       }
     if( (mouseX> 490) && (mouseX<620 ) && (mouseY>110) && (mouseY< 320)){
          
       jugador1=3;
       pantalla=2;
        }
    if((mouseX> 70) && (mouseX< 220) && (mouseY>380) && (mouseY< 640)){
          
       jugador1=4;
       pantalla=2;
        }
    if((mouseX> 490) && (mouseX< 620) && (mouseY>380) && (mouseY< 640)){
          
       jugador1=5;
       pantalla=2;
        }
 
  
  
  break;
  
  case 2:
  if(jugador1!=1&(mouseX> 70) && (mouseX< 200) && (mouseY>110) && (mouseY< 320)){
       jugador2=1;
       pantalla=3;
     }
    if(jugador1!=2&(mouseX> 280) && (mouseX<430 ) && (mouseY>190) && (mouseY< 450)){
       jugador2=2;
       pantalla=3;
       }
    if(jugador1!=3&(mouseX> 490) && (mouseX<620 ) && (mouseY>110) && (mouseY< 320)){
       jugador2=3;
       pantalla=3;
        }
   if(jugador1!=4&(mouseX> 70) && (mouseX< 220) && (mouseY>380) && (mouseY< 640)){
       jugador2=4;
       pantalla=3;
        }
     if(jugador1!=5&(mouseX> 490) && (mouseX< 620) && (mouseY>380) && (mouseY< 640)){
       jugador2=5;
       pantalla=3;
        }
   
    
  
  
  break;
  
  case 3:
    if((mouseX>540)&(mouseX<580)&(mouseY>580)&(mouseY<620)){
      
      turnojugador+=1;
      if(turnojugador%2==0){
        vida2=vida2-2;
      }
      else{
        if(turnojugador%2==1){
          vida1=vida1-2;
        }
      }
  }
  if((mouseX>540)&(mouseX<580)&(mouseY>630)&(mouseY<670)){
   
    turnojugador+=1;
      if(turnojugador%2==0){
        vida2=vida2-4;
      }
      else{
        if(turnojugador%2==1){
          vida1=vida1-4;
        }
      }
      }
      
      
      break;
       case 4:
       if(pantalla==4){
       cancion1.pause();
       cancion3.play();
       
      
       }
      
       
  if((mouseX>180)&(mouseX<330)&(mouseY>545)&(mouseY<625)){
 
    pantalla=0;
   
    
    vida=1;
   vida1=10;
    vida2=10;
    turnojugador=0;
    jugador1=0;
    jugador2=0;
    
 cancion1.rewind();
 redraw();
 

    
  }
  else{
    if((mouseX>360)&(mouseX<510)&(mouseY>545)&(mouseY<625)){
      exit();
    }
  }
  break;
      
  }
 }
 
 
 
 
 
 
 
 
 
 