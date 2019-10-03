
module semisfera(r,spessore){
    difference(){
        difference(){
        sphere(r);
        sphere(r-spessore);
        }
    
        translate([0,0,r/2])cube([r*2,r*2,r],true);
    }
}



module sferamonca(r,spessore,spazio){
    translate([0,0,spazio])
    difference(){
    translate([0,0,spessore])semisfera(r,spessore);
    cube([r*2,r*2,spazio*2],true);
    }
}

module sfeschiacciata(r,spessore,schiaccio){
sferamonca(r,spessore,schiaccio);
rotate([0,180,0])sferamonca(r,spessore,schiaccio);
}

module onex(k){
    r=k*9.05;
    l=k*24;
    //rr=13.8;
    rr=14;
    hull(){
        
        translate([0,l-r])rotate([0,90,0])cylinder(114.56,r,r,true);
        translate([0,-(l-r)])rotate([0,90,0])cylinder(114.56,r,r,true);
    }   
    rotate([0,90,0])cylinder(114.56,k*rr,k*rr,true);
}


module esterno(){
    //translate([25,0,0])cube([30,80,30],true); //esterno squadrato
    translate([18,0,0])rotate([0,0,0]) hull() //esterno del pezzo finale
    {
       r=16;
        l=27;
        h=23;
        translate([0,l-r])rotate([0,90,0])cylinder(h,r,r,true);
        translate([0,-(l-r)])rotate([0,90,0])cylinder(h,r,r,true);
    }
    
}

module esterno2(){
    intersection(){
        esterno();
        onex(1.13);
    }
}

difference(){
    esterno2();
    union(){
        translate([-8,0,0])sphere(28);
        difference(){
            sfeschiacciata(30,1,0);
            //translate([25,0,0])cube([30,50,30],true);
            esterno2();
        }
        translate([50,0,0])onex(1);
    }
}
