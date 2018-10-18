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

translate([0,0,4]) difference(){
    cube_diversity(5,5,8);
    cube_diversity(4.5,4.5,8);
}

module spiral(){
translate([0,3,5]) rotate([0,60,0]) cube_diversity(2,3,8);
translate([0,4.5,5]) rotate([0,60,0]) cube_diversity(3,0.5,8);
translate([-3,0,2]) rotate([300,0,0]) cube_diversity(2,2,8);
translate([-4,0,2]) rotate([300,0,0]) cube_diversity(0.5,3,8);
}

difference(){
    spiral();
    translate([-3.7,4,0])cube_diversity(3,3,20);
}
translate([-3.7,4,3 ])cube_diversity(3,3,3);





