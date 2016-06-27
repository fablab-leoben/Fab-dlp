//design file for Fab-DLP Z-Axis endstop Holder 
//part of thew Fab-DLP project https://github.com/fablab-leoben/Fab-dlp
difference () {
union (){
cube ([40,5,20]);
translate ([-1,7,0])cylinder(r=7,h=20);
translate ([-20,11,0]) cube ([20,3,20]);
translate ([-20,0,0]) cube ([20,3,20]);

}
translate ([-1,7,0])cylinder(r=5.2,h=20);
translate ([-20,3,0]) cube ([20,8,20]);
translate ([18,-20,17]) rotate ([-90,0,0])cylinder (r=1.6,h=100,$fn=50);
translate ([37,-20,17]) rotate ([-90,0,0])cylinder (r=1.6,h=100,$fn=50);
translate ([-15,-20,10]) rotate ([-90,0,0])cylinder (r=1.6,h=100,$fn=50);
}




































