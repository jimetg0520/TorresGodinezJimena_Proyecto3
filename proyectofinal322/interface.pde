interface Personajes {
  void display();
  void mover1();
  void atacar1();
  void atacar2();
  void mover2();
 
}


class mickey implements Personajes{
 
  int ataque1;
  int ataque2;
  int defensa;
  int x1,y1;
  int mostrar;
  
  
  mickey(int ataque1_,int ataque2_ ,int defensa_, int x1_, int y1_,int mostrar_)
  {   
    x1 = x1_;
    y1= y1_;
     ataque1 = ataque1_;
     ataque2 = ataque2_;
    defensa = defensa_;
    mostrar=mostrar_;
  }
  
  void display(){
    
   image(mickey2,x1,y1,90,130);
   
  }
  
 
  void mover1(){
    
    x1+=-2;
  }


void atacar1(){
 x1+=5;
}

void mover2(){
    x1+=2;
  }


void atacar2(){
 x1+=-5;
}



}

class woody implements Personajes{
 
  int ataque1;
  int ataque2;
  int defensa;
  int a,b;
  int mostrar;
  
  
  woody(int ataque1_,int ataque2_ ,int defensa_, int a_, int b_,int mostrar_)
  {   
    a = a_;
    b = b_;
     ataque1 = ataque1_;
     ataque2 = ataque2_;
    defensa = defensa_;
    mostrar=mostrar_;
  }
  
  void display(){
image(w2,a,b,90,150);
  }
  void mover1(){
    a+=-2;
  }
  
  void atacar1(){
 a+=5;
}

void mover2(){
    a+=2;
  }


void atacar2(){
 a+=-5;
}


}


class baymax implements Personajes{
 
  int ataque1;
  int ataque2;
  int defensa;
  int c,d;
  int mostrar;
  
  
  baymax(int ataque1_,int ataque2_ ,int defensa_, int c_, int d_,int mostrar_)
  {   
    c = c_;
    d = d_;
     ataque1 = ataque1_;
     ataque2 = ataque2_;
    defensa = defensa_;
    mostrar=mostrar_;
  }
  
  void display(){
    image(bay2,c,d,150,160);
  }
  
 
  void mover1(){
    c+=-2;
  }
  
  void atacar1(){
 c+=5;
}

void mover2(){
    c+=2;
  }


void atacar2(){
 c+=-5;
}

  
}


class furia implements Personajes{
 
  int ataque1;
  int ataque2;
  int defensa;
  int e,f;
  int mostrar;
  
  
  furia(int ataque1_,int ataque2_ ,int defensa_, int e_, int f_,int mostrar_)
  {   
    e = e_;
    f = f_;
     ataque1 = ataque1_;
     ataque2 = ataque2_;
    defensa = defensa_;
    mostrar=mostrar_;
  }
  
  void display(){
    image(furi,e,f,90,130);
   
  }
  
void atacar1(){
  e+=5;
}
  
  void mover1(){
    e+=-2;
  }
  
  void mover2(){
    e+=2;
  }


void atacar2(){
 e+=-5;
}  
  
}


class billy implements Personajes{
 
  int ataque1;
  int ataque2;
  int defensa;
  int g,h;
  int mostrar;
  
  
  billy(int ataque1_,int ataque2_ ,int defensa_, int g_, int h_,int mostrar_)
  {   
    g = g_;
    h = h_;
     ataque1 = ataque1_;
     ataque2 = ataque2_;
    defensa = defensa_;
    mostrar=mostrar_;
  }
  

  
  void display(){
    image(bill2,g,h,90,140);
  }
  void mover1(){
    g+=-2;
  }
  
  void atacar1(){
 g+=5;
}

void mover2(){
   g+=2;
  }


void atacar2(){
 g+=-5;
}

  
}