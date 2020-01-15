magDia = 8.25; /* incl. slop */
magDep = 3;
partHt = 14;
outerWallThick = 8; /* this is how far we go from center towards outside
                       of the printer */
extension = 12;


difference() {
   linear_extrude(height=partHt) {
      polygon(points=[[-9,0],[-4.5,0],[-3.5,1],[3.5,1],[4.5,0],
                      [outerWallThick+extension,0], [outerWallThick+extension,-18],
                      [3,-18],[-9,-5]]);
   }

   /* cut out the side so that we end up with a lip to hold bottom of panel */
   translate([outerWallThick,-20+1,4]) cube([20,20,20]); 

   /* bolt */
   translate([0,-4,partHt/2]) rotate([90,0,0])
      capBoltHole();
}

module capBoltHole() {
   translate([0,0,-20.2]) cylinder($fn=30,d=5.2,h=20);
   cylinder($fn=30,d=9.2,h=20);
}
