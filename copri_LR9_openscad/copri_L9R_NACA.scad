// Sampler.scad - library for parametric airfoils of 4 digit NACA series
// Code: Rudolf Huttary, Berlin 
// June 2015
// commercial use prohibited

 use <shortcuts.scad>  // see: http://www.thingiverse.com/thing:644830
 use <naca4.scad>
difference(){ 
intersection(){
translate([0,0,-60])
scale([2,1.5,1.5]) 
linear_extrude(height =80) 
polygon(points = airfoil_data(6412)); 
  
    r=100;
translate([0,-80,0])rotate(90,[0,1,0])cylinder(200,r,r);
    
  



}
translate([45,-3,-30])cube([30,18,60]);
}
