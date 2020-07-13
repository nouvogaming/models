$fn=120;
rad = 25/2+0.0;
ht  = 5.5;

intersection() {
   translate([0,0,-0.1]) cylinder(h=ht+0.1,r=rad+1.6);
   difference() {
      union() {
         for (i=[0:2]) {
            rotate([0,0,i*120]) translate([rad-1,-3,0]) cube([3,6,ht]);
         }
         cylinder(h=0.91+1.5, r=rad+3);
      }
      translate([0,0,0.91]) cylinder(h=10,r=rad+0.4);
      translate([0,0,-0.1]) cylinder(h=10,r=rad-1.5);
   }
}


// posts
intersection() {
   for (i=[0:2]) {
      rotate([0,0,i*120]) translate([rad+1,0,0]) rotate([0,-4,0]) cylinder(r=1,h=ht+1);
   }
   cylinder(r=rad+1.6,h=ht);
}
