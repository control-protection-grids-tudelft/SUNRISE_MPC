	.file	"InputLv2_CS.c"

 # rs6000/powerpc options: -msdata=sysv -G 8
 # GNU C (GCC) version 4.6.0 (powerpc-750-linux-gnu)
 #	compiled by GNU C version 4.5.2, GMP version 5.0.1, MPFR version 2.4.1, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\BLTIN_GCC
 # -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\SHARED_CODE
 # -iprefix d:\rscad\rscad fx 2.3\bin\mingw-cross\bin\../lib/gcc/powerpc-750-linux-gnu/4.6.0/
 # -D__unix__ -D__gnu_linux__ -D__linux__ -Asystem=linux -Asystem=unix
 # -Asystem=posix
 # C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\InputLv2_CS.c
 # -mregnames -msdata=sysv -mtoc
 # -auxbase-strip C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\InputLv2_CS.s
 # -O2 -Werror=implicit-function-declaration -Wno-error=main -std=c99
 # -ffixed-r5 -fno-jump-tables -fomit-frame-pointer -fno-section-anchors
 # -fverbose-asm -fno-builtin-sincos
 # options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
 # -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
 # -fcrossjumping -fcse-follow-jumps -fdefer-pop
 # -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
 # -fearly-inlining -feliminate-unused-debug-types
 # -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
 # -fgcse-lm -fguess-branch-probability -fident -fif-conversion
 # -fif-conversion2 -findirect-inlining -finline
 # -finline-functions-called-once -finline-small-functions -fipa-cp
 # -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
 # -fira-share-save-slots -fira-share-spill-slots -fivopts
 # -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
 # -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 # -foptimize-register-move -foptimize-sibling-calls -fpartial-inlining
 # -fpeephole -fpeephole2 -fprefetch-loop-arrays -freg-struct-return
 # -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
 # -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 # -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 # -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 # -fsched-stalled-insns-dep -fschedule-insns -fschedule-insns2
 # -fshow-column -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
 # -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
 # -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
 # -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-copy-prop
 # -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
 # -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
 # -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
 # -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
 # -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
 # -ftree-sra -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version
 # -ftree-vrp -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss -m32
 # -maix-struct-return -malign-branch-targets -malways-hint -mbig
 # -mbig-endian -mblock-move-inline-limit= -mbss-plt -mfp-in-toc -mfriz
 # -mgen-cell-microcode -mglibc -mhard-float -mminimal-toc -mnew-mnemonics
 # -mpowerpc -msched-groups -msched-prolog -mtls-markers -mupdate
 # -mvectorize-builtins -mvsx-scalar-double

 # Compiler executable checksum: ef178d0e8295de2fcbfae800a9b9fd3e

#APP
	.section ".text"
	.align 2
	b .main
#NO_APP
	.section	.text.startup,"ax",@progbits
	.align 2
	.globl main
	.type	main, @function
main:
	lwz %r9,Learning_rate@sdarel(%r13)	 # Learning_rate, Learning_rate.0
	lis %r11,.LC0@ha	 # tmp638,
	lfd %f0,.LC0@l(%r11)	 #, tmp408
	lfd %f13,0(%r9)	 # *Learning_rate.0_2, *Learning_rate.0_2
	stwu %r1,-64(%r1)	 #,,
	lwz %r6,N@sdarel(%r13)	 # N, pretmp.80
	fcmpu %cr7,%f13,%f0	 # tmp412, *Learning_rate.0_2, tmp408
	stw %r31,36(%r1)	 #,
	stfd %f29,40(%r1)	 #,
	stfd %f30,48(%r1)	 #,
	stfd %f31,56(%r1)	 #,
	stw %r26,16(%r1)	 #,
	stw %r27,20(%r1)	 #,
	stw %r28,24(%r1)	 #,
	stw %r29,28(%r1)	 #,
	stw %r30,32(%r1)	 #,
	lwz %r31,Y@sdarel(%r13)	 # Y, Y.1
	bgt- %cr7,.L23	 #
.L2:
	cmpwi %cr7,%r6,0	 #, tmp501, pretmp.80
	li %r0,0	 # tmp500,
	stw %r0,i@sdarel(%r13)	 # i, tmp500
	ble- %cr7,.L9	 #
	slwi %r4,%r6,3	 # D.3030, pretmp.80,
	lis %r7,X@ha	 # tmp642,
	addi %r4,%r4,-8	 # tmp682, D.3030,
	lis %r11,X1-8@ha	 # tmp502,
	srwi %r4,%r4,3	 # tmp683, tmp682,
	lis %r8,X11@ha	 # tmp653,
	addi %r4,%r4,1	 #, tmp683,
	la %r11,X1-8@l(%r11)	 # ivtmp.138,, tmp502
	mtctr %r4	 # tmp680,
	li %r9,0	 # ivtmp.139,
	la %r8,X11@l(%r8)	 # tmp651,, tmp653
	la %r10,X@l(%r7)	 # tmp641,, tmp642
.L10:
	lfdu %f13,8(%r11)	 # MEM[(double[10] *)D.3027_188], MEM[(double[10] *)D.3027_188]
	lfdx %f0,%r10,%r9	 # MEM[symbol: X, index: ivtmp.139_200, offset: 0B], MEM[symbol: X, index: ivtmp.139_200, offset: 0B]
	stfdx %f13,%r8,%r9	 # MEM[symbol: X11, index: ivtmp.139_200, offset: 0B], MEM[(double[10] *)D.3027_188]
	addi %r9,%r9,8	 # ivtmp.139, ivtmp.139,
	stfd %f0,0(%r11)	 # MEM[(double[10] *)D.3027_188], MEM[symbol: X, index: ivtmp.139_200, offset: 0B]
	bdnz .L10	 #
	lwz %r9,input1@sdarel(%r13)	 # input1, input1
	cmpwi %cr7,%r6,1	 #, tmp513, pretmp.80
	stw %r6,i@sdarel(%r13)	 # i, pretmp.80
	lfd %f0,0(%r9)	 # *input1.32_124, D.2843
	stfd %f0,0(%r10)	 # X, D.2843
	ble- %cr7,.L11	 #
	lwz %r9,input2@sdarel(%r13)	 # input2, input2
	cmpwi %cr7,%r6,2	 #, tmp517, pretmp.80
	lfd %f0,0(%r9)	 # *input2.33_126, D.2841
	stfd %f0,8(%r10)	 # X, D.2841
	beq- %cr7,.L11	 #
	lwz %r9,input3@sdarel(%r13)	 # input3, input3
	cmpwi %cr7,%r6,3	 #, tmp521, pretmp.80
	lfd %f0,0(%r9)	 # *input3.34_128, D.2839
	stfd %f0,16(%r10)	 # X, D.2839
	beq- %cr7,.L11	 #
	lwz %r9,input4@sdarel(%r13)	 # input4, input4
	cmpwi %cr7,%r6,4	 #, tmp525, pretmp.80
	lfd %f0,0(%r9)	 # *input4.35_130, D.2837
	stfd %f0,24(%r10)	 # X, D.2837
	beq- %cr7,.L11	 #
	lwz %r9,input5@sdarel(%r13)	 # input5, input5
	cmpwi %cr7,%r6,5	 #, tmp529, pretmp.80
	lfd %f0,0(%r9)	 # *input5.36_132, D.2835
	stfd %f0,32(%r10)	 # X, D.2835
	beq- %cr7,.L11	 #
	lwz %r9,input6@sdarel(%r13)	 # input6, input6
	cmpwi %cr7,%r6,6	 #, tmp533, pretmp.80
	lfd %f0,0(%r9)	 # *input6.37_134, D.2833
	stfd %f0,40(%r10)	 # X, D.2833
	beq- %cr7,.L11	 #
	lwz %r9,input7@sdarel(%r13)	 # input7, input7
	cmpwi %cr7,%r6,7	 #, tmp537, pretmp.80
	lfd %f0,0(%r9)	 # *input7.38_136, D.2831
	stfd %f0,48(%r10)	 # X, D.2831
	beq- %cr7,.L11	 #
	lwz %r9,input8@sdarel(%r13)	 # input8, input8
	cmpwi %cr7,%r6,8	 #, tmp541, pretmp.80
	lfd %f0,0(%r9)	 # *input8.39_138, D.2829
	stfd %f0,56(%r10)	 # X, D.2829
	beq- %cr7,.L11	 #
	lwz %r9,input9@sdarel(%r13)	 # input9, input9
	cmpwi %cr7,%r6,9	 #, tmp545, pretmp.80
	lfd %f0,0(%r9)	 # *input9.40_140, D.2827
	stfd %f0,64(%r10)	 # X, D.2827
	beq- %cr7,.L11	 #
	lwz %r9,input10@sdarel(%r13)	 # input10, input10
	lfd %f0,0(%r9)	 # *input10.41_142, D.2825
	stfd %f0,72(%r10)	 # X, D.2825
.L11:
	cmpwi %cr7,%r31,0	 #, tmp550, Y.1
	li %r0,0	 # tmp549,
	stw %r0,k@sdarel(%r13)	 # k, tmp549
	ble- %cr7,.L24	 #
	slwi %r3,%r31,3	 # D.3005, Y.1,
	la %r9,X@l(%r7)	 # tmp551,, tmp642
	lfd %f29,X@l(%r7)	 # X, pretmp.82
	addi %r3,%r3,-8	 # tmp678, D.3005,
	lis %r4,a1@ha	 # tmp646,
	lfd %f30,8(%r9)	 # X, pretmp.85
	srwi %r3,%r3,3	 # tmp679, tmp678,
	lfd %f31,16(%r9)	 # X, pretmp.87
	lis %r8,b@ha	 # tmp645,
	addi %r3,%r3,1	 #, tmp679,
	lfd %f1,24(%r9)	 # X, pretmp.89
	slwi %r0,%r6,3	 # D.2993, pretmp.80,
	lfd %f2,32(%r9)	 # X, pretmp.91
	mtctr %r3	 # tmp676,
	li %r11,0	 # ivtmp.125,
	la %r10,a1@l(%r4)	 # tmp644,, tmp646
	lfd %f3,40(%r9)	 # X, pretmp.93
	la %r8,b@l(%r8)	 # tmp643,, tmp645
	lfd %f4,48(%r9)	 # X, pretmp.95
	lfd %f5,56(%r9)	 # X, pretmp.97
	lfd %f6,64(%r9)	 # X, pretmp.99
	lfd %f7,72(%r9)	 # X, pretmp.101
	lis %r9,W@ha	 # tmp571,
	la %r9,W@l(%r9)	 # ivtmp.111,, tmp571
.L13:
	lfd %f0,8(%r9)	 # MEM[(double[100] *)D.2994_144 + 8B], MEM[(double[100] *)D.2994_144 + 8B]
	lfd %f13,0(%r9)	 # MEM[(double[100] *)D.2994_144], MEM[(double[100] *)D.2994_144]
	lfd %f11,16(%r9)	 # MEM[(double[100] *)D.2994_144 + 16B], MEM[(double[100] *)D.2994_144 + 16B]
	fmul %f0,%f30,%f0	 # tmp574, pretmp.85, MEM[(double[100] *)D.2994_144 + 8B]
	lfd %f12,24(%r9)	 # MEM[(double[100] *)D.2994_144 + 24B], MEM[(double[100] *)D.2994_144 + 24B]
	lfd %f8,40(%r9)	 # MEM[(double[100] *)D.2994_144 + 40B], MEM[(double[100] *)D.2994_144 + 40B]
	lfd %f9,48(%r9)	 # MEM[(double[100] *)D.2994_144 + 48B], MEM[(double[100] *)D.2994_144 + 48B]
	fmadd %f0,%f13,%f29,%f0	 # tmp576, MEM[(double[100] *)D.2994_144], pretmp.82, tmp574
	lfd %f13,32(%r9)	 # MEM[(double[100] *)D.2994_144 + 32B], MEM[(double[100] *)D.2994_144 + 32B]
	lfd %f10,56(%r9)	 # MEM[(double[100] *)D.2994_144 + 56B], MEM[(double[100] *)D.2994_144 + 56B]
	fmadd %f0,%f11,%f31,%f0	 # tmp578, MEM[(double[100] *)D.2994_144 + 16B], pretmp.87, tmp576
	lfd %f11,64(%r9)	 # MEM[(double[100] *)D.2994_144 + 64B], MEM[(double[100] *)D.2994_144 + 64B]
	fmadd %f0,%f12,%f1,%f0	 # tmp580, MEM[(double[100] *)D.2994_144 + 24B], pretmp.89, tmp578
	lfd %f12,72(%r9)	 # MEM[(double[100] *)D.2994_144 + 72B], MEM[(double[100] *)D.2994_144 + 72B]
	add %r9,%r9,%r0	 # ivtmp.111, ivtmp.111, D.2993
	fmadd %f0,%f13,%f2,%f0	 # tmp582, MEM[(double[100] *)D.2994_144 + 32B], pretmp.91, tmp580
	lfdx %f13,%r8,%r11	 # MEM[symbol: b, index: ivtmp.125_325, offset: 0B], MEM[symbol: b, index: ivtmp.125_325, offset: 0B]
	fmadd %f0,%f8,%f3,%f0	 # tmp584, MEM[(double[100] *)D.2994_144 + 40B], pretmp.93, tmp582
	fmadd %f0,%f9,%f4,%f0	 # tmp586, MEM[(double[100] *)D.2994_144 + 48B], pretmp.95, tmp584
	fmadd %f0,%f10,%f5,%f0	 # tmp588, MEM[(double[100] *)D.2994_144 + 56B], pretmp.97, tmp586
	fmadd %f0,%f11,%f6,%f0	 # tmp590, MEM[(double[100] *)D.2994_144 + 64B], pretmp.99, tmp588
	fmadd %f0,%f12,%f7,%f0	 # tmp592, MEM[(double[100] *)D.2994_144 + 72B], pretmp.101, tmp590
	fadd %f0,%f0,%f13	 # tmp597, tmp592, MEM[symbol: b, index: ivtmp.125_325, offset: 0B]
	stfdx %f0,%r10,%r11	 # MEM[symbol: a1, index: ivtmp.125_325, offset: 0B], tmp597
	addi %r11,%r11,8	 # ivtmp.125, ivtmp.125,
	bdnz .L13	 #
	addi %r0,%r31,-1	 # tmp599, Y.1,
	stw %r31,k@sdarel(%r13)	 # k, Y.1
	mullw %r6,%r0,%r6	 # tmp600, tmp599, pretmp.80
	stw %r6,indx@sdarel(%r13)	 # indx, tmp600
.L12:
	lfd %f0,a1@l(%r4)	 # a1, D.2563
	lwz %r9,foutput@sdarel(%r13)	 # foutput, foutput
	lwz %r26,16(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput.4_15, D.2563
	lwz %r9,foutput2@sdarel(%r13)	 # foutput2, foutput2
	lwz %r27,20(%r1)	 #,
	lfd %f0,8(%r10)	 # a1, D.2565
	lwz %r28,24(%r1)	 #,
	lwz %r29,28(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput2.5_17, D.2565
	lwz %r9,foutput3@sdarel(%r13)	 # foutput3, foutput3
	lwz %r30,32(%r1)	 #,
	lfd %f0,16(%r10)	 # a1, D.2567
	lwz %r31,36(%r1)	 #,
	lfd %f29,40(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput3.6_19, D.2567
	lwz %r9,foutput4@sdarel(%r13)	 # foutput4, foutput4
	lfd %f30,48(%r1)	 #,
	lfd %f0,24(%r10)	 # a1, D.2569
	lfd %f31,56(%r1)	 #,
	addi %r1,%r1,64	 #,,
	stfd %f0,0(%r9)	 # *foutput4.7_21, D.2569
	lwz %r9,foutput5@sdarel(%r13)	 # foutput5, foutput5
	lfd %f0,32(%r10)	 # a1, D.2571
	stfd %f0,0(%r9)	 # *foutput5.8_23, D.2571
	lwz %r9,foutput6@sdarel(%r13)	 # foutput6, foutput6
	lfd %f0,40(%r10)	 # a1, D.2573
	stfd %f0,0(%r9)	 # *foutput6.9_25, D.2573
	lwz %r9,foutput7@sdarel(%r13)	 # foutput7, foutput7
	lfd %f0,48(%r10)	 # a1, D.2575
	stfd %f0,0(%r9)	 # *foutput7.10_27, D.2575
	lwz %r9,foutput8@sdarel(%r13)	 # foutput8, foutput8
	lfd %f0,56(%r10)	 # a1, D.2577
	stfd %f0,0(%r9)	 # *foutput8.11_29, D.2577
	lwz %r9,foutput9@sdarel(%r13)	 # foutput9, foutput9
	lfd %f0,64(%r10)	 # a1, D.2579
	stfd %f0,0(%r9)	 # *foutput9.12_31, D.2579
	lwz %r9,foutput10@sdarel(%r13)	 # foutput10, foutput10
	lfd %f0,72(%r10)	 # a1, D.2581
	stfd %f0,0(%r9)	 # *foutput10.13_33, D.2581
	blr	 #
.L23:
	lwz %r11,L1@sdarel(%r13)	 # L1, L1
	cmpwi %cr7,%r31,1	 #, tmp416, Y.1
	lis %r10,loss@ha	 # tmp654,
	lfd %f0,0(%r11)	 # *L1.14_64, D.2797
	la %r11,loss@l(%r10)	 # tmp652,, tmp654
	stfd %f0,loss@l(%r10)	 # loss, D.2797
	ble- %cr7,.L4	 #
	lwz %r10,L2@sdarel(%r13)	 # L2, L2
	cmpwi %cr7,%r31,2	 #, tmp420, Y.1
	lfd %f0,0(%r10)	 # *L2.15_66, D.2795
	stfd %f0,8(%r11)	 # loss, D.2795
	beq- %cr7,.L5	 #
	lwz %r10,L3@sdarel(%r13)	 # L3, L3
	cmpwi %cr7,%r31,3	 #, tmp424, Y.1
	lfd %f0,0(%r10)	 # *L3.16_68, D.2793
	stfd %f0,16(%r11)	 # loss, D.2793
	beq- %cr7,.L5	 #
	lwz %r10,L4@sdarel(%r13)	 # L4, L4
	cmpwi %cr7,%r31,4	 #, tmp428, Y.1
	lfd %f0,0(%r10)	 # *L4.17_70, D.2791
	stfd %f0,24(%r11)	 # loss, D.2791
	beq- %cr7,.L5	 #
	lwz %r10,L5@sdarel(%r13)	 # L5, L5
	cmpwi %cr7,%r31,5	 #, tmp432, Y.1
	lfd %f0,0(%r10)	 # *L5.18_72, D.2789
	stfd %f0,32(%r11)	 # loss, D.2789
	beq- %cr7,.L5	 #
	lwz %r10,L6@sdarel(%r13)	 # L6, L6
	cmpwi %cr7,%r31,6	 #, tmp436, Y.1
	lfd %f0,0(%r10)	 # *L6.19_74, D.2787
	stfd %f0,40(%r11)	 # loss, D.2787
	beq- %cr7,.L5	 #
	lwz %r10,L7@sdarel(%r13)	 # L7, L7
	cmpwi %cr7,%r31,7	 #, tmp440, Y.1
	lfd %f0,0(%r10)	 # *L7.20_76, D.2785
	stfd %f0,48(%r11)	 # loss, D.2785
	beq- %cr7,.L5	 #
	lwz %r10,L8@sdarel(%r13)	 # L8, L8
	cmpwi %cr7,%r31,8	 #, tmp444, Y.1
	lfd %f0,0(%r10)	 # *L8.21_78, D.2783
	stfd %f0,56(%r11)	 # loss, D.2783
	beq- %cr7,.L5	 #
	lwz %r10,L9@sdarel(%r13)	 # L9, L9
	cmpwi %cr7,%r31,9	 #, tmp448, Y.1
	lfd %f0,0(%r10)	 # *L9.22_80, D.2781
	stfd %f0,64(%r11)	 # loss, D.2781
	beq- %cr7,.L5	 #
	lwz %r10,L10@sdarel(%r13)	 # L10, L10
	lfd %f0,0(%r10)	 # *L10.23_82, D.2779
	stfd %f0,72(%r11)	 # loss, D.2779
.L5:
	lfd %f7,0(%r9)	 # *Learning_rate.0_2, D.2554
	lwz %r9,lamm@sdarel(%r13)	 # lamm, lamm
	lwz %r6,N@sdarel(%r13)	 # N, pretmp.80
	lfd %f9,0(%r9)	 # *lamm.3_385, D.2561
.L14:
	lis %r4,loss-8@ha	 # tmp455,
	lis %r29,X11-8@ha	 # tmp668,
	fneg %f9,%f9	 # tmp672, D.2561
	cmpwi %cr1,%r6,0	 #, tmp647, pretmp.80
	la %r4,loss-8@l(%r4)	 # ivtmp.173,, tmp455
	slwi %r30,%r31,3	 # tmp460, Y.1,
	la %r29,X11-8@l(%r29)	 # ivtmp.163,, tmp668
	slwi %r7,%r6,3	 # tmp670, pretmp.80,
	lis %r3,b-8@ha	 # tmp456,
	lis %r26,W@ha	 # tmp666,
	la %r3,b-8@l(%r3)	 # ivtmp.179,, tmp456
	add %r30,%r4,%r30	 # D.3081, ivtmp.173, tmp460
	li %r12,-1	 # ivtmp.186,
	la %r26,W@l(%r26)	 # tmp667,, tmp666
	add %r7,%r29,%r7	 # D.3054, ivtmp.163, tmp670
	lis %r27,.LC0@ha	 # tmp673,
	lis %r28,.LC2@ha	 # tmp674,
	lis %r8,0x4330	 # tmp675,
.L8:
	lfdu %f8,8(%r4)	 # MEM[(double[10] *)D.3074_357], L_lsm.106
	lfdu %f0,8(%r3)	 # MEM[(double[10] *)D.3075_358], MEM[(double[10] *)D.3075_358]
	fmul %f10,%f7,%f8	 # D.2807, D.2554, L_lsm.106
	fsub %f0,%f0,%f10	 # tmp462, MEM[(double[10] *)D.3075_358], D.2807
	stfd %f0,0(%r3)	 # MEM[(double[10] *)D.3075_358], tmp462
	ble- %cr1,.L6	 #
	fneg %f10,%f10	 # tmp649, D.2807
	lfs %f11,.LC2@l(%r28)	 #, tmp665
	slwi %r11,%r12,3	 # tmp464, ivtmp.186,
	mr %r9,%r29	 # ivtmp.163, ivtmp.163
	lfd %f12,.LC0@l(%r27)	 #, tmp662
	add %r11,%r11,%r26	 # ivtmp.159, tmp464, tmp667
.L7:
	lfdu %f0,8(%r11)	 # MEM[(double[100] *)D.3047_321], D.2812
	stw %r8,8(%r1)	 #, tmp675
	fcmpu %cr7,%f0,%f12	 # tmp481, D.2812, tmp662
	lfdu %f13,8(%r9)	 # MEM[(double[10] *)D.3048_318], MEM[(double[10] *)D.3048_318]
	fmadd %f0,%f10,%f13,%f0	 # tmp474, tmp649, MEM[(double[10] *)D.3048_318], D.2812
	cmpw %cr6,%r9,%r7	 # D.3054, tmp498, ivtmp.163
	mfcr %r10	 # tmp480, tmp481
	rlwinm %r10,%r10,30,1	 # tmp480,
	mfcr %r0	 # tmp486, tmp481
	rlwinm %r0,%r0,29,1	 # tmp486,
	subf %r0,%r0,%r10	 # tmp488, tmp486, tmp480
	xoris %r0,%r0,0x8000	 #, tmp496, tmp488,
	stw %r0,12(%r1)	 #, tmp496
	lfd %f13,8(%r1)	 #, tmp495
	fsub %f13,%f13,%f11	 # tmp489, tmp495, tmp665
	fmadd %f0,%f9,%f13,%f0	 # tmp497, tmp672, tmp489, tmp474
	stfd %f0,0(%r11)	 # MEM[(double[100] *)D.3047_321], tmp497
	bne+ %cr6,.L7	 #
.L6:
	cmpw %cr7,%r4,%r30	 # D.3081, tmp499, ivtmp.173
	add %r12,%r12,%r6	 # ivtmp.186, ivtmp.186, pretmp.80
	bne+ %cr7,.L8	 #
	stfd %f8,L@sdarel(%r13)	 # L, L_lsm.106
	stw %r31,k@sdarel(%r13)	 # k, Y.1
	b .L2	 #
.L24:
	lis %r4,a1@ha	 # tmp646,
	la %r10,a1@l(%r4)	 # tmp644,, tmp646
	b .L12	 #
.L9:
	lwz %r9,input1@sdarel(%r13)	 # input1, input1
	lis %r7,X@ha	 # tmp642,
	lfd %f0,0(%r9)	 # *input1.32_389, D.2843
	stfd %f0,X@l(%r7)	 # X, D.2843
	b .L11	 #
.L4:
	cmpwi %cr7,%r31,0	 #, tmp454, Y.1
	lfd %f7,0(%r9)	 # *Learning_rate.0_2, D.2554
	li %r0,0	 # tmp453,
	lwz %r9,lamm@sdarel(%r13)	 # lamm, lamm
	lwz %r6,N@sdarel(%r13)	 # N, pretmp.80
	lfd %f9,0(%r9)	 # *lamm.3_10, D.2561
	stw %r0,k@sdarel(%r13)	 # k, tmp453
	bgt- %cr7,.L14	 #
	b .L2	 #
	.size	main, .-main
	.comm	L,8,8
	.comm	indx,4,4
	.comm	k,4,4
	.comm	i,4,4
	.globl loss
	.lcomm	loss,80,8
	.type	loss, @object
	.comm	a1,80,8
	.globl X11
	.lcomm	X11,80,8
	.type	X11, @object
	.globl X1
	.lcomm	X1,80,8
	.type	X1, @object
	.globl X
	.lcomm	X,80,8
	.type	X, @object
	.comm	foutput,4,4
	.comm	foutput10,4,4
	.comm	foutput9,4,4
	.comm	foutput8,4,4
	.comm	foutput7,4,4
	.comm	foutput6,4,4
	.comm	foutput5,4,4
	.comm	foutput4,4,4
	.comm	foutput3,4,4
	.comm	foutput2,4,4
	.comm	lamm,4,4
	.comm	L10,4,4
	.comm	L9,4,4
	.comm	L8,4,4
	.comm	L7,4,4
	.comm	L6,4,4
	.comm	L5,4,4
	.comm	L4,4,4
	.comm	L3,4,4
	.comm	L2,4,4
	.comm	input10,4,4
	.comm	input9,4,4
	.comm	input8,4,4
	.comm	input7,4,4
	.comm	input6,4,4
	.comm	input5,4,4
	.comm	input4,4,4
	.comm	input3,4,4
	.comm	input2,4,4
	.comm	L1,4,4
	.comm	input1,4,4
	.comm	Learning_rate,4,4
	.comm	batch_size,4,4
	.comm	activation,4,4
	.comm	numOutputs,4,4
	.comm	numInputs,4,4
	.comm	Y,4,4
	.comm	n,4,4
	.comm	N,4,4
	.globl b
	.lcomm	b,80,8
	.type	b, @object
	.globl W
	.section	".data"
	.align 3
	.type	W, @object
	.size	W, 800
W:
	.long	-1077090285
	.long	-1164118931
	.long	-1076623911
	.long	-919301672
	.long	-1078464605
	.long	277923554
	.long	1068130436
	.long	2049093850
	.long	-1076670698
	.long	674594364
	.long	1069239012
	.long	-710075604
	.long	1069622833
	.long	-664127013
	.long	-1078067683
	.long	-1481591918
	.long	1069653102
	.long	1253465246
	.long	-1076380859
	.long	-1324405736
	.long	-1076612726
	.long	-591570241
	.long	1069578874
	.long	430018998
	.long	-1076591684
	.long	393405260
	.long	-1078471407
	.long	-1798119326
	.long	-1077607783
	.long	2011215674
	.long	1070277435
	.long	1852512166
	.long	1070686559
	.long	-2131821105
	.long	-1078731738
	.long	823600180
	.long	1067824349
	.long	-1748289459
	.long	1068657515
	.long	1576138923
	.long	1071024149
	.long	-1917790171
	.long	-1078404986
	.long	1768300570
	.long	1070962617
	.long	-260298383
	.long	-1076927421
	.long	-1947147132
	.long	-1076742043
	.long	557969166
	.long	1070596644
	.long	1200094951
	.long	1070975118
	.long	-1353004034
	.long	1069137377
	.long	2004794527
	.long	-1076513500
	.long	606182751
	.long	-1077206521
	.long	1004436857
	.long	-1076523787
	.long	1541548287
	.long	1070516788
	.long	-679992966
	.long	1063997141
	.long	-788371827
	.long	-1077191747
	.long	1795491493
	.long	1070604577
	.long	-295218872
	.long	1069622601
	.long	1705287559
	.long	-1078114140
	.long	-546116430
	.long	-1077287396
	.long	-1374390
	.long	1070360598
	.long	-1438941862
	.long	-1078847918
	.long	-39263560
	.long	-1077020018
	.long	1360073893
	.long	1070318593
	.long	-134426292
	.long	-1080799850
	.long	903996470
	.long	1067896636
	.long	1036575582
	.long	1070252627
	.long	1278039331
	.long	-1078017160
	.long	-1875601910
	.long	-1078652912
	.long	1851929425
	.long	-1079182216
	.long	-504818774
	.long	1069942808
	.long	2102354193
	.long	1070896550
	.long	-615803477
	.long	1070765148
	.long	-109038568
	.long	1070722005
	.long	-960071563
	.long	1069261830
	.long	69599086
	.long	-1078475372
	.long	-903413729
	.long	-1077545781
	.long	-279495856
	.long	-1077064730
	.long	-1646705580
	.long	1070425389
	.long	-685193656
	.long	-1078691906
	.long	-748360599
	.long	-1077038462
	.long	1220875721
	.long	1070870887
	.long	1085009069
	.long	1070517135
	.long	1971215441
	.long	-1082448437
	.long	1085316933
	.long	1069022732
	.long	-1965893805
	.long	1071065221
	.long	-258319262
	.long	-1076317868
	.long	1984882371
	.long	1070202979
	.long	658618460
	.long	-1076956190
	.long	-71809104
	.long	1066780327
	.long	-1716029788
	.long	-1076434442
	.long	137329002
	.long	-1079069486
	.long	1512730088
	.long	1066993998
	.long	-566985161
	.long	1070654909
	.long	506336100
	.long	-1076525916
	.long	157230163
	.long	1068551379
	.long	1473664440
	.long	-1077077211
	.long	-164376988
	.long	1070250836
	.long	-1077224527
	.long	-1080782017
	.long	210061696
	.long	1066433215
	.long	233987070
	.long	-1077389901
	.long	-65310991
	.long	-1079712491
	.long	404037538
	.long	-1077494961
	.long	1994437127
	.long	1070037828
	.long	-2073470023
	.long	1070705783
	.long	1644968351
	.long	-1077765476
	.long	2029126719
	.long	1068733643
	.long	-9279878
	.long	-1076806175
	.long	-488732919
	.long	-1077538977
	.long	-2081155609
	.long	-1076453649
	.long	-1894150671
	.long	1068769446
	.long	-1817701628
	.long	-1076877909
	.long	1975129703
	.long	1070983454
	.long	1189605611
	.long	1069723631
	.long	1902605916
	.long	1070563197
	.long	-100605314
	.long	1070762789
	.long	1653610513
	.long	1066954698
	.long	-1825134327
	.long	1071119116
	.long	1346725822
	.long	1070625255
	.long	-644313814
	.long	1071035730
	.long	1556358709
	.long	-1079321929
	.long	-235647332
	.long	1067658121
	.long	1169781416
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.long	1501560836
	.ident	"GCC: (GNU) 4.6.0"
	.section	.note.GNU-stack,"",@progbits
