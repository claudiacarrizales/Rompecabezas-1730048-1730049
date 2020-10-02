import java.util.Collections;
import android.view.MotionEvent;
KetaiGesture gesture;
import ketai.ui.*;

PImage photo;
PImage fondo;
boolean flagDraw = false;

ArrayList <ParteImagen> imagen = new ArrayList<ParteImagen>();
void setup() {
  //size(400, 400);
  fullScreen();
  orientation(CENTER);
  gesture = new KetaiGesture(this);
  photo = loadImage("happyface.jpg");
  fondo = loadImage("fondo.jpg");
  
  //CREACION DE OBJETOS PARTEIMAGEN PARA TODOS LOS PEDAZOS DEL ROMPECABEZAS
  ParteImagen Parte0 = new ParteImagen(0,0,0,(photo.get(0,0,100,100)));
  imagen.add (0,Parte0);
  ParteImagen Parte1 = new ParteImagen(1,0,100,(photo.get(0,100,100,100)));
  imagen.add (1,Parte1);
  ParteImagen Parte2 = new ParteImagen(2,0,200,(photo.get(0,200,100,100)));
  imagen.add (2,Parte2);
  ParteImagen Parte3 = new ParteImagen(3,0,300,(photo.get(0,300,100,100)));
  imagen.add (3,Parte3);  
  ParteImagen Parte4 = new ParteImagen(4,100,0,(photo.get(100,0,100,100)));
  imagen.add (4,Parte4);  
  ParteImagen Parte5 = new ParteImagen(5,100,100,(photo.get(100,100,100,100)));
  imagen.add (5,Parte5);  
  ParteImagen Parte6 = new ParteImagen(6,100,200,(photo.get(100,200,100,100)));
  imagen.add (6,Parte6);
  ParteImagen Parte7 = new ParteImagen(7,100,300,(photo.get(100,300,100,100)));
  imagen.add (7,Parte7);  
  ParteImagen Parte8 = new ParteImagen(8,200,0,(photo.get(200,0,100,100)));
  imagen.add (8,Parte8);  
  ParteImagen Parte9 = new ParteImagen(9,200,100,(photo.get(200,100,100,100)));
  imagen.add (9,Parte9);
  ParteImagen Parte10 = new ParteImagen(10,200,200,(photo.get(200,200,100,100)));
  imagen.add (10,Parte10);
  ParteImagen Parte11 = new ParteImagen(11,200,300,(photo.get(200,300,100,100)));
  imagen.add (11,Parte11);
  ParteImagen Parte12 = new ParteImagen(12,300,0,(photo.get(300,0,100,100)));
  imagen.add (12,Parte12);
  ParteImagen Parte13 = new ParteImagen(13,300,100,(photo.get(300,100,100,100)));
  imagen.add (13,Parte13);
  ParteImagen Parte14 = new ParteImagen(14,300,200,(photo.get(300,200,100,100)));
  imagen.add (14,Parte14);
  //DESORDEN DE EL ARRAY DE OBJETOS PARTEIMAGEN
  Collections.shuffle(imagen);
  //LA PARTE 15 ES LA NEGRA Y ESA NO SE INCLUYE EN EL SHUFFLE PARA COLOCARLA EN LA EZQUINA INFERIOR DERECHA
  ParteImagen Parte15 = new ParteImagen(15,300,300,(fondo.get(300,300,100,100)));
  imagen.add (15,Parte15);
  
  imagen.get(0).setX(0);
  imagen.get(0).setY(0);
  imagen.get(1).setX(0);
  imagen.get(1).setY(100);
  imagen.get(2).setX(0);
  imagen.get(2).setY(200);
  imagen.get(3).setX(0);
  imagen.get(3).setY(300);
  imagen.get(4).setX(100);
  imagen.get(4).setY(0);
  imagen.get(5).setX(100);
  imagen.get(5).setY(100);
  imagen.get(6).setX(100);
  imagen.get(6).setY(200);
  imagen.get(7).setX(100);
  imagen.get(7).setY(300);
  imagen.get(8).setX(200);
  imagen.get(8).setY(0);
  imagen.get(9).setX(200);
  imagen.get(9).setY(100);
  imagen.get(10).setX(200);
  imagen.get(10).setY(200);
  imagen.get(11).setX(200);
  imagen.get(11).setY(300);
  imagen.get(12).setX(300);
  imagen.get(12).setY(0);
  imagen.get(13).setX(300);
  imagen.get(13).setY(100);
  imagen.get(14).setX(300);
  imagen.get(14).setY(200);
  imagen.get(15).setX(300);
  imagen.get(15).setY(300);
  
}

void draw() {
      for (int i=0;i<16;i++){
         image(imagen.get(i).getParteImagen(),imagen.get(i).getX(),imagen.get(i).getY());
      }
}

void onTap(float x, float y)
{
    System.out.println("SINGLE-"+ x +"-"+ y);
    //AQUI SE BUSCA SI LA PIEZA ESTA ALADO DE LA PIEZA NEGRA
    if((x > imagen.get(0).getX() && x < imagen.get(0).getX()+100) && (y > imagen.get(0).getY() && y < imagen.get(0).getY()+100)){isColision(imagen.get(0));}
    if((x > imagen.get(1).getX() && x < imagen.get(1).getX()+100) && (y > imagen.get(1).getY() && y < imagen.get(1).getY()+100)){isColision(imagen.get(1));}
    if((x > imagen.get(2).getX() && x < imagen.get(2).getX()+100) && (y > imagen.get(2).getY() && y < imagen.get(2).getY()+100)){isColision(imagen.get(2));}
    if((x > imagen.get(3).getX() && x < imagen.get(3).getX()+100) && (y > imagen.get(3).getY() && y < imagen.get(3).getY()+100)){isColision(imagen.get(3));}
    if((x > imagen.get(4).getX() && x < imagen.get(4).getX()+100) && (y > imagen.get(4).getY() && y < imagen.get(4).getY()+100)){isColision(imagen.get(4));}
    if((x > imagen.get(5).getX() && x < imagen.get(5).getX()+100) && (y > imagen.get(5).getY() && y < imagen.get(5).getY()+100)){isColision(imagen.get(5));}
    if((x > imagen.get(6).getX() && x < imagen.get(6).getX()+100) && (y > imagen.get(6).getY() && y < imagen.get(6).getY()+100)){isColision(imagen.get(6));}
    if((x > imagen.get(7).getX() && x < imagen.get(7).getX()+100) && (y > imagen.get(7).getY() && y < imagen.get(7).getY()+100)){isColision(imagen.get(7));}
    if((x > imagen.get(8).getX() && x < imagen.get(8).getX()+100) && (y > imagen.get(8).getY() && y < imagen.get(8).getY()+100)){isColision(imagen.get(8));}
    if((x > imagen.get(9).getX() && x < imagen.get(9).getX()+100) && (y > imagen.get(9).getY() && y < imagen.get(9).getY()+100)){isColision(imagen.get(9));}
    if((x > imagen.get(10).getX() && x < imagen.get(10).getX()+100) && (y > imagen.get(10).getY() && y < imagen.get(10).getY()+100)){isColision(imagen.get(10));}
    if((x > imagen.get(11).getX() && x < imagen.get(11).getX()+100) && (y > imagen.get(11).getY() && y < imagen.get(11).getY()+100)){isColision(imagen.get(11));}
    if((x > imagen.get(12).getX() && x < imagen.get(12).getX()+100) && (y > imagen.get(12).getY() && y < imagen.get(12).getY()+100)){isColision(imagen.get(12));}
    if((x > imagen.get(13).getX() && x < imagen.get(13).getX()+100) && (y > imagen.get(13).getY() && y < imagen.get(13).getY()+100)){isColision(imagen.get(13));}
    if((x > imagen.get(14).getX() && x < imagen.get(14).getX()+100) && (y > imagen.get(14).getY() && y < imagen.get(14).getY()+100)){isColision(imagen.get(14));}
}

void isColision(ParteImagen parteImage){
      float guardarX;
      float guardarY;
      boolean flag=false;
      //SI EXISTE COLISION A LA DERECHA SE INTERCAMBIAN LAS POSICIONES
      if((parteImage.getX()+100 == imagen.get(15).getX()) && (parteImage.getY() == imagen.get(15).getY()) && (flag==false)){
          System.out.println("Esta Derecha");
          guardarX=parteImage.getX();
          guardarY=parteImage.getY();
          parteImage.setX(imagen.get(15).getX());
          parteImage.setY(imagen.get(15).getY());
          imagen.get(15).setX(guardarX);
          imagen.get(15).setY(guardarY);
          flag=true;
      }
      //SI EXISTE COLISION ABAJO SE INTERCAMBIAN LAS POSICIONES
      if((parteImage.getY()+100 == imagen.get(15).getY()) && (parteImage.getX() == imagen.get(15).getX()) && (flag==false)){
          System.out.println("Esta Abajo");
          guardarX=parteImage.getX();
          guardarY=parteImage.getY();
          parteImage.setX(imagen.get(15).getX());
          parteImage.setY(imagen.get(15).getY());
          imagen.get(15).setX(guardarX);
          imagen.get(15).setY(guardarY);
          flag=true;
      }
      //SI EXISTE COLISION A LA IZQUIERDA SE INTERCAMBIAN LAS POSICIONES
      if((parteImage.getX()-100 == imagen.get(15).getX()) && (parteImage.getY() == imagen.get(15).getY()) && (flag==false)){
          System.out.println("Esta Izquierda");
          guardarX=parteImage.getX();
          guardarY=parteImage.getY();
          parteImage.setX(imagen.get(15).getX());
          parteImage.setY(imagen.get(15).getY());
          imagen.get(15).setX(guardarX);
          imagen.get(15).setY(guardarY);
          flag=true;
      }
      //SI EXISTE COLISION ARRIBA SE INTERCAMBIAN LAS POSICIONES
      if((parteImage.getY()-100 == imagen.get(15).getY()) && (parteImage.getX() == imagen.get(15).getX()) && (flag==false)){
          System.out.println("Esta Arriba");
          guardarX=parteImage.getX();
          guardarY=parteImage.getY();
          parteImage.setX(imagen.get(15).getX());
          parteImage.setY(imagen.get(15).getY());
          imagen.get(15).setX(guardarX);
          imagen.get(15).setY(guardarY);
          flag=true;
      }
}
