//design file for Fab-DLP Arm Holder 
//part of thew Fab-DLP project https://github.com/fablab-leoben/Fab-dlp
difference () {
union (){
cube ([85,85,5]);
translate([85/2-35/2,85/2-10,5])cube ([35,20,25]);
}
union (){
translate ([12.5/2,12.5/2,-1]) cylinder (r=3,h=100,$fn=50);
translate ([12.5/2,85-12.5/2,-1]) cylinder (r=3,h=100,$fn=50);
translate ([85-12.5/2,12.5/2,-1]) cylinder (r=3,h=100,$fn=50);
translate ([85-12.5/2,85-12.5/2,-1]) cylinder (r=3,h=100,$fn=50);
translate([85/2-20.3/2,85/2-6.2/2,5])cube ([20.3,6.2,30]);

translate ([85/2,0,20]) rotate ([-90,0,0])cylinder (r=
2.2,h=100,$fn=50);
}
}