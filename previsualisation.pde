ArrayList<Line> lineArray;
int[] currentCoordinates = new int[4];

int numberElements = 20;
int[] currentValues = new int[numberElements];

void setup(){
     size(800,800, P2D);
     lineArray = new ArrayList<Line>();
     JSONObject tempJson = loadJSONObject("shape.json");
     for(int i = 0; i < numberElements; i++){
          for(int j = 0; j<4; j++){
               currentCoordinates[j] = tempJson.getJSONArray("coordinates").getJSONArray(i).getJSONObject(2).getJSONArray("line").getInt(j);
          }
          lineArray.add(new Line(currentCoordinates[0],currentCoordinates[1],currentCoordinates[2],currentCoordinates[3], i));
     }
}

void draw(){
     background(0);
     for(int i = 0; i < numberElements; i++){
          lineArray.get(i).draw();
          lineArray.get(i).setOn((int)random(0,2)!= 0);
     }
}

void keyPressed(){
     if( key == 'a'){
          setAllOn(true);
     }
     if( key == 'z'){
          setAllOn(false);
     }
}

void setAllOn(boolean on){
     for(int i = 0; i < numberElements; i++){
          lineArray.get(i).setOn(on);
     }
}