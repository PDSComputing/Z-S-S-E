difference() {
	linear_extrude(height = 20, center = false, convexity = 10, twist = 360, $fn = 100)
translate([2, 0, 0])
circle(r = 3);
	linear_extrude(height = 20, center = false, convexity = 10, twist = 360, $fn = 100)
translate([2, 0, 0])
circle(r = 2);
}
