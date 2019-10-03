
module ovale(h,r,l){
hull(){
translate([l,0,0])cylinder(h, r, r, true);
translate([-l,0,0])cylinder(h,r, r, true);
}   
}

difference(){
union(){
translate([0,-2,0])ovale(6,4,12);

rotate(30,[1,0,0]) 
    difference(){
        hull(){
            ovale(3,3,12);
            translate([0,22,0])ovale(3,3,5);
        }
        translate([0,18,0])cylinder(15, 3.5, 3.5, true);
}
}
union(){
translate([12,-2,0])cylinder(10, 3, 3, true);
translate([-12,-2,0])cylinder(10,3, 3, true);
}
}