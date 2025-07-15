Table table; 
int nSamples;

float[] appUsageTime;
float[] screenOnTime;

void setup(){
  size(1000, 1000);
  
  table = loadTable("user_behavior_dataset.csv", "header");
  nSamples = table.getRowCount();
  
  appUsageTime = new float[nSamples];
  screenOnTime = new float[nSamples];
  
  for (int i = 0; i < nSamples; i = i + 1) {
    appUsageTime[i] = table.getFloat(i, "App Usage Time (min/day)");
    screenOnTime[i] = table.getFloat(i, "Screen On Time (hours/day)");
  }
}

void draw () {
  for (int r = 0; r < width; r += 2) {
    float alpha = map(r, 0, width, 50, 0);
    stroke(50, 0, 80, alpha);
    noFill();
    ellipse(width/2, height/2, r, r);
  }

  for (int i = 0; i < nSamples; i = i + 1){
    float x = map(appUsageTime[i], 0, max(appUsageTime), 0, width); 
    float y = map(screenOnTime[i], 0, max(screenOnTime), height, 0);
    
    float tam = map(screenOnTime[i], 0, max(screenOnTime), 5, 20);
    
    fill(random(120, 180), random(100, 200), random(180, 255), 180);
    noStroke();
    ellipse(x, y, tam, tam);
  }
}
