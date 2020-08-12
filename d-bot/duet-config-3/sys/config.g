; Configuration file for Duet WiFi (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.3 on Thu Jun 18 2020 13:36:53 GMT-0500 (Central Daylight Time)

; General preferences
; Notes:
; - Had M555 P2 "Marlin compatibility" for 2.x
;
G90                                                    ; send absolute coordinates...
M83                                                    ; ...but relative extruder moves
M550 P"BigBoy"                                         ; set printer name
M669 K1                                                ; select CoreXY mode

; Network
M552 S1                                                ; enable network
M586 P0 S1                                             ; enable HTTP
M586 P1 S0                                             ; disable FTP
M586 P2 S0                                             ; disable Telnet

; Drives
M569 P0 S0                                             ; physical drive 0 goes backwards
M569 P1 S0                                             ; physical drive 1 goes backwards
M569 P2 S0                                             ; physical drive 2 goes backwards
M569 P3 S1                                             ; physical drive 3 goes forwards
M569 P4 S0                                             ; physical drive 4 goes backwards
M584 X0 Y1 Z2:4 E3                                       ; set drive mapping
M350 X16 Y16 Z16 E16 I1                                ; configure microstepping with interpolation
M92 X100.00 Y100.00 Z2133.33 E837.00                   ; set steps per mm
M566 X960.00 Y960.00 Z48.00 E249.00                    ; set maximum instantaneous speed changes (mm/min)
M203 X24000.00 Y24000.00 Z300.00 E450.00               ; set maximum speeds (mm/min)
M201 X1500.00 Y1500.00 Z100.00 E1000.00                ; set accelerations (mm/s^2)
M906 X1000 Y1000 Z1200 E900 I30                        ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                                ; Set idle timeout

; Stall Detection: R1 = just log
M915 P0 F1 R2 H200 S6 ; X
M915 P1 F1 R2 H200 S6 ; Y
M915 P2 F1 R0 H200 S20 ; Z
M915 P3 F1 R1 H400 S7 ; extruder
M915 P4 F1 R0 H200 S20 ; Z

; Axis Limits
M208 X0 Y0 Z0 S1                                       ; set axis minima
M208 X302 Y290 Z300 S0                                 ; set axis maxima

; Endstops
; Notes:
; - Was M574 Z2 S2 for 2.x
;
M574 X1 S1 P"!xstop"                                    ; configure active-low endstop for low end on X via pin xstop
M574 Y2 S1 P"!ystop"                                    ; configure active-low endstop for high end on Y via pin ystop
M574 Z1 S2                                              ; configure Z-probe endstop for low end on Z

; Filament Sensor (modified Prusa IR sensor design connected to E0 stop for extruder 0)
M591 D0 P2 C"e0stop" S1

; Z-Probe
; Notes:
; - M558 had T6000 from configurator; my value is super low to allow heater to retain bed temp during mesh calc.
; - Had P25 for 2.x?
;
M950 S0 C"exp.heater3"                                 ; create servo pin 0 for BLTouch
M558 P9 C"^zprobe.in" H3 F50 T350 A5 B1                ; set Z probe type to bltouch and the dive height + speeds
G31 P500 X-30 Y32 Z2.2                                 ; set Z probe trigger value, offset and trigger height
M557 X30:270 Y70:270 S30:25                            ; define mesh grid

; Heaters
; Notes:
; - Copied PID settings from 2.x
; - Old: M305 P0 T100000 B4138 R4700
; - Old: M305 P1 T100000 B4725 C7.06e-8 R4700 L0 H0
;
M308 S0 P"bedtemp" Y"thermistor" T100000 B4138 R4700   ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bedheat" T0                                  ; create bed heater output on bedheat and map it to sensor 0
; M307 H0 B0 S0.80                                       ; disable bang-bang mode for the bed heater and set PWM limit
M307 H0 A125.9 C793.8 D0.4 S0.80 B0
M140 H0                                                ; map heated bed to heater 0
M143 H0 S120                                           ; set temperature limit for heater 0 to 120C
M308 S1 P"e0temp" Y"thermistor" T100000 B4725 C7.06e-8 R4700 ; configure sensor 1 as thermistor on pin e0temp
M950 H1 C"e0heat" T1                                   ; create nozzle heater output on e0heat and map it to sensor 1
; M307 H1 B0 S1.00                                       ; disable bang-bang mode for heater  and set PWM limit
M307 H1 A543.7 C324.2 D4.5 V24.2 B

; Fans
M950 F0 C"fan0" Q500                                   ; create fan 0 on pin fan0 and set its frequency
M106 P0 S0 H-1                                         ; set fan 0 value. Thermostatic control is turned off
M950 F1 C"fan1" Q500                                   ; create fan 1 on pin fan1 and set its frequency
M106 P1 S1 H1 T45                                      ; set fan 1 value. Thermostatic control is turned on

; Tools
M563 P0 S"Aero" D0 H1 F0                               ; define tool 0
G10 P0 X0 Y0 Z0                                        ; set tool 0 axis offsets
G10 P0 R0 S0                                           ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
M575 P1 S1 B57600                                      ; enable support for PanelDue
T0                                                     ; select first tool

