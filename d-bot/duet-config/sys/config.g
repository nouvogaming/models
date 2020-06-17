; Configuration file for Duet WiFi (firmware version 1.19.2)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool on Thu Jul 20 2017 18:24:16 GMT-0500 (CDT)

; General preferences
M111 S0 ; Debugging off
G21 ; Work in millimetres
G90 ; Send absolute coordinates...
M83 ; ...but relative extruder moves
M555 P2 ; Set firmware compatibility to look like Marlin

M667 S1 ; Select CoreXY mode
M208 X0 Y0 Z0 S1 ; Set axis minima
M208 X302 Y290 Z300 S0 ; Set axis maxima


; Endstops
M574 X1 Y2 S0 ; Define active low and unused microswitches (Z1 if using that endstop!)
M574 Z2 S2    ; Z is a probe (1.20+)

; Drive Mapping
M569 P0 S0 ; Drive 0 (X) goes backwards (1.19)
M569 P1 S0 ; Drive 1 (Y) goes backwards (1.19)
M569 P2 S0 ; Drive 2 (Z) goes backwards
M569 P3 S1 ; Drive 3 goes forwards
M569 P4 S0 ; Drive 4 (3rd Z) goes backwards

M584 X0 Y1 Z2:4 E3 ; Map drives (as above)
M671 X160:160 Y40:357 ; approximate position in Y of the Z screws (6/2/2018 (OUT OF DATE))


; Drive Speeds and Currents
M350 X16 Y16 Z16 E16 I1         ; Configure microstepping with interpolation
M92 X100 Y100 Z2133.333333333 E837         ; Set steps per mm
M566 X1000 Y1000 Z50 E250         ; max. inst. speed changes (mm/min)
M201 X1500 Y1500 Z100 E1000     ; Normal (printing) accelerations (mm/s^2)
; M203 X30000 Y30000 Z400 E2400   ; Set maximum speeds (mm/min) changed 5/18/2019 after getting stalls
M203 X30000 Y30000 Z300 E450   ; Set maximum speeds (mm/min) -- E300 is maybe 12mm/sec, supposed max.
M204 P1000 T5000                ; Axis-independent max. (mm/min) speeds for
                                ; print (P) and move (T)
M906 X1000 Y1000 Z1200 E900 I40 ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                         ; Set idle timeout (sec)


; Stall Detection: R1 = just log
M915 P0 F1 R2 H200 S6 ; X
M915 P1 F1 R2 H200 S6 ; Y
M915 P2 F1 R0 H200 S20 ; Z
M915 P3 F1 R1 H400 S7 ; extruder
M915 P4 F1 R0 H200 S20 ; Z


; Heaters
M143 H0 S110 ; Set maximum bed heater temperature to 110C
M143 H1 S270 ; Set maximum hotend heater temperature to 270C

M307 H0 A125.9 C793.8 D0.4 S0.80 B0 ; Set PID controls for heated bed (SSR version)
; M307 H1 A634.8 C331.8 D5.2 V24.2 B0 ; Hotend 6/11/2020, 280C max.
M307 H1 A543.7 C324.2 D4.5 V24.2 B0 ; Hotend 6/12/2020, 260C max.

M305 P0 T100000 B4138 R4700 ; Set thermistor + ADC parameters for heater 0 (bed)
M305 P1 T100000 B4725 C7.06e-8 R4700 L0 H0 ; Set thermistor + ADC parameters for heater 1 (hotend) (from E3D documentation for RepRap > 1.17)


; Tools
M563 P0 D0 H1 F0 S"Aero"; Define tool 0 to be D (drive) 0, H (heater) 1, and F (active cooling fan) 0
G10 P0 X0 Y0 Z0 ; Set tool 0 axis offsets
G10 P0 R0 S0 ; Set initial tool 0 active and standby temperatures to 0C


; BL Touch
M307 H3 A-1 C-1 D-1              ; reserve pin 8 (Heater 3 PWM) for BL Touch
M558 P9 Z1 H3 F50 T350 R0.5 A5 B1   ; type 9 (was 5 prior to 1.21), use for Z, Feed rate 200 mm/min, 
                                 ; dive Height 3mm, Travel speed 3600 mm/min, wait 1s (R) before dive
G31 X-30 Y32 Z2.2 C0 S0 P25     ; this Z has me using a +0.15mm Z offset in Slic3r for PETG
M557 X30:270 Y70:270 S60:50

M280 P3 S160 I1                  ; reset probe error state
M280 P3 S90 I1                   ; retract


; Network
M550 PBigBoy ; Set machine name
M552 S1      ; Enable network
M586 P2 S0   ; no telnet


; Fans
; NOTE: P0 is set (above) to be active cooling for tool 0 (which is also default).
; NOTE: P1 is thermostatically controlled and left alone by slicer (I hope).
;
M106 P1 S1 I0 F500 H1 T45; Set fan 1 (hotend) value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P0 S0 I0 F500 H-1; Set fan 0 (active cool) value, PWM signal inversion and frequency. Thermostatic control is turned off; S0 = off

; Custom settings are not configured
