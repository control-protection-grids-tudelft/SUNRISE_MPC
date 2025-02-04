	.file	"OutputLv2SigDense_CS.c"

 # rs6000/powerpc options: -msdata=sysv -G 8
 # GNU C (GCC) version 4.6.0 (powerpc-750-linux-gnu)
 #	compiled by GNU C version 4.5.2, GMP version 5.0.1, MPFR version 2.4.1, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\BLTIN_GCC
 # -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\SHARED_CODE
 # -iprefix d:\rscad\rscad fx 2.3\bin\mingw-cross\bin\../lib/gcc/powerpc-750-linux-gnu/4.6.0/
 # -D__unix__ -D__gnu_linux__ -D__linux__ -Asystem=linux -Asystem=unix
 # -Asystem=posix
 # C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\OutputLv2SigDense_CS.c
 # -mregnames -msdata=sysv -mtoc
 # -auxbase-strip C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\OutputLv2SigDense_CS.s
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
	.section	".text"
	.align 2
	.globl sigmoid
	.type	sigmoid, @function
sigmoid:
	stwu %r1,-16(%r1)	 #,,
	mflr %r0	 #,
	fneg %f1,%f1	 #, x
	stw %r0,20(%r1)	 #,
	bl exp	 #
	lis %r9,.LC1@ha	 # tmp131,
	lfs %f0,.LC1@l(%r9)	 #, tmp129
	lwz %r0,20(%r1)	 #,
	addi %r1,%r1,16	 #,,
	mtlr %r0	 #,
	fadd %f1,%f1,%f0	 # tmp128,, tmp129
	fdiv %f1,%f0,%f1	 #, tmp129, tmp128
	blr	 #
	.size	sigmoid, .-sigmoid
	.section	.text.startup,"ax",@progbits
	.align 2
	.globl main
	.type	main, @function
main:
	stwu %r1,-176(%r1)	 #,,
	mflr %r0	 #,
	lis %r3,.LC2@ha	 # tmp949,
	lwz %r9,Learning_rate@sdarel(%r13)	 # Learning_rate, Learning_rate.0
	lfd %f0,.LC2@l(%r3)	 #, tmp475
	stw %r0,180(%r1)	 #,
	stfd %f30,160(%r1)	 #,
	stfd %f31,168(%r1)	 #,
	lfd %f13,0(%r9)	 # *Learning_rate.0_2, *Learning_rate.0_2
	stw %r15,92(%r1)	 #,
	stw %r16,96(%r1)	 #,
	fcmpu %cr7,%f13,%f0	 # tmp479, *Learning_rate.0_2, tmp475
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
	bgt- %cr7,.L24	 #
	lis %r22,Wd@ha	 # tmp936,
	lis %r20,dasig@ha	 # tmp921,
	lwz %r23,Y@sdarel(%r13)	 # Y, Y.1
	lis %r4,b@ha	 # tmp920,
	lis %r24,Xout@ha	 # tmp946,
	lwz %r30,N@sdarel(%r13)	 # N, N.2
	lis %r21,bd@ha	 # tmp940,
	la %r29,Wd@l(%r22)	 # tmp947,, tmp936
	la %r26,dasig@l(%r20)	 # tmp934,, tmp921
	la %r28,b@l(%r4)	 # tmp931,, tmp920
	la %r31,Xout@l(%r24)	 # tmp923,, tmp946
	la %r27,bd@l(%r21)	 # tmp951,, tmp940
.L3:
	lwz %r11,input1@sdarel(%r13)	 # input1, input1
	cmpwi %cr7,%r30,1	 #, tmp733, N.2
	lis %r9,X@ha	 # tmp917,
	la %r25,X@l(%r9)	 # tmp930,, tmp917
	lfd %f0,0(%r11)	 # *input1.40_259, D.3052
	stfd %f0,X@l(%r9)	 # X, D.3052
	ble- %cr7,.L14	 #
	lwz %r9,input2@sdarel(%r13)	 # input2, input2
	cmpwi %cr7,%r30,2	 #, tmp737, N.2
	lfd %f0,0(%r9)	 # *input2.41_261, D.3050
	stfd %f0,8(%r25)	 # X, D.3050
	beq- %cr7,.L14	 #
	lwz %r9,input3@sdarel(%r13)	 # input3, input3
	cmpwi %cr7,%r30,3	 #, tmp741, N.2
	lfd %f0,0(%r9)	 # *input3.42_263, D.3048
	stfd %f0,16(%r25)	 # X, D.3048
	beq- %cr7,.L14	 #
	lwz %r9,input4@sdarel(%r13)	 # input4, input4
	cmpwi %cr7,%r30,4	 #, tmp745, N.2
	lfd %f0,0(%r9)	 # *input4.43_265, D.3046
	stfd %f0,24(%r25)	 # X, D.3046
	beq- %cr7,.L14	 #
	lwz %r9,input5@sdarel(%r13)	 # input5, input5
	cmpwi %cr7,%r30,5	 #, tmp749, N.2
	lfd %f0,0(%r9)	 # *input5.44_267, D.3044
	stfd %f0,32(%r25)	 # X, D.3044
	beq- %cr7,.L14	 #
	lwz %r9,input6@sdarel(%r13)	 # input6, input6
	cmpwi %cr7,%r30,6	 #, tmp753, N.2
	lfd %f0,0(%r9)	 # *input6.45_269, D.3042
	stfd %f0,40(%r25)	 # X, D.3042
	beq- %cr7,.L14	 #
	lwz %r9,input7@sdarel(%r13)	 # input7, input7
	cmpwi %cr7,%r30,7	 #, tmp757, N.2
	lfd %f0,0(%r9)	 # *input7.46_271, D.3040
	stfd %f0,48(%r25)	 # X, D.3040
	beq- %cr7,.L14	 #
	lwz %r9,input8@sdarel(%r13)	 # input8, input8
	cmpwi %cr7,%r30,8	 #, tmp761, N.2
	lfd %f0,0(%r9)	 # *input8.47_273, D.3038
	stfd %f0,56(%r25)	 # X, D.3038
	beq- %cr7,.L14	 #
	lwz %r9,input9@sdarel(%r13)	 # input9, input9
	cmpwi %cr7,%r30,9	 #, tmp765, N.2
	lfd %f0,0(%r9)	 # *input9.48_275, D.3036
	stfd %f0,64(%r25)	 # X, D.3036
	beq- %cr7,.L14	 #
	lwz %r9,input10@sdarel(%r13)	 # input10, input10
	lfd %f0,0(%r9)	 # *input10.49_277, D.3034
	stfd %f0,72(%r25)	 # X, D.3034
.L14:
	cmpwi %cr7,%r23,2	 #, tmp769, Y.1
	ble- %cr7,.L37	 #
	addi %r24,%r1,8	 # tmp952,,
	li %r4,0	 #,
	mr %r3,%r24	 #, tmp952
	li %r5,48	 #,
	bl memset	 #
	cmpwi %cr7,%r30,0	 #, tmp837, N.2
	li %r0,0	 # tmp836,
	stw %r0,i@sdarel(%r13)	 # i, tmp836
	ble- %cr7,.L19	 #
	slwi %r0,%r23,3	 # tmp933, Y.1,
	lis %r7,W@ha	 # tmp915,
	li %r8,0	 # ivtmp.136,
	la %r7,W@l(%r7)	 # tmp929,, tmp915
	slwi %r10,%r30,3	 # D.3191, N.2,
	add %r0,%r1,%r0	 # D.3200,, tmp933
.L21:
	slwi %r11,%r8,3	 # tmp838, ivtmp.136,
	mr %r9,%r1	 # ivtmp.125,
	lfdx %f12,%r25,%r11	 # MEM[symbol: X, index: D.3207_326, offset: 0B], pretmp.90
	add %r11,%r7,%r11	 # ivtmp.130, tmp929, tmp838
.L20:
	lfdu %f0,8(%r9)	 # MEM[(double[6] *)D.3193_105], MEM[(double[6] *)D.3193_105]
	lfd %f13,0(%r11)	 # MEM[(double[60] *)D.3194_145], MEM[(double[60] *)D.3194_145]
	add %r11,%r11,%r10	 # ivtmp.130, ivtmp.130, D.3191
	cmpw %cr7,%r9,%r0	 # D.3200, tmp849, ivtmp.125
	fmadd %f0,%f12,%f13,%f0	 # tmp846, pretmp.90, MEM[(double[60] *)D.3194_145], MEM[(double[6] *)D.3193_105]
	stfd %f0,0(%r9)	 # MEM[(double[6] *)D.3193_105], tmp846
	bne+ %cr7,.L20	 #
	addi %r8,%r8,1	 # ivtmp.136, ivtmp.136,
	cmpw %cr7,%r8,%r30	 # N.2, tmp850, ivtmp.136
	bne+ %cr7,.L21	 #
	stw %r8,i@sdarel(%r13)	 # i, ivtmp.136
.L19:
	li %r0,0	 # tmp851,
	lis %r25,out@ha	 # tmp925,
	stw %r0,k@sdarel(%r13)	 # k, tmp851
	lis %r23,.LC1@ha	 # tmp948,
	li %r9,0	 # k.58,
	la %r25,out@l(%r25)	 # tmp937,, tmp925
	la %r23,.LC1@l(%r23)	 # tmp926,, tmp948
.L22:
	slwi %r30,%r9,3	 # tmp852, k.58,
	lfdx %f0,%r28,%r30	 # b, tmp860
	lfdx %f1,%r24,%r30	 # preOutputa, tmp859
	fadd %f1,%f1,%f0	 #, tmp859, tmp860
	bl sigmoid	 #
	lwz %r9,k@sdarel(%r13)	 # k, k.58
	stfdx %f1,%r31,%r30	 # Xout,
	slwi %r0,%r9,3	 # tmp867, k.58,
	lfs %f12,0(%r23)	 #, tmp889
	addi %r9,%r9,1	 # k.58, k.58,
	lwz %r11,Y@sdarel(%r13)	 # Y, Y
	lfdx %f0,%r31,%r0	 # Xout, D.3095
	lfdx %f11,%r29,%r0	 # Wd, tmp882
	cmpw %cr7,%r9,%r11	 # Y, tmp895, k.58
	lfdx %f13,%r27,%r0	 # bd, tmp883
	fsub %f12,%f12,%f0	 # tmp888, tmp889, D.3095
	stw %r9,k@sdarel(%r13)	 # k, k.58
	fmadd %f13,%f0,%f11,%f13	 # tmp881, D.3095, tmp882, tmp883
	fmul %f0,%f0,%f12	 # tmp893, D.3095, tmp888
	stfdx %f13,%r25,%r0	 # out, tmp881
	stfdx %f0,%r26,%r0	 # dasig, tmp893
	blt+ %cr7,.L22	 #
	lfd %f0,0(%r25)	 # out, D.2652
	lwz %r9,foutput@sdarel(%r13)	 # foutput, foutput
	stfd %f0,0(%r9)	 # *foutput.16_49, D.2652
	lwz %r9,foutput2@sdarel(%r13)	 # foutput2, foutput2
	lfd %f0,8(%r25)	 # out, D.2653
	stfd %f0,0(%r9)	 # *foutput2.18_51, D.2653
	lwz %r9,foutput3@sdarel(%r13)	 # foutput3, foutput3
	lfd %f0,16(%r25)	 # out, D.2655
	stfd %f0,0(%r9)	 # *foutput3.20_53, D.2655
	lwz %r9,foutput4@sdarel(%r13)	 # foutput4, foutput4
	lfd %f0,24(%r25)	 # out, D.2657
	stfd %f0,0(%r9)	 # *foutput4.21_55, D.2657
	lwz %r9,foutput5@sdarel(%r13)	 # foutput5, foutput5
	lfd %f0,32(%r25)	 # out, D.2659
	stfd %f0,0(%r9)	 # *foutput5.22_57, D.2659
	lwz %r9,foutput6@sdarel(%r13)	 # foutput6, foutput6
	lfd %f0,40(%r25)	 # out, D.2661
	stfd %f0,0(%r9)	 #* foutput6, D.2661
.L2:
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
	cmpwi %cr7,%r30,0	 #, tmp777, N.2
	lfd %f13,.LC2@l(%r3)	 #, tmp772
	li %r0,0	 # tmp776,
	stw %r0,i@sdarel(%r13)	 # i, tmp776
	stfd %f13,preOutput@sdarel(%r13)	 # preOutput, tmp772
	stfd %f13,preOutput2@sdarel(%r13)	 # preOutput2, tmp772
	ble- %cr7,.L16	 #
	slwi %r10,%r30,3	 # D.3173, N.2,
	fmr %f12,%f13	 # prephitmp.91, prephitmp.91
	lis %r9,W-8@ha	 # tmp778,
	addi %r8,%r10,-8	 # tmp1000, D.3173,
	lis %r11,X-8@ha	 # tmp779,
	srwi %r8,%r8,3	 # tmp1001, tmp1000,
	la %r9,W-8@l(%r9)	 # ivtmp.107,, tmp778
	addi %r8,%r8,1	 #, tmp1001,
	la %r11,X-8@l(%r11)	 # ivtmp.113,, tmp779
	mtctr %r8	 # tmp998,
.L17:
	lfdu %f10,8(%r9)	 # MEM[(double[60] *)D.3167_104], MEM[(double[60] *)D.3167_104]
	lfdu %f0,8(%r11)	 # MEM[(double[10] *)D.3168_431], D.3084
	lfdx %f11,%r9,%r10	 # MEM[base: D.3167_104, index: D.3173_186, offset: 0B], MEM[base: D.3167_104, index: D.3173_186, offset: 0B]
	fmadd %f12,%f10,%f0,%f12	 # prephitmp.91, MEM[(double[60] *)D.3167_104], D.3084, prephitmp.91
	fmadd %f13,%f0,%f11,%f13	 # prephitmp.91, D.3084, MEM[base: D.3167_104, index: D.3173_186, offset: 0B], prephitmp.91
	bdnz .L17	 #
	stw %r30,i@sdarel(%r13)	 # i, N.2
	stfd %f12,preOutput@sdarel(%r13)	 # preOutput, prephitmp.91
	stfd %f13,preOutput2@sdarel(%r13)	 # preOutput2, prephitmp.91
.L16:
	lfd %f1,b@l(%r4)	 # b, b
	lfd %f0,preOutput@sdarel(%r13)	 # preOutput, preOutput
	fadd %f1,%f1,%f0	 #, b, preOutput
	bl sigmoid	 #
	lfd %f0,8(%r28)	 # b, b
	stfd %f1,Xout@l(%r24)	 # Xout,
	lfd %f1,preOutput2@sdarel(%r13)	 # preOutput2, preOutput2
	fadd %f1,%f0,%f1	 #, b, preOutput2
	bl sigmoid	 #
	lis %r9,.LC1@ha	 # tmp807,
	lfd %f0,Xout@l(%r24)	 # Xout, D.3068
	lfs %f12,.LC1@l(%r9)	 #, tmp805
	lfd %f8,Wd@l(%r22)	 # Wd, Wd
	lfd %f13,bd@l(%r21)	 # bd, bd
	lfd %f10,8(%r29)	 # Wd, Wd
	fsub %f9,%f12,%f0	 # tmp804, tmp805, D.3068
	lfd %f11,8(%r27)	 # bd, bd
	fsub %f12,%f12,%f1	 # tmp812, tmp805, D.3069
	fmadd %f13,%f0,%f8,%f13	 # out1.56, D.3068, Wd, bd
	lwz %r9,foutput@sdarel(%r13)	 # foutput, foutput
	fmul %f0,%f0,%f9	 # tmp809, D.3068, tmp804
	stfd %f1,8(%r31)	 # Xout, D.3069
	fmul %f12,%f1,%f12	 # tmp817, D.3069, tmp812
	fmadd %f11,%f1,%f10,%f11	 # tmp828, D.3069, Wd, bd
	stfd %f13,out1@sdarel(%r13)	 # out1, out1.56
	stfd %f0,dasig@l(%r20)	 # dasig, tmp809
	stfd %f12,8(%r26)	 # dasig, tmp817
	stfd %f11,out2@sdarel(%r13)	 # out2, tmp828
	stfd %f13,0(%r9)	 # *foutput.16_44, out1.56
	lwz %r9,foutput2@sdarel(%r13)	 # foutput2, foutput2
	lfd %f0,out2@sdarel(%r13)	 # out2, out2.19
	stfd %f0,0(%r9)	 #* foutput2, out2.19
	b .L2	 #
.L24:
	lwz %r23,Y@sdarel(%r13)	 # Y, Y.1
	lis %r11,loss@ha	 # tmp922,
	lwz %r10,L1@sdarel(%r13)	 # L1, L1
	la %r25,loss@l(%r11)	 # tmp935,, tmp922
	cmpwi %cr7,%r23,1	 #, tmp483, Y.1
	lfd %f0,0(%r10)	 # *L1.24_88, D.2939
	stfd %f0,loss@l(%r11)	 # loss, D.2939
	ble- %cr7,.L5	 #
	lwz %r11,L2@sdarel(%r13)	 # L2, L2
	cmpwi %cr7,%r23,2	 #, tmp487, Y.1
	lfd %f0,0(%r11)	 # *L2.25_90, D.2937
	stfd %f0,8(%r25)	 # loss, D.2937
	beq- %cr7,.L5	 #
	lwz %r8,L3@sdarel(%r13)	 # L3, L3
	cmpwi %cr6,%r23,3	 #, tmp491, Y.1
	lfd %f0,0(%r8)	 # *L3.26_92, D.2935
	stfd %f0,16(%r25)	 # loss, D.2935
	beq- %cr6,.L7	 #
	lwz %r8,L4@sdarel(%r13)	 # L4, L4
	cmpwi %cr6,%r23,4	 #, tmp495, Y.1
	lfd %f0,0(%r8)	 # *L4.27_94, D.2933
	stfd %f0,24(%r25)	 # loss, D.2933
	beq- %cr6,.L7	 #
	lwz %r8,L5@sdarel(%r13)	 # L5, L5
	cmpwi %cr6,%r23,5	 #, tmp499, Y.1
	lfd %f0,0(%r8)	 # *L5.28_96, D.2931
	stfd %f0,32(%r25)	 # loss, D.2931
	beq- %cr6,.L7	 #
	lwz %r8,L6@sdarel(%r13)	 # L6, L6
	lfd %f0,0(%r8)	 # *L6.29_98, D.2929
	stfd %f0,40(%r25)	 # loss, D.2929
	ble- %cr7,.L5	 #
.L7:
	lwz %r30,N@sdarel(%r13)	 # N, N.2
	li %r0,0	 # tmp574,
	lis %r22,Wd@ha	 # tmp936,
	lfd %f0,0(%r9)	 # *Learning_rate.0_2, D.2610
	cmpwi %cr7,%r30,0	 #, tmp575, N.2
	lwz %r9,lam@sdarel(%r13)	 # lam, lam
	lfd %f5,0(%r10)	 # *L1.4_12, D.2622
	lfd %f6,0(%r11)	 # *L2.5_14, D.2624
	lfd %f10,0(%r9)	 # *lam.3_19, D.2619
	stw %r0,i@sdarel(%r13)	 # i, tmp574
	ble- %cr7,.L38	 #
	fmul %f5,%f5,%f0	 # D.3024, D.2622, D.2610
	lfd %f8,Wd@l(%r22)	 # Wd, Wd
	lis %r20,dasig@ha	 # tmp921,
	la %r29,Wd@l(%r22)	 # tmp947,, tmp936
	fmul %f6,%f6,%f0	 # D.3012, D.2624, D.2610
	lfd %f7,8(%r29)	 # Wd, Wd
	la %r26,dasig@l(%r20)	 # tmp934,, tmp921
	slwi %r11,%r30,3	 # D.3310, N.2,
	lfd %f0,dasig@l(%r20)	 # dasig, dasig
	addi %r8,%r11,-8	 # tmp1006, D.3310,
	lis %r9,.LC4@ha	 # tmp950,
	fneg %f10,%f10	 # tmp919, D.2619
	fmul %f8,%f5,%f8	 # tmp581, D.3024, Wd
	srwi %r8,%r8,3	 # tmp1007, tmp1006,
	lfs %f11,.LC4@l(%r9)	 #, tmp997
	lis %r9,.LC2@ha	 # tmp972,
	fmul %f7,%f6,%f7	 # tmp589, D.3012, Wd
	addi %r8,%r8,1	 #, tmp1007,
	lfd %f12,.LC2@l(%r9)	 #, tmp994
	lis %r10,X-8@ha	 # tmp593,
	lis %r9,W-8@ha	 # tmp592,
	mtctr %r8	 # tmp1004,
	la %r10,X-8@l(%r10)	 # ivtmp.208,, tmp593
	fmul %f8,%f8,%f0	 # D.3022, tmp581, dasig
	lfd %f0,8(%r26)	 # dasig, dasig
	la %r9,W-8@l(%r9)	 # ivtmp.202,, tmp592
	lis %r0,0x4330	 # tmp995,
	fmul %f7,%f7,%f0	 # D.3010, tmp589, dasig
	fneg %f8,%f8	 # tmp943, D.3022
.L13:
	lfdu %f13,8(%r9)	 # MEM[(double[60] *)D.3300_467], D.3029
	stw %r0,64(%r1)	 #, tmp995
	fcmpu %cr7,%f13,%f12	 # tmp605, D.3029, tmp994
	lfdu %f0,8(%r10)	 # MEM[(double[10] *)D.3301_468], D.3021
	stw %r0,72(%r1)	 #, tmp995
	fmadd %f13,%f8,%f0,%f13	 # tmp599, tmp943, D.3021, D.3029
	mfcr %r7	 # tmp604, tmp605
	rlwinm %r7,%r7,30,1	 # tmp604,
	fneg %f9,%f0	 # tmp623, D.3021
	mfcr %r8	 # tmp610, tmp605
	rlwinm %r8,%r8,29,1	 # tmp610,
	subf %r8,%r8,%r7	 # tmp612, tmp610, tmp604
	xoris %r8,%r8,0x8000	 #, tmp620, tmp612,
	stw %r8,68(%r1)	 #, tmp620
	lfd %f0,64(%r1)	 #, tmp619
	fsub %f0,%f0,%f11	 # tmp613, tmp619, tmp997
	fmadd %f13,%f10,%f0,%f13	 # tmp621, tmp919, tmp613, tmp599
	stfd %f13,0(%r9)	 # MEM[(double[60] *)D.3300_467], tmp621
	lfdx %f0,%r9,%r11	 # MEM[base: D.3300_467, index: D.3310_477, offset: 0B], D.3025
	fcmpu %cr7,%f0,%f12	 # tmp630, D.3025, tmp994
	fmadd %f0,%f9,%f7,%f0	 # tmp624, tmp623, D.3010, D.3025
	mfcr %r7	 # tmp629, tmp630
	rlwinm %r7,%r7,30,1	 # tmp629,
	mfcr %r8	 # tmp635, tmp630
	rlwinm %r8,%r8,29,1	 # tmp635,
	subf %r8,%r8,%r7	 # tmp637, tmp635, tmp629
	xoris %r8,%r8,0x8000	 #, tmp645, tmp637,
	stw %r8,76(%r1)	 #, tmp645
	lfd %f13,72(%r1)	 #, tmp644
	fsub %f13,%f13,%f11	 # tmp638, tmp644, tmp997
	fmadd %f0,%f10,%f13,%f0	 # tmp646, tmp919, tmp638, tmp624
	stfdx %f0,%r9,%r11	 # MEM[base: D.3300_467, index: D.3310_477, offset: 0B], tmp646
	bdnz .L13	 #
	stw %r30,i@sdarel(%r13)	 # i, N.2
.L12:
	lfd %f13,Wd@l(%r22)	 # Wd, D.3031
	lis %r4,b@ha	 # tmp920,
	lis %r21,bd@ha	 # tmp940,
	fneg %f7,%f5	 # tmp688, D.3024
	lfd %f0,8(%r29)	 # Wd, D.3028
	lis %r24,Xout@ha	 # tmp946,
	la %r28,b@l(%r4)	 # tmp931,, tmp920
	fneg %f9,%f6	 # tmp695, D.3012
	la %r27,bd@l(%r21)	 # tmp951,, tmp940
	la %r31,Xout@l(%r24)	 # tmp923,, tmp946
	lfd %f11,b@l(%r4)	 # b, b
	fmul %f30,%f5,%f13	 # tmp652, D.3024, D.3031
	lfd %f2,8(%r28)	 # b, b
	fmul %f1,%f6,%f0	 # tmp665, D.3012, D.3028
	lfd %f3,bd@l(%r21)	 # bd, bd
	lfd %f4,8(%r27)	 # bd, bd
	fneg %f30,%f30	 # tmp653, tmp652
	lfd %f31,dasig@l(%r20)	 # dasig, dasig
	fneg %f1,%f1	 # tmp666, tmp665
	lfd %f12,8(%r26)	 # dasig, dasig
	lfd %f8,Xout@l(%r24)	 # Xout, Xout
	fsub %f5,%f3,%f5	 # tmp679, bd, D.3024
	lfd %f10,8(%r31)	 # Xout, Xout
	fmadd %f11,%f30,%f31,%f11	 # tmp658, tmp653, dasig, b
	fmadd %f12,%f1,%f12,%f2	 # tmp671, tmp666, dasig, b
	fsub %f6,%f4,%f6	 # tmp685, bd, D.3012
	stfd %f5,bd@l(%r21)	 # bd, tmp679
	fmadd %f13,%f7,%f8,%f13	 # tmp691, tmp688, Xout, D.3031
	stfd %f11,b@l(%r4)	 # b, tmp658
	fmadd %f0,%f9,%f10,%f0	 # tmp698, tmp695, Xout, D.3028
	stfd %f12,8(%r28)	 # b, tmp671
	stfd %f6,8(%r27)	 # bd, tmp685
	stfd %f13,Wd@l(%r22)	 # Wd, tmp691
	stfd %f0,8(%r29)	 # Wd, tmp698
	b .L8	 #
.L5:
	cmpwi %cr7,%r23,0	 #, tmp506, Y.1
	lfd %f4,0(%r9)	 # *Learning_rate.0_2, D.2610
	li %r0,0	 # tmp505,
	lwz %r9,lam@sdarel(%r13)	 # lam, lam
	lwz %r30,N@sdarel(%r13)	 # N, N.2
	lfd %f7,0(%r9)	 # *lam.3_10, D.2619
	stw %r0,i@sdarel(%r13)	 # i, tmp505
	ble- %cr7,.L39	 #
	lis %r19,X-8@ha	 # tmp983,
	cmpwi %cr1,%r30,0	 #, tmp924, N.2
	fneg %f7,%f7	 # tmp989, D.2619
	lfd %f13,dW@sdarel(%r13)	 # dW, dW_lsm.101
	fneg %f8,%f4	 # tmp990, D.2610
	lis %r22,Wd@ha	 # tmp936,
	lis %r20,dasig@ha	 # tmp921,
	lis %r4,b@ha	 # tmp920,
	lis %r24,Xout@ha	 # tmp946,
	lis %r21,bd@ha	 # tmp940,
	la %r19,X-8@l(%r19)	 # ivtmp.144,, tmp983
	slwi %r7,%r30,3	 # tmp987, N.2,
	lis %r16,W@ha	 # tmp985,
	slwi %r12,%r23,3	 # D.3278, Y.1,
	li %r6,-1	 # ivtmp.197,
	li %r10,0	 # ivtmp.159,
	la %r29,Wd@l(%r22)	 # tmp947,, tmp936
	la %r26,dasig@l(%r20)	 # tmp934,, tmp921
	la %r28,b@l(%r4)	 # tmp931,, tmp920
	la %r31,Xout@l(%r24)	 # tmp923,, tmp946
	la %r27,bd@l(%r21)	 # tmp951,, tmp940
	la %r16,W@l(%r16)	 # tmp986,, tmp985
	add %r7,%r19,%r7	 # D.3231, ivtmp.144, tmp987
	lis %r17,.LC2@ha	 # tmp991,
	lis %r18,.LC4@ha	 # tmp992,
	lis %r8,0x4330	 # tmp993,
.L11:
	lfdx %f10,%r25,%r10	 # MEM[symbol: loss, index: ivtmp.159_250, offset: 0B], D.2950
	lfdx %f5,%r29,%r10	 # MEM[symbol: Wd, index: ivtmp.159_250, offset: 0B], D.2952
	lfdx %f11,%r28,%r10	 # MEM[symbol: b, index: ivtmp.159_250, offset: 0B], MEM[symbol: b, index: ivtmp.159_250, offset: 0B]
	fmul %f6,%f4,%f10	 # D.2951, D.2610, D.2950
	lfdx %f0,%r26,%r10	 # MEM[symbol: dasig, index: ivtmp.159_250, offset: 0B], D.2954
	fmul %f12,%f6,%f5	 # tmp515, D.2951, D.2952
	fneg %f12,%f12	 # tmp516, tmp515
	fmadd %f12,%f12,%f0,%f11	 # tmp519, tmp516, D.2954, MEM[symbol: b, index: ivtmp.159_250, offset: 0B]
	stfdx %f12,%r28,%r10	 # MEM[symbol: b, index: ivtmp.159_250, offset: 0B], tmp519
	ble- %cr1,.L23	 #
	fmul %f10,%f10,%f5	 # pretmp.93, D.2950, D.2952
	lfs %f9,.LC4@l(%r18)	 #, tmp981
	slwi %r9,%r6,3	 # tmp523, ivtmp.197,
	mr %r11,%r19	 # ivtmp.144, ivtmp.144
	lfd %f11,.LC2@l(%r17)	 #, tmp978
	add %r9,%r16,%r9	 # ivtmp.150, tmp986, tmp523
	fmul %f10,%f0,%f10	 # pretmp.93, D.2954, pretmp.93
.L10:
	lfdu %f0,8(%r9)	 # MEM[(double[60] *)D.3225_455], D.2962
	lfdu %f13,8(%r11)	 # MEM[(double[10] *)D.3224_454], MEM[(double[10] *)D.3224_454]
	stw %r8,56(%r1)	 #, tmp993
	fcmpu %cr7,%f0,%f11	 # tmp539, D.2962, tmp978
	fmul %f13,%f10,%f13	 # dW_lsm.101, pretmp.93, MEM[(double[10] *)D.3224_454]
	cmpw %cr6,%r11,%r7	 # D.3231, tmp556, ivtmp.144
	fmadd %f0,%f8,%f13,%f0	 # tmp533, tmp990, dW_lsm.101, D.2962
	mfcr %r15	 # tmp538, tmp539
	rlwinm %r15,%r15,30,1	 # tmp538,
	mfcr %r0	 # tmp544, tmp539
	rlwinm %r0,%r0,29,1	 # tmp544,
	subf %r0,%r0,%r15	 # tmp546, tmp544, tmp538
	xoris %r0,%r0,0x8000	 #, tmp554, tmp546,
	stw %r0,60(%r1)	 #, tmp554
	lfd %f12,56(%r1)	 #, tmp553
	fsub %f12,%f12,%f9	 # tmp547, tmp553, tmp981
	fmadd %f0,%f7,%f12,%f0	 # tmp555, tmp989, tmp547, tmp533
	stfd %f0,0(%r9)	 # MEM[(double[60] *)D.3225_455], tmp555
	bne+ %cr6,.L10	 #
	mr %r0,%r30	 # k_lsm.100, N.2
.L9:
	lfdx %f11,%r27,%r10	 # MEM[symbol: bd, index: ivtmp.159_250, offset: 0B], MEM[symbol: bd, index: ivtmp.159_250, offset: 0B]
	fneg %f12,%f6	 # tmp559, D.2951
	add %r6,%r6,%r30	 # ivtmp.197, ivtmp.197, N.2
	lfdx %f0,%r31,%r10	 # MEM[symbol: Xout, index: ivtmp.159_250, offset: 0B], MEM[symbol: Xout, index: ivtmp.159_250, offset: 0B]
	fsub %f6,%f11,%f6	 # tmp569, MEM[symbol: bd, index: ivtmp.159_250, offset: 0B], D.2951
	fmadd %f5,%f12,%f0,%f5	 # tmp562, tmp559, MEM[symbol: Xout, index: ivtmp.159_250, offset: 0B], D.2952
	stfdx %f6,%r27,%r10	 # MEM[symbol: bd, index: ivtmp.159_250, offset: 0B], tmp569
	stfdx %f5,%r29,%r10	 # MEM[symbol: Wd, index: ivtmp.159_250, offset: 0B], tmp562
	addi %r10,%r10,8	 # ivtmp.159, ivtmp.159,
	cmpw %cr7,%r10,%r12	 # D.3278, tmp570, ivtmp.159
	bne+ %cr7,.L11	 #
	stw %r0,k@sdarel(%r13)	 # k, k_lsm.100
	stfd %f13,dW@sdarel(%r13)	 # dW, dW_lsm.101
	stw %r23,i@sdarel(%r13)	 # i, Y.1
.L8:
	lis %r9,da@ha	 # tmp701,
	lwz %r11,Li1@sdarel(%r13)	 # Li1, Li1
	lfd %f0,da@l(%r9)	 # da, D.2626
	la %r9,da@l(%r9)	 # tmp700,, tmp701
	stfd %f0,0(%r11)	 # *Li1.6_21, D.2626
	lwz %r11,Li2@sdarel(%r13)	 # Li2, Li2
	lfd %f0,8(%r9)	 # da, D.2628
	stfd %f0,0(%r11)	 # *Li2.7_23, D.2628
	lwz %r11,Li3@sdarel(%r13)	 # Li3, Li3
	lfd %f0,16(%r9)	 # da, D.2630
	stfd %f0,0(%r11)	 # *Li3.8_25, D.2630
	lwz %r11,Li4@sdarel(%r13)	 # Li4, Li4
	lfd %f0,24(%r9)	 # da, D.2632
	stfd %f0,0(%r11)	 # *Li4.9_27, D.2632
	lwz %r11,Li5@sdarel(%r13)	 # Li5, Li5
	lfd %f0,32(%r9)	 # da, D.2634
	stfd %f0,0(%r11)	 # *Li5.10_29, D.2634
	lwz %r11,Li6@sdarel(%r13)	 # Li6, Li6
	lfd %f0,40(%r9)	 # da, D.2636
	stfd %f0,0(%r11)	 # *Li6.11_31, D.2636
	lwz %r11,Li7@sdarel(%r13)	 # Li7, Li7
	lfd %f0,48(%r9)	 # da, D.2638
	stfd %f0,0(%r11)	 # *Li7.12_33, D.2638
	lwz %r11,Li8@sdarel(%r13)	 # Li8, Li8
	lfd %f0,56(%r9)	 # da, D.2640
	stfd %f0,0(%r11)	 # *Li8.13_35, D.2640
	lwz %r11,Li9@sdarel(%r13)	 # Li9, Li9
	lfd %f0,64(%r9)	 # da, D.2642
	stfd %f0,0(%r11)	 # *Li9.14_37, D.2642
	lfd %f0,72(%r9)	 # da, D.2644
	lwz %r9,Li10@sdarel(%r13)	 # Li10, Li10
	stfd %f0,0(%r9)	 # *Li10.15_39, D.2644
	b .L3	 #
.L23:
	li %r0,0	 # k_lsm.100,
	b .L9	 #
.L38:
	lis %r20,dasig@ha	 # tmp921,
	la %r29,Wd@l(%r22)	 # tmp947,, tmp936
	fmul %f5,%f5,%f0	 # D.3024, D.2622, D.2610
	la %r26,dasig@l(%r20)	 # tmp934,, tmp921
	fmul %f6,%f6,%f0	 # D.3012, D.2624, D.2610
	b .L12	 #
.L39:
	lis %r22,Wd@ha	 # tmp936,
	lis %r20,dasig@ha	 # tmp921,
	lis %r4,b@ha	 # tmp920,
	lis %r24,Xout@ha	 # tmp946,
	lis %r21,bd@ha	 # tmp940,
	la %r29,Wd@l(%r22)	 # tmp947,, tmp936
	la %r26,dasig@l(%r20)	 # tmp934,, tmp921
	la %r28,b@l(%r4)	 # tmp931,, tmp920
	la %r31,Xout@l(%r24)	 # tmp923,, tmp946
	la %r27,bd@l(%r21)	 # tmp951,, tmp940
	b .L8	 #
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.long	1065353216
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC2:
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 2
.LC4:
	.long	1501560836
	.ident	"GCC: (GNU) 4.6.0"
	.gnu_attribute 4, 1
	.section	.note.GNU-stack,"",@progbits
