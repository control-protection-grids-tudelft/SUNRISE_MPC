	.file	"InputLv2Tanh_CS.c"

 # rs6000/powerpc options: -msdata=sysv -G 8
 # GNU C (GCC) version 4.6.0 (powerpc-750-linux-gnu)
 #	compiled by GNU C version 4.5.2, GMP version 5.0.1, MPFR version 2.4.1, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\BLTIN_GCC
 # -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\SHARED_CODE
 # -iprefix d:\rscad\rscad fx 2.3\bin\mingw-cross\bin\../lib/gcc/powerpc-750-linux-gnu/4.6.0/
 # -D__unix__ -D__gnu_linux__ -D__linux__ -Asystem=linux -Asystem=unix
 # -Asystem=posix
 # C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\InputLv2Tanh_CS.c
 # -mregnames -msdata=sysv -mtoc
 # -auxbase-strip C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\InputLv2Tanh_CS.s
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
	stwu %r1,-144(%r1)	 #,,
	mflr %r0	 #,
	lis %r11,.LC0@ha	 # tmp669,
	lwz %r9,Learning_rate@sdarel(%r13)	 # Learning_rate, Learning_rate.0
	lfd %f0,.LC0@l(%r11)	 #, tmp418
	stw %r0,148(%r1)	 #,
	stw %r23,20(%r1)	 #,
	stw %r27,36(%r1)	 #,
	lfd %f13,0(%r9)	 # *Learning_rate.0_2, *Learning_rate.0_2
	stfd %f21,56(%r1)	 #,
	stfd %f22,64(%r1)	 #,
	fcmpu %cr7,%f13,%f0	 # tmp422, *Learning_rate.0_2, tmp418
	stfd %f23,72(%r1)	 #,
	stfd %f24,80(%r1)	 #,
	stfd %f25,88(%r1)	 #,
	stfd %f26,96(%r1)	 #,
	stfd %f27,104(%r1)	 #,
	stfd %f28,112(%r1)	 #,
	stfd %f29,120(%r1)	 #,
	stfd %f30,128(%r1)	 #,
	stfd %f31,136(%r1)	 #,
	stw %r22,16(%r1)	 #,
	stw %r24,24(%r1)	 #,
	stw %r25,28(%r1)	 #,
	stw %r26,32(%r1)	 #,
	stw %r28,40(%r1)	 #,
	stw %r29,44(%r1)	 #,
	stw %r30,48(%r1)	 #,
	stw %r31,52(%r1)	 #,
	lwz %r23,Y@sdarel(%r13)	 # Y, Y.1
	lwz %r27,N@sdarel(%r13)	 # N, pretmp.80
	bgt- %cr7,.L23	 #
.L2:
	cmpwi %cr7,%r27,0	 #, tmp512, pretmp.80
	li %r0,0	 # tmp511,
	stw %r0,i@sdarel(%r13)	 # i, tmp511
	ble- %cr7,.L9	 #
	slwi %r6,%r27,3	 # D.3063, pretmp.80,
	lis %r4,daa1@ha	 # tmp686,
	addi %r6,%r6,-8	 # tmp721, D.3063,
	lis %r29,daa@ha	 # tmp689,
	srwi %r6,%r6,3	 # tmp722, tmp721,
	lis %r7,X@ha	 # tmp664,
	addi %r6,%r6,1	 #, tmp722,
	lis %r8,X11@ha	 # tmp681,
	lis %r11,X1@ha	 # tmp670,
	mtctr %r6	 # tmp719,
	li %r9,0	 # ivtmp.144,
	la %r4,daa1@l(%r4)	 # tmp685,, tmp686
	la %r8,X11@l(%r8)	 # tmp678,, tmp681
	la %r11,X1@l(%r11)	 # tmp666,, tmp670
	la %r29,daa@l(%r29)	 # tmp688,, tmp689
	la %r10,X@l(%r7)	 # tmp663,, tmp664
.L10:
	lfdx %f12,%r11,%r9	 # MEM[symbol: X1, index: ivtmp.144_199, offset: 0B], MEM[symbol: X1, index: ivtmp.144_199, offset: 0B]
	lfdx %f13,%r29,%r9	 # MEM[symbol: daa, index: ivtmp.144_199, offset: 0B], MEM[symbol: daa, index: ivtmp.144_199, offset: 0B]
	lfdx %f0,%r10,%r9	 # MEM[symbol: X, index: ivtmp.144_199, offset: 0B], MEM[symbol: X, index: ivtmp.144_199, offset: 0B]
	stfdx %f12,%r8,%r9	 # MEM[symbol: X11, index: ivtmp.144_199, offset: 0B], MEM[symbol: X1, index: ivtmp.144_199, offset: 0B]
	stfdx %f13,%r4,%r9	 # MEM[symbol: daa1, index: ivtmp.144_199, offset: 0B], MEM[symbol: daa, index: ivtmp.144_199, offset: 0B]
	stfdx %f0,%r11,%r9	 # MEM[symbol: X1, index: ivtmp.144_199, offset: 0B], MEM[symbol: X, index: ivtmp.144_199, offset: 0B]
	addi %r9,%r9,8	 # ivtmp.144, ivtmp.144,
	bdnz .L10	 #
	lwz %r9,input1@sdarel(%r13)	 # input1, input1
	cmpwi %cr7,%r27,1	 #, tmp532, pretmp.80
	stw %r27,i@sdarel(%r13)	 # i, pretmp.80
	lfd %f0,0(%r9)	 # *input1.32_130, D.2859
	stfd %f0,0(%r10)	 # X, D.2859
	ble- %cr7,.L11	 #
	lwz %r9,input2@sdarel(%r13)	 # input2, input2
	cmpwi %cr7,%r27,2	 #, tmp536, pretmp.80
	lfd %f0,0(%r9)	 # *input2.33_132, D.2857
	stfd %f0,8(%r10)	 # X, D.2857
	beq- %cr7,.L11	 #
	lwz %r9,input3@sdarel(%r13)	 # input3, input3
	cmpwi %cr7,%r27,3	 #, tmp540, pretmp.80
	lfd %f0,0(%r9)	 # *input3.34_134, D.2855
	stfd %f0,16(%r10)	 # X, D.2855
	beq- %cr7,.L11	 #
	lwz %r9,input4@sdarel(%r13)	 # input4, input4
	cmpwi %cr7,%r27,4	 #, tmp544, pretmp.80
	lfd %f0,0(%r9)	 # *input4.35_136, D.2853
	stfd %f0,24(%r10)	 # X, D.2853
	beq- %cr7,.L11	 #
	lwz %r9,input5@sdarel(%r13)	 # input5, input5
	cmpwi %cr7,%r27,5	 #, tmp548, pretmp.80
	lfd %f0,0(%r9)	 # *input5.36_138, D.2851
	stfd %f0,32(%r10)	 # X, D.2851
	beq- %cr7,.L11	 #
	lwz %r9,input6@sdarel(%r13)	 # input6, input6
	cmpwi %cr7,%r27,6	 #, tmp552, pretmp.80
	lfd %f0,0(%r9)	 # *input6.37_140, D.2849
	stfd %f0,40(%r10)	 # X, D.2849
	beq- %cr7,.L11	 #
	lwz %r9,input7@sdarel(%r13)	 # input7, input7
	cmpwi %cr7,%r27,7	 #, tmp556, pretmp.80
	lfd %f0,0(%r9)	 # *input7.38_142, D.2847
	stfd %f0,48(%r10)	 # X, D.2847
	beq- %cr7,.L11	 #
	lwz %r9,input8@sdarel(%r13)	 # input8, input8
	cmpwi %cr7,%r27,8	 #, tmp560, pretmp.80
	lfd %f0,0(%r9)	 # *input8.39_144, D.2845
	stfd %f0,56(%r10)	 # X, D.2845
	beq- %cr7,.L11	 #
	lwz %r9,input9@sdarel(%r13)	 # input9, input9
	cmpwi %cr7,%r27,9	 #, tmp564, pretmp.80
	lfd %f0,0(%r9)	 # *input9.40_146, D.2843
	stfd %f0,64(%r10)	 # X, D.2843
	beq- %cr7,.L11	 #
	lwz %r9,input10@sdarel(%r13)	 # input10, input10
	lfd %f0,0(%r9)	 # *input10.41_148, D.2841
	stfd %f0,72(%r10)	 # X, D.2841
.L11:
	cmpwi %cr7,%r23,0	 #, tmp569, Y.1
	li %r0,0	 # tmp568,
	stw %r0,k@sdarel(%r13)	 # k, tmp568
	ble- %cr7,.L24	 #
	la %r9,X@l(%r7)	 # tmp570,, tmp664
	lis %r11,.LC4@ha	 # tmp675,
	lfd %f22,X@l(%r7)	 # X, pretmp.82
	lfs %f21,.LC4@l(%r11)	 #, tmp704
	lis %r29,daa@ha	 # tmp689,
	lis %r22,a1@ha	 # tmp679,
	lfd %f23,8(%r9)	 # X, pretmp.85
	lis %r31,W@ha	 # tmp590,
	lis %r26,b@ha	 # tmp671,
	lfd %f24,16(%r9)	 # X, pretmp.87
	slwi %r24,%r27,3	 # D.3018, pretmp.80,
	la %r31,W@l(%r31)	 # ivtmp.113,, tmp590
	lfd %f25,24(%r9)	 # X, pretmp.89
	slwi %r25,%r23,3	 # D.3030, Y.1,
	li %r30,0	 # ivtmp.125,
	lfd %f26,32(%r9)	 # X, pretmp.91
	la %r29,daa@l(%r29)	 # tmp688,, tmp689
	la %r26,b@l(%r26)	 # tmp667,, tmp671
	lfd %f27,40(%r9)	 # X, pretmp.93
	la %r28,a1@l(%r22)	 # tmp677,, tmp679
	lfd %f28,48(%r9)	 # X, pretmp.95
	lfd %f29,56(%r9)	 # X, pretmp.97
	lfd %f30,64(%r9)	 # X, pretmp.99
	lfd %f31,72(%r9)	 # X, pretmp.101
.L13:
	lfd %f1,8(%r31)	 # MEM[(double[100] *)D.3019_150 + 8B], MEM[(double[100] *)D.3019_150 + 8B]
	lfd %f0,0(%r31)	 # MEM[(double[100] *)D.3019_150], MEM[(double[100] *)D.3019_150]
	lfd %f12,16(%r31)	 # MEM[(double[100] *)D.3019_150 + 16B], MEM[(double[100] *)D.3019_150 + 16B]
	fmul %f1,%f23,%f1	 # tmp591, pretmp.85, MEM[(double[100] *)D.3019_150 + 8B]
	lfd %f13,24(%r31)	 # MEM[(double[100] *)D.3019_150 + 24B], MEM[(double[100] *)D.3019_150 + 24B]
	lfd %f9,40(%r31)	 # MEM[(double[100] *)D.3019_150 + 40B], MEM[(double[100] *)D.3019_150 + 40B]
	lfd %f10,48(%r31)	 # MEM[(double[100] *)D.3019_150 + 48B], MEM[(double[100] *)D.3019_150 + 48B]
	fmadd %f1,%f0,%f22,%f1	 # tmp593, MEM[(double[100] *)D.3019_150], pretmp.82, tmp591
	lfd %f0,32(%r31)	 # MEM[(double[100] *)D.3019_150 + 32B], MEM[(double[100] *)D.3019_150 + 32B]
	lfd %f11,56(%r31)	 # MEM[(double[100] *)D.3019_150 + 56B], MEM[(double[100] *)D.3019_150 + 56B]
	fmadd %f1,%f12,%f24,%f1	 # tmp595, MEM[(double[100] *)D.3019_150 + 16B], pretmp.87, tmp593
	lfd %f12,64(%r31)	 # MEM[(double[100] *)D.3019_150 + 64B], MEM[(double[100] *)D.3019_150 + 64B]
	fmadd %f1,%f13,%f25,%f1	 # tmp597, MEM[(double[100] *)D.3019_150 + 24B], pretmp.89, tmp595
	lfd %f13,72(%r31)	 # MEM[(double[100] *)D.3019_150 + 72B], MEM[(double[100] *)D.3019_150 + 72B]
	add %r31,%r31,%r24	 # ivtmp.113, ivtmp.113, D.3018
	fmadd %f1,%f0,%f26,%f1	 # tmp599, MEM[(double[100] *)D.3019_150 + 32B], pretmp.91, tmp597
	lfdx %f0,%r26,%r30	 # MEM[symbol: b, index: ivtmp.125_343, offset: 0B], MEM[symbol: b, index: ivtmp.125_343, offset: 0B]
	fmadd %f1,%f9,%f27,%f1	 # tmp601, MEM[(double[100] *)D.3019_150 + 40B], pretmp.93, tmp599
	fmadd %f1,%f10,%f28,%f1	 # tmp603, MEM[(double[100] *)D.3019_150 + 48B], pretmp.95, tmp601
	fmadd %f1,%f11,%f29,%f1	 # tmp605, MEM[(double[100] *)D.3019_150 + 56B], pretmp.97, tmp603
	fmadd %f1,%f12,%f30,%f1	 # tmp607, MEM[(double[100] *)D.3019_150 + 64B], pretmp.99, tmp605
	fmadd %f1,%f13,%f31,%f1	 # tmp609, MEM[(double[100] *)D.3019_150 + 72B], pretmp.101, tmp607
	fadd %f1,%f1,%f0	 #, tmp609, MEM[symbol: b, index: ivtmp.125_343, offset: 0B]
	bl tanh	 #
	fneg %f0,%f1	 # tmp619, D.2866
	stfdx %f1,%r28,%r30	 # MEM[symbol: a1, index: ivtmp.125_343, offset: 0B], D.2866
	fmadd %f1,%f0,%f1,%f21	 # tmp620, tmp619, D.2866, tmp704
	stfdx %f1,%r29,%r30	 # MEM[symbol: daa, index: ivtmp.125_343, offset: 0B], tmp620
	addi %r30,%r30,8	 # ivtmp.125, ivtmp.125,
	cmpw %cr7,%r30,%r25	 # D.3030, tmp625, ivtmp.125
	bne+ %cr7,.L13	 #
	addi %r0,%r23,-1	 # tmp626, Y.1,
	stw %r23,k@sdarel(%r13)	 # k, Y.1
	mullw %r27,%r0,%r27	 # tmp627, tmp626, pretmp.80
	stw %r27,indx@sdarel(%r13)	 # indx, tmp627
.L12:
	lfd %f0,a1@l(%r22)	 # a1, D.2567
	lwz %r9,foutput@sdarel(%r13)	 # foutput, foutput
	lwz %r0,148(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput.4_15, D.2567
	lwz %r9,foutput2@sdarel(%r13)	 # foutput2, foutput2
	mtlr %r0	 #,
	lwz %r22,16(%r1)	 #,
	lfd %f0,8(%r28)	 # a1, D.2569
	lwz %r23,20(%r1)	 #,
	lwz %r24,24(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput2.5_17, D.2569
	lwz %r9,foutput3@sdarel(%r13)	 # foutput3, foutput3
	lwz %r25,28(%r1)	 #,
	lfd %f0,16(%r28)	 # a1, D.2571
	lwz %r26,32(%r1)	 #,
	lwz %r27,36(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput3.6_19, D.2571
	lwz %r9,foutput4@sdarel(%r13)	 # foutput4, foutput4
	lwz %r29,44(%r1)	 #,
	lfd %f0,24(%r28)	 # a1, D.2573
	lwz %r30,48(%r1)	 #,
	lwz %r31,52(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput4.7_21, D.2573
	lwz %r9,foutput5@sdarel(%r13)	 # foutput5, foutput5
	lfd %f21,56(%r1)	 #,
	lfd %f0,32(%r28)	 # a1, D.2575
	lfd %f22,64(%r1)	 #,
	lfd %f23,72(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput5.8_23, D.2575
	lwz %r9,foutput6@sdarel(%r13)	 # foutput6, foutput6
	lfd %f24,80(%r1)	 #,
	lfd %f0,40(%r28)	 # a1, D.2577
	lfd %f25,88(%r1)	 #,
	lfd %f26,96(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput6.9_25, D.2577
	lwz %r9,foutput7@sdarel(%r13)	 # foutput7, foutput7
	lfd %f27,104(%r1)	 #,
	lfd %f0,48(%r28)	 # a1, D.2579
	lfd %f28,112(%r1)	 #,
	lfd %f29,120(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput7.10_27, D.2579
	lwz %r9,foutput8@sdarel(%r13)	 # foutput8, foutput8
	lfd %f30,128(%r1)	 #,
	lfd %f0,56(%r28)	 # a1, D.2581
	lfd %f31,136(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput8.11_29, D.2581
	lwz %r9,foutput9@sdarel(%r13)	 # foutput9, foutput9
	lfd %f0,64(%r28)	 # a1, D.2583
	stfd %f0,0(%r9)	 # *foutput9.12_31, D.2583
	lwz %r9,foutput10@sdarel(%r13)	 # foutput10, foutput10
	lfd %f0,72(%r28)	 # a1, D.2585
	lwz %r28,40(%r1)	 #,
	addi %r1,%r1,144	 #,,
	stfd %f0,0(%r9)	 # *foutput10.13_33, D.2585
	blr	 #
.L23:
	lwz %r11,L1@sdarel(%r13)	 # L1, L1
	cmpwi %cr7,%r23,1	 #, tmp426, Y.1
	lfd %f0,0(%r11)	 # *L1.14_67, D.2811
	lis %r11,loss@ha	 # tmp684,
	la %r30,loss@l(%r11)	 # tmp682,, tmp684
	stfd %f0,loss@l(%r11)	 # loss, D.2811
	ble- %cr7,.L4	 #
	lwz %r11,L2@sdarel(%r13)	 # L2, L2
	cmpwi %cr7,%r23,2	 #, tmp430, Y.1
	lfd %f0,0(%r11)	 # *L2.15_69, D.2809
	stfd %f0,8(%r30)	 # loss, D.2809
	beq- %cr7,.L5	 #
	lwz %r11,L3@sdarel(%r13)	 # L3, L3
	cmpwi %cr7,%r23,3	 #, tmp434, Y.1
	lfd %f0,0(%r11)	 # *L3.16_71, D.2807
	stfd %f0,16(%r30)	 # loss, D.2807
	beq- %cr7,.L5	 #
	lwz %r11,L4@sdarel(%r13)	 # L4, L4
	cmpwi %cr7,%r23,4	 #, tmp438, Y.1
	lfd %f0,0(%r11)	 # *L4.17_73, D.2805
	stfd %f0,24(%r30)	 # loss, D.2805
	beq- %cr7,.L5	 #
	lwz %r11,L5@sdarel(%r13)	 # L5, L5
	cmpwi %cr7,%r23,5	 #, tmp442, Y.1
	lfd %f0,0(%r11)	 # *L5.18_75, D.2803
	stfd %f0,32(%r30)	 # loss, D.2803
	beq- %cr7,.L5	 #
	lwz %r11,L6@sdarel(%r13)	 # L6, L6
	cmpwi %cr7,%r23,6	 #, tmp446, Y.1
	lfd %f0,0(%r11)	 # *L6.19_77, D.2801
	stfd %f0,40(%r30)	 # loss, D.2801
	beq- %cr7,.L5	 #
	lwz %r11,L7@sdarel(%r13)	 # L7, L7
	cmpwi %cr7,%r23,7	 #, tmp450, Y.1
	lfd %f0,0(%r11)	 # *L7.20_79, D.2799
	stfd %f0,48(%r30)	 # loss, D.2799
	beq- %cr7,.L5	 #
	lwz %r11,L8@sdarel(%r13)	 # L8, L8
	cmpwi %cr7,%r23,8	 #, tmp454, Y.1
	lfd %f0,0(%r11)	 # *L8.21_81, D.2797
	stfd %f0,56(%r30)	 # loss, D.2797
	beq- %cr7,.L5	 #
	lwz %r11,L9@sdarel(%r13)	 # L9, L9
	cmpwi %cr7,%r23,9	 #, tmp458, Y.1
	lfd %f0,0(%r11)	 # *L9.22_83, D.2795
	stfd %f0,64(%r30)	 # loss, D.2795
	beq- %cr7,.L5	 #
	lwz %r11,L10@sdarel(%r13)	 # L10, L10
	lfd %f0,0(%r11)	 # *L10.23_85, D.2793
	stfd %f0,72(%r30)	 # loss, D.2793
.L5:
	lfd %f7,0(%r9)	 # *Learning_rate.0_2, D.2558
	lwz %r9,lamm@sdarel(%r13)	 # lamm, lamm
	lwz %r27,N@sdarel(%r13)	 # N, pretmp.80
	lfd %f9,0(%r9)	 # *lamm.3_393, D.2565
.L14:
	lis %r28,X1-8@ha	 # tmp711,
	cmpwi %cr1,%r27,0	 #, tmp673, pretmp.80
	fneg %f9,%f9	 # tmp715, D.2565
	lis %r4,daa1@ha	 # tmp686,
	la %r28,X1-8@l(%r28)	 # ivtmp.178,, tmp711
	slwi %r7,%r27,3	 # tmp713, pretmp.80,
	lis %r3,b-8@ha	 # tmp465,
	lis %r24,W@ha	 # tmp709,
	la %r3,b-8@l(%r3)	 # ivtmp.199,, tmp465
	slwi %r29,%r23,3	 # D.3115, Y.1,
	li %r31,-1	 # ivtmp.206,
	li %r6,0	 # ivtmp.189,
	la %r4,daa1@l(%r4)	 # tmp685,, tmp686
	la %r24,W@l(%r24)	 # tmp710,, tmp709
	add %r7,%r28,%r7	 # D.3087, ivtmp.178, tmp713
	lis %r25,.LC0@ha	 # tmp716,
	lis %r26,.LC2@ha	 # tmp717,
	lis %r8,0x4330	 # tmp718,
.L8:
	lfdx %f8,%r30,%r6	 # MEM[symbol: loss, index: ivtmp.189_153, offset: 0B], MEM[symbol: loss, index: ivtmp.189_153, offset: 0B]
	lfdx %f13,%r4,%r6	 # MEM[symbol: daa1, index: ivtmp.189_153, offset: 0B], MEM[symbol: daa1, index: ivtmp.189_153, offset: 0B]
	lfdu %f0,8(%r3)	 # MEM[(double[10] *)D.3112_369], MEM[(double[10] *)D.3112_369]
	fmul %f8,%f8,%f13	 # L_lsm.106, MEM[symbol: loss, index: ivtmp.189_153, offset: 0B], MEM[symbol: daa1, index: ivtmp.189_153, offset: 0B]
	fmul %f10,%f7,%f8	 # D.2823, D.2558, L_lsm.106
	fsub %f0,%f0,%f10	 # tmp473, MEM[(double[10] *)D.3112_369], D.2823
	stfd %f0,0(%r3)	 # MEM[(double[10] *)D.3112_369], tmp473
	ble- %cr1,.L6	 #
	fneg %f10,%f10	 # tmp687, D.2823
	lfs %f11,.LC2@l(%r26)	 #, tmp708
	slwi %r11,%r31,3	 # tmp475, ivtmp.206,
	mr %r9,%r28	 # ivtmp.178, ivtmp.178
	lfd %f12,.LC0@l(%r25)	 #, tmp705
	add %r11,%r11,%r24	 # ivtmp.174, tmp475, tmp710
.L7:
	lfdu %f0,8(%r11)	 # MEM[(double[100] *)D.3080_158], D.2828
	stw %r8,8(%r1)	 #, tmp718
	fcmpu %cr7,%f0,%f12	 # tmp492, D.2828, tmp705
	lfdu %f13,8(%r9)	 # MEM[(double[10] *)D.3081_337], MEM[(double[10] *)D.3081_337]
	fmadd %f0,%f10,%f13,%f0	 # tmp485, tmp687, MEM[(double[10] *)D.3081_337], D.2828
	cmpw %cr6,%r9,%r7	 # D.3087, tmp509, ivtmp.178
	mfcr %r10	 # tmp491, tmp492
	rlwinm %r10,%r10,30,1	 # tmp491,
	mfcr %r0	 # tmp497, tmp492
	rlwinm %r0,%r0,29,1	 # tmp497,
	subf %r0,%r0,%r10	 # tmp499, tmp497, tmp491
	xoris %r0,%r0,0x8000	 #, tmp507, tmp499,
	stw %r0,12(%r1)	 #, tmp507
	lfd %f13,8(%r1)	 #, tmp506
	fsub %f13,%f13,%f11	 # tmp500, tmp506, tmp708
	fmadd %f0,%f9,%f13,%f0	 # tmp508, tmp715, tmp500, tmp485
	stfd %f0,0(%r11)	 # MEM[(double[100] *)D.3080_158], tmp508
	bne+ %cr6,.L7	 #
.L6:
	addi %r6,%r6,8	 # ivtmp.189, ivtmp.189,
	add %r31,%r31,%r27	 # ivtmp.206, ivtmp.206, pretmp.80
	cmpw %cr7,%r6,%r29	 # D.3115, tmp510, ivtmp.189
	bne+ %cr7,.L8	 #
	stfd %f8,L@sdarel(%r13)	 # L, L_lsm.106
	stw %r23,k@sdarel(%r13)	 # k, Y.1
	b .L2	 #
.L24:
	lis %r22,a1@ha	 # tmp679,
	la %r28,a1@l(%r22)	 # tmp677,, tmp679
	b .L12	 #
.L9:
	lwz %r9,input1@sdarel(%r13)	 # input1, input1
	lis %r7,X@ha	 # tmp664,
	lfd %f0,0(%r9)	 # *input1.32_397, D.2859
	stfd %f0,X@l(%r7)	 # X, D.2859
	b .L11	 #
.L4:
	cmpwi %cr7,%r23,0	 #, tmp464, Y.1
	lfd %f7,0(%r9)	 # *Learning_rate.0_2, D.2558
	li %r0,0	 # tmp463,
	lwz %r9,lamm@sdarel(%r13)	 # lamm, lamm
	lwz %r27,N@sdarel(%r13)	 # N, pretmp.80
	lfd %f9,0(%r9)	 # *lamm.3_10, D.2565
	stw %r0,k@sdarel(%r13)	 # k, tmp463
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
	.globl daa1
	.lcomm	daa1,80,8
	.type	daa1, @object
	.globl daa
	.lcomm	daa,80,8
	.type	daa, @object
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
	.comm	foutput10,4,4
	.comm	foutput9,4,4
	.comm	foutput8,4,4
	.comm	foutput7,4,4
	.comm	foutput6,4,4
	.comm	foutput5,4,4
	.comm	foutput4,4,4
	.comm	foutput3,4,4
	.comm	foutput2,4,4
	.comm	foutput,4,4
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
	.comm	lamm,4,4
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
	.align 2
.LC4:
	.long	1065353216
	.ident	"GCC: (GNU) 4.6.0"
	.gnu_attribute 4, 1
	.section	.note.GNU-stack,"",@progbits
