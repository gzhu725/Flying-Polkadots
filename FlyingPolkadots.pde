int[] xcords = new int[20];
int[] ycords = new int[20];
int[] xvel = new int[20];
int[] yvel = new int[20];
int[] colors = new int[20];
void setup() {
    size(600,600);
    colorMode(HSB);
    for (int i = 0; i<20; i++) {
        xcords[i] = (int)(random(0,width));
        ycords[i] = (int)(random(0,height));
        xvel[i] = (int)(random(1,5));
        yvel[i] = (int)(random(1,5));
        colors[i] = (int)(random(255));
        
    }
}

void draw() {
    background(0);
    for (int i = 0; i<20; i++) {
        fill(colors[i],255,255);
        ellipse(xcords[i], ycords[i], 20,20);
        xcords[i] += xvel[i];
        ycords[i] += yvel[i];
        if(xcords[i] >width || xcords[i] <0) {
            xcords[i] = (int)(random(0,width));
        }
        
        if(ycords[i] >height || ycords[i] <0 ) {
            ycords[i] = (int)(random(0,height));
        }
    }
}

