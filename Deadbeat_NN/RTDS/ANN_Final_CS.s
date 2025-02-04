	.file	"ANN_Final_CS.c"

 # rs6000/powerpc options: -msdata=sysv -G 8
 # GNU C (GCC) version 4.6.0 (powerpc-750-linux-gnu)
 #	compiled by GNU C version 4.5.2, GMP version 5.0.1, MPFR version 2.4.1, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\BLTIN_GCC
 # -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\SHARED_CODE
 # -iprefix d:\rscad\rscad fx 2.3\bin\mingw-cross\bin\../lib/gcc/powerpc-750-linux-gnu/4.6.0/
 # -D__unix__ -D__gnu_linux__ -D__linux__ -Asystem=linux -Asystem=unix
 # -Asystem=posix
 # C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\ANN_Final_CS.c
 # -mregnames -msdata=sysv -mtoc
 # -auxbase-strip C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\ANN_Final_CS.s
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
	.type	ANNLayer, @function
ANNLayer:
	cmpwi %cr0,%r4,0	 # tmp210, Y
	stwu %r1,-16(%r1)	 #,,
	li %r0,0	 # tmp209,
	mr %r9,%r5	 # X, X
	stw %r0,k@sdarel(%r13)	 # k, tmp209
	stw %r31,12(%r1)	 #,
	ble- %cr0,.L1	 #
	cmpwi %cr6,%r3,0	 #, tmp220, N
	addi %r0,%r7,-8	 # ivtmp.129, W,
	slwi %r31,%r3,3	 # D.3115, N,
	li %r7,0	 # ivtmp.124,
	li %r12,0	 # ivtmp.122,
.L6:
	lfd %f0,0(%r6)	 #* ivtmp.125, prephitmp.103
	ble- %cr6,.L10	 #
	mtctr %r3	 # N, N
	addi %r10,%r9,-8	 # ivtmp.119, X,
	mr %r11,%r0	 # ivtmp.129, ivtmp.129
.L5:
	lfdu %f12,8(%r11)	 # MEM[(double *)D.3101_106], MEM[(double *)D.3101_106]
	lfdu %f13,8(%r10)	 # MEM[(double *)D.3102_107], MEM[(double *)D.3102_107]
	fmadd %f0,%f12,%f13,%f0	 # prephitmp.103, MEM[(double *)D.3101_106], MEM[(double *)D.3102_107], prephitmp.103
	stfd %f0,0(%r6)	 # *prephitmp.101_92, prephitmp.103
	bdnz .L5	 #
	mr %r11,%r3	 # N, N
.L4:
	lfdx %f13,%r8,%r7	 # MEM[base: b_47(D), index: ivtmp.124_26, offset: 0B], MEM[base: b_47(D), index: ivtmp.124_26, offset: 0B]
	addi %r12,%r12,1	 # ivtmp.122, ivtmp.122,
	addi %r7,%r7,8	 # ivtmp.124, ivtmp.124,
	cmpw %cr7,%r12,%r4	 # Y, tmp217, ivtmp.122
	add %r0,%r0,%r31	 # ivtmp.129, ivtmp.129, D.3115
	fadd %f0,%f13,%f0	 # tmp216, MEM[base: b_47(D), index: ivtmp.124_26, offset: 0B], prephitmp.103
	stfd %f0,0(%r6)	 # *prephitmp.101_87, tmp216
	addi %r6,%r6,8	 # ivtmp.125, ivtmp.125,
	bne+ %cr7,.L6	 #
	addi %r0,%r12,-1	 # tmp218, ivtmp.122,
	stw %r11,j@sdarel(%r13)	 # j, N
	mullw %r3,%r0,%r3	 # tmp219, tmp218, N
	stw %r12,k@sdarel(%r13)	 # k, ivtmp.122
	stw %r3,i@sdarel(%r13)	 # i, tmp219
.L1:
	lwz %r31,12(%r1)	 #,
	addi %r1,%r1,16	 #,,
	blr	 #
.L10:
	li %r11,0	 # N,
	b .L4	 #
	.size	ANNLayer, .-ANNLayer
	.align 2
	.type	Backprop, @function
Backprop:
	cmpwi %cr7,%r5,0	 #, tmp192,
	stwu %r1,-32(%r1)	 #,,
	li %r11,0	 # tmp191,
	mr %r0,%r5	 # Y, Y
	stw %r11,k@sdarel(%r13)	 # k, tmp191
	stw %r29,20(%r1)	 #,
	stw %r30,24(%r1)	 #,
	stw %r31,28(%r1)	 #,
	ble- %cr7,.L11	 #
	cmpwi %cr6,%r4,0	 #, tmp207, N
	addi %r31,%r3,-8	 # ivtmp.177, Loss,
	slwi %r29,%r4,3	 # D.3192, N,
	addi %r3,%r8,-8	 # ivtmp.181, b,
	addi %r7,%r7,-8	 # ivtmp.185, W,
	mr %r30,%r5	 # D.3197,
	li %r8,0	 # ivtmp.174,
.L15:
	lfdu %f0,8(%r31)	 # MEM[(double *)D.3194_129], L.67
	stfd %f0,L@sdarel(%r13)	 # L, L.67
	fneg %f0,%f0	 # tmp193, L.67
	lfdu %f13,8(%r3)	 # MEM[(double *)D.3195_130], MEM[(double *)D.3195_130]
	fmadd %f0,%f0,%f1,%f13	 # tmp194, tmp193, alpha, MEM[(double *)D.3195_130]
	stfd %f0,0(%r3)	 # MEM[(double *)D.3195_130], tmp194
	stfd %f1,testout@sdarel(%r13)	 # testout, alpha
	ble- %cr6,.L16	 #
	mtctr %r4	 # N, N
	addi %r12,%r6,-8	 # ivtmp.165, A,
	addi %r10,%r9,-8	 # ivtmp.170, lossback,
	mr %r11,%r7	 # ivtmp.185, ivtmp.185
.L14:
	lfd %f0,L@sdarel(%r13)	 # L, L
	lfdu %f12,8(%r12)	 # MEM[(double *)D.3170_118], MEM[(double *)D.3170_118]
	lfdu %f13,8(%r11)	 # MEM[(double *)D.3169_117], MEM[(double *)D.3169_117]
	fmul %f0,%f1,%f0	 # tmp197, alpha, L
	fneg %f0,%f0	 # tmp199, tmp197
	fmadd %f0,%f0,%f12,%f13	 # D.2920, tmp199, MEM[(double *)D.3170_118], MEM[(double *)D.3169_117]
	stfd %f0,0(%r11)	 # MEM[(double *)D.3169_117], D.2920
	lfdu %f13,8(%r10)	 # MEM[(double *)D.3172_120], MEM[(double *)D.3172_120]
	lfd %f12,L@sdarel(%r13)	 # L, L
	fmadd %f0,%f0,%f12,%f13	 # tmp202, D.2920, L, MEM[(double *)D.3172_120]
	stfd %f0,0(%r10)	 # MEM[(double *)D.3172_120], tmp202
	bdnz .L14	 #
	mr %r11,%r4	 # N, N
.L13:
	addi %r8,%r8,1	 # ivtmp.174, ivtmp.174,
	add %r7,%r7,%r29	 # ivtmp.185, ivtmp.185, D.3192
	cmpw %cr7,%r8,%r30	 # D.3197, tmp206, ivtmp.174
	bne+ %cr7,.L15	 #
	stw %r11,i@sdarel(%r13)	 # i, N
	stw %r0,k@sdarel(%r13)	 # k, Y
.L11:
	lwz %r29,20(%r1)	 #,
	lwz %r30,24(%r1)	 #,
	lwz %r31,28(%r1)	 #,
	addi %r1,%r1,32	 #,,
	blr	 #
.L16:
	li %r11,0	 # N,
	b .L13	 #
	.size	Backprop, .-Backprop
	.align 2
	.type	DenseLayer.constprop.0, @function
DenseLayer.constprop.0:
	cmpwi %cr0,%r4,0	 # tmp187, Y
	li %r0,0	 # tmp186,
	mr %r11,%r5	 # X, X
	stw %r0,k@sdarel(%r13)	 # k, tmp186
	blelr- %cr0
	slwi %r6,%r4,3	 # D.3286, Y,
	lis %r9,Wdense@ha	 # tmp188,
	addi %r6,%r6,-8	 # tmp236, D.3286,
	lis %r7,y@ha	 # tmp230,
	srwi %r6,%r6,3	 # tmp237, tmp236,
	lis %r8,bdense@ha	 # tmp228,
	addi %r6,%r6,1	 #, tmp237,
	slwi %r0,%r3,3	 # D.3274, N,
	mtctr %r6	 # tmp234,
	la %r9,Wdense@l(%r9)	 # ivtmp.237,, tmp188
	li %r10,0	 # ivtmp.249,
	la %r7,y@l(%r7)	 # tmp231,, tmp230
	la %r8,bdense@l(%r8)	 # tmp229,, tmp228
.L21:
	lfd %f0,8(%r11)	 # MEM[(double *)X_9(D) + 8B], MEM[(double *)X_9(D) + 8B]
	lfd %f10,8(%r9)	 # MEM[(double *)D.3275_60 + 8B], MEM[(double *)D.3275_60 + 8B]
	lfd %f11,0(%r9)	 # MEM[(double *)D.3275_60], MEM[(double *)D.3275_60]
	lfd %f13,16(%r9)	 # MEM[(double *)D.3275_60 + 16B], MEM[(double *)D.3275_60 + 16B]
	fmul %f10,%f10,%f0	 # tmp191, MEM[(double *)D.3275_60 + 8B], MEM[(double *)X_9(D) + 8B]
	lfd %f0,0(%r11)	 # *X_9(D), *X_9(D)
	lfd %f12,24(%r9)	 # MEM[(double *)D.3275_60 + 24B], MEM[(double *)D.3275_60 + 24B]
	fmadd %f11,%f11,%f0,%f10	 # tmp194, MEM[(double *)D.3275_60], *X_9(D), tmp191
	lfd %f0,16(%r11)	 # MEM[(double *)X_9(D) + 16B], MEM[(double *)X_9(D) + 16B]
	lfd %f10,40(%r9)	 # MEM[(double *)D.3275_60 + 40B], MEM[(double *)D.3275_60 + 40B]
	fmadd %f13,%f13,%f0,%f11	 # tmp197, MEM[(double *)D.3275_60 + 16B], MEM[(double *)X_9(D) + 16B], tmp194
	lfd %f0,24(%r11)	 # MEM[(double *)X_9(D) + 24B], MEM[(double *)X_9(D) + 24B]
	lfd %f11,32(%r9)	 # MEM[(double *)D.3275_60 + 32B], MEM[(double *)D.3275_60 + 32B]
	fmadd %f12,%f12,%f0,%f13	 # tmp200, MEM[(double *)D.3275_60 + 24B], MEM[(double *)X_9(D) + 24B], tmp197
	lfd %f0,32(%r11)	 # MEM[(double *)X_9(D) + 32B], MEM[(double *)X_9(D) + 32B]
	lfd %f13,40(%r11)	 # MEM[(double *)X_9(D) + 40B], MEM[(double *)X_9(D) + 40B]
	fmadd %f0,%f11,%f0,%f12	 # tmp203, MEM[(double *)D.3275_60 + 32B], MEM[(double *)X_9(D) + 32B], tmp200
	lfd %f11,48(%r9)	 # MEM[(double *)D.3275_60 + 48B], MEM[(double *)D.3275_60 + 48B]
	lfd %f12,64(%r9)	 # MEM[(double *)D.3275_60 + 64B], MEM[(double *)D.3275_60 + 64B]
	fmadd %f10,%f10,%f13,%f0	 # tmp206, MEM[(double *)D.3275_60 + 40B], MEM[(double *)X_9(D) + 40B], tmp203
	lfd %f0,48(%r11)	 # MEM[(double *)X_9(D) + 48B], MEM[(double *)X_9(D) + 48B]
	lfd %f13,56(%r9)	 # MEM[(double *)D.3275_60 + 56B], MEM[(double *)D.3275_60 + 56B]
	fmadd %f11,%f11,%f0,%f10	 # tmp209, MEM[(double *)D.3275_60 + 48B], MEM[(double *)X_9(D) + 48B], tmp206
	lfd %f0,56(%r11)	 # MEM[(double *)X_9(D) + 56B], MEM[(double *)X_9(D) + 56B]
	fmadd %f13,%f13,%f0,%f11	 # tmp212, MEM[(double *)D.3275_60 + 56B], MEM[(double *)X_9(D) + 56B], tmp209
	lfd %f0,64(%r11)	 # MEM[(double *)X_9(D) + 64B], MEM[(double *)X_9(D) + 64B]
	lfd %f11,72(%r9)	 # MEM[(double *)D.3275_60 + 72B], MEM[(double *)D.3275_60 + 72B]
	add %r9,%r9,%r0	 # ivtmp.237, ivtmp.237, D.3274
	fmadd %f12,%f12,%f0,%f13	 # tmp215, MEM[(double *)D.3275_60 + 64B], MEM[(double *)X_9(D) + 64B], tmp212
	lfd %f0,72(%r11)	 # MEM[(double *)X_9(D) + 72B], MEM[(double *)X_9(D) + 72B]
	lfdx %f13,%r8,%r10	 # MEM[symbol: bdense, index: ivtmp.249_78, offset: 0B], MEM[symbol: bdense, index: ivtmp.249_78, offset: 0B]
	fmadd %f0,%f11,%f0,%f12	 # tmp218, MEM[(double *)D.3275_60 + 72B], MEM[(double *)X_9(D) + 72B], tmp215
	fadd %f0,%f0,%f13	 # tmp224, tmp218, MEM[symbol: bdense, index: ivtmp.249_78, offset: 0B]
	stfdx %f0,%r7,%r10	 # MEM[symbol: y, index: ivtmp.249_78, offset: 0B], tmp224
	addi %r10,%r10,8	 # ivtmp.249, ivtmp.249,
	bdnz .L21	 #
	addi %r0,%r4,-1	 # tmp226, Y,
	stw %r4,k@sdarel(%r13)	 # k, Y
	mullw %r3,%r0,%r3	 # tmp227, tmp226, N
	stw %r3,i@sdarel(%r13)	 # i, tmp227
	blr
	.size	DenseLayer.constprop.0, .-DenseLayer.constprop.0
	.section	.text.startup,"ax",@progbits
	.align 2
	.globl main
	.type	main, @function
main:
	stwu %r1,-48(%r1)	 #,,
	mflr %r0	 #,
	lwz %r3,N@sdarel(%r13)	 # N, N.0
	lwz %r9,x1@sdarel(%r13)	 # x1, x1
	stw %r0,52(%r1)	 #,
	cmpwi %cr7,%r3,1	 #, tmp249, N.0
	stw %r27,28(%r1)	 #,
	stw %r25,20(%r1)	 #,
	lfd %f0,0(%r9)	 # *x1.16_51, D.3306
	lis %r9,X@ha	 # tmp630,
	stw %r26,24(%r1)	 #,
	la %r27,X@l(%r9)	 # tmp639,, tmp630
	stw %r28,32(%r1)	 #,
	stw %r29,36(%r1)	 #,
	stw %r30,40(%r1)	 #,
	stw %r31,44(%r1)	 #,
	stfd %f0,X@l(%r9)	 # X, D.3306
	ble- %cr7,.L24	 #
	lwz %r9,x2@sdarel(%r13)	 # x2, x2
	cmpwi %cr7,%r3,2	 #, tmp253, N.0
	lfd %f0,0(%r9)	 # *x2.17_53, D.3304
	stfd %f0,8(%r27)	 # X, D.3304
	beq- %cr7,.L24	 #
	lwz %r9,x3@sdarel(%r13)	 # x3, x3
	cmpwi %cr7,%r3,3	 #, tmp257, N.0
	lfd %f0,0(%r9)	 # *x3.18_55, D.3302
	stfd %f0,16(%r27)	 # X, D.3302
	beq- %cr7,.L24	 #
	lwz %r9,x4@sdarel(%r13)	 # x4, x4
	cmpwi %cr7,%r3,4	 #, tmp261, N.0
	lfd %f0,0(%r9)	 # *x4.19_57, D.3300
	stfd %f0,24(%r27)	 # X, D.3300
	beq- %cr7,.L24	 #
	lwz %r9,x5@sdarel(%r13)	 # x5, x5
	cmpwi %cr7,%r3,5	 #, tmp265, N.0
	lfd %f0,0(%r9)	 # *x5.20_59, D.3298
	stfd %f0,32(%r27)	 # X, D.3298
	beq- %cr7,.L24	 #
	lwz %r9,x6@sdarel(%r13)	 # x6, x6
	cmpwi %cr7,%r3,6	 #, tmp269, N.0
	lfd %f0,0(%r9)	 # *x6.21_61, D.3296
	stfd %f0,40(%r27)	 # X, D.3296
	beq- %cr7,.L24	 #
	lwz %r9,x7@sdarel(%r13)	 # x7, x7
	cmpwi %cr7,%r3,7	 #, tmp273, N.0
	lfd %f0,0(%r9)	 # *x7.22_63, D.3294
	stfd %f0,48(%r27)	 # X, D.3294
	beq- %cr7,.L24	 #
	lwz %r9,x8@sdarel(%r13)	 # x8, x8
	cmpwi %cr7,%r3,8	 #, tmp277, N.0
	lfd %f0,0(%r9)	 # *x8.23_65, D.3292
	stfd %f0,56(%r27)	 # X, D.3292
	beq- %cr7,.L24	 #
	lwz %r9,x9@sdarel(%r13)	 # x9, x9
	cmpwi %cr7,%r3,9	 #, tmp281, N.0
	lfd %f0,0(%r9)	 # *x9.24_67, D.3290
	stfd %f0,64(%r27)	 # X, D.3290
	beq- %cr7,.L24	 #
	lwz %r9,x10@sdarel(%r13)	 # x10, x10
	lfd %f0,0(%r9)	 # *x10.25_69, D.3288
	stfd %f0,72(%r27)	 # X, D.3288
.L24:
	lis %r30,a1@ha	 # tmp634,
	lis %r25,W1@ha	 # tmp632,
	lwz %r4,N1@sdarel(%r13)	 # N1,
	lis %r26,b1@ha	 # tmp628,
	la %r30,a1@l(%r30)	 # tmp618,, tmp634
	la %r25,W1@l(%r25)	 # tmp617,, tmp632
	la %r26,b1@l(%r26)	 # tmp633,, tmp628
	mr %r5,%r27	 #, tmp639
	mr %r6,%r30	 #, tmp618
	mr %r7,%r25	 #, tmp617
	mr %r8,%r26	 #, tmp633
	bl ANNLayer	 #
	lwz %r0,Layers@sdarel(%r13)	 # Layers, Layers
	cmpwi %cr7,%r0,1	 #, tmp295, Layers
	ble- %cr7,.L25	 #
	lis %r6,a2@ha	 # tmp635,
	lwz %r3,N1@sdarel(%r13)	 # N1,
	lis %r7,W2@ha	 # tmp303,
	la %r29,a2@l(%r6)	 # tmp300,, tmp635
	lwz %r4,N2@sdarel(%r13)	 # N2,
	lis %r8,b2@ha	 # tmp305,
	mr %r5,%r30	 #, tmp618
	mr %r6,%r29	 #, tmp300
	la %r7,W2@l(%r7)	 #,, tmp303
	la %r8,b2@l(%r8)	 #,, tmp305
	bl ANNLayer	 #
	lwz %r0,Layers@sdarel(%r13)	 # Layers, Layers
	cmpwi %cr7,%r0,2	 #, tmp307, Layers
	bgt- %cr7,.L54	 #
	lwz %r3,Ndense@sdarel(%r13)	 # Ndense,
	mr %r5,%r29	 #, tmp300
	lwz %r4,Y@sdarel(%r13)	 # Y,
	bl DenseLayer.constprop.0	 #
.L27:
	lis %r9,y@ha	 # tmp331,
	lwz %r11,foutput@sdarel(%r13)	 # foutput, foutput
	lfd %f0,y@l(%r9)	 # y, D.2647
	la %r9,y@l(%r9)	 # tmp330,, tmp331
	lwz %r10,foutput5@sdarel(%r13)	 # foutput5, foutput5
	stfd %f0,0(%r11)	 # *foutput.1_3, D.2647
	lwz %r11,foutput2@sdarel(%r13)	 # foutput2, foutput2
	lfd %f0,8(%r9)	 # y, D.2649
	stfd %f0,0(%r11)	 # *foutput2.2_5, D.2649
	lwz %r11,foutput3@sdarel(%r13)	 # foutput3, foutput3
	lfd %f0,16(%r9)	 # y, D.2651
	stfd %f0,0(%r11)	 # *foutput3.3_7, D.2651
	lwz %r11,foutput4@sdarel(%r13)	 # foutput4, foutput4
	lfd %f0,24(%r9)	 # y, D.2653
	stfd %f0,0(%r11)	 # *foutput4.4_9, D.2653
	lwz %r11,Learning_rate@sdarel(%r13)	 # Learning_rate, Learning_rate.11
	lfd %f0,32(%r9)	 # y, D.2655
	stfd %f0,0(%r10)	 # *foutput5.5_11, D.2655
	lwz %r10,foutput6@sdarel(%r13)	 # foutput6, foutput6
	lfd %f0,40(%r9)	 # y, D.2657
	stfd %f0,0(%r10)	 # *foutput6.6_13, D.2657
	lwz %r10,foutput7@sdarel(%r13)	 # foutput7, foutput7
	lfd %f0,48(%r9)	 # y, D.2659
	stfd %f0,0(%r10)	 # *foutput7.7_15, D.2659
	lwz %r10,foutput8@sdarel(%r13)	 # foutput8, foutput8
	lfd %f0,56(%r9)	 # y, D.2661
	stfd %f0,0(%r10)	 # *foutput8.8_17, D.2661
	lwz %r10,foutput9@sdarel(%r13)	 # foutput9, foutput9
	lfd %f0,64(%r9)	 # y, D.2663
	stfd %f0,0(%r10)	 # *foutput9.9_19, D.2663
	lfd %f0,72(%r9)	 # y, D.2665
	lwz %r9,foutput10@sdarel(%r13)	 # foutput10, foutput10
	stfd %f0,0(%r9)	 # *foutput10.10_21, D.2665
	lis %r9,.LC0@ha	 # tmp625,
	lfd %f0,.LC0@l(%r9)	 #, tmp360
	lfd %f13,0(%r11)	 # *Learning_rate.11_23, *Learning_rate.11_23
	fcmpu %cr7,%f13,%f0	 # tmp364, *Learning_rate.11_23, tmp360
	bgt- %cr7,.L55	 #
.L28:
	lwz %r0,Layers@sdarel(%r13)	 # Layers, Layers.13
	lfd %f0,testout@sdarel(%r13)	 # testout, testout.15
	cmpwi %cr7,%r0,1	 #, tmp521, Layers.13
	lwz %r9,tests@sdarel(%r13)	 # tests, tests
	stfd %f0,0(%r9)	 # *tests.14_28, testout.15
	beq- %cr7,.L56	 #
	cmpwi %cr7,%r0,2	 #, tmp535, Layers.13
	lis %r10,.LC0@ha	 # tmp647,
	la %r10,.LC0@l(%r10)	 # tmp629,, tmp647
	lis %r31,a1Loss@ha	 # tmp638,
	lis %r9,dummyloss@ha	 # tmp627,
	lis %r29,a2Loss@ha	 # tmp616,
	beq- %cr7,.L57	 #
	li %r0,10	 #,
	lfd %f0,0(%r10)	 #, tmp662
	lis %r28,a3Loss@ha	 # tmp637,
	mtctr %r0	 # tmp674,
	li %r11,0	 # ivtmp.357,
	la %r31,a1Loss@l(%r31)	 # tmp623,, tmp638
	la %r9,dummyloss@l(%r9)	 # tmp631,, tmp627
	la %r29,a2Loss@l(%r29)	 # tmp626,, tmp616
	la %r28,a3Loss@l(%r28)	 # tmp621,, tmp637
.L36:
	stfdx %f0,%r28,%r11	 # MEM[symbol: a3Loss, index: ivtmp.357_166, offset: 0B], tmp662
	stfdx %f0,%r29,%r11	 # MEM[symbol: a2Loss, index: ivtmp.357_166, offset: 0B], tmp662
	stfdx %f0,%r31,%r11	 # MEM[symbol: a1Loss, index: ivtmp.357_166, offset: 0B], tmp662
	stfdx %f0,%r9,%r11	 # MEM[symbol: dummyloss, index: ivtmp.357_166, offset: 0B], tmp662
	addi %r11,%r11,8	 # ivtmp.357, ivtmp.357,
	bdnz .L36	 #
	li %r0,10	 #,
	lfd %f0,0(%r10)	 #, tmp661
	lis %r6,a2@ha	 # tmp635,
	lis %r31,a3@ha	 # tmp636,
	mtctr %r0	 # tmp673,
	li %r9,0	 # ivtmp.302,
	la %r6,a2@l(%r6)	 # tmp619,, tmp635
	la %r31,a3@l(%r31)	 # tmp620,, tmp636
.L39:
	stfdx %f0,%r31,%r9	 # MEM[symbol: a3, index: ivtmp.302_135, offset: 0B], tmp661
	stfdx %f0,%r6,%r9	 # MEM[symbol: a2, index: ivtmp.302_135, offset: 0B], tmp661
	stfdx %f0,%r30,%r9	 # MEM[symbol: a1, index: ivtmp.302_135, offset: 0B], tmp661
	addi %r9,%r9,8	 # ivtmp.302, ivtmp.302,
	bdnz .L39	 #
	li %r0,10	 # tmp612,
.L53:
	stw %r0,i@sdarel(%r13)	 # i, tmp612
.L23:
	lwz %r0,52(%r1)	 #,
	lwz %r25,20(%r1)	 #,
	mtlr %r0	 #,
	lwz %r26,24(%r1)	 #,
	lwz %r27,28(%r1)	 #,
	lwz %r28,32(%r1)	 #,
	lwz %r29,36(%r1)	 #,
	lwz %r30,40(%r1)	 #,
	lwz %r31,44(%r1)	 #,
	addi %r1,%r1,48	 #,,
	blr	 #
.L54:
	lis %r31,a3@ha	 # tmp636,
	lwz %r3,N2@sdarel(%r13)	 # N2,
	lis %r7,W3@ha	 # tmp315,
	la %r31,a3@l(%r31)	 # tmp620,, tmp636
	lwz %r4,N3@sdarel(%r13)	 # N3,
	lis %r8,b3@ha	 # tmp317,
	mr %r5,%r29	 #, tmp300
	mr %r6,%r31	 #, tmp620
	la %r7,W3@l(%r7)	 #,, tmp315
	la %r8,b3@l(%r8)	 #,, tmp317
	bl ANNLayer	 #
	lwz %r3,Ndense@sdarel(%r13)	 # Ndense,
	mr %r5,%r31	 #, tmp620
	lwz %r4,Y@sdarel(%r13)	 # Y,
	bl DenseLayer.constprop.0	 #
	b .L27	 #
.L55:
	lwz %r0,Y@sdarel(%r13)	 # Y, Y
	lwz %r9,L1@sdarel(%r13)	 # L1, L1
	cmpwi %cr7,%r0,1	 #, tmp368, Y
	lfd %f0,0(%r9)	 # *L1.47_85, D.3334
	lis %r9,loss@ha	 # tmp615,
	la %r3,loss@l(%r9)	 # tmp624,, tmp615
	stfd %f0,loss@l(%r9)	 # loss, D.3334
	ble- %cr7,.L30	 #
	lwz %r9,L2@sdarel(%r13)	 # L2, L2
	cmpwi %cr7,%r0,2	 #, tmp372, Y
	lfd %f0,0(%r9)	 # *L2.48_87, D.3332
	stfd %f0,8(%r3)	 # loss, D.3332
	beq- %cr7,.L30	 #
	lwz %r9,L3@sdarel(%r13)	 # L3, L3
	cmpwi %cr7,%r0,3	 #, tmp376, Y
	lfd %f0,0(%r9)	 # *L3.49_89, D.3330
	stfd %f0,16(%r3)	 # loss, D.3330
	beq- %cr7,.L30	 #
	lwz %r9,L4@sdarel(%r13)	 # L4, L4
	cmpwi %cr7,%r0,4	 #, tmp380, Y
	lfd %f0,0(%r9)	 # *L4.50_91, D.3328
	stfd %f0,24(%r3)	 # loss, D.3328
	beq- %cr7,.L30	 #
	lwz %r9,L5@sdarel(%r13)	 # L5, L5
	cmpwi %cr7,%r0,5	 #, tmp384, Y
	lfd %f0,0(%r9)	 # *L5.51_93, D.3326
	stfd %f0,32(%r3)	 # loss, D.3326
	beq- %cr7,.L30	 #
	lwz %r9,L6@sdarel(%r13)	 # L6, L6
	cmpwi %cr7,%r0,6	 #, tmp388, Y
	lfd %f0,0(%r9)	 # *L6.52_95, D.3324
	stfd %f0,40(%r3)	 # loss, D.3324
	beq- %cr7,.L30	 #
	lwz %r9,L7@sdarel(%r13)	 # L7, L7
	cmpwi %cr7,%r0,7	 #, tmp392, Y
	lfd %f0,0(%r9)	 # *L7.53_97, D.3322
	stfd %f0,48(%r3)	 # loss, D.3322
	beq- %cr7,.L30	 #
	lwz %r9,L8@sdarel(%r13)	 # L8, L8
	cmpwi %cr7,%r0,8	 #, tmp396, Y
	lfd %f0,0(%r9)	 # *L8.54_99, D.3320
	stfd %f0,56(%r3)	 # loss, D.3320
	beq- %cr7,.L30	 #
	lwz %r9,L9@sdarel(%r13)	 # L9, L9
	cmpwi %cr7,%r0,9	 #, tmp400, Y
	lfd %f0,0(%r9)	 # *L9.55_101, D.3318
	stfd %f0,64(%r3)	 # loss, D.3318
	beq- %cr7,.L30	 #
	lwz %r9,L10@sdarel(%r13)	 # L10, L10
	lfd %f0,0(%r9)	 # *L10.56_103, D.3316
	stfd %f0,72(%r3)	 # loss, D.3316
.L30:
	lwz %r9,Layers@sdarel(%r13)	 # Layers, Layers.13
	lfd %f1,0(%r11)	 # *Learning_rate.11_23, Lr.58
	cmpwi %cr7,%r9,1	 #, tmp404, Layers.13
	stfd %f1,Lr@sdarel(%r13)	 # Lr, Lr.58
	beq- %cr7,.L58	 #
	cmpwi %cr7,%r9,2	 #, tmp430, Layers.13
	beq- %cr7,.L59	 #
	lis %r28,a3Loss@ha	 # tmp637,
	lwz %r4,N3@sdarel(%r13)	 # N3,
	lis %r31,a3@ha	 # tmp636,
	la %r28,a3Loss@l(%r28)	 # tmp621,, tmp637
	lis %r7,Wdense@ha	 # tmp476,
	lis %r8,bdense@ha	 # tmp478,
	mr %r5,%r0	 #, Y
	la %r6,a3@l(%r31)	 #,, tmp636
	la %r7,Wdense@l(%r7)	 #,, tmp476
	la %r8,bdense@l(%r8)	 #,, tmp478
	mr %r9,%r28	 #, tmp621
	bl Backprop	 #
	lis %r29,a2Loss@ha	 # tmp616,
	lfd %f1,Lr@sdarel(%r13)	 # Lr,
	lis %r6,a2@ha	 # tmp635,
	la %r29,a2Loss@l(%r29)	 # tmp626,, tmp616
	lwz %r4,N2@sdarel(%r13)	 # N2,
	lis %r7,W3@ha	 # tmp489,
	lwz %r5,N3@sdarel(%r13)	 # N3,
	lis %r8,b3@ha	 # tmp491,
	mr %r3,%r28	 #, tmp621
	la %r6,a2@l(%r6)	 #,, tmp635
	la %r7,W3@l(%r7)	 #,, tmp489
	la %r8,b3@l(%r8)	 #,, tmp491
	mr %r9,%r29	 #, tmp626
	bl Backprop	 #
	lfd %f1,Lr@sdarel(%r13)	 # Lr,
	lis %r31,a1Loss@ha	 # tmp638,
	lis %r7,W2@ha	 # tmp502,
	lis %r8,b2@ha	 # tmp504,
	lwz %r4,N1@sdarel(%r13)	 # N1,
	la %r31,a1Loss@l(%r31)	 # tmp623,, tmp638
	lwz %r5,N2@sdarel(%r13)	 # N2,
	mr %r3,%r29	 #, tmp626
	mr %r6,%r30	 #, tmp618
	la %r7,W2@l(%r7)	 #,, tmp502
	la %r8,b2@l(%r8)	 #,, tmp504
.L51:
	mr %r9,%r31	 #, tmp623
	bl Backprop	 #
	lfd %f1,Lr@sdarel(%r13)	 # Lr,
	lis %r9,dummyloss@ha	 # tmp627,
	mr %r3,%r31	 #, tmp623
	lwz %r4,N@sdarel(%r13)	 # N,
	mr %r6,%r27	 #, tmp639
	mr %r7,%r25	 #, tmp617
	lwz %r5,N1@sdarel(%r13)	 # N1,
	mr %r8,%r26	 #, tmp633
	la %r9,dummyloss@l(%r9)	 #,, tmp627
	bl Backprop	 #
	b .L28	 #
.L56:
	lwz %r0,N1@sdarel(%r13)	 # N1, N1.78
	cmpwi %cr7,%r0,0	 #, tmp523, N1.78
	ble- %cr7,.L34	 #
	slwi %r10,%r0,3	 # D.3430, N1.78,
	lis %r11,.LC0@ha	 # tmp643,
	addi %r10,%r10,-8	 # tmp669, D.3430,
	lis %r31,a1Loss@ha	 # tmp638,
	lfd %f0,.LC0@l(%r11)	 #, tmp658
	srwi %r10,%r10,3	 # tmp670, tmp669,
	lis %r9,dummyloss@ha	 # tmp627,
	addi %r10,%r10,1	 #, tmp670,
	li %r11,0	 # ivtmp.320,
	mtctr %r10	 # tmp667,
	la %r31,a1Loss@l(%r31)	 # tmp623,, tmp638
	la %r9,dummyloss@l(%r9)	 # tmp631,, tmp627
.L35:
	stfdx %f0,%r31,%r11	 # MEM[symbol: a1Loss, index: ivtmp.320_147, offset: 0B], tmp658
	stfdx %f0,%r9,%r11	 # MEM[symbol: dummyloss, index: ivtmp.320_147, offset: 0B], tmp658
	addi %r11,%r11,8	 # ivtmp.320, ivtmp.320,
	bdnz .L35	 #
.L34:
	cmpwi %cr7,%r0,0	 #, tmp614, N1.78
	li %r9,0	 # tmp613,
	stw %r9,i@sdarel(%r13)	 # i, tmp613
	ble- %cr7,.L23	 #
	slwi %r11,%r0,3	 # tmp664, N1.78,
	lis %r9,.LC0@ha	 # tmp656,
	addi %r11,%r11,-8	 # tmp665, tmp664,
	lfd %f0,.LC0@l(%r9)	 #, tmp657
	lis %r9,a1-8@ha	 # tmp575,
	srwi %r11,%r11,3	 # tmp666, tmp665,
	la %r9,a1-8@l(%r9)	 # ivtmp.273,, tmp575
	addi %r11,%r11,1	 #, tmp666,
	mtctr %r11	 # tmp663,
.L40:
	stfdu %f0,8(%r9)	 # MEM[(double[10] *)D.3373_143], tmp657
	bdnz .L40	 #
	b .L53	 #
.L25:
	lwz %r3,Ndense@sdarel(%r13)	 # Ndense,
	mr %r5,%r30	 #, tmp618
	lwz %r4,Y@sdarel(%r13)	 # Y,
	bl DenseLayer.constprop.0	 #
	b .L27	 #
.L57:
	li %r0,10	 #,
	lfd %f0,0(%r10)	 #, tmp660
	li %r11,0	 # ivtmp.336,
	mtctr %r0	 # tmp672,
	la %r31,a1Loss@l(%r31)	 # tmp623,, tmp638
	la %r9,dummyloss@l(%r9)	 # tmp631,, tmp627
	la %r29,a2Loss@l(%r29)	 # tmp626,, tmp616
.L37:
	stfdx %f0,%r29,%r11	 # MEM[symbol: a2Loss, index: ivtmp.336_141, offset: 0B], tmp660
	stfdx %f0,%r31,%r11	 # MEM[symbol: a1Loss, index: ivtmp.336_141, offset: 0B], tmp660
	stfdx %f0,%r9,%r11	 # MEM[symbol: dummyloss, index: ivtmp.336_141, offset: 0B], tmp660
	addi %r11,%r11,8	 # ivtmp.336, ivtmp.336,
	bdnz .L37	 #
	li %r0,10	 #,
	lfd %f0,0(%r10)	 #, tmp659
	lis %r6,a2@ha	 # tmp635,
	mtctr %r0	 # tmp671,
	li %r9,0	 # ivtmp.286,
	la %r6,a2@l(%r6)	 # tmp619,, tmp635
.L38:
	stfdx %f0,%r6,%r9	 # MEM[symbol: a2, index: ivtmp.286_115, offset: 0B], tmp659
	stfdx %f0,%r30,%r9	 # MEM[symbol: a1, index: ivtmp.286_115, offset: 0B], tmp659
	addi %r9,%r9,8	 # ivtmp.286, ivtmp.286,
	bdnz .L38	 #
	li %r0,10	 # tmp612,
	b .L53	 #
.L59:
	lis %r29,a2Loss@ha	 # tmp616,
	lwz %r4,N2@sdarel(%r13)	 # N2,
	lis %r6,a2@ha	 # tmp635,
	la %r29,a2Loss@l(%r29)	 # tmp626,, tmp616
	lis %r7,Wdense@ha	 # tmp438,
	lis %r8,bdense@ha	 # tmp440,
	mr %r5,%r0	 #, Y
	mr %r9,%r29	 #, tmp626
	la %r6,a2@l(%r6)	 #,, tmp635
	la %r7,Wdense@l(%r7)	 #,, tmp438
	la %r8,bdense@l(%r8)	 #,, tmp440
	bl Backprop	 #
	lis %r31,a1Loss@ha	 # tmp638,
	lfd %f1,Lr@sdarel(%r13)	 # Lr,
	lis %r7,W2@ha	 # tmp451,
	la %r31,a1Loss@l(%r31)	 # tmp623,, tmp638
	lwz %r4,N1@sdarel(%r13)	 # N1,
	lis %r8,b2@ha	 # tmp453,
	lwz %r5,N2@sdarel(%r13)	 # N2,
	mr %r3,%r29	 #, tmp626
	mr %r6,%r30	 #, tmp618
	mr %r9,%r31	 #, tmp623
	la %r7,W2@l(%r7)	 #,, tmp451
	la %r8,b2@l(%r8)	 #,, tmp453
	bl Backprop	 #
	lfd %f1,Lr@sdarel(%r13)	 # Lr,
	lis %r9,dummyloss@ha	 # tmp627,
	mr %r3,%r31	 #, tmp623
	lwz %r4,N@sdarel(%r13)	 # N,
	mr %r6,%r30	 #, tmp618
	mr %r7,%r25	 #, tmp617
	lwz %r5,N1@sdarel(%r13)	 # N1,
	mr %r8,%r26	 #, tmp633
	la %r9,dummyloss@l(%r9)	 #,, tmp627
	bl Backprop	 #
	b .L28	 #
.L58:
	lis %r31,a1Loss@ha	 # tmp638,
	lis %r7,Wdense@ha	 # tmp412,
	lwz %r4,N1@sdarel(%r13)	 # N1,
	lis %r8,bdense@ha	 # tmp414,
	la %r31,a1Loss@l(%r31)	 # tmp623,, tmp638
	mr %r5,%r0	 #, Y
	mr %r6,%r30	 #, tmp618
	la %r7,Wdense@l(%r7)	 #,, tmp412
	la %r8,bdense@l(%r8)	 #,, tmp414
	b .L51	 #
	.size	main, .-main
	.comm	tests,4,4
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
	.comm	L1,4,4
	.comm	x10,4,4
	.comm	x9,4,4
	.comm	x8,4,4
	.comm	x7,4,4
	.comm	x6,4,4
	.comm	x5,4,4
	.comm	x4,4,4
	.comm	x3,4,4
	.comm	x2,4,4
	.comm	x1,4,4
	.comm	lamm,4,4
	.comm	Learning_rate,4,4
	.comm	Nodes3,4,4
	.comm	activation3,4,4
	.comm	Nodes2,4,4
	.comm	activation2,4,4
	.comm	Nodes1,4,4
	.comm	activation1,4,4
	.comm	batch_size,4,4
	.comm	Layers,4,4
	.comm	numOutputs,4,4
	.comm	numInputs,4,4
	.comm	Ndense,4,4
	.comm	Lr,8,8
	.comm	L,8,8
	.comm	j,4,4
	.comm	indx,4,4
	.comm	k,4,4
	.comm	i,4,4
	.globl loss
	.lcomm	loss,80,8
	.type	loss, @object
	.globl a3Loss
	.lcomm	a3Loss,80,8
	.type	a3Loss, @object
	.globl a2Loss
	.lcomm	a2Loss,80,8
	.type	a2Loss, @object
	.globl a1Loss
	.lcomm	a1Loss,80,8
	.type	a1Loss, @object
	.globl dummyloss
	.lcomm	dummyloss,80,8
	.type	dummyloss, @object
	.comm	a3,80,8
	.comm	a2,80,8
	.comm	a1,80,8
	.globl y
	.lcomm	y,80,8
	.type	y, @object
	.globl X
	.lcomm	X,80,8
	.type	X, @object
	.comm	N3,4,4
	.comm	N2,4,4
	.comm	N1,4,4
	.comm	Y,4,4
	.comm	N,4,4
	.globl bdense
	.lcomm	bdense,24,8
	.type	bdense, @object
	.globl Wdense
	.section	".data"
	.align 3
	.type	Wdense, @object
	.size	Wdense, 72
Wdense:
	.long	1072693248
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1072693248
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1072693248
	.long	0
	.globl b3
	.align 3
	.type	b3, @object
	.size	b3, 24
b3:
	.long	-1081986583
	.long	1978247918
	.long	-1080642881
	.long	-1480417640
	.long	1067766471
	.long	70080672
	.globl W3
	.align 3
	.type	W3, @object
	.size	W3, 72
W3:
	.long	-1075703190
	.long	-785436131
	.long	1071673337
	.long	-125894081
	.long	1072979232
	.long	-222376227
	.long	-1074669172
	.long	1215839958
	.long	-1074884400
	.long	836508446
	.long	-1075167742
	.long	-809625387
	.long	1071267670
	.long	1462020611
	.long	-1076581604
	.long	1667431374
	.long	1072499302
	.long	-1957735429
	.globl b2
	.align 3
	.type	b2, @object
	.size	b2, 24
b2:
	.long	1064886414
	.long	-534249621
	.long	1066778368
	.long	-1319776792
	.long	-1083129872
	.long	-1025403225
	.globl W2
	.align 3
	.type	W2, @object
	.size	W2, 72
W2:
	.long	-1077161360
	.long	-1154938009
	.long	-1074883039
	.long	-1074904558
	.long	-1074580492
	.long	-1450530715
	.long	1071955947
	.long	-29334970
	.long	1071370658
	.long	-1619217789
	.long	-1075226060
	.long	-544884977
	.long	1071015749
	.long	-547534800
	.long	-1075432525
	.long	1443054036
	.long	-1074906486
	.long	1966696449
	.globl b1
	.align 3
	.type	b1, @object
	.size	b1, 24
b1:
	.long	1066935645
	.long	1554478544
	.long	1064816539
	.long	-1618451209
	.long	1066788091
	.long	-1028747059
	.globl W1
	.align 3
	.type	W1, @object
	.size	W1, 144
W1:
	.long	1069256205
	.long	-541289574
	.long	1068590192
	.long	26916045
	.long	1069717984
	.long	-55602303
	.long	-1077069881
	.long	1100842037
	.long	1067717275
	.long	509946896
	.long	1072913886
	.long	-213909987
	.long	-1076679446
	.long	1138104486
	.long	1072445930
	.long	1011440746
	.long	-1075561534
	.long	1577645254
	.long	-1080084352
	.long	30117823
	.long	1071752052
	.long	1134476098
	.long	1068788627
	.long	553944953
	.long	1070355346
	.long	-99076993
	.long	-1076002637
	.long	-276417223
	.long	1070349777
	.long	468117076
	.long	1072672578
	.long	-1376093778
	.long	-1076652414
	.long	-1013694745
	.long	-1075426748
	.long	1548772079
	.comm	testout,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.long	0
	.long	0
	.ident	"GCC: (GNU) 4.6.0"
	.section	.note.GNU-stack,"",@progbits
