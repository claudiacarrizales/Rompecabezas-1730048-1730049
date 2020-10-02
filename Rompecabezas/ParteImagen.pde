class ParteImagen{
    int id;
    float x;
    float y;
    PImage ParteImagen;
    
    ParteImagen(int Imagen_id, float Imagen_x, float Imagen_y, PImage ImagenParte){
        id = Imagen_id;
        x = Imagen_x;
        y = Imagen_y;
        ParteImagen = ImagenParte;
    }
    public int getId(){
      return id;
    }
    
    public float getX(){
      return this.x;
    }
    
    public void setX(float x) {
        this.x = x;
    }
    
    public float getY(){
      return this.y;
    }
    
    public void setY(float y) {
        this.y = y;
    }
    
    
    public PImage getParteImagen(){
      return this.ParteImagen;
    }
    
    public void setParteImagen(PImage ParteImagen) {
        this.ParteImagen = ParteImagen;
    }
    
}
