hpezzo=10;
rpezzo=15;
hcuscinetto=7.2;
rcuscinetto=11.2;

module porta_cuscinetto(ph,h,r) {
 difference(){
  children();
  translate([0,0,ph-(h-0.2)])cylinder(h,r,r,$fn=30);
 }
}

module foro_asse(ph,h,r) {
 difference(){
  children();
  translate([0,0,ph-(h-0.2)])cylinder(h,r,r,$fn=30);
 }
}


module braccio(){
    l=40;
    //a=40;
    a=40;
    difference(){
    union(){
    cube([4,5,l],true);
    translate([0,0,20])rotate(a,[0,1,0])cube([4,5,6],true);
    }
        
         //cube([4,5,5],true);
    translate([0,0,22])rotate(135,[0,1,0])cylinder(10,1,1,true);
    }
        
        
}
// parte_anteriore
module parte_anteriore(){
union(){
for(i=[0,120,240]){
  porta_cuscinetto(hpezzo,hcuscinetto,rcuscinetto)rotate(i,[0,0,1])translate([13,0,25])rotate(50,[0,1,0])translate([18,0,0])braccio();
    
}
porta_cuscinetto(hpezzo,hcuscinetto,rcuscinetto)foro_asse(10,20,7)cylinder(hpezzo,rpezzo,rpezzo,true,$fn=60);
}
}

// ANELLO
module anello(){
    difference(){
        difference(){
            translate([0,0,45])cylinder(40,44,44,true);
            translate([0,0,45])cylinder(42,40,40,true);
        }
    
        parte_anteriore();
    
    }
}

parte_anteriore();
anello();
translate([0,0,90])rotate(180,[0,1,0])rotate(60,[0,0,1])parte_anteriore();