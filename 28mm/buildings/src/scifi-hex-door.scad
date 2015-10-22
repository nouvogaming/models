include <greg-frost-bevel-extrude.scad>

// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module hexDoor() {
   /* body of door */
   difference() {
      union() {
         bevel_bulkhead(4.75);
         hd_poly_outline(3);
      }
      translate([0,0,2]) {
         hd_poly_inset4(5);
         hd_poly_inset5(5);
         hd_poly_inset6(5);
         hd_poly_inset2(5);
         hd_poly_inset3(5);
         hd_poly_inset1(5);
      }
   
      translate([-0.4,-31,1.2]) cube([0.8,55,5]);
   }

   /* numerals */
   scale([1.1,1.1,1]) poly_zero(2.5);
   scale([1.1,1.1,1]) poly_six(2.5);

   /* decorations */
   translate([-40,5,0]) rotate([0,0,90]) decoration();
   translate([-40,-7,0]) rotate([0,0,90]) decoration();
   translate([40,5,0]) rotate([0,0,-90]) decoration();
   translate([40,-7,0]) rotate([0,0,-90]) decoration();

   // translate([-20.8,26.7,3]) sphere($fn=30,r=3.0);
}

/* MODULES */

module decoration(rad=6) {
   difference() {
      translate([-3,0,0]) rotate([0,90,0]) {
         difference() {
            cylinder(r=rad,h=6, $fn=7);
            translate([0,0,1.95]) cylinder(r=rad+0.1,h=2.1, $fn=7);
         }
         cylinder(r=rad-2,h=6, $fn=30);
      }
      translate([-0.55*rad,-1.1 * rad,-1*rad - 1]) cube([10,2*rad+1,rad+1]);
      translate([-0.55*rad,-2.65*rad,0]) cube([10,2*rad+1,rad+1]);
   }
}

module hd_poly_inset4(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-14.173228,21.259825],[-21.259842,14.173205],[-99.212598,35.433055],[-99.212598,42.519665],[-56.475254,85.256935],[-14.173228,85.256935]]);
  }
}

module hd_poly_inset5(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-113.385830,-21.259865],[-113.385830,28.346435],[-35.433071,7.086595],[-35.433071,-0.000015]]);
  }
}

module bevel_bulkhead(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    bevel_extrude(height=h,bevel_depth=2,$fn=10)
      polygon([[85.039370,106.299235],[70.866141,92.125935],[127.559050,35.433055],[127.559050,-28.346475],[70.866141,-85.039395],[0.000000,-85.039395],[-70.866141,-85.039395],[-127.559050,-28.346475],[-127.559050,35.433055],[-70.866141,92.125935],[-85.039370,106.299235],[-141.732280,49.606275],[-148.818900,42.519665],[-148.818900,-35.433095],[-77.952755,-106.299235],[77.952755,-106.299235],[148.818900,-35.433095],[148.818900,42.519665]]);
  }
}
module poly_bulkhead(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[85.039370,106.299235],[70.866141,92.125935],[127.559050,35.433055],[127.559050,-28.346475],[70.866141,-85.039395],[0.000000,-85.039395],[-70.866141,-85.039395],[-127.559050,-28.346475],[-127.559050,35.433055],[-70.866141,92.125935],[-85.039370,106.299235],[-141.732280,49.606275],[-148.818900,42.519665],[-148.818900,-35.433095],[-77.952755,-106.299235],[77.952755,-106.299235],[148.818900,-35.433095],[148.818900,42.519665]]);
  }
}

module poly_zero(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    difference()
    {
       linear_extrude(height=h)
         polygon([[46.895317,-47.133095],[46.895317,-37.904575],[46.553520,-33.324505],[46.028007,-31.935952],[45.135063,-30.641395],[43.947319,-29.569007],[42.537407,-28.846965],[39.136528,-28.300085],[36.867852,-28.441077],[35.017876,-28.864055],[33.543877,-29.603187],[32.403130,-30.658485],[31.018852,-33.204875],[30.608696,-37.477335],[30.608696,-47.133095],[30.771050,-50.465612],[31.258110,-52.841105],[32.245049,-54.550088],[33.872856,-55.883095],[36.043266,-56.741860],[38.623833,-57.028115],[40.777153,-56.827310],[42.691216,-56.224895],[44.259209,-55.349035],[45.374321,-54.293735],[46.117729,-53.076085],[46.570610,-51.713175],[46.895317,-47.133095]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[39.991020,-49.457315],[39.768852,-52.208775],[39.418510,-52.631752],[38.777641,-52.772745],[38.136772,-52.623207],[37.752251,-52.174595],[37.512993,-49.457315],[37.512993,-35.956335],[37.735161,-33.051065],[38.106865,-32.679357],[38.743462,-32.555455],[39.380059,-32.700720],[39.751762,-33.136515],[39.991020,-35.751255],[39.991020,-49.457315]]);
    }
  }
}

module hd_poly_inset6(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-14.173228,-70.866165],[-14.173228,-14.173245],[-21.259842,-7.086635],[-99.212598,-28.346475],[-99.212598,-35.433095],[-63.779527,-70.866165]]);
  }
}

module hd_poly_inset2(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[35.433071,-0.000015],[35.433071,7.086595],[113.385830,28.346435],[113.385830,-21.259865]]);
  }
}

module poly_six(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    difference()
    {
       linear_extrude(height=h)
         polygon([[65.916313,-49.149695],[59.012016,-49.149695],[58.960746,-51.576455],[58.550590,-52.430945],[57.559379,-52.772745],[56.687797,-52.448035],[56.294730,-51.610635],[56.243460,-49.542765],[56.243460,-45.133585],[56.897146,-46.103433],[57.798635,-46.791295],[58.943655,-47.214273],[60.327932,-47.355265],[62.113821,-47.098918],[63.677542,-46.329875],[64.865286,-45.201945],[65.523245,-43.868935],[65.916311,-39.989535],[65.916311,-37.784945],[65.694143,-33.461215],[65.283987,-32.094033],[64.497854,-30.829385],[63.357107,-29.765542],[61.848928,-28.966595],[60.033133,-28.466712],[57.935354,-28.300085],[55.401785,-28.492345],[53.372366,-29.069125],[51.795828,-30.004797],[50.620901,-31.273715],[49.860403,-32.760535],[49.492971,-34.315715],[49.339163,-40.485145],[49.339163,-44.313275],[49.475881,-50.909945],[49.851858,-52.537758],[50.672171,-54.071575],[51.902640,-55.370400],[53.509085,-56.293255],[55.457327,-56.857218],[57.679006,-57.045205],[60.323660,-56.810220],[62.447073,-56.105265],[64.044974,-54.973063],[65.113089,-53.456335],[65.715506,-51.525185],[65.916311,-49.149695]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[59.012016,-40.519325],[58.687309,-42.535925],[58.260063,-42.946085],[57.627739,-43.082805],[57.003960,-42.950357],[56.568169,-42.553015],[56.243462,-40.519325],[56.243462,-35.512005],[56.551079,-33.119425],[56.978325,-32.696448],[57.610649,-32.555455],[58.533501,-32.982705],[58.892387,-33.794470],[59.012016,-35.341105],[59.012016,-40.519325]]);
    }
  }
}

module hd_poly_inset3(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[15.165382,21.598995],[22.251992,14.512375],[100.204750,35.772225],[100.204750,42.858835],[57.467412,85.596135],[15.165382,85.596135]]);
  }
}

module hd_poly_outline(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[85.039370,106.299235],[-85.039370,106.299235],[-148.818900,42.519665],[-148.818900,-35.433095],[-77.952755,-106.299235],[77.952755,-106.299235],[148.818900,-35.433095],[148.818900,42.519665]]);
  }
}

module hd_poly_inset1(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[63.779527,-70.866165],[99.212598,-35.433095],[99.212598,-28.346475],[21.259842,-7.086635],[14.173228,-14.173245],[14.173228,-70.866165]]);
  }
}

