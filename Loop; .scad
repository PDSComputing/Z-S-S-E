difference() {
    difference() {
        linear_extrude(height = 30, center = false, convexity = 10, twist = 1080, $fn = 100)
    translate([2, 0, 0])
    circle(r = 6);
        linear_extrude(height = 30, center = false, convexity = 10, twist = 1080, $fn = 100)
    translate([2, 1, 0])
    circle(r = 6);
    }
    difference(){
        cylinder(h=30, r1=4, r2=4, center=false);
        cylinder(h=30, r1=3, r2=3, center=false);
        }
    cylinder(h=30, r1=7, r2=7, center=false);
}