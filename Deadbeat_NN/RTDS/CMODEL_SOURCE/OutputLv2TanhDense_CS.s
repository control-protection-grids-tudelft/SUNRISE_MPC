	.file	"OutputLv2TanhDense_CS.c"

 # rs6000/powerpc options: -msdata=sysv -G 8
 # GNU C (GCC) version 4.6.0 (powerpc-750-linux-gnu)
 #	compiled by GNU C version 4.5.2, GMP version 5.0.1, MPFR version 2.4.1, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\BLTIN_GCC
 # -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\SHARED_CODE
 # -iprefix d:\rscad\rscad fx 2.3\bin\mingw-cross\bin\../lib/gcc/powerpc-750-linux-gnu/4.6.0/
 # -D__unix__ -D__gnu_linux__ -D__linux__ -Asystem=linux -Asystem=unix
 # -Asystem=posix
 # C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\OutputLv2TanhDense_CS.c
 # -mregnames -msdata=sysv -mtoc
 # -auxbase-strip C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\OutputLv2TanhDense_CS.s
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
	stwu %r1,-176(%r1)	 #,,
	mflr %r0	 #,
	lis %r3,.LC0@ha	 # tmp933,
	lwz %r9,Learning_rate@sdarel(%r13)	 # Learning_rate, Learning_rate.0
	lfd %f0,.LC0@l(%r3)	 #, tmp486
	stw %r0,180(%r1)	 #,
	stfd %f30,160(%r1)	 #,
	stfd %f31,168(%r1)	 #,
	lfd %f13,0(%r9)	 # *Learning_rate.0_2, *Learning_rate.0_2
	stw %r15,92(%r1)	 #,
	stw %r16,96(%r1)	 #,
	fcmpu %cr7,%f13,%f0	 # tmp490, *Learning_rate.0_2, tmp486
	stw %r17,100(%r1)	 #,
	stw %r18,104(%r1)	 #,
	stw %r19,108(%r1)	 #,
	stw %r20,112(%r1)	 #,
	stw %r21,116(%r1)	 #,
	stw %r22,120(%r1)	 #,
	stw %r23,124(%r1)	 #,
	stw %r24,128(%r1)	 #,
	stw %r25,132(%r1)	 #,
	stw %r26,136(%r1)	 #,
	stw %r27,140(%r1)	 #,
	stw %r28,144(%r1)	 #,
	stw %r29,148(%r1)	 #,
	stw %r30,152(%r1)	 #,
	stw %r31,156(%r1)	 #,
	bgt- %cr7,.L23	 #
	lis %r24,Wd@ha	 # tmp913,
	lis %r21,dasig@ha	 # tmp922,
	lwz %r23,Y@sdarel(%r13)	 # Y, Y.1
	lis %r4,b@ha	 # tmp905,
	lis %r20,Xout@ha	 # tmp914,
	lwz %r31,N@sdarel(%r13)	 # N, N.2
	lis %r22,bd@ha	 # tmp928,
	la %r30,Wd@l(%r24)	 # tmp924,, tmp913
	la %r27,dasig@l(%r21)	 # tmp930,, tmp922
	la %r29,b@l(%r4)	 # tmp919,, tmp905
	la %r25,Xout@l(%r20)	 # tmp929,, tmp914
	la %r28,bd@l(%r22)	 # tmp939,, tmp928
.L2:
	lwz %r11,input1@sdarel(%r13)	 # input1, input1
	cmpwi %cr7,%r31,1	 #, tmp744, N.2
	lis %r9,X@ha	 # tmp942,
	la %r26,X@l(%r9)	 # tmp918,, tmp942
	lfd %f0,0(%r11)	 # *input1.40_259, D.3040
	stfd %f0,X@l(%r9)	 # X, D.3040
	ble- %cr7,.L13	 #
	lwz %r9,input2@sdarel(%r13)	 # input2, input2
	cmpwi %cr7,%r31,2	 #, tmp748, N.2
	lfd %f0,0(%r9)	 # *input2.41_261, D.3038
	stfd %f0,8(%r26)	 # X, D.3038
	beq- %cr7,.L13	 #
	lwz %r9,input3@sdarel(%r13)	 # input3, input3
	cmpwi %cr7,%r31,3	 #, tmp752, N.2
	lfd %f0,0(%r9)	 # *input3.42_263, D.3036
	stfd %f0,16(%r26)	 # X, D.3036
	beq- %cr7,.L13	 #
	lwz %r9,input4@sdarel(%r13)	 # input4, input4
	cmpwi %cr7,%r31,4	 #, tmp756, N.2
	lfd %f0,0(%r9)	 # *input4.43_265, D.3034
	stfd %f0,24(%r26)	 # X, D.3034
	beq- %cr7,.L13	 #
	lwz %r9,input5@sdarel(%r13)	 # input5, input5
	cmpwi %cr7,%r31,5	 #, tmp760, N.2
	lfd %f0,0(%r9)	 # *input5.44_267, D.3032
	stfd %f0,32(%r26)	 # X, D.3032
	beq- %cr7,.L13	 #
	lwz %r9,input6@sdarel(%r13)	 # input6, input6
	cmpwi %cr7,%r31,6	 #, tmp764, N.2
	lfd %f0,0(%r9)	 # *input6.45_269, D.3030
	stfd %f0,40(%r26)	 # X, D.3030
	beq- %cr7,.L13	 #
	lwz %r9,input7@sdarel(%r13)	 # input7, input7
	cmpwi %cr7,%r31,7	 #, tmp768, N.2
	lfd %f0,0(%r9)	 # *input7.46_271, D.3028
	stfd %f0,48(%r26)	 # X, D.3028
	beq- %cr7,.L13	 #
	lwz %r9,input8@sdarel(%r13)	 # input8, input8
	cmpwi %cr7,%r31,8	 #, tmp772, N.2
	lfd %f0,0(%r9)	 # *input8.47_273, D.3026
	stfd %f0,56(%r26)	 # X, D.3026
	beq- %cr7,.L13	 #
	lwz %r9,input9@sdarel(%r13)	 # input9, input9
	cmpwi %cr7,%r31,9	 #, tmp776, N.2
	lfd %f0,0(%r9)	 # *input9.48_275, D.3024
	stfd %f0,64(%r26)	 # X, D.3024
	beq- %cr7,.L13	 #
	lwz %r9,input10@sdarel(%r13)	 # input10, input10
	lfd %f0,0(%r9)	 # *input10.49_277, D.3022
	stfd %f0,72(%r26)	 # X, D.3022
.L13:
	cmpwi %cr7,%r23,2	 #, tmp780, Y.1
	ble- %cr7,.L37	 #
	addi %r24,%r1,8	 # tmp920,,
	li %r4,0	 #,
	mr %r3,%r24	 #, tmp920
	li %r5,48	 #,
	bl memset	 #
	cmpwi %cr7,%r31,0	 #, tmp846, N.2
	li %r0,0	 # tmp845,
	stw %r0,i@sdarel(%r13)	 # i, tmp845
	slwi %r22,%r23,3	 # D.3205, Y.1,
	ble- %cr7,.L18	 #
	lis %r7,W@ha	 # tmp941,
	li %r8,0	 # ivtmp.173,
	la %r7,W@l(%r7)	 # tmp917,, tmp941
	slwi %r10,%r31,3	 # D.3220, N.2,
	add %r0,%r1,%r22	 # D.3229,, D.3205
.L20:
	slwi %r11,%r8,3	 # tmp847, ivtmp.173,
	mr %r9,%r1	 # ivtmp.162,
	lfdx %f12,%r26,%r11	 # MEM[symbol: X, index: D.3236_326, offset: 0B], pretmp.88
	add %r11,%r7,%r11	 # ivtmp.167, tmp917, tmp847
.L19:
	lfdu %f0,8(%r9)	 # MEM[(double[6] *)D.3222_442], MEM[(double[6] *)D.3222_442]
	lfd %f13,0(%r11)	 # MEM[(double[60] *)D.3223_438], MEM[(double[60] *)D.3223_438]
	add %r11,%r11,%r10	 # ivtmp.167, ivtmp.167, D.3220
	cmpw %cr7,%r9,%r0	 # D.3229, tmp858, ivtmp.162
	fmadd %f0,%f12,%f13,%f0	 # tmp855, pretmp.88, MEM[(double[60] *)D.3223_438], MEM[(double[6] *)D.3222_442]
	stfd %f0,0(%r9)	 # MEM[(double[6] *)D.3222_442], tmp855
	bne+ %cr7,.L19	 #
	addi %r8,%r8,1	 # ivtmp.173, ivtmp.173,
	cmpw %cr7,%r8,%r31	 # N.2, tmp859, ivtmp.173
	bne+ %cr7,.L20	 #
	stw %r8,i@sdarel(%r13)	 # i, ivtmp.173
.L18:
	lis %r9,.LC4@ha	 # tmp936,
	lis %r26,out@ha	 # tmp906,
	lfs %f31,.LC4@l(%r9)	 #, tmp968
	li %r31,0	 # ivtmp.125,
	la %r26,out@l(%r26)	 # tmp921,, tmp906
.L21:
	lfdx %f0,%r29,%r31	 # MEM[symbol: b, index: ivtmp.125_281, offset: 0B], MEM[symbol: b, index: ivtmp.125_281, offset: 0B]
	lfdx %f1,%r24,%r31	 # MEM[symbol: preOutputa, index: ivtmp.125_281, offset: 0B], MEM[symbol: preOutputa, index: ivtmp.125_281, offset: 0B]
	fadd %f1,%f1,%f0	 #, MEM[symbol: preOutputa, index: ivtmp.125_281, offset: 0B], MEM[symbol: b, index: ivtmp.125_281, offset: 0B]
	bl tanh	 #
	lfdx %f12,%r30,%r31	 # MEM[symbol: Wd, index: ivtmp.125_281, offset: 0B], MEM[symbol: Wd, index: ivtmp.125_281, offset: 0B]
	lfdx %f0,%r28,%r31	 # MEM[symbol: bd, index: ivtmp.125_281, offset: 0B], MEM[symbol: bd, index: ivtmp.125_281, offset: 0B]
	fneg %f13,%f1	 # tmp879, D.3084
	stfdx %f1,%r25,%r31	 # MEM[symbol: Xout, index: ivtmp.125_281, offset: 0B], D.3084
	fmadd %f0,%f1,%f12,%f0	 # tmp874, D.3084, MEM[symbol: Wd, index: ivtmp.125_281, offset: 0B], MEM[symbol: bd, index: ivtmp.125_281, offset: 0B]
	fmadd %f1,%f13,%f1,%f31	 # tmp880, tmp879, D.3084, tmp968
	stfdx %f0,%r26,%r31	 # MEM[symbol: out, index: ivtmp.125_281, offset: 0B], tmp874
	stfdx %f1,%r27,%r31	 # MEM[symbol: dasig, index: ivtmp.125_281, offset: 0B], tmp880
	addi %r31,%r31,8	 # ivtmp.125, ivtmp.125,
	cmpw %cr7,%r31,%r22	 # D.3205, tmp885, ivtmp.125
	bne+ %cr7,.L21	 #
	lfd %f0,0(%r26)	 # out, D.2648
	lwz %r9,foutput@sdarel(%r13)	 # foutput, foutput
	stw %r23,k@sdarel(%r13)	 # k, Y.1
	stfd %f0,0(%r9)	 # *foutput.16_49, D.2648
	lwz %r9,foutput2@sdarel(%r13)	 # foutput2, foutput2
	lfd %f0,8(%r26)	 # out, D.2649
	stfd %f0,0(%r9)	 # *foutput2.18_51, D.2649
	lwz %r9,foutput3@sdarel(%r13)	 # foutput3, foutput3
	lfd %f0,16(%r26)	 # out, D.2651
	stfd %f0,0(%r9)	 # *foutput3.20_53, D.2651
	lwz %r9,foutput4@sdarel(%r13)	 # foutput4, foutput4
	lfd %f0,24(%r26)	 # out, D.2653
	stfd %f0,0(%r9)	 # *foutput4.21_55, D.2653
	lwz %r9,foutput5@sdarel(%r13)	 # foutput5, foutput5
	lfd %f0,32(%r26)	 # out, D.2655
	stfd %f0,0(%r9)	 # *foutput5.22_57, D.2655
	lwz %r9,foutput6@sdarel(%r13)	 # foutput6, foutput6
	lfd %f0,40(%r26)	 # out, D.2657
	stfd %f0,0(%r9)	 #* foutput6, D.2657
.L1:
	lwz %r0,180(%r1)	 #,
	lwz %r15,92(%r1)	 #,
	mtlr %r0	 #,
	lwz %r16,96(%r1)	 #,
	lwz %r17,100(%r1)	 #,
	lwz %r18,104(%r1)	 #,
	lwz %r19,108(%r1)	 #,
	lwz %r20,112(%r1)	 #,
	lwz %r21,116(%r1)	 #,
	lwz %r22,120(%r1)	 #,
	lwz %r23,124(%r1)	 #,
	lwz %r24,128(%r1)	 #,
	lwz %r25,132(%r1)	 #,
	lwz %r26,136(%r1)	 #,
	lwz %r27,140(%r1)	 #,
	lwz %r28,144(%r1)	 #,
	lwz %r29,148(%r1)	 #,
	lwz %r30,152(%r1)	 #,
	lwz %r31,156(%r1)	 #,
	lfd %f30,160(%r1)	 #,
	lfd %f31,168(%r1)	 #,
	addi %r1,%r1,176	 #,,
	blr	 #
.L37:
	cmpwi %cr7,%r31,0	 #, tmp788, N.2
	lfd %f13,.LC0@l(%r3)	 #, tmp783
	li %r0,0	 # tmp787,
	stw %r0,i@sdarel(%r13)	 # i, tmp787
	stfd %f13,preOutput@sdarel(%r13)	 # preOutput, tmp783
	stfd %f13,preOutput2@sdarel(%r13)	 # preOutput2, tmp783
	ble- %cr7,.L15	 #
	slwi %r10,%r31,3	 # D.3162, N.2,
	fmr %f12,%f13	 # prephitmp.89, prephitmp.89
	lis %r9,W-8@ha	 # tmp789,
	addi %r8,%r10,-8	 # tmp992, D.3162,
	lis %r11,X-8@ha	 # tmp790,
	srwi %r8,%r8,3	 # tmp993, tmp992,
	la %r9,W-8@l(%r9)	 # ivtmp.106,, tmp789
	addi %r8,%r8,1	 #, tmp993,
	la %r11,X-8@l(%r11)	 # ivtmp.112,, tmp790
	mtctr %r8	 # tmp990,
.L16:
	lfdu %f10,8(%r9)	 # MEM[(double[60] *)D.3156_435], MEM[(double[60] *)D.3156_435]
	lfdu %f0,8(%r11)	 # MEM[(double[10] *)D.3157_108], D.3072
	lfdx %f11,%r9,%r10	 # MEM[base: D.3156_435, index: D.3162_206, offset: 0B], MEM[base: D.3156_435, index: D.3162_206, offset: 0B]
	fmadd %f12,%f10,%f0,%f12	 # prephitmp.89, MEM[(double[60] *)D.3156_435], D.3072, prephitmp.89
	fmadd %f13,%f0,%f11,%f13	 # prephitmp.89, D.3072, MEM[base: D.3156_435, index: D.3162_206, offset: 0B], prephitmp.89
	bdnz .L16	 #
	stw %r31,i@sdarel(%r13)	 # i, N.2
	stfd %f12,preOutput@sdarel(%r13)	 # preOutput, prephitmp.89
	stfd %f13,preOutput2@sdarel(%r13)	 # preOutput2, prephitmp.89
.L15:
	lfd %f1,b@l(%r4)	 # b, b
	lfd %f0,preOutput@sdarel(%r13)	 # preOutput, preOutput
	fadd %f1,%f1,%f0	 #, b, preOutput
	bl tanh	 #
	lfd %f0,preOutput2@sdarel(%r13)	 # preOutput2, preOutput2
	fmr %f31,%f1	 # D.3060,
	lfd %f1,8(%r29)	 # b, b
	fadd %f1,%f1,%f0	 #, b, preOutput2
	stfd %f31,Xout@l(%r20)	 # Xout, D.3060
	bl tanh	 #
	lis %r9,.LC4@ha	 # tmp817,
	lfd %f8,Wd@l(%r24)	 # Wd, Wd
	fneg %f9,%f31	 # tmp813, D.3060
	lfs %f13,.LC4@l(%r9)	 #, tmp815
	fneg %f10,%f1	 # tmp821, D.3057
	lfd %f0,bd@l(%r22)	 # bd, bd
	lfd %f11,8(%r30)	 # Wd, Wd
	lfd %f12,8(%r28)	 # bd, bd
	fmadd %f0,%f31,%f8,%f0	 # out1.56, D.3060, Wd, bd
	lwz %r9,foutput@sdarel(%r13)	 # foutput, foutput
	fmadd %f31,%f9,%f31,%f13	 # tmp814, tmp813, D.3060, tmp815
	stfd %f1,8(%r25)	 # Xout, D.3057
	fmadd %f13,%f10,%f1,%f13	 # tmp822, tmp821, D.3057, tmp815
	fmadd %f12,%f1,%f11,%f12	 # tmp837, D.3057, Wd, bd
	stfd %f0,out1@sdarel(%r13)	 # out1, out1.56
	stfd %f31,dasig@l(%r21)	 # dasig, tmp814
	stfd %f13,8(%r27)	 # dasig, tmp822
	stfd %f12,out2@sdarel(%r13)	 # out2, tmp837
	stfd %f0,0(%r9)	 # *foutput.16_44, out1.56
	lwz %r9,foutput2@sdarel(%r13)	 # foutput2, foutput2
	lfd %f0,out2@sdarel(%r13)	 # out2, out2.19
	stfd %f0,0(%r9)	 #* foutput2, out2.19
	b .L1	 #
.L23:
	lwz %r23,Y@sdarel(%r13)	 # Y, Y.1
	lis %r11,loss@ha	 # tmp931,
	lwz %r10,L1@sdarel(%r13)	 # L1, L1
	la %r26,loss@l(%r11)	 # tmp907,, tmp931
	cmpwi %cr7,%r23,1	 #, tmp494, Y.1
	lfd %f0,0(%r10)	 # *L1.24_88, D.2927
	stfd %f0,loss@l(%r11)	 # loss, D.2927
	ble- %cr7,.L4	 #
	lwz %r11,L2@sdarel(%r13)	 # L2, L2
	cmpwi %cr7,%r23,2	 #, tmp498, Y.1
	lfd %f0,0(%r11)	 # *L2.25_90, D.2925
	stfd %f0,8(%r26)	 # loss, D.2925
	beq- %cr7,.L4	 #
	lwz %r8,L3@sdarel(%r13)	 # L3, L3
	cmpwi %cr6,%r23,3	 #, tmp502, Y.1
	lfd %f0,0(%r8)	 # *L3.26_92, D.2923
	stfd %f0,16(%r26)	 # loss, D.2923
	beq- %cr6,.L6	 #
	lwz %r8,L4@sdarel(%r13)	 # L4, L4
	cmpwi %cr6,%r23,4	 #, tmp506, Y.1
	lfd %f0,0(%r8)	 # *L4.27_94, D.2921
	stfd %f0,24(%r26)	 # loss, D.2921
	beq- %cr6,.L6	 #
	lwz %r8,L5@sdarel(%r13)	 # L5, L5
	cmpwi %cr6,%r23,5	 #, tmp510, Y.1
	lfd %f0,0(%r8)	 # *L5.28_96, D.2919
	stfd %f0,32(%r26)	 # loss, D.2919
	beq- %cr6,.L6	 #
	lwz %r8,L6@sdarel(%r13)	 # L6, L6
	lfd %f0,0(%r8)	 # *L6.29_98, D.2917
	stfd %f0,40(%r26)	 # loss, D.2917
	ble- %cr7,.L4	 #
.L6:
	lwz %r31,N@sdarel(%r13)	 # N, N.2
	li %r0,0	 # tmp585,
	lis %r24,Wd@ha	 # tmp913,
	lfd %f0,0(%r9)	 # *Learning_rate.0_2, D.2606
	cmpwi %cr7,%r31,0	 #, tmp586, N.2
	lwz %r9,lam@sdarel(%r13)	 # lam, lam
	lfd %f5,0(%r10)	 # *L1.4_12, D.2618
	lfd %f6,0(%r11)	 # *L2.5_14, D.2620
	lfd %f10,0(%r9)	 # *lam.3_19, D.2615
	stw %r0,i@sdarel(%r13)	 # i, tmp585
	ble- %cr7,.L38	 #
	fmul %f5,%f5,%f0	 # D.3012, D.2618, D.2606
	lfd %f8,Wd@l(%r24)	 # Wd, Wd
	lis %r21,dasig@ha	 # tmp922,
	la %r30,Wd@l(%r24)	 # tmp924,, tmp913
	fmul %f6,%f6,%f0	 # D.3000, D.2620, D.2606
	lfd %f7,8(%r30)	 # Wd, Wd
	la %r27,dasig@l(%r21)	 # tmp930,, tmp922
	slwi %r11,%r31,3	 # D.3339, N.2,
	lfd %f0,dasig@l(%r21)	 # dasig, dasig
	addi %r8,%r11,-8	 # tmp998, D.3339,
	lis %r9,.LC2@ha	 # tmp935,
	fneg %f10,%f10	 # tmp940, D.2615
	fmul %f8,%f5,%f8	 # tmp592, D.3012, Wd
	srwi %r8,%r8,3	 # tmp999, tmp998,
	lfs %f11,.LC2@l(%r9)	 #, tmp989
	lis %r9,.LC0@ha	 # tmp962,
	fmul %f7,%f6,%f7	 # tmp600, D.3000, Wd
	addi %r8,%r8,1	 #, tmp999,
	lfd %f12,.LC0@l(%r9)	 #, tmp986
	lis %r10,X-8@ha	 # tmp604,
	lis %r9,W-8@ha	 # tmp603,
	mtctr %r8	 # tmp996,
	la %r10,X-8@l(%r10)	 # ivtmp.245,, tmp604
	fmul %f8,%f8,%f0	 # D.3010, tmp592, dasig
	lfd %f0,8(%r27)	 # dasig, dasig
	la %r9,W-8@l(%r9)	 # ivtmp.239,, tmp603
	lis %r0,0x4330	 # tmp987,
	fmul %f7,%f7,%f0	 # D.2998, tmp600, dasig
	fneg %f8,%f8	 # tmp927, D.3010
.L12:
	lfdu %f13,8(%r9)	 # MEM[(double[60] *)D.3329_476], D.3017
	stw %r0,64(%r1)	 #, tmp987
	fcmpu %cr7,%f13,%f12	 # tmp616, D.3017, tmp986
	lfdu %f0,8(%r10)	 # MEM[(double[10] *)D.3330_477], D.3009
	stw %r0,72(%r1)	 #, tmp987
	fmadd %f13,%f8,%f0,%f13	 # tmp610, tmp927, D.3009, D.3017
	mfcr %r7	 # tmp615, tmp616
	rlwinm %r7,%r7,30,1	 # tmp615,
	fneg %f9,%f0	 # tmp634, D.3009
	mfcr %r8	 # tmp621, tmp616
	rlwinm %r8,%r8,29,1	 # tmp621,
	subf %r8,%r8,%r7	 # tmp623, tmp621, tmp615
	xoris %r8,%r8,0x8000	 #, tmp631, tmp623,
	stw %r8,68(%r1)	 #, tmp631
	lfd %f0,64(%r1)	 #, tmp630
	fsub %f0,%f0,%f11	 # tmp624, tmp630, tmp989
	fmadd %f13,%f10,%f0,%f13	 # tmp632, tmp940, tmp624, tmp610
	stfd %f13,0(%r9)	 # MEM[(double[60] *)D.3329_476], tmp632
	lfdx %f0,%r9,%r11	 # MEM[base: D.3329_476, index: D.3339_486, offset: 0B], D.3013
	fcmpu %cr7,%f0,%f12	 # tmp641, D.3013, tmp986
	fmadd %f0,%f9,%f7,%f0	 # tmp635, tmp634, D.2998, D.3013
	mfcr %r7	 # tmp640, tmp641
	rlwinm %r7,%r7,30,1	 # tmp640,
	mfcr %r8	 # tmp646, tmp641
	rlwinm %r8,%r8,29,1	 # tmp646,
	subf %r8,%r8,%r7	 # tmp648, tmp646, tmp640
	xoris %r8,%r8,0x8000	 #, tmp656, tmp648,
	stw %r8,76(%r1)	 #, tmp656
	lfd %f13,72(%r1)	 #, tmp655
	fsub %f13,%f13,%f11	 # tmp649, tmp655, tmp989
	fmadd %f0,%f10,%f13,%f0	 # tmp657, tmp940, tmp649, tmp635
	stfdx %f0,%r9,%r11	 # MEM[base: D.3329_476, index: D.3339_486, offset: 0B], tmp657
	bdnz .L12	 #
	stw %r31,i@sdarel(%r13)	 # i, N.2
.L11:
	lfd %f13,Wd@l(%r24)	 # Wd, D.3019
	lis %r4,b@ha	 # tmp905,
	lis %r22,bd@ha	 # tmp928,
	fneg %f7,%f5	 # tmp699, D.3012
	lfd %f0,8(%r30)	 # Wd, D.3016
	lis %r20,Xout@ha	 # tmp914,
	la %r29,b@l(%r4)	 # tmp919,, tmp905
	fneg %f9,%f6	 # tmp706, D.3000
	la %r28,bd@l(%r22)	 # tmp939,, tmp928
	la %r25,Xout@l(%r20)	 # tmp929,, tmp914
	lfd %f31,b@l(%r4)	 # b, b
	fmul %f30,%f5,%f13	 # tmp663, D.3012, D.3019
	lfd %f2,8(%r29)	 # b, b
	fmul %f1,%f6,%f0	 # tmp676, D.3000, D.3016
	lfd %f3,bd@l(%r22)	 # bd, bd
	lfd %f4,8(%r28)	 # bd, bd
	fneg %f30,%f30	 # tmp664, tmp663
	lfd %f11,dasig@l(%r21)	 # dasig, dasig
	fneg %f1,%f1	 # tmp677, tmp676
	lfd %f12,8(%r27)	 # dasig, dasig
	lfd %f8,Xout@l(%r20)	 # Xout, Xout
	fsub %f5,%f3,%f5	 # tmp690, bd, D.3012
	lfd %f10,8(%r25)	 # Xout, Xout
	fmadd %f11,%f30,%f11,%f31	 # tmp669, tmp664, dasig, b
	fmadd %f12,%f1,%f12,%f2	 # tmp682, tmp677, dasig, b
	fsub %f6,%f4,%f6	 # tmp696, bd, D.3000
	stfd %f5,bd@l(%r22)	 # bd, tmp690
	fmadd %f13,%f7,%f8,%f13	 # tmp702, tmp699, Xout, D.3019
	stfd %f11,b@l(%r4)	 # b, tmp669
	fmadd %f0,%f9,%f10,%f0	 # tmp709, tmp706, Xout, D.3016
	stfd %f12,8(%r29)	 # b, tmp682
	stfd %f6,8(%r28)	 # bd, tmp696
	stfd %f13,Wd@l(%r24)	 # Wd, tmp702
	stfd %f0,8(%r30)	 # Wd, tmp709
	b .L7	 #
.L4:
	cmpwi %cr7,%r23,0	 #, tmp517, Y.1
	lfd %f4,0(%r9)	 # *Learning_rate.0_2, D.2606
	li %r0,0	 # tmp516,
	lwz %r9,lam@sdarel(%r13)	 # lam, lam
	lwz %r31,N@sdarel(%r13)	 # N, N.2
	lfd %f7,0(%r9)	 # *lam.3_10, D.2615
	stw %r0,i@sdarel(%r13)	 # i, tmp516
	ble- %cr7,.L39	 #
	lis %r19,X-8@ha	 # tmp975,
	cmpwi %cr1,%r31,0	 #, tmp926, N.2
	fneg %f7,%f7	 # tmp981, D.2615
	lfd %f13,dW@sdarel(%r13)	 # dW, dW_lsm.100
	fneg %f8,%f4	 # tmp982, D.2606
	lis %r24,Wd@ha	 # tmp913,
	lis %r21,dasig@ha	 # tmp922,
	lis %r4,b@ha	 # tmp905,
	lis %r20,Xout@ha	 # tmp914,
	lis %r22,bd@ha	 # tmp928,
	la %r19,X-8@l(%r19)	 # ivtmp.181,, tmp975
	slwi %r7,%r31,3	 # tmp979, N.2,
	lis %r16,W@ha	 # tmp977,
	slwi %r12,%r23,3	 # D.3307, Y.1,
	li %r6,-1	 # ivtmp.234,
	li %r10,0	 # ivtmp.196,
	la %r30,Wd@l(%r24)	 # tmp924,, tmp913
	la %r27,dasig@l(%r21)	 # tmp930,, tmp922
	la %r29,b@l(%r4)	 # tmp919,, tmp905
	la %r25,Xout@l(%r20)	 # tmp929,, tmp914
	la %r28,bd@l(%r22)	 # tmp939,, tmp928
	la %r16,W@l(%r16)	 # tmp978,, tmp977
	add %r7,%r19,%r7	 # D.3260, ivtmp.181, tmp979
	lis %r17,.LC0@ha	 # tmp983,
	lis %r18,.LC2@ha	 # tmp984,
	lis %r8,0x4330	 # tmp985,
.L10:
	lfdx %f10,%r26,%r10	 # MEM[symbol: loss, index: ivtmp.196_290, offset: 0B], D.2938
	lfdx %f5,%r30,%r10	 # MEM[symbol: Wd, index: ivtmp.196_290, offset: 0B], D.2940
	lfdx %f11,%r29,%r10	 # MEM[symbol: b, index: ivtmp.196_290, offset: 0B], MEM[symbol: b, index: ivtmp.196_290, offset: 0B]
	fmul %f6,%f4,%f10	 # D.2939, D.2606, D.2938
	lfdx %f0,%r27,%r10	 # MEM[symbol: dasig, index: ivtmp.196_290, offset: 0B], D.2942
	fmul %f12,%f6,%f5	 # tmp526, D.2939, D.2940
	fneg %f12,%f12	 # tmp527, tmp526
	fmadd %f12,%f12,%f0,%f11	 # tmp530, tmp527, D.2942, MEM[symbol: b, index: ivtmp.196_290, offset: 0B]
	stfdx %f12,%r29,%r10	 # MEM[symbol: b, index: ivtmp.196_290, offset: 0B], tmp530
	ble- %cr1,.L22	 #
	fmul %f10,%f10,%f5	 # pretmp.91, D.2938, D.2940
	lfs %f9,.LC2@l(%r18)	 #, tmp973
	slwi %r9,%r6,3	 # tmp534, ivtmp.234,
	mr %r11,%r19	 # ivtmp.181, ivtmp.181
	lfd %f11,.LC0@l(%r17)	 #, tmp970
	add %r9,%r16,%r9	 # ivtmp.187, tmp978, tmp534
	fmul %f10,%f10,%f0	 # pretmp.91, pretmp.91, D.2942
.L9:
	lfdu %f0,8(%r9)	 # MEM[(double[60] *)D.3254_464], D.2950
	lfdu %f13,8(%r11)	 # MEM[(double[10] *)D.3253_463], MEM[(double[10] *)D.3253_463]
	stw %r8,56(%r1)	 #, tmp985
	fcmpu %cr7,%f0,%f11	 # tmp550, D.2950, tmp970
	fmul %f13,%f10,%f13	 # dW_lsm.100, pretmp.91, MEM[(double[10] *)D.3253_463]
	cmpw %cr6,%r11,%r7	 # D.3260, tmp567, ivtmp.181
	fmadd %f0,%f8,%f13,%f0	 # tmp544, tmp982, dW_lsm.100, D.2950
	mfcr %r15	 # tmp549, tmp550
	rlwinm %r15,%r15,30,1	 # tmp549,
	mfcr %r0	 # tmp555, tmp550
	rlwinm %r0,%r0,29,1	 # tmp555,
	subf %r0,%r0,%r15	 # tmp557, tmp555, tmp549
	xoris %r0,%r0,0x8000	 #, tmp565, tmp557,
	stw %r0,60(%r1)	 #, tmp565
	lfd %f12,56(%r1)	 #, tmp564
	fsub %f12,%f12,%f9	 # tmp558, tmp564, tmp973
	fmadd %f0,%f7,%f12,%f0	 # tmp566, tmp981, tmp558, tmp544
	stfd %f0,0(%r9)	 # MEM[(double[60] *)D.3254_464], tmp566
	bne+ %cr6,.L9	 #
	mr %r0,%r31	 # k_lsm.99, N.2
.L8:
	lfdx %f11,%r28,%r10	 # MEM[symbol: bd, index: ivtmp.196_290, offset: 0B], MEM[symbol: bd, index: ivtmp.196_290, offset: 0B]
	fneg %f12,%f6	 # tmp570, D.2939
	add %r6,%r6,%r31	 # ivtmp.234, ivtmp.234, N.2
	lfdx %f0,%r25,%r10	 # MEM[symbol: Xout, index: ivtmp.196_290, offset: 0B], MEM[symbol: Xout, index: ivtmp.196_290, offset: 0B]
	fsub %f6,%f11,%f6	 # tmp580, MEM[symbol: bd, index: ivtmp.196_290, offset: 0B], D.2939
	fmadd %f5,%f12,%f0,%f5	 # tmp573, tmp570, MEM[symbol: Xout, index: ivtmp.196_290, offset: 0B], D.2940
	stfdx %f6,%r28,%r10	 # MEM[symbol: bd, index: ivtmp.196_290, offset: 0B], tmp580
	stfdx %f5,%r30,%r10	 # MEM[symbol: Wd, index: ivtmp.196_290, offset: 0B], tmp573
	addi %r10,%r10,8	 # ivtmp.196, ivtmp.196,
	cmpw %cr7,%r10,%r12	 # D.3307, tmp581, ivtmp.196
	bne+ %cr7,.L10	 #
	stw %r0,k@sdarel(%r13)	 # k, k_lsm.99
	stfd %f13,dW@sdarel(%r13)	 # dW, dW_lsm.100
	stw %r23,i@sdarel(%r13)	 # i, Y.1
.L7:
	lis %r9,da@ha	 # tmp712,
	lwz %r11,Li1@sdarel(%r13)	 # Li1, Li1
	lfd %f0,da@l(%r9)	 # da, D.2622
	la %r9,da@l(%r9)	 # tmp711,, tmp712
	stfd %f0,0(%r11)	 # *Li1.6_21, D.2622
	lwz %r11,Li2@sdarel(%r13)	 # Li2, Li2
	lfd %f0,8(%r9)	 # da, D.2624
	stfd %f0,0(%r11)	 # *Li2.7_23, D.2624
	lwz %r11,Li3@sdarel(%r13)	 # Li3, Li3
	lfd %f0,16(%r9)	 # da, D.2626
	stfd %f0,0(%r11)	 # *Li3.8_25, D.2626
	lwz %r11,Li4@sdarel(%r13)	 # Li4, Li4
	lfd %f0,24(%r9)	 # da, D.2628
	stfd %f0,0(%r11)	 # *Li4.9_27, D.2628
	lwz %r11,Li5@sdarel(%r13)	 # Li5, Li5
	lfd %f0,32(%r9)	 # da, D.2630
	stfd %f0,0(%r11)	 # *Li5.10_29, D.2630
	lwz %r11,Li6@sdarel(%r13)	 # Li6, Li6
	lfd %f0,40(%r9)	 # da, D.2632
	stfd %f0,0(%r11)	 # *Li6.11_31, D.2632
	lwz %r11,Li7@sdarel(%r13)	 # Li7, Li7
	lfd %f0,48(%r9)	 # da, D.2634
	stfd %f0,0(%r11)	 # *Li7.12_33, D.2634
	lwz %r11,Li8@sdarel(%r13)	 # Li8, Li8
	lfd %f0,56(%r9)	 # da, D.2636
	stfd %f0,0(%r11)	 # *Li8.13_35, D.2636
	lwz %r11,Li9@sdarel(%r13)	 # Li9, Li9
	lfd %f0,64(%r9)	 # da, D.2638
	stfd %f0,0(%r11)	 # *Li9.14_37, D.2638
	lfd %f0,72(%r9)	 # da, D.2640
	lwz %r9,Li10@sdarel(%r13)	 # Li10, Li10
	stfd %f0,0(%r9)	 # *Li10.15_39, D.2640
	b .L2	 #
.L22:
	li %r0,0	 # k_lsm.99,
	b .L8	 #
.L38:
	lis %r21,dasig@ha	 # tmp922,
	la %r30,Wd@l(%r24)	 # tmp924,, tmp913
	fmul %f5,%f5,%f0	 # D.3012, D.2618, D.2606
	la %r27,dasig@l(%r21)	 # tmp930,, tmp922
	fmul %f6,%f6,%f0	 # D.3000, D.2620, D.2606
	b .L11	 #
.L39:
	lis %r24,Wd@ha	 # tmp913,
	lis %r21,dasig@ha	 # tmp922,
	lis %r4,b@ha	 # tmp905,
	lis %r20,Xout@ha	 # tmp914,
	lis %r22,bd@ha	 # tmp928,
	la %r30,Wd@l(%r24)	 # tmp924,, tmp913
	la %r27,dasig@l(%r21)	 # tmp930,, tmp922
	la %r29,b@l(%r4)	 # tmp919,, tmp905
	la %r25,Xout@l(%r20)	 # tmp929,, tmp914
	la %r28,bd@l(%r22)	 # tmp939,, tmp928
	b .L7	 #
	.size	main, .-main
	.comm	dW,8,8
	.globl dasig
	.lcomm	dasig,80,8
	.type	dasig, @object
	.globl da
	.lcomm	da,80,8
	.type	da, @object
	.comm	lossy2,8,8
	.comm	lossy1,8,8
	.globl loss
	.lcomm	loss,48,8
	.type	loss, @object
	.comm	dLoss_da2,48,8
	.globl X1
	.lcomm	X1,80,8
	.type	X1, @object
	.globl X
	.lcomm	X,80,8
	.type	X, @object
	.globl Xout
	.lcomm	Xout,48,8
	.type	Xout, @object
	.globl out
	.lcomm	out,48,8
	.type	out, @object
	.globl preOutputa
	.lcomm	preOutputa,48,8
	.type	preOutputa, @object
	.comm	k,4,4
	.comm	i,4,4
	.comm	out2,8,8
	.comm	out1,8,8
	.globl preOutput2
	.section	".sbss","aw",@nobits
	.align 3
preOutput2:
	.zero	8
	.size	preOutput2, 8
	.type	preOutput2, @object
	.globl preOutput
	.align 3
preOutput:
	.zero	8
	.size	preOutput, 8
	.type	preOutput, @object
	.comm	foutput6,4,4
	.comm	foutput5,4,4
	.comm	foutput4,4,4
	.comm	foutput3,4,4
	.comm	foutput2,4,4
	.comm	Li10,4,4
	.comm	Li9,4,4
	.comm	Li8,4,4
	.comm	Li7,4,4
	.comm	Li6,4,4
	.comm	Li5,4,4
	.comm	Li4,4,4
	.comm	Li3,4,4
	.comm	Li2,4,4
	.comm	Li1,4,4
	.comm	foutput,4,4
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
	.comm	lam,4,4
	.comm	L1,4,4
	.comm	input1,4,4
	.comm	Learning_rate,4,4
	.comm	activation,4,4
	.comm	CrossCouple,4,4
	.comm	AddDense,4,4
	.comm	numOutputs,4,4
	.comm	numInputs,4,4
	.comm	Y,4,4
	.comm	n,4,4
	.comm	N,4,4
	.globl bd
	.lcomm	bd,48,8
	.type	bd, @object
	.globl Wd
	.section	".data"
	.align 3
	.type	Wd, @object
	.size	Wd, 48
Wd:
	.long	1073416176
	.long	242244402
	.long	1072502000
	.long	-306290954
	.long	1073359945
	.long	-1438447082
	.long	1071658416
	.long	811527542
	.long	-1074565155
	.long	-2004431688
	.long	1071752453
	.long	1839735841
	.globl b
	.lcomm	b,48,8
	.type	b, @object
	.globl W
	.align 3
	.type	W, @object
	.size	W, 480
W:
	.long	-1081575721
	.long	568678409
	.long	1067165160
	.long	-1302624411
	.long	-1077298827
	.long	-311623586
	.long	-1077309953
	.long	1193113053
	.long	1067978137
	.long	1169605494
	.long	-1076836604
	.long	-1588629375
	.long	1070939424
	.long	-942952167
	.long	1069738750
	.long	1353212941
	.long	1071068220
	.long	-29873731
	.long	1067232155
	.long	2042859619
	.long	1069947822
	.long	107158403
	.long	1069636844
	.long	-1793842226
	.long	-1077225229
	.long	189786702
	.long	1070939383
	.long	-1030110454
	.long	-1079184914
	.long	1868488070
	.long	1071215924
	.long	1602428246
	.long	1068568528
	.long	1469827144
	.long	1070821140
	.long	-704973870
	.long	1071122896
	.long	585995717
	.long	1068045788
	.long	1614654816
	.long	-1077463798
	.long	1306637628
	.long	-1076898430
	.long	1752863427
	.long	-1076471992
	.long	815485784
	.long	1071070921
	.long	147323563
	.long	1069355080
	.long	-847690480
	.long	1070659683
	.long	-191095121
	.long	-1077314494
	.long	1891489853
	.long	1070822191
	.long	-1208055416
	.long	1069756529
	.long	2003211230
	.long	-1076675286
	.long	-838212689
	.long	-1077055534
	.long	-516363646
	.long	-1077713318
	.long	2096702703
	.long	-1076639030
	.long	-1270628622
	.long	1068496097
	.long	-373328178
	.long	-1078293111
	.long	-1779735491
	.long	1070918501
	.long	1585352831
	.long	1069693478
	.long	739157687
	.long	-1081005132
	.long	-459035109
	.long	1069617491
	.long	2046466017
	.long	-1076860134
	.long	529590771
	.long	-1076234600
	.long	-837311090
	.long	1071155442
	.long	1467342248
	.long	1069495814
	.long	2000517426
	.long	-1077785041
	.long	578969838
	.long	1068426167
	.long	521179507
	.long	-1076162880
	.long	1467188316
	.long	1067672346
	.long	1452828694
	.long	-1077737484
	.long	356197787
	.long	1069782564
	.long	62936046
	.long	1070853219
	.long	-697750079
	.long	1070280034
	.long	1674402277
	.long	1070236919
	.long	-1953348377
	.long	1067537900
	.long	-963491044
	.long	-1076296831
	.long	-1078774838
	.long	-1078417664
	.long	1601592617
	.long	1071287295
	.long	838454582
	.long	1069251363
	.long	921093876
	.long	1071313892
	.long	-194976397
	.long	-1077469700
	.long	702324047
	.long	1064435405
	.long	-1511674557
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
