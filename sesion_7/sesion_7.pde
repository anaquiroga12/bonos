//Importar la libreraria Sound
import processing.sound.*;
import processing.sound.FFT;

SoundFile soundfile;
FFT fft;

//numeto de bandas de frecuencia
int bands = 256;

// array para guardar el espectro de nuestras frecuencias
float[] spectrum = new float [bands];

int x = 0;
int y = 70;

float radio;

void setup () {
  size (1000,1000);
  noStroke();
  background (0);
  
  //importar la cancion
  soundfile = new SoundFile (this, "i love you.mp3" );
  
  //crear el analizador de frecuencias
  fft = new FFT (this, bands);
  
  // analice la cancion
  fft.input(soundfile);
  
  //reproducir la cancion
  soundfile.play();
}

void draw () {
  fft.analyze(spectrum);
  
  float level = spectrum [55] * 40;
  radio = (level * width);
  
  radio = constrain (radio,10,500);

    fill(random(0,100), random(100,255), random (200,255), 80);
    ellipse (x,y,radio,radio);
   x += 40;
  
   //controlar el dibujo en el eje vertical
  if (x > width) {
   x = 0;
   y = y +  40;
  
  //controlar el dibujo en el eje horizontal
  if( y > height){
   y = 40;
  background (0);
  }
}
}
