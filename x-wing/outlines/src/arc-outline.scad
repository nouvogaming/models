
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path4180(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[12.267500,2.940000],[11.952500,3.045000],[11.392500,2.520000],[11.462500,2.415000],[10.797500,1.540000],[10.692500,1.540000],[10.447500,1.190000],[10.412500,1.015000],[10.307500,0.875000],[10.167500,0.735000],[10.097500,0.245000],[9.957500,-0.315000],[5.372500,-0.315000],[7.682500,0.315000],[7.962500,0.420000],[8.172500,0.525000],[8.277500,0.630000],[7.927500,0.700000],[7.577500,0.630000],[3.377500,-0.035000],[3.307500,0.245000],[3.062500,0.490000],[2.572500,0.665000],[1.977500,0.735000],[1.522500,0.455000],[1.172500,-0.000000],[0.997500,-0.455000],[0.822500,-0.385000],[0.822500,-0.245000],[0.962500,0.035000],[1.067500,0.420000],[1.137500,1.015000],[1.172500,1.785000],[1.242500,2.450000],[1.277500,3.185000],[1.137500,3.290000],[0.892500,3.325000],[0.577500,3.150000],[0.332500,2.800000],[0.157500,2.520000],[-0.017500,2.030000],[-0.297500,1.435000],[-1.172500,1.120000],[-1.557500,0.980000],[-2.012500,0.735000],[-2.152500,0.875000],[-2.642500,1.015000],[-3.316250,0.910000],[-3.657500,0.595000],[-3.727500,0.595000],[-3.832500,0.350000],[-8.032500,1.435000],[-8.627500,1.610000],[-9.082500,1.715000],[-9.327500,1.575000],[-9.047500,1.260000],[-8.627500,1.120000],[-6.947500,0.455000],[-11.182500,0.910000],[-11.112500,1.190000],[-10.972500,1.190000],[-10.937500,1.540000],[-10.832500,1.680000],[-10.692500,2.135000],[-10.657500,2.205000],[-10.727500,2.345000],[-10.797500,2.205000],[-10.797500,2.345000],[-10.027500,3.535000],[-9.922500,3.535000],[-9.607500,4.235000],[-9.887500,4.410000],[-10.447500,3.815000],[-10.412500,3.745000],[-11.042500,2.765000],[-11.182500,2.765000],[-11.357500,2.450000],[-11.497500,2.135000],[-11.672500,1.960000],[-11.742500,1.540000],[-11.812500,1.400000],[-11.882500,0.910000],[-12.057500,0.875000],[-12.267500,0.665000],[-12.057500,0.420000],[-11.112500,0.140000],[-9.887500,-0.140000],[-8.032500,-0.560000],[-5.582500,-1.120000],[-6.142500,-1.225000],[-6.737500,-1.365000],[-7.367500,-1.505000],[-9.152500,-1.925000],[-9.257500,-1.995000],[-9.327500,-2.170000],[-9.152500,-2.205000],[-8.767500,-2.205000],[-7.927500,-2.100000],[-6.317500,-1.925000],[-4.112500,-1.645000],[-4.252500,-1.715000],[-4.357500,-2.100000],[-4.112500,-2.450000],[-3.657500,-2.415000],[-3.167500,-1.925000],[-2.817500,-1.855000],[-2.817500,-2.905000],[-2.642500,-2.975000],[-2.642500,-3.045000],[-2.362500,-3.220000],[-2.292500,-3.325000],[-2.292500,-3.430000],[-2.082500,-3.430000],[-2.012500,-3.850000],[-1.942500,-3.920000],[-1.802500,-3.920000],[-1.872500,-4.200000],[-1.942500,-4.200000],[-1.942500,-4.410000],[-1.802500,-4.410000],[-1.522500,-3.955000],[-0.927500,-3.920000],[-0.927500,-3.535000],[-0.752500,-3.500000],[-0.437500,-3.220000],[-0.192500,-2.905000],[0.052500,-2.625000],[0.262500,-2.275000],[0.297500,-2.275000],[0.332500,-2.450000],[0.682500,-2.765000],[1.067500,-2.660000],[1.487500,-2.205000],[1.767500,-2.170000],[1.837500,-2.030000],[1.977500,-2.030000],[2.082500,-1.925000],[2.222500,-1.925000],[7.577500,-3.150000],[7.857500,-3.220000],[8.242500,-3.220000],[8.347500,-3.045000],[8.067500,-2.870000],[7.297500,-2.590000],[6.037500,-2.135000],[4.287500,-1.540000],[7.017500,-1.330000],[9.222500,-1.085000],[10.902500,-0.840000],[11.322500,-0.630000],[11.217500,-0.490000],[10.762500,-0.315000],[10.797500,-0.070000],[10.972500,-0.035000],[10.972500,0.315000],[11.077500,0.350000],[11.182500,1.015000],[11.147500,1.050000],[11.112500,1.085000],[11.042500,1.015000],[11.042500,1.120000],[11.077500,1.190000],[11.777500,2.205000],[11.917500,2.170000],[12.267500,2.940000]]);
  }
}

poly_path4180(5);
