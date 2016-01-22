class Line{
     
     int x1, x2, y1, y2, index;
     boolean on = true;
     int stroke = 255;
     
     Line(int _x1, int _x2, int _y1, int _y2, int _index){
          x1 = _x1;
          x2 = _x2;
          y1 = _y1;
          y2 = _y2;
          index = _index;
     }
     
     void draw(){
          stroke(stroke);
          line(x1, x2, y1, y2);
          text(index,(x1+y1)/2, (x2+y2)/2+5);
     }
     
     void setOn(boolean _on){
          on = _on;
          if(on)stroke = 255;
          else stroke = 0;
     }
}