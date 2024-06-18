class Collider {

  /* --- ATRIBUTOS --- */
  private int ancho;
  private int alto;
  private PVector posicion;

  /* --- CONSTRUCTORES --- */
  public Collider(int ancho, int alto, PVector posicion) {
    this.ancho = ancho;
    this.alto = alto;
    this.posicion = posicion;
  }

  /* --- METODOS --- */
  boolean colision(Collider otro) {
    //Coordenadas de la Clase con la que Colision
    float otroX = otro.getPosicion().x;
    float otroY = otro.getPosicion().y;
    float otroAncho = otro.getAncho();
    float otroAlto = otro.getAlto();
    //Coordenadas de la Clase que colisiona
    float colliderX = this.posicion.x;
    float colliderY = this.posicion.y;
    float colliderAncho = this.ancho;
    float colliderAlto = this.alto;
    //Colisiones
    boolean colisionX = colliderX < otroX + otroAncho && colliderX + colliderAncho > otroX;
    boolean colisionY = colliderY < otroY + otroAlto && colliderY + colliderAlto > otroY;

    return colisionX && colisionY;
  }

  /* --- METODOS ACCESORES --- */
  public int getAncho() {
    return this.ancho;
  }

  public void setAlto(int alto) {
    this.alto=alto;
  }

  public int getAlto() {
    return this.alto;
  }

  public void setAncho(int ancho) {
    this.ancho=ancho;
  }

  public PVector getPosicion() {
    return this.posicion;
  }
}
