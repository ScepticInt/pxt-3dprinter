; thumb size: 4520 bytes; src size 7600 bytes
; assembly: 3678 lines
; peep hole pass: 216 instructions removed and 90 updated
; peep hole pass: 41 instructions removed and 0 updated
; peep hole pass: 0 instructions removed and 0 updated


; start
    .startaddr 0x2f400
    .hex 708E3B92C615A841C49866C975EE5197 ; magic number
    .hex 255DC4CF0B828CD0 ; hex template hash
    .hex 94BE3230C2A4E81B ; program hash
    .short 11   ; num. globals
    .short 0 ; patched with number of words resulting from assembly
    .word 0 ; reserved
    .word 0 ; reserved
    .word 0 ; reserved
;
; Function <main>
;
    .section code
    b .themain      
    .balign 4
__main__1_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
.themain:
    push {lr}
    push {r5, r6}
    bl _hlp_0
    bl __main__1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
__main__1_bkpt:
    bkpt 1
__main__1:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
__main__1_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi __main__1_bkpt
__main__1_bkpt_after:
__brkp_9:
    movs r0, #0
    bl Array_::mk
    push {r0}; tmpstore @1
    ldr r0, [r6, #4]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [r6, #4]
    @stackempty locals
__brkp_105:
    movs r0, #7
    push {r0} ; proc-arg
    movs r0, #24
    push {r0} ; proc-arg
    movs r0, #0
    push {r0} ; proc-arg
.proccall2:
    bl _create_168
    add sp, #4*3 ; pop locals3
    push {r0}; tmpstore @1
    ldr r0, [r6, #8]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [r6, #8]
    @stackempty locals
__brkp_106:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #255
lsls r0, r0, #16
    push {r0} ; proc-arg
.proccall4:
    bl _Strip_showColor_149
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_107:
    movs r0, #125
lsls r0, r0, #4
    bl basic::pause
    @stackempty locals
__brkp_108:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #255
lsls r0, r0, #8
    push {r0} ; proc-arg
.proccall6:
    bl _Strip_showColor_149
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_109:
    movs r0, #125
lsls r0, r0, #3
    bl basic::pause
    @stackempty locals
__brkp_110:
    movs r0, #0
    str r0, [r6, #12]
    @stackempty locals
__brkp_111:
.fortop.184:
    ldr r0, [r6, #12]
    push {r0}; tmpstore @1
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall9:
    bl _Strip_length_156
    add sp, #4*1 ; pop locals1
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl Number_::le
    cmp r0, #0
    beq .brk.184      
.jmpz8:
__brkp_112:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [r6, #12]
    push {r0} ; proc-arg
    movs r0, #255
    push {r0} ; proc-arg
.proccall11:
    bl _colors_170
    add sp, #4*1 ; pop locals1
    push {r0} ; proc-arg
.proccall13:
    bl _Strip_setPixelColor_152
    add sp, #4*3 ; pop locals3
    @stackempty locals
__brkp_113:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall15:
    bl _Strip_show_154
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_114:
    movs r0, #100
    bl basic::pause
    @stackempty locals
.cont.184:
__brkp_115:
    ldr r0, [r6, #12]
    movs r1, #1
    adds r0, r1
    str r0, [r6, #12]
    @stackempty locals
    b .fortop.184      
.brk.184:
__brkp_116:
    movs r0, #0
    str r0, [r6, #16]
    @stackempty locals
__brkp_117:
.fortop.186:
    ldr r0, [r6, #16]
    push {r0}; tmpstore @1
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall18:
    bl _Strip_length_156
    add sp, #4*1 ; pop locals1
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl Number_::le
    cmp r0, #0
    beq .brk.186      
.jmpz17:
__brkp_118:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [r6, #16]
    push {r0} ; proc-arg
    movs r0, #255
lsls r0, r0, #8
    push {r0} ; proc-arg
.proccall20:
    bl _colors_170
    add sp, #4*1 ; pop locals1
    push {r0} ; proc-arg
.proccall22:
    bl _Strip_setPixelColor_152
    add sp, #4*3 ; pop locals3
    @stackempty locals
__brkp_119:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall24:
    bl _Strip_show_154
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_120:
    movs r0, #100
    bl basic::pause
    @stackempty locals
.cont.186:
__brkp_121:
    ldr r0, [r6, #16]
    movs r1, #1
    adds r0, r1
    str r0, [r6, #16]
    @stackempty locals
    b .fortop.186      
.brk.186:
__brkp_122:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #10
    push {r0} ; proc-arg
    movs r0, #20
    push {r0} ; proc-arg
.proccall26:
    bl _Strip_range_159
    add sp, #4*3 ; pop locals3
    push {r0}; tmpstore @1
    ldr r0, [r6, #20]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [r6, #20]
    @stackempty locals
__brkp_123:
    ldr r0, [r6, #20]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #255
lsls r0, r0, #8
adds r0, #255
lsls r0, r0, #8
    push {r0} ; proc-arg
.proccall28:
    bl _Strip_showColor_149
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_124:
    movs r0, #200
    bl basic::pause
    @stackempty locals
__brkp_125:
    ldr r0, [r6, #20]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #5
    push {r0} ; proc-arg
    movs r0, #10
    push {r0} ; proc-arg
.proccall30:
    bl _Strip_showBarGraph_151
    add sp, #4*3 ; pop locals3
    @stackempty locals
__brkp_126:
    movs r0, #200
    bl basic::pause
    @stackempty locals
__brkp_127:
    movs r0, #100
    str r0, [r6, #24]
    @stackempty locals
__brkp_128:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #100
    push {r0} ; proc-arg
.proccall32:
    bl _Strip_setBrightness_157
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_129:
    movs r0, _inline_190_Lit@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _inline_190_Lit@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @1
    movs r0, #2
    pop {r1} ; tmpref @1
    bl input::onButtonPressed
    @stackempty locals
__brkp_134:
    movs r0, #0
    str r0, [r6, #28]
    @stackempty locals
__brkp_135:
    movs r0, _inline_272_Lit@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _inline_272_Lit@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @1
    movs r0, #1
    pop {r1} ; tmpref @1
    bl input::onButtonPressed
    @stackempty locals
__brkp_140:
.cont.274:
    movs r0, #1
    cmp r0, #0
    beq .brk.274      
.jmpz34:
__brkp_141:
    movs r0, #0
    bl input::acceleration
    movs r1, #2
    bl Number_::div
    str r0, [r6, #32]
    @stackempty locals
__brkp_142:
    movs r0, #1
    bl input::acceleration
    movs r1, #2
    bl Number_::div
    str r0, [r6, #36]
    @stackempty locals
__brkp_143:
    movs r0, #2
    bl input::acceleration
    movs r1, #2
    bl Number_::div
    str r0, [r6, #40]
    @stackempty locals
__brkp_144:
    ldr r0, [r6, #28]
    cmp r0, #0
    beq .else_0_1      
.jmpz35:
__brkp_145:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #1
    push {r0} ; proc-arg
.proccall36:
    bl _Strip_rotate_161
    add sp, #4*2 ; pop locals2
    @stackempty locals
    b .afterif_1_1      
.else_0_1:
__brkp_146:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #0
    push {r0} ; proc-arg
    ldr r0, [r6, #32]
    push {r0} ; proc-arg
    ldr r0, [r6, #36]
    push {r0} ; proc-arg
    movs r0, #0
    ldr r1, [r6, #40]
    subs r0, r1
    push {r0} ; proc-arg
.proccall38:
    bl _rgb_169
    add sp, #4*3 ; pop locals3
    push {r0} ; proc-arg
.proccall40:
    bl _Strip_setPixelColor_152
    add sp, #4*3 ; pop locals3
    @stackempty locals
__brkp_147:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #1
    push {r0} ; proc-arg
.proccall42:
    bl _Strip_shift_160
    add sp, #4*2 ; pop locals2
    @stackempty locals
.afterif_1_1:
__brkp_148:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall44:
    bl _Strip_show_154
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_149:
    movs r0, #100
    bl basic::pause
    @stackempty locals
    b .cont.274      
.brk.274:
.ret.1:
    @stackempty locals
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function inline
;
    .section code
    .balign 4
_inline_190_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    bl _hlp_0
    bl _inline_190
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_inline_190_bkpt:
    bkpt 1
_inline_190:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_inline_190_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _inline_190_bkpt
_inline_190_bkpt_after:
__brkp_130:
    ldr r0, [r6, #24]
    movs r1, #20
    adds r0, r1
    str r0, [r6, #24]
    @stackempty locals
__brkp_131:
    ldr r0, [r6, #24]
    movs r1, #255
    bl Number_::gt
    cmp r0, #0
    beq .else_0_2      
.jmpz46:
__brkp_132:
    movs r0, #5
    str r0, [r6, #24]
    @stackempty locals
.else_0_2:
.afterif_1_2:
__brkp_133:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [r6, #24]
    push {r0} ; proc-arg
.proccall47:
    bl _Strip_setBrightness_157
    add sp, #4*2 ; pop locals2
    @stackempty locals
.ret.190:
    @stackempty locals
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function setBrightness
;
    .section code
    .balign 4
_Strip_setBrightness_157_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_1
    bl _Strip_setBrightness_157
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_setBrightness_157_bkpt:
    bkpt 1
_Strip_setBrightness_157:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_Strip_setBrightness_157_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_setBrightness_157_bkpt
_Strip_setBrightness_157_bkpt_after:
__brkp_40:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    movs r1, #255
    ands r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #2
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfld
    @stackempty locals
.ret.157:
    @stackempty locals
    ldr r0, [sp, args@1]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function showBarGraph
;
    .section code
    .balign 4
_Strip_showBarGraph_151_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    push {r3}
    bl _hlp_2
    bl _Strip_showBarGraph_151
    add sp, #4*3 ; pop locals3
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_showBarGraph_151_bkpt:
    bkpt 1
_Strip_showBarGraph_151:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
_Strip_showBarGraph_151_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_showBarGraph_151_bkpt
_Strip_showBarGraph_151_bkpt_after:
__brkp_12:
    ldr r0, [sp, args@0]
    movs r1, #0
    bl Number_::le
    cmp r0, #0
    beq .else_0_4      
.jmpz49:
__brkp_13:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall50:
    bl _Strip_clear_155
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_14:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #255
lsls r0, r0, #8
adds r0, #255
lsls r0, r0, #8
    push {r0} ; proc-arg
.proccall52:
    bl _Strip_setPixelColor_152
    add sp, #4*3 ; pop locals3
    @stackempty locals
__brkp_15:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall54:
    bl _Strip_show_154
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_16:
    b .ret.151      
.else_0_4:
.afterif_1_4:
__brkp_17:
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
.proccall56:
    bl _abs_15
    add sp, #4*1 ; pop locals1
    str r0, [sp, args@1]
    @stackempty locals
__brkp_18:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #4
    bl pxtrt::ldfld
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_19:
    ldr r0, [sp, locals@0]
    movs r1, #1
    subs r0, r1
    str r0, [sp, locals@1]
    @stackempty locals
__brkp_20:
    ldr r0, [sp, args@1]
    ldr r1, [sp, locals@0]
    muls r0, r1
    ldr r1, [sp, args@0]
    bl Number_::div
    str r0, [sp, locals@2]
    @stackempty locals
__brkp_21:
    ldr r0, [sp, locals@2]
    movs r1, #0
    bl Number_::eq
    cmp r0, #0
    beq .else_2_4      
.jmpz58:
__brkp_22:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #51
lsls r0, r0, #8
adds r0, #51
lsls r0, r0, #9
    push {r0} ; proc-arg
.proccall59:
    bl _Strip_setPixelColor_152
    add sp, #4*3 ; pop locals3
    @stackempty locals
__brkp_23:
    movs r0, #1
    str r0, [sp, locals@3]
    @stackempty locals
__brkp_24:
.fortop.200:
    ldr r0, [sp, locals@3]
    ldr r1, [sp, locals@0]
    bl Number_::lt
    cmp r0, #0
    beq .brk.200      
.jmpz61:
__brkp_25:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [sp, locals@3]
    push {r0} ; proc-arg
    movs r0, #0
    push {r0} ; proc-arg
.proccall62:
    bl _Strip_setPixelColor_152
    add sp, #4*3 ; pop locals3
    @stackempty locals
.cont.200:
__brkp_26:
    ldr r0, [sp, locals@3]
    movs r1, #1
    adds r0, r1
    str r0, [sp, locals@3]
    @stackempty locals
    b .fortop.200      
.brk.200:
    b .afterif_3_4      
.else_2_4:
__brkp_27:
    movs r0, #0
    str r0, [sp, locals@4]
    @stackempty locals
__brkp_28:
.fortop.202:
    ldr r0, [sp, locals@4]
    ldr r1, [sp, locals@0]
    bl Number_::lt
    cmp r0, #0
    beq .brk.202      
.jmpz64:
__brkp_29:
    ldr r0, [sp, locals@4]
    ldr r1, [sp, locals@2]
    bl Number_::le
    cmp r0, #0
    beq .else_4_4      
.jmpz65:
__brkp_30:
    ldr r0, [sp, locals@4]
    movs r1, #255
    muls r0, r1
    ldr r1, [sp, locals@1]
    bl Number_::div
    str r0, [sp, locals@5]
    @stackempty locals
__brkp_31:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@5]
    push {r0} ; proc-arg
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #255
    ldr r1, [sp, locals@5]
    subs r0, r1
    push {r0} ; proc-arg
.proccall66:
    bl _rgb_169
    add sp, #4*3 ; pop locals3
    push {r0} ; proc-arg
.proccall68:
    bl _Strip_setPixelColor_152
    add sp, #4*3 ; pop locals3
    @stackempty locals
    b .afterif_5_4      
.else_4_4:
__brkp_32:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    movs r0, #0
    push {r0} ; proc-arg
.proccall70:
    bl _Strip_setPixelColor_152
    add sp, #4*3 ; pop locals3
    @stackempty locals
.afterif_5_4:
.cont.202:
__brkp_33:
    ldr r0, [sp, locals@4]
    movs r1, #1
    adds r0, r1
    str r0, [sp, locals@4]
    @stackempty locals
    b .fortop.202      
.brk.202:
.afterif_3_4:
__brkp_34:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall72:
    bl _Strip_show_154
    add sp, #4*1 ; pop locals1
    @stackempty locals
.ret.151:
    @stackempty locals
    ldr r0, [sp, args@2]
    bl pxt::decr ; *P1 (raw)
    add sp, #4*6 ; pop locals6
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function rgb
;
    .section code
    .balign 4
_rgb_169_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    push {r3}
    bl _hlp_0
    bl _rgb_169
    add sp, #4*3 ; pop locals3
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_rgb_169_bkpt:
    bkpt 1
_rgb_169:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_rgb_169_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _rgb_169_bkpt
_rgb_169_bkpt_after:
__brkp_96:
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
.proccall74:
    bl _packRGB_171
    add sp, #4*3 ; pop locals3
.ret.169:
    @stackempty locals
; jmp value (already in r0)
.final_0_5:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function packRGB
;
    .section code
    .balign 4
_packRGB_171_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    push {r3}
    bl _hlp_0
    bl _packRGB_171
    add sp, #4*3 ; pop locals3
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_packRGB_171_bkpt:
    bkpt 1
_packRGB_171:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_packRGB_171_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _packRGB_171_bkpt
_packRGB_171_bkpt_after:
__brkp_98:
    ldr r0, [sp, args@2]
    movs r1, #255
    ands r0, r1
    movs r1, #16
    lsls r0, r1
    push {r0}; tmpstore @1
    ldr r0, [sp, args@1]
    movs r1, #255
    ands r0, r1
    movs r1, #8
    lsls r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    add sp, #4*1 ; pop locals1
    orrs r0, r1
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    movs r1, #255
    ands r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    add sp, #4*1 ; pop locals1
    orrs r0, r1
.ret.171:
    @stackempty locals
; jmp value (already in r0)
.final_0_6:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function abs
;
    .section code
    .balign 4
_abs_15_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_0
    bl _abs_15
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_abs_15_bkpt:
    bkpt 1
_abs_15:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_abs_15_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _abs_15_bkpt
_abs_15_bkpt_after:
__brkp_2:
    ldr r0, [sp, args@0]
    movs r1, #0
    bl Number_::lt
    cmp r0, #0
    beq .condexprz_0_7      
.jmpz76:
    movs r0, #0
    ldr r1, [sp, args@0]
    subs r0, r1
    b .condexprfin_1_7      
.condexprz_0_7:
    ldr r0, [sp, args@0]
.condexprfin_1_7:
; jmp value (already in r0)
.ret.15:
    @stackempty locals
; jmp value (already in r0)
.final_2_7:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function clear
;
    .section code
    .balign 4
_Strip_clear_155_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_3
    bl _Strip_clear_155
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_clear_155_bkpt:
    bkpt 1
_Strip_clear_155:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
_Strip_clear_155_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_clear_155_bkpt
_Strip_clear_155_bkpt_after:
__brkp_37:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #5
    bl pxtrt::ldfld
    movs r1, #1
    bl Number_::eq
    cmp r0, #0
    beq .condexprz_0_8      
.jmpz77:
    movs r0, #4
    b .condexprfin_1_8      
.condexprz_0_8:
    movs r0, #3
.condexprfin_1_8:
; jmp value (already in r0)
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_38:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #0
    bl pxtrt::ldfldRef
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #3
    bl pxtrt::ldfld
    ldr r1, [sp, locals@0]
    muls r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #4
    bl pxtrt::ldfld
    ldr r1, [sp, locals@0]
    muls r0, r1
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*2] ; tmpref @1
    movs r1, #0
    ldr r2, [sp, #4*1] ; tmpref @2
    pop {r3} ; tmpref @3
    add sp, #4*1 ; pop locals1
    bl BufferMethods::fill
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
.ret.155:
    @stackempty locals
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    add sp, #4*1 ; pop locals1
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function range
;
    .section code
    .balign 4
_Strip_range_159_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    push {r3}
    bl _hlp_2
    bl _Strip_range_159
    add sp, #4*3 ; pop locals3
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_range_159_bkpt:
    bkpt 1
_Strip_range_159:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
_Strip_range_159_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_range_159_bkpt
_Strip_range_159_bkpt_after:
__brkp_41:
    movs r0, C148_VT@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, C148_VT@lo
    bl pxt::mkClassInstance
    push {r0}; tmpstore @1
    ldr r0, [sp, locals@0]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_42:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #0
    bl pxtrt::ldfldRef
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #0
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfldRef
    @stackempty locals
__brkp_43:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #1
    bl pxtrt::ldfld
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #1
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfld
    @stackempty locals
__brkp_44:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #2
    bl pxtrt::ldfld
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #2
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfld
    @stackempty locals
__brkp_45:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #3
    bl pxtrt::ldfld
    push {r0}; tmpstore @2
    movs r0, #0
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #4
    bl pxtrt::ldfld
    movs r1, #1
    subs r0, r1
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
.proccall78:
    bl _clamp_14
    add sp, #4*3 ; pop locals3
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*1] ; tmpref @2
    pop {r1} ; tmpref @3
    add sp, #4*1 ; pop locals1
    adds r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #3
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfld
    @stackempty locals
__brkp_46:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    movs r0, #0
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #4
    bl pxtrt::ldfld
    push {r0}; tmpstore @3
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #3
    bl pxtrt::ldfld
    push {r0}; tmpstore @4
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #3
    bl pxtrt::ldfld
    push {r0}; tmpstore @5
    ldr r0, [sp, #4*1] ; tmpref @4
    pop {r1} ; tmpref @5
    add sp, #4*1 ; pop locals1
    subs r0, r1
    push {r0}; tmpstore @4
    ldr r0, [sp, #4*1] ; tmpref @3
    pop {r1} ; tmpref @4
    add sp, #4*1 ; pop locals1
    subs r0, r1
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
.proccall80:
    bl _clamp_14
    add sp, #4*3 ; pop locals3
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #4
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfld
    @stackempty locals
__brkp_47:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
.ret.159:
    @stackempty locals
; jmp value (already in r0)
    push {r0}; tmpstore @1
    ldr r0, [sp, locals@0]
    bl pxt::decr ; *P1 (raw)
    ldr r0, [sp, args@2]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
.final_0_9:
    add sp, #4*1 ; pop locals1
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function clamp
;
    .section code
    .balign 4
_clamp_14_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    push {r3}
    bl _hlp_0
    bl _clamp_14
    add sp, #4*3 ; pop locals3
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_clamp_14_bkpt:
    bkpt 1
_clamp_14:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_clamp_14_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _clamp_14_bkpt
_clamp_14_bkpt_after:
__brkp_1:
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
.proccall82:
    bl _max_17
    add sp, #4*2 ; pop locals2
    push {r0} ; proc-arg
.proccall84:
    bl _min_18
    add sp, #4*2 ; pop locals2
.ret.14:
    @stackempty locals
; jmp value (already in r0)
.final_0_10:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function max
;
    .section code
    .balign 4
_max_17_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_0
    bl _max_17
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_max_17_bkpt:
    bkpt 1
_max_17:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_max_17_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _max_17_bkpt
_max_17_bkpt_after:
__brkp_3:
    ldr r0, [sp, args@1]
    ldr r1, [sp, args@0]
    bl Number_::ge
    cmp r0, #0
    beq .else_0_11      
.jmpz86:
__brkp_4:
    ldr r0, [sp, args@1]
    b .ret.17      
.else_0_11:
.afterif_1_11:
__brkp_5:
    ldr r0, [sp, args@0]
.ret.17:
    @stackempty locals
; jmp value (already in r0)
.final_2_11:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function min
;
    .section code
    .balign 4
_min_18_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_0
    bl _min_18
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_min_18_bkpt:
    bkpt 1
_min_18:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_min_18_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _min_18_bkpt
_min_18_bkpt_after:
__brkp_6:
    ldr r0, [sp, args@1]
    ldr r1, [sp, args@0]
    bl Number_::le
    cmp r0, #0
    beq .else_0_12      
.jmpz87:
__brkp_7:
    ldr r0, [sp, args@1]
    b .ret.18      
.else_0_12:
.afterif_1_12:
__brkp_8:
    ldr r0, [sp, args@0]
.ret.18:
    @stackempty locals
; jmp value (already in r0)
.final_2_12:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function show
;
    .section code
    .balign 4
_Strip_show_154_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_3
    bl _Strip_show_154
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_show_154_bkpt:
    bkpt 1
_Strip_show_154:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_Strip_show_154_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_show_154_bkpt
_Strip_show_154_bkpt_after:
__brkp_36:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #0
    bl pxtrt::ldfldRef
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #1
    bl pxtrt::ldfld
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    bl sendBufferAsm
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
.ret.154:
    @stackempty locals
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function colors
;
    .section code
    .balign 4
_colors_170_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_0
    bl _colors_170
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_colors_170_bkpt:
    bkpt 1
_colors_170:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_colors_170_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _colors_170_bkpt
_colors_170_bkpt_after:
__brkp_97:
    ldr r0, [sp, args@0]
.ret.170:
    @stackempty locals
; jmp value (already in r0)
.final_0_14:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function setPixelColor
;
    .section code
    .balign 4
_Strip_setPixelColor_152_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    push {r3}
    bl _hlp_2
    bl _Strip_setPixelColor_152
    add sp, #4*3 ; pop locals3
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_setPixelColor_152_bkpt:
    bkpt 1
_Strip_setPixelColor_152:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_Strip_setPixelColor_152_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_setPixelColor_152_bkpt
_Strip_setPixelColor_152_bkpt_after:
__brkp_35:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
.proccall88:
    bl _Strip_setPixelRGB_166
    add sp, #4*3 ; pop locals3
    @stackempty locals
.ret.152:
    @stackempty locals
    ldr r0, [sp, args@2]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function setPixelRGB
;
    .section code
    .balign 4
_Strip_setPixelRGB_166_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    push {r3}
    bl _hlp_2
    bl _Strip_setPixelRGB_166
    add sp, #4*3 ; pop locals3
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_setPixelRGB_166_bkpt:
    bkpt 1
_Strip_setPixelRGB_166:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
_Strip_setPixelRGB_166_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_setPixelRGB_166_bkpt
_Strip_setPixelRGB_166_bkpt_after:
__brkp_74:
    ldr r0, [sp, args@1]
    movs r1, #0
    bl Number_::lt
    cmp r0, #0
    bne .lazy_1_16      
.jmpz90:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #4
    bl pxtrt::ldfld
    push {r0}; tmpstore @1
    ldr r0, [sp, args@1]
    pop {r1} ; tmpref @1
    bl Number_::ge
.lazy_1_16:
; jmp value (already in r0)
    cmp r0, #0
    beq .else_0_16      
.jmpz91:
__brkp_75:
    b .ret.166      
.else_0_16:
.afterif_2_16:
__brkp_76:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #5
    bl pxtrt::ldfld
    movs r1, #1
    bl Number_::eq
    cmp r0, #0
    beq .condexprz_3_16      
.jmpz92:
    movs r0, #4
    b .condexprfin_4_16      
.condexprz_3_16:
    movs r0, #3
.condexprfin_4_16:
; jmp value (already in r0)
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_77:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #3
    bl pxtrt::ldfld
    push {r0}; tmpstore @1
    ldr r0, [sp, args@1]
    pop {r1} ; tmpref @1
    adds r0, r1
    ldr r1, [sp, locals@0]
    muls r0, r1
    str r0, [sp, args@1]
    @stackempty locals
__brkp_78:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
.proccall93:
    bl _unpackR_172
    add sp, #4*1 ; pop locals1
    str r0, [sp, locals@1]
    @stackempty locals
__brkp_79:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
.proccall95:
    bl _unpackG_173
    add sp, #4*1 ; pop locals1
    str r0, [sp, locals@2]
    @stackempty locals
__brkp_80:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
.proccall97:
    bl _unpackB_174
    add sp, #4*1 ; pop locals1
    str r0, [sp, locals@3]
    @stackempty locals
__brkp_81:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #2
    bl pxtrt::ldfld
    str r0, [sp, locals@4]
    @stackempty locals
__brkp_82:
    ldr r0, [sp, locals@4]
    movs r1, #255
    bl Number_::lt
    cmp r0, #0
    beq .else_5_16      
.jmpz99:
__brkp_83:
    ldr r0, [sp, locals@1]
    ldr r1, [sp, locals@4]
    muls r0, r1
    movs r1, #8
    asrs r0, r1
    str r0, [sp, locals@1]
    @stackempty locals
__brkp_84:
    ldr r0, [sp, locals@2]
    ldr r1, [sp, locals@4]
    muls r0, r1
    movs r1, #8
    asrs r0, r1
    str r0, [sp, locals@2]
    @stackempty locals
__brkp_85:
    ldr r0, [sp, locals@3]
    ldr r1, [sp, locals@4]
    muls r0, r1
    movs r1, #8
    asrs r0, r1
    str r0, [sp, locals@3]
    @stackempty locals
.else_5_16:
.afterif_6_16:
__brkp_86:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@3]
    push {r0} ; proc-arg
.proccall100:
    bl _Strip_setBufferRGB_163
    add sp, #4*5 ; pop locals5
    @stackempty locals
.ret.166:
    @stackempty locals
    ldr r0, [sp, args@2]
    bl pxt::decr ; *P1 (raw)
    add sp, #4*5 ; pop locals5
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function setBufferRGB
;
.section code
_Strip_setBufferRGB_163_bkpt:
    bkpt 1
_Strip_setBufferRGB_163:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_Strip_setBufferRGB_163_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_setBufferRGB_163_bkpt
_Strip_setBufferRGB_163_bkpt_after:
__brkp_54:
    ldr r0, [sp, args@4]
    bl pxt::incr ; *F1 (raw)
    movs r1, #5
    bl pxtrt::ldfld
    movs r1, #2
    bl Number_::eq
    cmp r0, #0
    beq .else_0_17      
.jmpz102:
__brkp_55:
    ldr r0, [sp, args@4]
    bl pxt::incr ; *F1 (raw)
    movs r1, #0
    bl pxtrt::ldfldRef
    push {r0}; tmpstore @1
    ldr r0, [sp, args@3]
    movs r1, #0
    adds r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, args@2]
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*2] ; tmpref @1
    ldr r1, [sp, #4*1] ; tmpref @2
    pop {r2} ; tmpref @3
    add sp, #4*1 ; pop locals1
    bl BufferMethods::setByte
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_56:
    ldr r0, [sp, args@4]
    bl pxt::incr ; *F1 (raw)
    movs r1, #0
    bl pxtrt::ldfldRef
    push {r0}; tmpstore @1
    ldr r0, [sp, args@3]
    movs r1, #1
    adds r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, args@1]
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*2] ; tmpref @1
    ldr r1, [sp, #4*1] ; tmpref @2
    pop {r2} ; tmpref @3
    add sp, #4*1 ; pop locals1
    bl BufferMethods::setByte
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
    b .afterif_1_17      
.else_0_17:
__brkp_57:
    ldr r0, [sp, args@4]
    bl pxt::incr ; *F1 (raw)
    movs r1, #0
    bl pxtrt::ldfldRef
    push {r0}; tmpstore @1
    ldr r0, [sp, args@3]
    movs r1, #0
    adds r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, args@1]
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*2] ; tmpref @1
    ldr r1, [sp, #4*1] ; tmpref @2
    pop {r2} ; tmpref @3
    add sp, #4*1 ; pop locals1
    bl BufferMethods::setByte
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_58:
    ldr r0, [sp, args@4]
    bl pxt::incr ; *F1 (raw)
    movs r1, #0
    bl pxtrt::ldfldRef
    push {r0}; tmpstore @1
    ldr r0, [sp, args@3]
    movs r1, #1
    adds r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, args@2]
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*2] ; tmpref @1
    ldr r1, [sp, #4*1] ; tmpref @2
    pop {r2} ; tmpref @3
    add sp, #4*1 ; pop locals1
    bl BufferMethods::setByte
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
.afterif_1_17:
__brkp_59:
    ldr r0, [sp, args@4]
    bl pxt::incr ; *F1 (raw)
    movs r1, #0
    bl pxtrt::ldfldRef
    push {r0}; tmpstore @1
    ldr r0, [sp, args@3]
    movs r1, #2
    adds r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, args@0]
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*2] ; tmpref @1
    ldr r1, [sp, #4*1] ; tmpref @2
    pop {r2} ; tmpref @3
    add sp, #4*1 ; pop locals1
    bl BufferMethods::setByte
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
.ret.163:
    @stackempty locals
    ldr r0, [sp, args@4]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function unpackB
;
    .section code
    .balign 4
_unpackB_174_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_0
    bl _unpackB_174
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_unpackB_174_bkpt:
    bkpt 1
_unpackB_174:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
_unpackB_174_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _unpackB_174_bkpt
_unpackB_174_bkpt_after:
__brkp_103:
    ldr r0, [sp, args@0]
    movs r1, #255
    ands r0, r1
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_104:
    ldr r0, [sp, locals@0]
.ret.174:
    @stackempty locals
; jmp value (already in r0)
.final_0_18:
    add sp, #4*1 ; pop locals1
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function unpackG
;
    .section code
    .balign 4
_unpackG_173_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_0
    bl _unpackG_173
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_unpackG_173_bkpt:
    bkpt 1
_unpackG_173:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
_unpackG_173_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _unpackG_173_bkpt
_unpackG_173_bkpt_after:
__brkp_101:
    ldr r0, [sp, args@0]
    movs r1, #8
    asrs r0, r1
    movs r1, #255
    ands r0, r1
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_102:
    ldr r0, [sp, locals@0]
.ret.173:
    @stackempty locals
; jmp value (already in r0)
.final_0_19:
    add sp, #4*1 ; pop locals1
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function unpackR
;
    .section code
    .balign 4
_unpackR_172_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_0
    bl _unpackR_172
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_unpackR_172_bkpt:
    bkpt 1
_unpackR_172:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
_unpackR_172_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _unpackR_172_bkpt
_unpackR_172_bkpt_after:
__brkp_99:
    ldr r0, [sp, args@0]
    movs r1, #16
    asrs r0, r1
    movs r1, #255
    ands r0, r1
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_100:
    ldr r0, [sp, locals@0]
.ret.172:
    @stackempty locals
; jmp value (already in r0)
.final_0_20:
    add sp, #4*1 ; pop locals1
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function length
;
    .section code
    .balign 4
_Strip_length_156_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_3
    bl _Strip_length_156
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_length_156_bkpt:
    bkpt 1
_Strip_length_156:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_Strip_length_156_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_length_156_bkpt
_Strip_length_156_bkpt_after:
__brkp_39:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #4
    bl pxtrt::ldfld
.ret.156:
    @stackempty locals
; jmp value (already in r0)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
.final_0_21:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function showColor
;
    .section code
    .balign 4
_Strip_showColor_149_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_1
    bl _Strip_showColor_149
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_showColor_149_bkpt:
    bkpt 1
_Strip_showColor_149:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_Strip_showColor_149_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_showColor_149_bkpt
_Strip_showColor_149_bkpt_after:
__brkp_10:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
.proccall103:
    bl _Strip_setAllRGB_164
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_11:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall105:
    bl _Strip_show_154
    add sp, #4*1 ; pop locals1
    @stackempty locals
.ret.149:
    @stackempty locals
    ldr r0, [sp, args@1]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function setAllRGB
;
    .section code
    .balign 4
_Strip_setAllRGB_164_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_1
    bl _Strip_setAllRGB_164
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_setAllRGB_164_bkpt:
    bkpt 1
_Strip_setAllRGB_164:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
_Strip_setAllRGB_164_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_setAllRGB_164_bkpt
_Strip_setAllRGB_164_bkpt_after:
__brkp_60:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
.proccall107:
    bl _unpackR_172
    add sp, #4*1 ; pop locals1
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_61:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
.proccall109:
    bl _unpackG_173
    add sp, #4*1 ; pop locals1
    str r0, [sp, locals@1]
    @stackempty locals
__brkp_62:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
.proccall111:
    bl _unpackB_174
    add sp, #4*1 ; pop locals1
    str r0, [sp, locals@2]
    @stackempty locals
__brkp_63:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #2
    bl pxtrt::ldfld
    str r0, [sp, locals@3]
    @stackempty locals
__brkp_64:
    ldr r0, [sp, locals@3]
    movs r1, #255
    bl Number_::lt
    cmp r0, #0
    beq .else_0_23      
.jmpz113:
__brkp_65:
    ldr r0, [sp, locals@0]
    ldr r1, [sp, locals@3]
    muls r0, r1
    movs r1, #8
    asrs r0, r1
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_66:
    ldr r0, [sp, locals@1]
    ldr r1, [sp, locals@3]
    muls r0, r1
    movs r1, #8
    asrs r0, r1
    str r0, [sp, locals@1]
    @stackempty locals
__brkp_67:
    ldr r0, [sp, locals@2]
    ldr r1, [sp, locals@3]
    muls r0, r1
    movs r1, #8
    asrs r0, r1
    str r0, [sp, locals@2]
    @stackempty locals
.else_0_23:
.afterif_1_23:
__brkp_68:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #3
    bl pxtrt::ldfld
    push {r0}; tmpstore @1
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #4
    bl pxtrt::ldfld
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    add sp, #4*1 ; pop locals1
    adds r0, r1
    str r0, [sp, locals@4]
    @stackempty locals
__brkp_69:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #5
    bl pxtrt::ldfld
    movs r1, #1
    bl Number_::eq
    cmp r0, #0
    beq .condexprz_2_23      
.jmpz114:
    movs r0, #4
    b .condexprfin_3_23      
.condexprz_2_23:
    movs r0, #3
.condexprfin_3_23:
; jmp value (already in r0)
    str r0, [sp, locals@5]
    @stackempty locals
__brkp_70:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #3
    bl pxtrt::ldfld
    str r0, [sp, locals@6]
    @stackempty locals
__brkp_71:
.fortop.261:
    ldr r0, [sp, locals@6]
    ldr r1, [sp, locals@4]
    bl Number_::lt
    cmp r0, #0
    beq .brk.261      
.jmpz115:
__brkp_72:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [sp, locals@6]
    ldr r1, [sp, locals@5]
    muls r0, r1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
.proccall116:
    bl _Strip_setBufferRGB_163
    add sp, #4*5 ; pop locals5
    @stackempty locals
.cont.261:
__brkp_73:
    ldr r0, [sp, locals@6]
    movs r1, #1
    adds r0, r1
    str r0, [sp, locals@6]
    @stackempty locals
    b .fortop.261      
.brk.261:
.ret.164:
    @stackempty locals
    ldr r0, [sp, args@1]
    bl pxt::decr ; *P1 (raw)
    add sp, #4*7 ; pop locals7
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function create
;
    .section code
    .balign 4
_create_168_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    push {r3}
    bl _hlp_0
    bl _create_168
    add sp, #4*3 ; pop locals3
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_create_168_bkpt:
    bkpt 1
_create_168:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
_create_168_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _create_168_bkpt
_create_168_bkpt_after:
__brkp_87:
    movs r0, C148_VT@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, C148_VT@lo
    bl pxt::mkClassInstance
    push {r0}; tmpstore @1
    ldr r0, [sp, locals@0]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_88:
    ldr r0, [sp, args@0]
    movs r1, #1
    bl Number_::eq
    cmp r0, #0
    beq .condexprz_0_24      
.jmpz118:
    movs r0, #4
    b .condexprfin_1_24      
.condexprz_0_24:
    movs r0, #3
.condexprfin_1_24:
; jmp value (already in r0)
    str r0, [sp, locals@1]
    @stackempty locals
__brkp_89:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@1]
    ldr r1, [sp, locals@1]
    muls r0, r1
    bl pins::createBuffer
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #0
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfldRef
    @stackempty locals
__brkp_90:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #3
    movs r2, #0
    bl pxtrt::stfld
    @stackempty locals
__brkp_91:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@1]
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #4
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfld
    @stackempty locals
__brkp_92:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #5
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfld
    @stackempty locals
__brkp_93:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #255
    push {r0} ; proc-arg
.proccall119:
    bl _Strip_setBrightness_157
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_94:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
.proccall121:
    bl _Strip_setPin_162
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_95:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
.ret.168:
    @stackempty locals
; jmp value (already in r0)
    push {r0}; tmpstore @1
    ldr r0, [sp, locals@0]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
.final_2_24:
    add sp, #4*2 ; pop locals2
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function setPin
;
    .section code
    .balign 4
_Strip_setPin_162_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_1
    bl _Strip_setPin_162
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_setPin_162_bkpt:
    bkpt 1
_Strip_setPin_162:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_Strip_setPin_162_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_setPin_162_bkpt
_Strip_setPin_162_bkpt_after:
__brkp_52:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #1
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfld
    @stackempty locals
__brkp_53:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #1
    bl pxtrt::ldfld
    movs r1, #0
    bl pins::digitalWritePin
    @stackempty locals
.ret.162:
    @stackempty locals
    ldr r0, [sp, args@1]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function inline
;
    .section code
    .balign 4
_inline_272_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    bl _hlp_0
    bl _inline_272
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_inline_272_bkpt:
    bkpt 1
_inline_272:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_inline_272_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _inline_272_bkpt
_inline_272_bkpt_after:
__brkp_136:
    ldr r0, [r6, #28]
    bl Boolean_::bang
    str r0, [r6, #28]
    @stackempty locals
__brkp_137:
    ldr r0, [r6, #28]
    cmp r0, #0
    beq .else_0_26      
.jmpz123:
__brkp_138:
    movs r0, _img0@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _img0@lo
    movs r1, #25
lsls r1, r1, #4
    bl basic::showLeds
    @stackempty locals
    b .afterif_1_26      
.else_0_26:
__brkp_139:
    movs r0, _img1@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _img1@lo
    movs r1, #25
lsls r1, r1, #4
    bl basic::showLeds
    @stackempty locals
.afterif_1_26:
.ret.272:
    @stackempty locals
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function shift
;
    .section code
    .balign 4
_Strip_shift_160_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_1
    bl _Strip_shift_160
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_shift_160_bkpt:
    bkpt 1
_Strip_shift_160:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
_Strip_shift_160_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_shift_160_bkpt
_Strip_shift_160_bkpt_after:
__brkp_48:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #5
    bl pxtrt::ldfld
    movs r1, #1
    bl Number_::eq
    cmp r0, #0
    beq .condexprz_0_27      
.jmpz124:
    movs r0, #4
    b .condexprfin_1_27      
.condexprz_0_27:
    movs r0, #3
.condexprfin_1_27:
; jmp value (already in r0)
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_49:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #0
    bl pxtrt::ldfldRef
    push {r0}; tmpstore @1
    movs r0, #0
    ldr r1, [sp, args@0]
    subs r0, r1
    ldr r1, [sp, locals@0]
    muls r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #3
    bl pxtrt::ldfld
    ldr r1, [sp, locals@0]
    muls r0, r1
    push {r0}; tmpstore @3
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #4
    bl pxtrt::ldfld
    ldr r1, [sp, locals@0]
    muls r0, r1
    push {r0}; tmpstore @4
    ldr r0, [sp, #4*3] ; tmpref @1
    ldr r1, [sp, #4*2] ; tmpref @2
    ldr r2, [sp, #4*1] ; tmpref @3
    pop {r3} ; tmpref @4
    add sp, #4*2 ; pop locals2
    bl BufferMethods::shift
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
.ret.160:
    @stackempty locals
    ldr r0, [sp, args@1]
    bl pxt::decr ; *P1 (raw)
    add sp, #4*1 ; pop locals1
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function rotate
;
    .section code
    .balign 4
_Strip_rotate_161_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_1
    bl _Strip_rotate_161
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_Strip_rotate_161_bkpt:
    bkpt 1
_Strip_rotate_161:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
_Strip_rotate_161_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _Strip_rotate_161_bkpt
_Strip_rotate_161_bkpt_after:
__brkp_50:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #5
    bl pxtrt::ldfld
    movs r1, #1
    bl Number_::eq
    cmp r0, #0
    beq .condexprz_0_28      
.jmpz125:
    movs r0, #4
    b .condexprfin_1_28      
.condexprz_0_28:
    movs r0, #3
.condexprfin_1_28:
; jmp value (already in r0)
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_51:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #0
    bl pxtrt::ldfldRef
    push {r0}; tmpstore @1
    movs r0, #0
    ldr r1, [sp, args@0]
    subs r0, r1
    ldr r1, [sp, locals@0]
    muls r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #3
    bl pxtrt::ldfld
    ldr r1, [sp, locals@0]
    muls r0, r1
    push {r0}; tmpstore @3
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #4
    bl pxtrt::ldfld
    ldr r1, [sp, locals@0]
    muls r0, r1
    push {r0}; tmpstore @4
    ldr r0, [sp, #4*3] ; tmpref @1
    ldr r1, [sp, #4*2] ; tmpref @2
    ldr r2, [sp, #4*1] ; tmpref @3
    pop {r3} ; tmpref @4
    add sp, #4*2 ; pop locals2
    bl BufferMethods::rotate
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
.ret.161:
    @stackempty locals
    ldr r0, [sp, args@1]
    bl pxt::decr ; *P1 (raw)
    add sp, #4*1 ; pop locals1
    pop {pc}
    @stackempty func
    @stackempty args
        .balign 4
C148_VT:
        .short 28  ; size in bytes
        .byte 2, 0  ; num. methods
        .word C148_IfaceVT
        .word pxt::RefRecord_destroy|1
        .word pxt::RefRecord_print|1
        .byte 1,0,0,0,0,0
        .balign 4
C148_IfaceVT:
    .section code
_hlp_0:
    @stackmark args
    push {lr}
    mov r5, r0
    bl pxtrt::getGlobalsPtr
    mov r6, r0
    pop {pc}
    @stackempty args
    .section code
_hlp_1:
    @stackmark args
    push {lr}
    mov r5, r0
ldr r0, [sp, args@1]
bl pxt::incr
    bl pxtrt::getGlobalsPtr
    mov r6, r0
    pop {pc}
    @stackempty args
    .section code
_hlp_2:
    @stackmark args
    push {lr}
    mov r5, r0
ldr r0, [sp, args@2]
bl pxt::incr
    bl pxtrt::getGlobalsPtr
    mov r6, r0
    pop {pc}
    @stackempty args
    .section code
_hlp_3:
    @stackmark args
    push {lr}
    mov r5, r0
ldr r0, [sp, args@0]
bl pxt::incr
    bl pxtrt::getGlobalsPtr
    mov r6, r0
    pop {pc}
    @stackempty args
.section code
@stackmark func
@scope user0
sendBufferAsm:
    push {r4,r5,r6,r7,lr}
    mov r4, r0 ; save buff
    mov r6, r1 ; save pin
    mov r0, r4
    bl BufferMethods::length
    mov r5, r0
    mov r0, r4
    bl BufferMethods::getBytes
    mov r4, r0
    ; setup pin as digital
    mov r0, r6
    movs r1, #0
    bl pins::digitalWritePin
    ; load pin address
    mov r0, r6
    bl pins::getPinAddress
    ldr r0, [r0, #8] ; get mbed DigitalOut from MicroBitPin
    ldr r1, [r0, #4] ; r1-mask for this pin
    ldr r2, [r0, #16] ; r2-clraddr
    ldr r3, [r0, #12] ; r3-setaddr
    cpsid i ; disable irq
    b .start
.nextbit:
    str r1, [r3, #0]    ; pin := hi  C2
    tst r6, r0          ;            C3
    bne .islate         ;            C4
    str r1, [r2, #0]    ; pin := lo  C6
.islate:
    lsrs r6, r6, #1     ; r6 >>= 1   C7
    bne .justbit        ;            C8
    ; not just a bit - need new byte
    adds r4, #1         ; r4++       C9
    subs r5, #1         ; r5--       C10
    bcc .stop           ; if (r5<0) goto .stop  C11
.start:
    movs r6, #0x80      ; reset mask C12
    nop                 ;            C13
.common:
    str r1, [r2, #0]   ; pin := lo   C15
    ; always re-load byte - it just fits with the cycles better this way
    ldrb r0, [r4, #0]  ; r0 := *r4   C17
    b .nextbit         ;             C20
.justbit:
    ; no nops, branch taken is already 3 cycles
    b .common ; C13
.stop:
    str r1, [r2, #0]   ; pin := lo
    cpsie i            ; enable irq
    pop {r4,r5,r6,r7,pc}
@stackempty func
@scope
_js_end:
.balign 4
_img0:
 .short 0xffff
        .short 5, 5
        .byte 0,1,1,1,0,1,0,0,0,1,1,0,0,0,1,1,0,0,0,1,0,1,1,1,0,42
.balign 4
_img1:
 .short 0xffff
        .short 5, 5
        .byte 0,0,1,0,0,0,0,0,1,0,1,1,1,1,1,0,0,0,1,0,0,0,1,0,0,42
_program_end:
    .balign 16
    .hex 41140E2FB82FA2BB
    .short 154
    .short 7420
    .short 0, 0   ; future use
_stored_program: .string "..."
