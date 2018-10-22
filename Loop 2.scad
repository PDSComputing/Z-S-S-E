module cube_diversity(width, length, height){
    cube(size = [width, length, height], center = true);
}
//Example: translate([0,0,10]) cube_eli(3,9,1);

module cylinder_diversity(h, r1, r2, $fn){
    center = true;
    cylinder(size = [h,r1,r2,$fn]);
}
//Example: cylinder_eli(10, 10, 10, 30);

module sphere_diversity(r, $fa, $fn){
    center = true;
    sphere(size = [r,$fa,$fn]);
} 
//Example: sphere_eli(r, $fa, $fn);

//first ramp
difference(){
   translate([1+2.5*cos(30),0,0]) rotate([30,0,0]) cube_diversity(2,5,2.05);
   translate([1+2.5*cos(30),0,0]) rotate([30,0,0]) cube_diversity(1.95,5,3);
}
translate([1+2.5*cos(30),0,0]) rotate([30,0,0]) cube_diversity(2,5,0.05);


//middle
difference(){
translate([0,0,-1.25])cube_diversity(5*cos(30),5*cos(30),5);
translate([0,0,-1.25])cube_diversity(5*cos(30)-0.05,5*cos(30)-0.05,5);
}

//second ramp
translate([0,-(1+2.5*cos(30)),-2.5]) rotate([330,0,90]) cube_diversity(2,5,0.05);
//flat piece
difference(){
    translate([1+2.5*cos(30),-(1+2.5*cos(30)),-1.25]) cube_diversity(2,2,2);
    translate([1+2.5*cos(30),-(1+2.5*cos(30)),-1.25]) cube_diversity(1.95,2,2);
}
    




