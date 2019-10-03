
module pieno(){
cube([40,100,3],center=true);
translate([0,-50,8.5])difference(){
    cube([40,5,20],center=true);
    rotate(90,[1,0,0])rotate(90,[0,0,1])buchi(10,2,2,10);
}
translate([21.5,-32.5,8.5])rotate(90,[0,0,1])difference(){
    cube([40,5,20],center=true);
    rotate(90,[1,0,0])rotate(90,[0,0,1])buchi(10,10,2,10);
}
translate([-21.5,-32.5,8.5])rotate(90,[0,0,1])difference(){
        cube([40,5,20],center=true);
        rotate(90,[1,0,0])rotate(90,[0,0,1])buchi(10,10,2,10);
}
}
i = 0;


//difference(){
//    pieno();
//    translate([0,i,0])cylinder(5,1.5,1.5, center = true);
//}

module buchi(p,o,r,h) {
for (k=[-15:p:15]){
for (i=[-45:o:45]){
    translate([k,i,0])cylinder(h,r,r, center = true);
}
}
}

difference() {
    pieno();
    buchi(2,10,3,5);
}