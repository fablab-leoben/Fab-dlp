//design file for Fab-DLP projector Holder 
//part of thew Fab-DLP project https://github.com/fablab-leoben/Fab-dlp
difference () {
union (){
cube ([130,110,50]);
translate ([-15,10,0])cube ([15,15,5]);
translate ([-15,95,0])cube ([15,15,5]);
translate ([130,10,0])cube ([15,15,5]);
translate ([130,95,0])cube ([15,15,5]);
}
union (){
translate ([3.5,5,3]) cube ([123,99,55]);
translate ([25,-1,3]) cube ([95,99,55]);
translate ([90,98,3]) cube ([36,99,55]);
translate ([5,69,38]) cube ([90,99,55]);
translate ([9,98,-5]) cylinder (r=1.6,h=70);
translate ([78,98,-5]) cylinder (r=1.6,h=70);
translate ([9,27,-5]) cylinder (r=1.6,h=70);

translate ([-7.5,17.5,-5]) cylinder (r=1.6,h=70);
translate ([-7.5,102.5,-5]) cylinder (r=1.6,h=70);
translate ([137.5,17.5,-5]) cylinder (r=1.6,h=70);
translate ([137.5,102.5,-5]) cylinder (r=1.6,h=70); 
translate ([-1,85,20]) rotate ([0,90,0]) cylinder (r=14.5,h=70);
translate ([-1,97,8]) rotate ([0,90,0]) cylinder (r=1.5,h=70);
translate ([-1,73,8]) rotate ([0,90,0]) cylinder (r=1.5,h=70);
translate ([-1,97,32]) rotate ([0,90,0]) cylinder (r=1.5,h=70);
translate ([-1,73,32]) rotate ([0,90,0]) cylinder (r=1.5,h=70);
}

}
