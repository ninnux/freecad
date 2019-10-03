rc=11;
r=rc+1;
rh=rc-2;
h=80;
hs=h-10;

module cuscinetto608ZZ(){
    cylinder(7+2,11,11,center);
}

difference(){
    difference(){
    difference(){
        cylinder(h,r,r,center);
        translate([0,0,h-8])cuscinetto608ZZ();
    }
    translate([0,0,-1])cylinder(h,rh,rh,center);
}


translate([9,0,hs/2])cube([3,5,hs+1], true);
}