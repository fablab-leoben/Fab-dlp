//design file for Fab-DLP Motor Holder 
//part of thew Fab-DLP project https://github.com/fablab-leoben/Fab-dlp
difference () {
union (){
cube ([85,60,70]);
translate ([-15,0,55])cube ([15,10,15]);
translate ([85,0,55])cube ([15,10,15]);
translate ([-15,50,55])cube ([15,10,15]);
translate ([85,50,55])cube ([15,10,15]);
}
union (){
translate ([0,14,43]) cube ([85,32,37]);
translate ([42.5,30,-1])cylinder (r=19,h=44,$fn=500);
translate ([42.5,30,43])cylinder (r=27,h=44,$fn=500);
translate ([-7.5,0,62.5]) rotate ([-90,0,0])cylinder (r=1.6,h=100,$fn=50);
translate ([92.5,0,62.5]) rotate ([-90,0,0])cylinder (r=1.6,h=100,$fn=50); 
translate ([85/2-23.5,30-23.5,-1]) cylinder (r=3,h=100,$fn=50);
translate ([85/2+23.5,30-23.5,-1]) cylinder (r=3,h=100,$fn=50);
translate ([85/2-23.5,30+23.5,-1]) cylinder (r=3,h=100,$fn=50);
translate ([85/2+23.5,30+23.5,-1]) cylinder (r=3,h=100,$fn=50);
translate ([7,-1,58])  rotate ([-90,0,0])cylinder (r=4.1,h=90);
translate ([85-7,-1,58])  rotate ([-90,0,0])cylinder (r=4.1,h=90,$fn=50);
translate ([7,-1,58])  rotate ([-90,0,0])cylinder (r=7,h=9);
translate ([85-7,-1,58])  rotate ([-90,0,0])cylinder (r=7,h=9,$fn=50);
translate ([85/2,-1,18])  rotate ([-90,0,0])cylinder (r=16,h=40,$fn=500);
translate ([0,30,18])  rotate ([-90,0,-90])cylinder (r=14,h=100,$fn=500);
translate ([0,0,0])cube ([10,60,30]);
translate ([75,0,0])cube ([30,90,30]);
translate ([85/2-15,0,43])cube ([30,90,30]);
}

}
