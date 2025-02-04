	.file	"lstmV2_CS.c"

 # rs6000/powerpc options: -msdata=sysv -G 8
 # GNU C (GCC) version 4.6.0 (powerpc-750-linux-gnu)
 #	compiled by GNU C version 4.5.2, GMP version 5.0.1, MPFR version 2.4.1, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\BLTIN_GCC
 # -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\SHARED_CODE
 # -iprefix d:\rscad\rscad fx 2.3\bin\mingw-cross\bin\../lib/gcc/powerpc-750-linux-gnu/4.6.0/
 # -D__unix__ -D__gnu_linux__ -D__linux__ -Asystem=linux -Asystem=unix
 # -Asystem=posix
 # C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\lstmV2_CS.c
 # -mregnames -msdata=sysv -mtoc
 # -auxbase-strip C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\lstmV2_CS.s
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
	.type	ResetVar, @function
ResetVar:
	lis %r9,.LC0@ha	 # tmp121,
	lfd %f0,.LC0@l(%r9)	 #, tmp122
	stfd %f0,Wfx@sdarel(%r13)	 # Wfx, tmp122
	stfd %f0,Wcx@sdarel(%r13)	 # Wcx, tmp122
	stfd %f0,Wix@sdarel(%r13)	 # Wix, tmp122
	stfd %f0,Wox@sdarel(%r13)	 # Wox, tmp122
	stfd %f0,hf@sdarel(%r13)	 # hf, tmp122
	stfd %f0,hc@sdarel(%r13)	 # hc, tmp122
	stfd %f0,hi@sdarel(%r13)	 # hi, tmp122
	stfd %f0,ho@sdarel(%r13)	 # ho, tmp122
	blr	 #
	.size	ResetVar, .-ResetVar
	.align 2
	.type	getX, @function
getX:
	lis %r9,X1@ha	 # tmp131,
	slwi %r4,%r4,3	 # tmp132, t,
	la %r9,X1@l(%r9)	 # tmp130,, tmp131
	cmpwi %cr7,%r3,1	 #, tmp135, N
	lfdx %f0,%r9,%r4	 # X1, tmp134
	lis %r9,X@ha	 # tmp129,
	la %r11,X@l(%r9)	 # tmp128,, tmp129
	stfd %f0,X@l(%r9)	 # X, tmp134
	blelr- %cr7
	lis %r9,X2@ha	 # tmp139,
	cmpwi %cr7,%r3,2	 #, tmp143, N
	la %r9,X2@l(%r9)	 # tmp138,, tmp139
	lfdx %f0,%r9,%r4	 # X2, tmp142
	stfd %f0,8(%r11)	 # X, tmp142
	beqlr- %cr7
	lis %r9,X3@ha	 # tmp147,
	cmpwi %cr7,%r3,3	 #, tmp151, N
	la %r9,X3@l(%r9)	 # tmp146,, tmp147
	lfdx %f0,%r9,%r4	 # X3, tmp150
	stfd %f0,16(%r11)	 # X, tmp150
	beqlr- %cr7
	lis %r9,X4@ha	 # tmp155,
	cmpwi %cr7,%r3,4	 #, tmp159, N
	la %r9,X4@l(%r9)	 # tmp154,, tmp155
	lfdx %f0,%r9,%r4	 # X4, tmp158
	stfd %f0,24(%r11)	 # X, tmp158
	beqlr- %cr7
	lis %r9,X5@ha	 # tmp163,
	cmpwi %cr7,%r3,5	 #, tmp167, N
	la %r9,X5@l(%r9)	 # tmp162,, tmp163
	lfdx %f0,%r9,%r4	 # X5, tmp166
	stfd %f0,32(%r11)	 # X, tmp166
	beqlr- %cr7
	lis %r9,X6@ha	 # tmp171,
	la %r9,X6@l(%r9)	 # tmp170,, tmp171
	lfdx %f0,%r9,%r4	 # X6, tmp174
	stfd %f0,40(%r11)	 # X, tmp174
	blr
	.size	getX, .-getX
	.align 2
	.globl sigmoid
	.type	sigmoid, @function
sigmoid:
	stwu %r1,-16(%r1)	 #,,
	mflr %r0	 #,
	fneg %f1,%f1	 #, x
	stw %r0,20(%r1)	 #,
	bl exp	 #
	lis %r9,.LC2@ha	 # tmp131,
	lfs %f0,.LC2@l(%r9)	 #, tmp129
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
	li %r9,0	 # tmp897,
	lwz %r7,T@sdarel(%r13)	 # T,
	mfcr %r12	 #
	stw %r9,i@sdarel(%r13)	 # i, tmp897
	stw %r0,180(%r1)	 #,
	addic. %r0,%r7,-1	 # D.3299,,
	stw %r30,128(%r1)	 #,
	stfd %f27,136(%r1)	 #,
	stfd %f28,144(%r1)	 #,
	stfd %f29,152(%r1)	 #,
	stfd %f30,160(%r1)	 #,
	stfd %f31,168(%r1)	 #,
	stw %r14,64(%r1)	 #,
	stw %r15,68(%r1)	 #,
	stw %r16,72(%r1)	 #,
	stw %r17,76(%r1)	 #,
	stw %r18,80(%r1)	 #,
	stw %r19,84(%r1)	 #,
	stw %r20,88(%r1)	 #,
	stw %r21,92(%r1)	 #,
	stw %r22,96(%r1)	 #,
	stw %r23,100(%r1)	 #,
	stw %r24,104(%r1)	 #,
	stw %r25,108(%r1)	 #,
	stw %r26,112(%r1)	 #,
	stw %r27,116(%r1)	 #,
	stw %r28,120(%r1)	 #,
	stw %r29,124(%r1)	 #,
	stw %r31,132(%r1)	 #,
	stw %r12,60(%r1)	 #,
	stw %r7,16(%r1)	 # %sfp,
	lwz %r30,N@sdarel(%r13)	 # N, N.1
	ble- %cr0,.L106	 #
	cmpwi %cr7,%r30,1	 #, tmp1719, N.1
	cmpwi %cr6,%r30,2	 #, tmp1936, N.1
	mtctr %r0	 # D.3299, D.3299
	cmpwi %cr1,%r30,3	 #, tmp1937, N.1
	cmpwi %cr0,%r30,4	 #, tmp1938, N.1
	cmpwi %cr4,%r30,5	 #, tmp1939, N.1
	lis %r11,X1@ha	 # tmp1698,
	lis %r8,X2@ha	 # tmp1699,
	lis %r7,X3@ha	 # tmp1700,
	lis %r6,X4@ha	 # tmp1702,
	lis %r31,X5@ha	 # tmp1703,
	lis %r3,X6@ha	 # tmp1704,
	li %r10,0	 # i.17,
	li %r9,0	 # i.17,
	la %r11,X1@l(%r11)	 # tmp1757,, tmp1698
	la %r8,X2@l(%r8)	 # tmp1758,, tmp1699
	la %r7,X3@l(%r7)	 # tmp1759,, tmp1700
	la %r6,X4@l(%r6)	 # tmp1761,, tmp1702
	la %r31,X5@l(%r31)	 # tmp1762,, tmp1703
	la %r3,X6@l(%r3)	 # tmp1763,, tmp1704
.L9:
	addi %r0,%r9,1	 # i.18, i.17,
	slwi %r9,%r9,3	 # tmp905, i.17,
	slwi %r0,%r0,3	 # tmp901, i.18,
	lfdx %f0,%r11,%r0	 # X1, D.3305
	stfdx %f0,%r11,%r9	 # X1, D.3305
	ble- %cr7,.L8	 #
	lfdx %f0,%r8,%r0	 # X2, D.3304
	stfdx %f0,%r8,%r9	 # X2, D.3304
	beq- %cr6,.L8	 #
	lfdx %f0,%r7,%r0	 # X3, D.3303
	stfdx %f0,%r7,%r9	 # X3, D.3303
	beq- %cr1,.L8	 #
	lfdx %f0,%r6,%r0	 # X4, D.3302
	stfdx %f0,%r6,%r9	 # X4, D.3302
	beq- %cr0,.L8	 #
	lfdx %f0,%r31,%r0	 # X5, D.3301
	stfdx %f0,%r31,%r9	 # X5, D.3301
	bne- %cr4,.L107	 #
.L8:
	addi %r9,%r10,1	 # i.17, i.17,
	bdz .L108	 #
	mr %r10,%r9	 # i.17, i.17
	b .L9	 #
.L108:
	stw %r9,i@sdarel(%r13)	 # i, i.17
.L7:
	lwz %r9,16(%r1)	 # %sfp,
	lis %r10,.LC0@ha	 #,
	lwz %r24,Lr@sdarel(%r13)	 # Lr, Lr.8
	addi %r4,%r9,-1	 # t.32,,
	lwz %r9,x1@sdarel(%r13)	 # x1, x1
	slwi %r0,%r4,3	 # tmp956, t.32,
	lfd %f0,0(%r9)	 # *x1.2_6, D.2738
	lwz %r9,x2@sdarel(%r13)	 # x2, x2
	stfdx %f0,%r11,%r0	 # X1, D.2738
	lfd %f0,0(%r9)	 # *x2.3_10, D.2740
	lwz %r9,x3@sdarel(%r13)	 # x3, x3
	stfdx %f0,%r8,%r0	 # X2, D.2740
	lfd %f0,0(%r9)	 # *x3.4_14, D.2742
	lwz %r9,x4@sdarel(%r13)	 # x4, x4
	stfdx %f0,%r7,%r0	 # X3, D.2742
	lfd %f0,.LC0@l(%r10)	 #, tmp983
	lfd %f13,0(%r9)	 # *x4.5_18, D.2744
	lwz %r9,x5@sdarel(%r13)	 # x5, x5
	stfdx %f13,%r6,%r0	 # X4, D.2744
	lfd %f13,0(%r9)	 # *x5.6_22, D.2746
	lwz %r9,x6@sdarel(%r13)	 # x6, x6
	stfdx %f13,%r31,%r0	 # X5, D.2746
	lfd %f13,0(%r9)	 # *x6.7_26, D.2748
	stfdx %f13,%r3,%r0	 # X6, D.2748
	lfd %f8,0(%r24)	 # *Lr.8_28, D.2750
	fcmpu %cr7,%f8,%f0	 # tmp986, D.2750, tmp983
	bng- %cr7,.L99	 #
	lwz %r9,L1@sdarel(%r13)	 # L1, L1.19
	lis %r11,loss@ha	 # tmp988,
	fneg %f8,%f8	 # tmp1749, D.2750
	lwz %r0,Y@sdarel(%r13)	 # Y,
	lfd %f0,0(%r9)	 # *L1.19_123, D.3355
	cmpwi %cr7,%r0,1	 #, tmp993,
	stw %r0,20(%r1)	 # %sfp,
	stfd %f0,loss@l(%r11)	 # loss, D.3355
	la %r11,loss@l(%r11)	 # tmp987,, tmp988
	lfd %f0,b@sdarel(%r13)	 # b, b
	lfd %f13,0(%r9)	 # *L1.19_123, *L1.19_123
	fmadd %f0,%f8,%f13,%f0	 # tmp990, tmp1749, *L1.19_123, b
	stfd %f0,b@sdarel(%r13)	 # b, tmp990
	ble- %cr7,.L12	 #
	lwz %r10,L2@sdarel(%r13)	 # L2, L2.20
	cmpwi %cr7,%r0,2	 #, tmp1002,
	la %r9,b+8@sdarel(%r13)	 # tmp996,
	lfd %f0,0(%r10)	 # *L2.20_130, D.3350
	stfd %f0,8(%r11)	 # loss, D.3350
	lfd %f0,b+8@sdarel(%r13)	 # b, b
	lfd %f13,0(%r10)	 # *L2.20_130, *L2.20_130
	fmadd %f0,%f8,%f13,%f0	 # tmp999, tmp1749, *L2.20_130, b
	stfd %f0,b+8@sdarel(%r13)	 # b, tmp999
	beq- %cr7,.L12	 #
	lwz %r10,L3@sdarel(%r13)	 # L3, L3.21
	cmpwi %cr7,%r0,3	 #, tmp1013,
	lfd %f0,8(%r9)	 # b, b
	lfd %f13,0(%r10)	 # *L3.21_137, D.3345
	stfd %f13,16(%r11)	 # loss, D.3345
	lfd %f13,0(%r10)	 # *L3.21_137, *L3.21_137
	fmadd %f0,%f8,%f13,%f0	 # tmp1010, tmp1749, *L3.21_137, b
	stfd %f0,8(%r9)	 # b, tmp1010
	beq- %cr7,.L12	 #
	lwz %r10,L4@sdarel(%r13)	 # L4, L4.22
	cmpwi %cr7,%r0,4	 #, tmp1024,
	lfd %f0,16(%r9)	 # b, b
	lfd %f13,0(%r10)	 # *L4.22_144, D.3340
	stfd %f13,24(%r11)	 # loss, D.3340
	lfd %f13,0(%r10)	 # *L4.22_144, *L4.22_144
	fmadd %f0,%f8,%f13,%f0	 # tmp1021, tmp1749, *L4.22_144, b
	stfd %f0,16(%r9)	 # b, tmp1021
	beq- %cr7,.L12	 #
	lwz %r10,L5@sdarel(%r13)	 # L5, L5.23
	cmpwi %cr7,%r0,5	 #, tmp1035,
	lfd %f0,24(%r9)	 # b, b
	lfd %f13,0(%r10)	 # *L5.23_151, D.3335
	stfd %f13,32(%r11)	 # loss, D.3335
	lfd %f13,0(%r10)	 # *L5.23_151, *L5.23_151
	fmadd %f0,%f8,%f13,%f0	 # tmp1032, tmp1749, *L5.23_151, b
	stfd %f0,24(%r9)	 # b, tmp1032
	beq- %cr7,.L12	 #
	lwz %r10,L6@sdarel(%r13)	 # L6, L6.24
	lfd %f0,32(%r9)	 # b, b
	lfd %f13,0(%r10)	 # *L6.24_158, D.3330
	stfd %f13,40(%r11)	 # loss, D.3330
	lfd %f13,0(%r10)	 # *L6.24_158, *L6.24_158
	fmadd %f0,%f8,%f13,%f0	 # tmp1043, tmp1749, *L6.24_158, b
	stfd %f0,32(%r9)	 # b, tmp1043
.L12:
	lwz %r31,nodes@sdarel(%r13)	 # nodes, nodes.10
	li %r0,0	 # tmp1046,
	stw %r0,j@sdarel(%r13)	 # j, tmp1046
	cmpwi %cr4,%r31,0	 #, tmp1722, nodes.10
	stw %r31,24(%r1)	 # %sfp, nodes.10
	ble- %cr4,.L13	 #
	lwz %r7,20(%r1)	 # %sfp,
	lis %r27,loss-8@ha	 # tmp1897,
	lis %r9,Wloss@ha	 # tmp1902,
	la %r27,loss-8@l(%r27)	 # ivtmp.607,, tmp1897
	lwz %r23,20(%r1)	 # %sfp, i_lsm.203
	la %r10,W@sdarel(%r13)	 # ivtmp.622,
	slwi %r6,%r7,3	 # tmp1900,,
	cmpwi %cr6,%r7,0	 #, tmp1720,
	li %r29,0	 # ivtmp.616,
	li %r7,0	 # ivtmp.619,
	lis %r25,h@ha	 # tmp1895,
	lis %r26,hloss@ha	 # tmp1896,
	slwi %r3,%r31,3	 # D.4317, nodes.10,
	add %r6,%r27,%r6	 # D.4332, ivtmp.607, tmp1900
	la %r0,Wloss@l(%r9)	 # tmp1903,, tmp1902
.L16:
	ble- %cr6,.L61	 #
	la %r28,hloss@l(%r26)	 # tmp1756,, tmp1896
	la %r9,h@l(%r25)	 # tmp1770,, tmp1895
	lfdx %f11,%r28,%r7	 # MEM[symbol: hloss, index: ivtmp.619_202, offset: 0B], prephitmp.195
	mr %r11,%r27	 # ivtmp.607, ivtmp.607
	lfdx %f9,%r9,%r7	 # MEM[symbol: h, index: ivtmp.619_202, offset: 0B], pretmp.199
	li %r9,0	 # ivtmp.613,
.L15:
	lfdu %f13,8(%r11)	 # MEM[(double[6] *)D.4318_1150], D.3321
	add %r8,%r0,%r7	 # tmp1058, tmp1903, ivtmp.619
	lfdx %f0,%r10,%r9	 # MEM[base: D.4324_201, index: ivtmp.613_1149, offset: 0B], D.3317
	fmul %f12,%f13,%f9	 # D.3319, D.3321, pretmp.199
	cmpw %cr7,%r11,%r6	 # D.4332, tmp1063, ivtmp.607
	fmadd %f11,%f13,%f0,%f11	 # prephitmp.195, D.3321, D.3317, prephitmp.195
	fmadd %f10,%f8,%f12,%f0	 # tmp1062, tmp1749, D.3319, D.3317
	stfdx %f12,%r8,%r9	 # MEM[base: D.4345_1229, index: ivtmp.613_1149, offset: 0B], D.3319
	stfdx %f10,%r10,%r9	 # MEM[base: D.4324_201, index: ivtmp.613_1149, offset: 0B], tmp1062
	add %r9,%r9,%r3	 # ivtmp.613, ivtmp.613, D.4317
	bne+ %cr7,.L15	 #
	stfdx %f11,%r28,%r7	 # MEM[symbol: hloss, index: ivtmp.619_202, offset: 0B], prephitmp.195
	mr %r9,%r23	 # y_lsm.229, i_lsm.203
.L14:
	addi %r29,%r29,1	 # ivtmp.616, ivtmp.616,
	addi %r7,%r7,8	 # ivtmp.619, ivtmp.619,
	cmpw %cr7,%r29,%r31	 # nodes.10, tmp1066, ivtmp.616
	addi %r10,%r10,8	 # ivtmp.622, ivtmp.622,
	bne+ %cr7,.L16	 #
	stw %r9,y@sdarel(%r13)	 # y, y_lsm.229
	stw %r31,j@sdarel(%r13)	 # j, nodes.10
.L13:
	cmpwi %cr7,%r4,0	 #, tmp1067, t.32
	lfd %f31,0(%r24)	 # *Lr.8_28, D.2750
	stw %r4,t@sdarel(%r13)	 # t, t.32
	blt- %cr7,.L17	 #
.L72:
	mr %r3,%r30	 #, N.1
	bl getX	 #
	li %r0,0	 # tmp1068,
	stw %r0,j@sdarel(%r13)	 # j, tmp1068
	ble- %cr4,.L18	 #
	lwz %r9,t@sdarel(%r13)	 # t,
	cmpwi %cr6,%r30,0	 #, tmp1721, N.1
	lis %r15,dUc@ha	 # tmp1712,
	lis %r16,dUo@ha	 # tmp1718,
	lis %r6,dhloss@ha	 # tmp1746,
	mullw %r10,%r9,%r31	 #,, nodes.10
	stw %r9,8(%r1)	 # %sfp,
	lis %r11,hloss@ha	 #,
	lis %r28,h_all@ha	 # tmp1747,
	slwi %r29,%r31,3	 # D.4269, nodes.10,
	li %r22,-1	 # ivtmp.599,
	li %r23,0	 # ivtmp.557,
	li %r4,0	 # ivtmp.541,
	la %r14,hloss@l(%r11)	 # tmp1756,,
	la %r15,dUc@l(%r15)	 # tmp1682,, tmp1712
	stw %r10,12(%r1)	 # %sfp,
	slwi %r3,%r10,3	 # tmp1742,,
	la %r16,dUo@l(%r16)	 # tmp1692,, tmp1718
	la %r6,dhloss@l(%r6)	 # tmp1713,, tmp1746
	la %r24,Ui@sdarel(%r13)	 # tmp1684,
	la %r25,Uo@sdarel(%r13)	 # tmp1689,
	la %r26,Uc@sdarel(%r13)	 # tmp1678,
	la %r27,Uf@sdarel(%r13)	 # tmp1680,
	la %r28,h_all@l(%r28)	 # tmp1714,, tmp1747
	addi %r17,%r31,-1	 # D.3795, nodes.10,
	la %r18,bf@sdarel(%r13)	 # tmp1708,
	la %r19,bi@sdarel(%r13)	 # tmp1710,
	la %r20,bc@sdarel(%r13)	 # tmp1707,
	la %r21,bo@sdarel(%r13)	 # tmp1711,
.L23:
	lis %r7,dfg@ha	 #,
	lis %r9,dig@ha	 #,
	lfdx %f0,%r14,%r4	 # MEM[symbol: hloss, index: ivtmp.541_522, offset: 0B], D.3366
	la %r7,dfg@l(%r7)	 #,,
	la %r9,dig@l(%r9)	 #,,
	add %r8,%r7,%r3	 # tmp1073,, tmp1742
	lis %r7,dcg@ha	 #,
	la %r7,dcg@l(%r7)	 #,,
	add %r10,%r9,%r3	 # tmp1078,, tmp1742
	lfdx %f10,%r8,%r4	 # MEM[base: D.4273_1184, index: ivtmp.541_522, offset: 0B], MEM[base: D.4273_1184, index: ivtmp.541_522, offset: 0B]
	add %r11,%r7,%r3	 # tmp1083,, tmp1742
	lis %r7,dOg@ha	 #,
	lfdx %f11,%r10,%r4	 # MEM[base: D.4276_1187, index: ivtmp.541_522, offset: 0B], MEM[base: D.4276_1187, index: ivtmp.541_522, offset: 0B]
	la %r7,dOg@l(%r7)	 #,,
	lfdx %f12,%r11,%r4	 # MEM[base: D.4279_1190, index: ivtmp.541_522, offset: 0B], MEM[base: D.4279_1190, index: ivtmp.541_522, offset: 0B]
	lis %r10,dUi@ha	 #,
	add %r9,%r7,%r3	 # tmp1088,, tmp1742
	fmul %f10,%f0,%f10	 # tf_lsm.222, D.3366, MEM[base: D.4273_1184, index: ivtmp.541_522, offset: 0B]
	slwi %r11,%r23,3	 # tmp1092, ivtmp.557,
	lfdx %f13,%r9,%r4	 # MEM[base: D.4282_1193, index: ivtmp.541_522, offset: 0B], MEM[base: D.4282_1193, index: ivtmp.541_522, offset: 0B]
	fmul %f11,%f0,%f11	 # ti_lsm.223, D.3366, MEM[base: D.4276_1187, index: ivtmp.541_522, offset: 0B]
	lis %r9,dUf@ha	 #,
	la %r10,dUi@l(%r10)	 #,,
	fmul %f12,%f0,%f12	 # tc_lsm.224, D.3366, MEM[base: D.4279_1190, index: ivtmp.541_522, offset: 0B]
	la %r9,dUf@l(%r9)	 #,,
	add %r8,%r10,%r11	 # ivtmp.522,, tmp1092
	add %r7,%r9,%r11	 # ivtmp.514,, tmp1092
	add %r10,%r15,%r11	 # ivtmp.527, tmp1682, tmp1092
	fmul %f13,%f0,%f13	 # tO_lsm.225, D.3366, MEM[base: D.4282_1193, index: ivtmp.541_522, offset: 0B]
	add %r11,%r16,%r11	 # ivtmp.532, tmp1692, tmp1092
	li %r9,0	 # ivtmp.495,
.L19:
	add %r12,%r24,%r0	 # tmp1108, tmp1684, ivtmp.595
	lfdx %f8,%r6,%r9	 # MEM[symbol: dhloss, index: ivtmp.495_516, offset: 0B], MEM[symbol: dhloss, index: ivtmp.495_516, offset: 0B]
	lfdx %f9,%r12,%r9	 # MEM[base: D.4298_1209, index: ivtmp.495_516, offset: 0B], MEM[base: D.4298_1209, index: ivtmp.495_516, offset: 0B]
	add %r12,%r25,%r0	 # tmp1112, tmp1689, ivtmp.595
	lfdx %f0,%r12,%r9	 # MEM[base: D.4295_1206, index: ivtmp.495_516, offset: 0B], MEM[base: D.4295_1206, index: ivtmp.495_516, offset: 0B]
	add %r12,%r26,%r0	 # tmp1116, tmp1678, ivtmp.595
	lfd %f7,0(%r7)	 # MEM[(double[100] *)D.4191_1161], MEM[(double[100] *)D.4191_1161]
	fmul %f9,%f11,%f9	 # tmp1110, ti_lsm.223, MEM[base: D.4298_1209, index: ivtmp.495_516, offset: 0B]
	lfd %f6,0(%r11)	 # MEM[(double[100] *)D.4200_1170], MEM[(double[100] *)D.4200_1170]
	fmadd %f9,%f13,%f0,%f9	 # tmp1114, tO_lsm.225, MEM[base: D.4295_1206, index: ivtmp.495_516, offset: 0B], tmp1110
	lfdx %f0,%r12,%r9	 # MEM[base: D.4301_1212, index: ivtmp.495_516, offset: 0B], MEM[base: D.4301_1212, index: ivtmp.495_516, offset: 0B]
	add %r12,%r27,%r0	 # tmp1120, tmp1680, ivtmp.595
	fmadd %f9,%f12,%f0,%f9	 # tmp1118, tc_lsm.224, MEM[base: D.4301_1212, index: ivtmp.495_516, offset: 0B], tmp1114
	lfdx %f0,%r12,%r9	 # MEM[base: D.4304_1215, index: ivtmp.495_516, offset: 0B], MEM[base: D.4304_1215, index: ivtmp.495_516, offset: 0B]
	add %r12,%r28,%r3	 # tmp1127, tmp1714, tmp1742
	fmadd %f9,%f10,%f0,%f9	 # tmp1122, tf_lsm.222, MEM[base: D.4304_1215, index: ivtmp.495_516, offset: 0B], tmp1118
	lfdx %f0,%r12,%r9	 # MEM[base: D.4194_1164, index: ivtmp.495_516, offset: 0B], D.3399
	fadd %f9,%f8,%f9	 # tmp1125, MEM[symbol: dhloss, index: ivtmp.495_516, offset: 0B], tmp1122
	lfd %f8,0(%r8)	 # MEM[(double[100] *)D.4196_1166], MEM[(double[100] *)D.4196_1166]
	fmadd %f7,%f10,%f0,%f7	 # tmp1130, tf_lsm.222, D.3399, MEM[(double[100] *)D.4191_1161]
	stfdx %f9,%r6,%r9	 # MEM[symbol: dhloss, index: ivtmp.495_516, offset: 0B], tmp1125
	addi %r9,%r9,8	 # ivtmp.495, ivtmp.495,
	fmadd %f8,%f11,%f0,%f8	 # tmp1132, ti_lsm.223, D.3399, MEM[(double[100] *)D.4196_1166]
	lfd %f9,0(%r10)	 # MEM[(double[100] *)D.4198_1168], MEM[(double[100] *)D.4198_1168]
	cmpw %cr7,%r9,%r29	 # D.4269, tmp1138, ivtmp.495
	stfd %f7,0(%r7)	 # MEM[(double[100] *)D.4191_1161], tmp1130
	addi %r7,%r7,8	 # ivtmp.514, ivtmp.514,
	stfd %f8,0(%r8)	 # MEM[(double[100] *)D.4196_1166], tmp1132
	addi %r8,%r8,8	 # ivtmp.522, ivtmp.522,
	fmadd %f9,%f12,%f0,%f9	 # tmp1134, tc_lsm.224, D.3399, MEM[(double[100] *)D.4198_1168]
	fmadd %f0,%f13,%f0,%f6	 # tmp1136, tO_lsm.225, D.3399, MEM[(double[100] *)D.4200_1170]
	stfd %f9,0(%r10)	 # MEM[(double[100] *)D.4198_1168], tmp1134
	addi %r10,%r10,8	 # ivtmp.527, ivtmp.527,
	stfd %f0,0(%r11)	 # MEM[(double[100] *)D.4200_1170], tmp1136
	addi %r11,%r11,8	 # ivtmp.532, ivtmp.532,
	bne+ %cr7,.L19	 #
	add %r7,%r17,%r23	 # f_lsm.226, D.3795, ivtmp.557
	fmul %f2,%f31,%f10	 # prephitmp.195, D.2750, tf_lsm.222
	fmul %f3,%f31,%f11	 # prephitmp.195, D.2750, ti_lsm.223
	fmul %f4,%f31,%f12	 # prephitmp.195, D.2750, tc_lsm.224
	fmul %f5,%f31,%f13	 # prephitmp.195, D.2750, tO_lsm.225
	ble- %cr6,.L109	 #
	lis %r11,Wf@ha	 #,
	slwi %r9,%r22,3	 # tmp1140, ivtmp.599,
	mtctr %r30	 # N.1, N.1
	la %r11,Wf@l(%r11)	 #,,
	lis %r7,X-8@ha	 #,
	add %r8,%r11,%r9	 # ivtmp.466,, tmp1140
	la %r12,X-8@l(%r7)	 # ivtmp.470,,
	lis %r11,Wi@ha	 #,
	lis %r7,Wc@ha	 #,
	la %r11,Wi@l(%r11)	 #,,
	la %r7,Wc@l(%r7)	 #,,
	add %r10,%r11,%r9	 # ivtmp.477,, tmp1140
	add %r11,%r7,%r9	 # ivtmp.482,, tmp1140
	lis %r7,Wo@ha	 #,
	la %r7,Wo@l(%r7)	 #,,
	add %r9,%r7,%r9	 # ivtmp.487,, tmp1140
	li %r7,0	 # ivtmp.463,
.L22:
	lfdu %f0,8(%r12)	 # MEM[(double[6] *)D.4120_1001], D.3416
	addi %r7,%r7,1	 # ivtmp.463, ivtmp.463,
	lfdu %f7,8(%r8)	 # MEM[(double[2] *)D.4119_16], MEM[(double[2] *)D.4119_16]
	lfdu %f8,8(%r10)	 # MEM[(double[2] *)D.4122_1127], MEM[(double[2] *)D.4122_1127]
	fneg %f0,%f0	 # tmp1153, D.3416
	lfdu %f9,8(%r11)	 # MEM[(double[2] *)D.4124_1129], MEM[(double[2] *)D.4124_1129]
	lfdu %f6,8(%r9)	 # MEM[(double[2] *)D.4126_1131], MEM[(double[2] *)D.4126_1131]
	fmadd %f7,%f0,%f2,%f7	 # tmp1154, tmp1153, prephitmp.195, MEM[(double[2] *)D.4119_16]
	fmadd %f8,%f0,%f3,%f8	 # tmp1157, tmp1153, prephitmp.195, MEM[(double[2] *)D.4122_1127]
	fmadd %f9,%f0,%f4,%f9	 # tmp1160, tmp1153, prephitmp.195, MEM[(double[2] *)D.4124_1129]
	fmadd %f0,%f0,%f5,%f6	 # tmp1163, tmp1153, prephitmp.195, MEM[(double[2] *)D.4126_1131]
	stfd %f7,0(%r8)	 # MEM[(double[2] *)D.4119_16], tmp1154
	stfd %f8,0(%r10)	 # MEM[(double[2] *)D.4122_1127], tmp1157
	stfd %f9,0(%r11)	 # MEM[(double[2] *)D.4124_1129], tmp1160
	stfd %f0,0(%r9)	 # MEM[(double[2] *)D.4126_1131], tmp1163
	bdnz .L22	 #
	addi %r7,%r7,-1	 # tmp1166, ivtmp.463,
	mr %r9,%r30	 # i_lsm.220, N.1
	add %r7,%r23,%r7	 # f_lsm.226, ivtmp.557, tmp1166
.L21:
	lfdx %f7,%r18,%r4	 # MEM[symbol: bf, index: ivtmp.541_522, offset: 0B], MEM[symbol: bf, index: ivtmp.541_522, offset: 0B]
	add %r23,%r23,%r31	 # ivtmp.557, ivtmp.557, nodes.10
	add %r0,%r0,%r29	 # ivtmp.595, ivtmp.595, D.4269
	lfdx %f8,%r19,%r4	 # MEM[symbol: bi, index: ivtmp.541_522, offset: 0B], MEM[symbol: bi, index: ivtmp.541_522, offset: 0B]
	add %r22,%r22,%r31	 # ivtmp.599, ivtmp.599, nodes.10
	lfdx %f9,%r20,%r4	 # MEM[symbol: bc, index: ivtmp.541_522, offset: 0B], MEM[symbol: bc, index: ivtmp.541_522, offset: 0B]
	lfdx %f0,%r21,%r4	 # MEM[symbol: bo, index: ivtmp.541_522, offset: 0B], MEM[symbol: bo, index: ivtmp.541_522, offset: 0B]
	fsub %f2,%f7,%f2	 # tmp1170, MEM[symbol: bf, index: ivtmp.541_522, offset: 0B], prephitmp.195
	fsub %f3,%f8,%f3	 # tmp1174, MEM[symbol: bi, index: ivtmp.541_522, offset: 0B], prephitmp.195
	fsub %f4,%f9,%f4	 # tmp1178, MEM[symbol: bc, index: ivtmp.541_522, offset: 0B], prephitmp.195
	fsub %f5,%f0,%f5	 # tmp1182, MEM[symbol: bo, index: ivtmp.541_522, offset: 0B], prephitmp.195
	stfdx %f2,%r18,%r4	 # MEM[symbol: bf, index: ivtmp.541_522, offset: 0B], tmp1170
	stfdx %f3,%r19,%r4	 # MEM[symbol: bi, index: ivtmp.541_522, offset: 0B], tmp1174
	stfdx %f4,%r20,%r4	 # MEM[symbol: bc, index: ivtmp.541_522, offset: 0B], tmp1178
	stfdx %f5,%r21,%r4	 # MEM[symbol: bo, index: ivtmp.541_522, offset: 0B], tmp1182
	addi %r4,%r4,8	 # ivtmp.541, ivtmp.541,
	cmpw %cr7,%r4,%r29	 # D.4269, tmp1183, ivtmp.541
	bne+ %cr7,.L23	 #
	lwz %r10,12(%r1)	 # %sfp,
	lis %r11,.LC0@ha	 # tmp1796,
	stw %r9,i@sdarel(%r13)	 # i, i_lsm.220
	lis %r9,hloss-8@ha	 # tmp1186,
	add %r17,%r17,%r10	 # tmp1184, D.3795,
	stw %r31,j@sdarel(%r13)	 # j, nodes.10
	la %r9,hloss-8@l(%r9)	 # ivtmp.446,, tmp1186
	stfd %f10,tf@sdarel(%r13)	 # tf, tf_lsm.222
	add %r4,%r9,%r4	 # D.4078, ivtmp.446, ivtmp.541
	stfd %f11,ti@sdarel(%r13)	 # ti, ti_lsm.223
	stfd %f13,tO@sdarel(%r13)	 # tO, tO_lsm.225
	stw %r7,f@sdarel(%r13)	 # f, f_lsm.226
	stw %r17,f2@sdarel(%r13)	 # f2, tmp1184
	stfd %f12,tc@sdarel(%r13)	 # tc, tc_lsm.224
	lfd %f12,.LC0@l(%r11)	 #, tmp1870
	lis %r11,dhloss-8@ha	 # tmp1187,
	la %r11,dhloss-8@l(%r11)	 # ivtmp.452,, tmp1187
.L24:
	lfdu %f13,8(%r9)	 # MEM[(double[11] *)D.4070_161], MEM[(double[11] *)D.4070_161]
	lfdu %f0,8(%r11)	 # MEM[(double[11] *)D.4071_1051], MEM[(double[11] *)D.4071_1051]
	cmpw %cr7,%r9,%r4	 # D.4078, tmp1197, ivtmp.446
	fmul %f0,%f13,%f0	 # tmp1193, MEM[(double[11] *)D.4070_161], MEM[(double[11] *)D.4071_1051]
	stfd %f12,0(%r11)	 # MEM[(double[11] *)D.4071_1051], tmp1870
	stfd %f0,0(%r9)	 # MEM[(double[11] *)D.4070_161], tmp1193
	bne+ %cr7,.L24	 #
	stw %r31,k@sdarel(%r13)	 # k, nodes.10
.L59:
	lwz %r11,8(%r1)	 # %sfp,
	addi %r4,%r11,-1	 # t.32,,
	cmpwi %cr7,%r4,0	 #, tmp1198, t.32
	stw %r4,t@sdarel(%r13)	 # t, t.32
	bge+ %cr7,.L72	 #
	lwz %r7,T@sdarel(%r13)	 # T,
	lwz %r9,Y@sdarel(%r13)	 # Y,
	stw %r7,16(%r1)	 # %sfp,
	stw %r9,20(%r1)	 # %sfp,
	lwz %r30,N@sdarel(%r13)	 # N, N.1
	lwz %r31,nodes@sdarel(%r13)	 # nodes, nodes.10
.L17:
	lwz %r10,24(%r1)	 # %sfp,
	li %r9,0	 # tmp1199,
	stw %r9,i@sdarel(%r13)	 # i, tmp1199
	mullw. %r0,%r10,%r10	 # D.3460,,
	ble- %cr0,.L26	 #
	slwi %r28,%r0,3	 # D.4050, D.3460,
	fneg %f31,%f31	 # tmp1750, D.2750
	lis %r9,.LC0@ha	 # tmp1801,
	addi %r28,%r28,-8	 # tmp1951, D.4050,
	lis %r4,dUc@ha	 # tmp1712,
	lfd %f0,.LC0@l(%r9)	 #, tmp1869
	srwi %r28,%r28,3	 # tmp1952, tmp1951,
	lis %r6,dUo@ha	 # tmp1718,
	addi %r28,%r28,1	 #, tmp1952,
	lis %r29,dUf@ha	 # tmp1715,
	lis %r3,dUi@ha	 # tmp1716,
	mtctr %r28	 # tmp1949,
	li %r9,0	 # ivtmp.380,
	la %r29,dUf@l(%r29)	 # tmp1685,, tmp1715
	la %r3,dUi@l(%r3)	 # tmp1687,, tmp1716
	la %r4,dUc@l(%r4)	 # tmp1682,, tmp1712
	la %r6,dUo@l(%r6)	 # tmp1692,, tmp1718
	la %r7,Ui@sdarel(%r13)	 # tmp1684,
	la %r8,Uo@sdarel(%r13)	 # tmp1689,
	la %r10,Uc@sdarel(%r13)	 # tmp1678,
	la %r11,Uf@sdarel(%r13)	 # tmp1680,
.L27:
	lfdx %f6,%r29,%r9	 # MEM[symbol: dUf, index: ivtmp.380_629, offset: 0B], MEM[symbol: dUf, index: ivtmp.380_629, offset: 0B]
	lfdx %f10,%r11,%r9	 # MEM[symbol: Uf, index: ivtmp.380_629, offset: 0B], MEM[symbol: Uf, index: ivtmp.380_629, offset: 0B]
	lfdx %f7,%r3,%r9	 # MEM[symbol: dUi, index: ivtmp.380_629, offset: 0B], MEM[symbol: dUi, index: ivtmp.380_629, offset: 0B]
	lfdx %f11,%r7,%r9	 # MEM[symbol: Ui, index: ivtmp.380_629, offset: 0B], MEM[symbol: Ui, index: ivtmp.380_629, offset: 0B]
	lfdx %f8,%r4,%r9	 # MEM[symbol: dUc, index: ivtmp.380_629, offset: 0B], MEM[symbol: dUc, index: ivtmp.380_629, offset: 0B]
	fmadd %f10,%f31,%f6,%f10	 # tmp1206, tmp1750, MEM[symbol: dUf, index: ivtmp.380_629, offset: 0B], MEM[symbol: Uf, index: ivtmp.380_629, offset: 0B]
	lfdx %f12,%r10,%r9	 # MEM[symbol: Uc, index: ivtmp.380_629, offset: 0B], MEM[symbol: Uc, index: ivtmp.380_629, offset: 0B]
	lfdx %f9,%r6,%r9	 # MEM[symbol: dUo, index: ivtmp.380_629, offset: 0B], MEM[symbol: dUo, index: ivtmp.380_629, offset: 0B]
	fmadd %f11,%f31,%f7,%f11	 # tmp1219, tmp1750, MEM[symbol: dUi, index: ivtmp.380_629, offset: 0B], MEM[symbol: Ui, index: ivtmp.380_629, offset: 0B]
	lfdx %f13,%r8,%r9	 # MEM[symbol: Uo, index: ivtmp.380_629, offset: 0B], MEM[symbol: Uo, index: ivtmp.380_629, offset: 0B]
	fmadd %f12,%f31,%f8,%f12	 # tmp1232, tmp1750, MEM[symbol: dUc, index: ivtmp.380_629, offset: 0B], MEM[symbol: Uc, index: ivtmp.380_629, offset: 0B]
	stfdx %f10,%r11,%r9	 # MEM[symbol: Uf, index: ivtmp.380_629, offset: 0B], tmp1206
	stfdx %f0,%r29,%r9	 # MEM[symbol: dUf, index: ivtmp.380_629, offset: 0B], tmp1869
	fmadd %f13,%f31,%f9,%f13	 # tmp1245, tmp1750, MEM[symbol: dUo, index: ivtmp.380_629, offset: 0B], MEM[symbol: Uo, index: ivtmp.380_629, offset: 0B]
	stfdx %f11,%r7,%r9	 # MEM[symbol: Ui, index: ivtmp.380_629, offset: 0B], tmp1219
	stfdx %f0,%r3,%r9	 # MEM[symbol: dUi, index: ivtmp.380_629, offset: 0B], tmp1869
	stfdx %f12,%r10,%r9	 # MEM[symbol: Uc, index: ivtmp.380_629, offset: 0B], tmp1232
	stfdx %f0,%r4,%r9	 # MEM[symbol: dUc, index: ivtmp.380_629, offset: 0B], tmp1869
	stfdx %f13,%r8,%r9	 # MEM[symbol: Uo, index: ivtmp.380_629, offset: 0B], tmp1245
	stfdx %f0,%r6,%r9	 # MEM[symbol: dUo, index: ivtmp.380_629, offset: 0B], tmp1869
	addi %r9,%r9,8	 # ivtmp.380, ivtmp.380,
	bdnz .L27	 #
	stw %r0,i@sdarel(%r13)	 # i, D.3460
.L26:
	lwz %r11,16(%r1)	 # %sfp,
	li %r0,0	 # tmp1254,
	cmpwi %cr3,%r31,0	 #, tmp1725, nodes.10
	stw %r31,24(%r1)	 # %sfp, nodes.10
	cmpwi %cr7,%r11,0	 #, tmp1256,
	stw %r0,t@sdarel(%r13)	 # t, tmp1254
	ble- %cr7,.L28	 #
	stw %r30,16(%r1)	 # %sfp, N.1
	lis %r29,Cprev@ha	 # tmp1867,
	li %r4,0	 # t.54,
	la %r29,Cprev@l(%r29)	 # tmp1868,, tmp1867
.L36:
	lwz %r3,16(%r1)	 # %sfp,
	bl getX	 #
	li %r0,0	 # tmp1257,
	stw %r0,k@sdarel(%r13)	 # k, tmp1257
	ble- %cr3,.L29	 #
	lwz %r0,16(%r1)	 # %sfp,
	la %r9,bf@sdarel(%r13)	 #,
	lis %r17,C@ha	 # tmp1705,
	lwz %r10,16(%r1)	 # %sfp,
	la %r17,C@l(%r17)	 # tmp1764,, tmp1705
	lis %r7,h@ha	 #,
	stw %r9,12(%r1)	 # %sfp,
	cmpwi %cr4,%r0,0	 #, tmp1723,
	lis %r18,h_next@ha	 # tmp1695,
	addi %r0,%r31,-1	 # D.3777, nodes.10,
	lis %r24,Wf@ha	 # tmp1847,
	stw %r17,8(%r1)	 # %sfp, tmp1764
	lis %r25,Wi@ha	 # tmp1849,
	lis %r26,Wc@ha	 # tmp1851,
	lis %r27,Wo@ha	 # tmp1853,
	li %r4,0	 # k.55,
	la %r28,h@l(%r7)	 # tmp1770,,
	la %r19,Ui@sdarel(%r13)	 # tmp1684,
	la %r20,Uo@sdarel(%r13)	 # tmp1689,
	la %r21,Uc@sdarel(%r13)	 # tmp1678,
	la %r22,Uf@sdarel(%r13)	 # tmp1680,
	la %r14,bi@sdarel(%r13)	 # tmp1710,
	la %r15,bc@sdarel(%r13)	 # tmp1707,
	la %r16,bo@sdarel(%r13)	 # tmp1711,
	slwi %r30,%r31,3	 # D.3913, nodes.10,
	la %r18,h_next@l(%r18)	 # tmp1754,, tmp1695
	slwi %r23,%r10,3	 # D.3981,,
	la %r24,Wf@l(%r24)	 # tmp1848,, tmp1847
	la %r25,Wi@l(%r25)	 # tmp1850,, tmp1849
	la %r26,Wc@l(%r26)	 # tmp1852,, tmp1851
	la %r27,Wo@l(%r27)	 # tmp1854,, tmp1853
	mr %r17,%r0	 # D.3777, D.3777
.L34:
	mullw %r3,%r31,%r4	 # prephitmp.193, nodes.10, k.55
	ble- %cr4,.L110	 #
	lfd %f10,Wfx@sdarel(%r13)	 # Wfx, Wfx_lsm.214
	lis %r11,X@ha	 #,
	li %r9,0	 # ivtmp.360,
	lfd %f11,Wix@sdarel(%r13)	 # Wix, Wix_lsm.215
	la %r6,X@l(%r11)	 # tmp1766,,
	slwi %r0,%r3,3	 # tmp1732, prephitmp.193,
	lfd %f12,Wcx@sdarel(%r13)	 # Wcx, Wcx_lsm.216
	lfd %f13,Wox@sdarel(%r13)	 # Wox, Wox_lsm.217
.L32:
	add %r7,%r24,%r0	 # tmp1264, tmp1848, tmp1732
	add %r8,%r25,%r0	 # tmp1269, tmp1850, tmp1732
	lfdx %f0,%r6,%r9	 # MEM[symbol: X, index: ivtmp.360_696, offset: 0B], D.3562
	add %r10,%r26,%r0	 # tmp1274, tmp1852, tmp1732
	add %r11,%r27,%r0	 # tmp1279, tmp1854, tmp1732
	lfdx %f6,%r7,%r9	 # MEM[base: D.3970_236, index: ivtmp.360_696, offset: 0B], MEM[base: D.3970_236, index: ivtmp.360_696, offset: 0B]
	lfdx %f7,%r8,%r9	 # MEM[base: D.3973_905, index: ivtmp.360_696, offset: 0B], MEM[base: D.3973_905, index: ivtmp.360_696, offset: 0B]
	lfdx %f8,%r10,%r9	 # MEM[base: D.3976_1050, index: ivtmp.360_696, offset: 0B], MEM[base: D.3976_1050, index: ivtmp.360_696, offset: 0B]
	lfdx %f9,%r11,%r9	 # MEM[base: D.3979_983, index: ivtmp.360_696, offset: 0B], MEM[base: D.3979_983, index: ivtmp.360_696, offset: 0B]
	addi %r9,%r9,8	 # ivtmp.360, ivtmp.360,
	fmadd %f10,%f0,%f6,%f10	 # Wfx_lsm.214, D.3562, MEM[base: D.3970_236, index: ivtmp.360_696, offset: 0B], Wfx_lsm.214
	cmpw %cr7,%r9,%r23	 # D.3981, tmp1283, ivtmp.360
	fmadd %f11,%f0,%f7,%f11	 # Wix_lsm.215, D.3562, MEM[base: D.3973_905, index: ivtmp.360_696, offset: 0B], Wix_lsm.215
	fmadd %f12,%f0,%f8,%f12	 # Wcx_lsm.216, D.3562, MEM[base: D.3976_1050, index: ivtmp.360_696, offset: 0B], Wcx_lsm.216
	fmadd %f13,%f0,%f9,%f13	 # Wox_lsm.217, D.3562, MEM[base: D.3979_983, index: ivtmp.360_696, offset: 0B], Wox_lsm.217
	bne+ %cr7,.L32	 #
	stfd %f10,Wfx@sdarel(%r13)	 # Wfx, Wfx_lsm.214
	stfd %f11,Wix@sdarel(%r13)	 # Wix, Wix_lsm.215
	stfd %f12,Wcx@sdarel(%r13)	 # Wcx, Wcx_lsm.216
	stfd %f13,Wox@sdarel(%r13)	 # Wox, Wox_lsm.217
.L33:
	lfd %f0,hf@sdarel(%r13)	 # hf, hf_lsm.208
	li %r9,0	 # ivtmp.340,
	lfd %f11,hi@sdarel(%r13)	 # hi, hi_lsm.209
	lfd %f12,hc@sdarel(%r13)	 # hc, hc_lsm.210
	lfd %f13,ho@sdarel(%r13)	 # ho, ho_lsm.211
.L31:
	add %r7,%r22,%r0	 # tmp1288, tmp1680, tmp1732
	add %r8,%r19,%r0	 # tmp1292, tmp1684, tmp1732
	lfdx %f10,%r28,%r9	 # MEM[symbol: h, index: ivtmp.340_660, offset: 0B], D.3543
	add %r10,%r21,%r0	 # tmp1296, tmp1678, tmp1732
	add %r11,%r20,%r0	 # tmp1300, tmp1689, tmp1732
	lfdx %f6,%r7,%r9	 # MEM[base: D.3936_1025, index: ivtmp.340_660, offset: 0B], MEM[base: D.3936_1025, index: ivtmp.340_660, offset: 0B]
	lfdx %f7,%r8,%r9	 # MEM[base: D.3939_211, index: ivtmp.340_660, offset: 0B], MEM[base: D.3939_211, index: ivtmp.340_660, offset: 0B]
	lfdx %f8,%r10,%r9	 # MEM[base: D.3942_875, index: ivtmp.340_660, offset: 0B], MEM[base: D.3942_875, index: ivtmp.340_660, offset: 0B]
	lfdx %f9,%r11,%r9	 # MEM[base: D.3945_197, index: ivtmp.340_660, offset: 0B], MEM[base: D.3945_197, index: ivtmp.340_660, offset: 0B]
	addi %r9,%r9,8	 # ivtmp.340, ivtmp.340,
	fmadd %f0,%f10,%f6,%f0	 # hf_lsm.208, D.3543, MEM[base: D.3936_1025, index: ivtmp.340_660, offset: 0B], hf_lsm.208
	cmpw %cr7,%r9,%r30	 # D.3913, tmp1303, ivtmp.340
	fmadd %f11,%f10,%f7,%f11	 # hi_lsm.209, D.3543, MEM[base: D.3939_211, index: ivtmp.340_660, offset: 0B], hi_lsm.209
	fmadd %f12,%f10,%f8,%f12	 # hc_lsm.210, D.3543, MEM[base: D.3942_875, index: ivtmp.340_660, offset: 0B], hc_lsm.210
	fmadd %f13,%f10,%f9,%f13	 # ho_lsm.211, D.3543, MEM[base: D.3945_197, index: ivtmp.340_660, offset: 0B], ho_lsm.211
	bne+ %cr7,.L31	 #
	lfd %f1,Wfx@sdarel(%r13)	 # Wfx, Wfx
	slwi %r4,%r4,3	 # tmp1309, k.55,
	add %r3,%r3,%r17	 # tmp1305, prephitmp.193, D.3777
	lwz %r7,12(%r1)	 # %sfp,
	stw %r3,iter@sdarel(%r13)	 # iter, tmp1305
	lfdx %f10,%r7,%r4	 # bf, tmp1312
	fadd %f1,%f0,%f1	 # tmp1306, hf_lsm.208, Wfx
	stfd %f11,hi@sdarel(%r13)	 # hi, hi_lsm.209
	stfd %f12,hc@sdarel(%r13)	 # hc, hc_lsm.210
	fadd %f1,%f1,%f10	 #, tmp1306, tmp1312
	stfd %f0,hf@sdarel(%r13)	 # hf, hf_lsm.208
	stfd %f13,ho@sdarel(%r13)	 # ho, ho_lsm.211
	stw %r31,i@sdarel(%r13)	 # i, nodes.10
	bl sigmoid	 #
	lfd %f0,hi@sdarel(%r13)	 # hi, hi
	lwz %r0,k@sdarel(%r13)	 # k, k
	lfd %f13,Wix@sdarel(%r13)	 # Wix, Wix
	slwi %r0,%r0,3	 # tmp1318, k,
	stfd %f1,Fg@sdarel(%r13)	 # Fg,
	fadd %f13,%f13,%f0	 # tmp1313, Wix, hi
	lfdx %f0,%r14,%r0	 # bi, tmp1321
	fadd %f1,%f13,%f0	 #, tmp1313, tmp1321
	bl sigmoid	 #
	lfd %f0,hc@sdarel(%r13)	 # hc, hc
	lwz %r0,k@sdarel(%r13)	 # k, k.55
	lfd %f13,Wcx@sdarel(%r13)	 # Wcx, Wcx
	slwi %r0,%r0,3	 # tmp1326, k.55,
	stfd %f1,Ig@sdarel(%r13)	 # Ig,
	fadd %f13,%f13,%f0	 # tmp1322, Wcx, hc
	lfdx %f0,%r15,%r0	 # bc, tmp1329
	stw %r0,28(%r1)	 #,
	fadd %f1,%f13,%f0	 #, tmp1322, tmp1329
	bl tanh	 #
	lfd %f12,Wox@sdarel(%r13)	 # Wox, Wox
	lfd %f13,ho@sdarel(%r13)	 # ho, ho
	lwz %r0,28(%r1)	 #,
	stfd %f1,Cg@sdarel(%r13)	 # Cg,
	lfdx %f0,%r16,%r0	 # bo, tmp1337
	fadd %f13,%f12,%f13	 # tmp1330, Wox, ho
	fadd %f1,%f13,%f0	 #, tmp1330, tmp1337
	bl sigmoid	 #
	lfd %f30,Ig@sdarel(%r13)	 # Ig, Ig.81
	lfd %f31,Cg@sdarel(%r13)	 # Cg, Cg.82
	fmr %f29,%f1	 # Og.79,
	lwz %r11,k@sdarel(%r13)	 # k, k.55
	lfd %f28,Fg@sdarel(%r13)	 # Fg, Fg.80
	slwi %r9,%r11,3	 # tmp1340, k.55,
	fmul %f0,%f30,%f31	 # tmp1342, Ig.81, Cg.82
	lwz %r10,8(%r1)	 # %sfp,
	lfdx %f27,%r29,%r9	 # Cprev, D.3510
	stfd %f1,Og@sdarel(%r13)	 # Og, Og.79
	fmadd %f0,%f27,%f28,%f0	 # D.3504, D.3510, Fg.80, tmp1342
	stfdx %f0,%r10,%r9	 # C, D.3504
	fmr %f1,%f0	 #, D.3504
	stw %r9,32(%r1)	 #,
	stw %r11,28(%r1)	 #,
	bl tanh	 #
	lis %r7,.LC2@ha	 #,
	lwz %r0,t@sdarel(%r13)	 # t, t
	fneg %f8,%f31	 # tmp1406, Cg.82
	la %r7,.LC2@l(%r7)	 #,,
	fneg %f12,%f1	 # tmp1357, D.3502
	lwz %r11,28(%r1)	 #,
	lis %r10,dC@ha	 #,
	lfs %f0,0(%r7)	 #, tmp1359
	fmul %f13,%f29,%f1	 # D.3500, Og.79, D.3502
	mullw %r0,%r31,%r0	 # tmp1351, nodes.10, t
	la %r10,dC@l(%r10)	 #,,
	lwz %r9,32(%r1)	 #,
	lis %r7,dfg@ha	 #,
	la %r7,dfg@l(%r7)	 #,,
	fmadd %f1,%f12,%f1,%f0	 # tmp1358, tmp1357, D.3502, tmp1359
	stfdx %f13,%r18,%r9	 # h_next, D.3500
	lis %r9,h_all@ha	 #,
	fsub %f12,%f0,%f29	 # tmp1371, tmp1359, Og.79
	add %r0,%r11,%r0	 # D.3498, k.55, tmp1351
	la %r9,h_all@l(%r9)	 #,,
	fsub %f9,%f0,%f28	 # tmp1383, tmp1359, Fg.80
	slwi %r0,%r0,3	 # tmp1355, D.3498,
	lis %r11,dOg@ha	 #,
	fmul %f29,%f29,%f1	 # ddc.84, Og.79, tmp1358
	stfdx %f13,%r9,%r0	 # h_all, D.3500
	lis %r9,dig@ha	 #,
	la %r11,dOg@l(%r11)	 #,,
	fsub %f10,%f0,%f30	 # tmp1395, tmp1359, Ig.81
	la %r9,dig@l(%r9)	 #,,
	fmadd %f0,%f8,%f31,%f0	 # tmp1407, tmp1406, Cg.82, tmp1359
	fmul %f7,%f31,%f29	 # tmp1393, Cg.82, ddc.84
	stfdx %f29,%r10,%r0	 # dC, ddc.84
	lis %r10,dcg@ha	 #,
	fmul %f27,%f27,%f29	 # tmp1381, D.3510, ddc.84
	la %r10,dcg@l(%r10)	 #,,
	stfd %f29,ddc@sdarel(%r13)	 # ddc, ddc.84
	fmul %f11,%f30,%f29	 # tmp1405, Ig.81, ddc.84
	fmul %f30,%f30,%f7	 # tmp1394, Ig.81, tmp1393
	fmul %f28,%f28,%f27	 # tmp1382, Fg.80, tmp1381
	fmul %f12,%f13,%f12	 # tmp1376, D.3500, tmp1371
	fmul %f30,%f30,%f10	 # tmp1400, tmp1394, tmp1395
	fmul %f28,%f28,%f9	 # tmp1388, tmp1382, tmp1383
	fmul %f0,%f11,%f0	 # tmp1412, tmp1405, tmp1407
	stfdx %f12,%r11,%r0	 # dOg, tmp1376
	stfdx %f30,%r9,%r0	 # dig, tmp1400
	stfdx %f28,%r7,%r0	 # dfg, tmp1388
	stfdx %f0,%r10,%r0	 # dcg, tmp1412
	bl ResetVar	 #
	lwz %r4,k@sdarel(%r13)	 # k, k.55
	addi %r4,%r4,1	 # k.55, k.55,
	cmpw %cr7,%r31,%r4	 # k.55, tmp1413, nodes.10
	stw %r4,k@sdarel(%r13)	 # k, k.55
	bgt+ %cr7,.L34	 #
	lwz %r17,8(%r1)	 # %sfp, tmp1764
	li %r9,0	 # ivtmp.317,
.L35:
	lfdx %f13,%r18,%r9	 # MEM[symbol: h_next, index: ivtmp.317_612, offset: 0B], MEM[symbol: h_next, index: ivtmp.317_612, offset: 0B]
	lfdx %f0,%r17,%r9	 # MEM[symbol: C, index: ivtmp.317_612, offset: 0B], MEM[symbol: C, index: ivtmp.317_612, offset: 0B]
	stfdx %f13,%r28,%r9	 # MEM[symbol: h, index: ivtmp.317_612, offset: 0B], MEM[symbol: h_next, index: ivtmp.317_612, offset: 0B]
	stfdx %f0,%r29,%r9	 # MEM[symbol: Cprev, index: ivtmp.317_612, offset: 0B], MEM[symbol: C, index: ivtmp.317_612, offset: 0B]
	addi %r9,%r9,8	 # ivtmp.317, ivtmp.317,
	cmpw %cr7,%r9,%r30	 # D.3913, tmp1425, ivtmp.317
	bne+ %cr7,.L35	 #
	stw %r31,k@sdarel(%r13)	 # k, nodes.10
.L29:
	lwz %r4,t@sdarel(%r13)	 # t, t.54
	lwz %r0,T@sdarel(%r13)	 # T, T
	addi %r4,%r4,1	 # t.54, t.54,
	cmpw %cr7,%r4,%r0	 # T, tmp1427, t.54
	stw %r4,t@sdarel(%r13)	 # t, t.54
	blt+ %cr7,.L36	 #
	lwz %r31,nodes@sdarel(%r13)	 # nodes, nodes.10
.L28:
	ble- %cr3,.L111	 #
	lwz %r0,20(%r1)	 # %sfp,
	lis %r7,out-8@ha	 # tmp1839,
	li %r8,0	 # ivtmp.308,
	lwz %r9,24(%r1)	 # %sfp,
	la %r7,out-8@l(%r7)	 # ivtmp.297,, tmp1839
	lis %r4,h@ha	 # tmp1838,
	cmpwi %cr6,%r0,0	 #, tmp1724,
	lwz %r30,20(%r1)	 # %sfp, i_lsm.203
	slwi %r0,%r0,3	 # tmp1843,,
	slwi %r10,%r9,3	 # D.3872,,
	la %r6,W@sdarel(%r13)	 # tmp1842,
	add %r0,%r7,%r0	 # D.3881, ivtmp.297, tmp1843
	mr %r3,%r9	 # nodes.10,
.L40:
	ble- %cr6,.L62	 #
	slwi %r11,%r8,3	 # tmp1431, ivtmp.308,
	la %r9,h@l(%r4)	 # tmp1770,, tmp1838
	lfdx %f12,%r9,%r11	 # MEM[symbol: h, index: D.3888_604, offset: 0B], pretmp.190
	mr %r9,%r7	 # ivtmp.297, ivtmp.297
	add %r11,%r11,%r6	 # ivtmp.302, tmp1431, tmp1842
.L39:
	lfdu %f0,8(%r9)	 # MEM[(double[6] *)D.3874_688], MEM[(double[6] *)D.3874_688]
	lfd %f13,0(%r11)	 # MEM[(double[1] *)D.3875_1042], MEM[(double[1] *)D.3875_1042]
	add %r11,%r11,%r10	 # ivtmp.302, ivtmp.302, D.3872
	cmpw %cr7,%r9,%r0	 # D.3881, tmp1444, ivtmp.297
	fmadd %f0,%f12,%f13,%f0	 # tmp1441, pretmp.190, MEM[(double[1] *)D.3875_1042], MEM[(double[6] *)D.3874_688]
	stfd %f0,0(%r9)	 # MEM[(double[6] *)D.3874_688], tmp1441
	bne+ %cr7,.L39	 #
	mr %r9,%r30	 # i_lsm.203, i_lsm.203
.L38:
	addi %r8,%r8,1	 # ivtmp.308, ivtmp.308,
	cmpw %cr7,%r8,%r3	 # nodes.10, tmp1445, ivtmp.308
	bne+ %cr7,.L40	 #
	stw %r9,i@sdarel(%r13)	 # i, i_lsm.203
.L37:
	li %r0,0	 # tmp1446,
	stw %r0,y@sdarel(%r13)	 # y, tmp1446
	ble- %cr6,.L104	 #
	lwz %r10,20(%r1)	 # %sfp,
	lis %r8,out@ha	 # tmp1693,
	li %r11,0	 # ivtmp.282,
	la %r9,out@l(%r8)	 # tmp1751,, tmp1693
	slwi %r7,%r10,3	 # D.3857,,
	la %r10,b@sdarel(%r13)	 # tmp1768,
	addi %r7,%r7,-8	 # tmp1946, D.3857,
	srwi %r7,%r7,3	 # tmp1947, tmp1946,
	addi %r7,%r7,1	 #, tmp1947,
	mtctr %r7	 # tmp1944,
.L42:
	lfdx %f13,%r9,%r11	 # MEM[symbol: out, index: ivtmp.282_677, offset: 0B], MEM[symbol: out, index: ivtmp.282_677, offset: 0B]
	lfdx %f0,%r10,%r11	 # MEM[symbol: b, index: ivtmp.282_677, offset: 0B], MEM[symbol: b, index: ivtmp.282_677, offset: 0B]
	fadd %f0,%f13,%f0	 # tmp1455, MEM[symbol: out, index: ivtmp.282_677, offset: 0B], MEM[symbol: b, index: ivtmp.282_677, offset: 0B]
	stfdx %f0,%r9,%r11	 # MEM[symbol: out, index: ivtmp.282_677, offset: 0B], tmp1455
	addi %r11,%r11,8	 # ivtmp.282, ivtmp.282,
	bdnz .L42	 #
.L105:
	lwz %r11,20(%r1)	 # %sfp,
	stw %r11,y@sdarel(%r13)	 # y,
.L41:
	lfd %f0,out@l(%r8)	 # out, D.2758
	cmpwi %cr7,%r31,0	 #, tmp1646, nodes.10
	lis %r7,.LC0@ha	 #,
	lwz %r11,foutput@sdarel(%r13)	 # foutput, foutput
	li %r0,0	 # tmp1645,
	stfd %f0,0(%r11)	 # *foutput.11_46, D.2758
	lwz %r11,foutput2@sdarel(%r13)	 # foutput2, foutput2
	lfd %f0,8(%r9)	 # out, D.2760
	stfd %f0,0(%r11)	 # *foutput2.12_48, D.2760
	lwz %r11,foutput3@sdarel(%r13)	 # foutput3, foutput3
	lfd %f0,.LC0@l(%r7)	 #, tmp1619
	lfd %f13,16(%r9)	 # out, D.2762
	stfd %f13,0(%r11)	 # *foutput3.13_50, D.2762
	lwz %r11,foutput4@sdarel(%r13)	 # foutput4, foutput4
	lfd %f13,24(%r9)	 # out, D.2764
	stfd %f13,0(%r11)	 # *foutput4.14_52, D.2764
	lwz %r11,foutput5@sdarel(%r13)	 # foutput5, foutput5
	lfd %f13,32(%r9)	 # out, D.2766
	stfd %f13,0(%r11)	 # *foutput5.15_54, D.2766
	lwz %r11,foutput6@sdarel(%r13)	 # foutput6, foutput6
	lfd %f13,40(%r9)	 # out, D.2768
	stfd %f13,0(%r11)	 # *foutput6.16_56, D.2768
	stfd %f0,out@l(%r8)	 # out, tmp1619
	stfd %f0,8(%r9)	 # out, tmp1619
	stfd %f0,16(%r9)	 # out, tmp1619
	stfd %f0,24(%r9)	 # out, tmp1619
	stfd %f0,32(%r9)	 # out, tmp1619
	stfd %f0,40(%r9)	 # out, tmp1619
	stw %r0,k@sdarel(%r13)	 # k, tmp1645
	blt- %cr7,.L6	 #
	stfd %f0,40(%r1)	 #,
	rlwinm %r30,%r31,0,3,31	 # tmp1943, nodes.10,
	lis %r6,dhloss@ha	 # tmp1746,
	addi %r30,%r30,1	 #, tmp1943,
	lis %r8,C@ha	 # tmp1705,
	lis %r3,h@ha	 # tmp1709,
	lis %r4,hloss@ha	 # tmp1697,
	mtctr %r30	 # tmp1940,
	lis %r7,Cprev@ha	 # tmp1765,
	lwz %r10,40(%r1)	 #,
	addi %r31,%r31,1	 # tmp1735, nodes.10,
	lwz %r11,44(%r1)	 #, tmp1836
	li %r9,0	 # ivtmp.253,
	la %r3,h@l(%r3)	 # tmp1770,, tmp1709
	la %r4,hloss@l(%r4)	 # tmp1756,, tmp1697
	la %r6,dhloss@l(%r6)	 # tmp1713,, tmp1746
	la %r7,Cprev@l(%r7)	 # tmp1734,, tmp1765
	la %r8,C@l(%r8)	 # tmp1764,, tmp1705
.L58:
	add %r4,%r4,%r9	 # tmp1756, tmp1756, ivtmp.253
	add %r6,%r6,%r9	 # tmp1713, tmp1713, ivtmp.253
	add %r3,%r3,%r9	 # tmp1770, tmp1770, ivtmp.253
	add %r8,%r8,%r9	 # tmp1764, tmp1764, ivtmp.253
	stw %r10,0(%r4)	 # MEM[symbol: hloss, index: ivtmp.253_878, offset: 0B],
	add %r7,%r7,%r9	 # tmp1734, tmp1734, ivtmp.253
	stw %r11,4(%r4)	 # MEM[symbol: hloss, index: ivtmp.253_878, offset: 0B], tmp1836
	subf %r4,%r9,%r4	 # tmp1756, ivtmp.253, tmp1756
	stw %r10,0(%r6)	 # MEM[symbol: dhloss, index: ivtmp.253_878, offset: 0B],
	stw %r11,4(%r6)	 # MEM[symbol: dhloss, index: ivtmp.253_878, offset: 0B], tmp1836
	subf %r6,%r9,%r6	 # tmp1713, ivtmp.253, tmp1713
	stw %r10,0(%r3)	 # MEM[symbol: h, index: ivtmp.253_878, offset: 0B],
	stw %r11,4(%r3)	 # MEM[symbol: h, index: ivtmp.253_878, offset: 0B], tmp1836
	subf %r3,%r9,%r3	 # tmp1770, ivtmp.253, tmp1770
	stw %r10,0(%r8)	 # MEM[symbol: C, index: ivtmp.253_878, offset: 0B],
	stw %r11,4(%r8)	 # MEM[symbol: C, index: ivtmp.253_878, offset: 0B], tmp1836
	subf %r8,%r9,%r8	 # tmp1764, ivtmp.253, tmp1764
	stw %r10,0(%r7)	 # MEM[symbol: Cprev, index: ivtmp.253_878, offset: 0B],
	stw %r11,4(%r7)	 # MEM[symbol: Cprev, index: ivtmp.253_878, offset: 0B], tmp1836
	subf %r7,%r9,%r7	 # tmp1734, ivtmp.253, tmp1734
	addi %r9,%r9,8	 # ivtmp.253, ivtmp.253,
	bdnz .L58	 #
	stw %r31,k@sdarel(%r13)	 # k, tmp1735
.L6:
	lwz %r0,180(%r1)	 #,
	lwz %r12,60(%r1)	 #,
	mtlr %r0	 #,
	lwz %r14,64(%r1)	 #,
	lwz %r15,68(%r1)	 #,
	mtcrf 16,%r12	 #,
	mtcrf 8,%r12	 #,
	lwz %r16,72(%r1)	 #,
	lwz %r17,76(%r1)	 #,
	lwz %r18,80(%r1)	 #,
	lwz %r19,84(%r1)	 #,
	lwz %r20,88(%r1)	 #,
	lwz %r21,92(%r1)	 #,
	lwz %r22,96(%r1)	 #,
	lwz %r23,100(%r1)	 #,
	lwz %r24,104(%r1)	 #,
	lwz %r25,108(%r1)	 #,
	lwz %r26,112(%r1)	 #,
	lwz %r27,116(%r1)	 #,
	lwz %r28,120(%r1)	 #,
	lwz %r29,124(%r1)	 #,
	lwz %r30,128(%r1)	 #,
	lwz %r31,132(%r1)	 #,
	lfd %f27,136(%r1)	 #,
	lfd %f28,144(%r1)	 #,
	lfd %f29,152(%r1)	 #,
	lfd %f30,160(%r1)	 #,
	lfd %f31,168(%r1)	 #,
	addi %r1,%r1,176	 #,,
	blr	 #
.L109:
	li %r9,0	 # i_lsm.220,
	b .L21	 #
.L99:
	lwz %r7,16(%r1)	 # %sfp,
	li %r0,0	 # tmp1457,
	lwz %r31,nodes@sdarel(%r13)	 # nodes, nodes.10
	cmpwi %cr7,%r7,0	 #, tmp1458,
	lwz %r9,Y@sdarel(%r13)	 # Y,
	stw %r31,24(%r1)	 # %sfp, nodes.10
	cmpwi %cr3,%r31,0	 #, tmp1728, nodes.10
	stw %r9,20(%r1)	 # %sfp,
	stw %r0,t@sdarel(%r13)	 # t, tmp1457
	ble- %cr7,.L43	 #
	stw %r30,12(%r1)	 # %sfp, N.1
	lis %r25,C@ha	 # tmp1924,
	lis %r24,h_next@ha	 # tmp1926,
	lis %r26,Wf@ha	 # tmp1928,
	lis %r27,Wi@ha	 # tmp1930,
	lis %r28,Wc@ha	 # tmp1932,
	lis %r29,Wo@ha	 # tmp1934,
	li %r4,0	 # t.91,
	la %r25,C@l(%r25)	 # tmp1925,, tmp1924
	la %r24,h_next@l(%r24)	 # tmp1927,, tmp1926
	la %r26,Wf@l(%r26)	 # tmp1929,, tmp1928
	la %r27,Wi@l(%r27)	 # tmp1931,, tmp1930
	la %r28,Wc@l(%r28)	 # tmp1933,, tmp1932
	la %r29,Wo@l(%r29)	 # tmp1935,, tmp1934
.L51:
	lwz %r3,12(%r1)	 # %sfp,
	bl getX	 #
	li %r0,0	 # tmp1459,
	stw %r0,k@sdarel(%r13)	 # k, tmp1459
	ble- %cr3,.L44	 #
	lwz %r10,12(%r1)	 # %sfp,
	addi %r17,%r31,-1	 # D.3800, nodes.10,
	lis %r11,h@ha	 #,
	la %r0,bf@sdarel(%r13)	 # tmp1708,
	stw %r17,8(%r1)	 # %sfp, D.3800
	li %r4,0	 # k.92,
	cmpwi %cr4,%r10,0	 #, tmp1726,
	la %r23,h@l(%r11)	 # tmp1770,,
	la %r18,Ui@sdarel(%r13)	 # tmp1684,
	la %r19,Uo@sdarel(%r13)	 # tmp1689,
	la %r20,Uc@sdarel(%r13)	 # tmp1678,
	la %r21,Uf@sdarel(%r13)	 # tmp1680,
	la %r14,bi@sdarel(%r13)	 # tmp1710,
	la %r15,bc@sdarel(%r13)	 # tmp1707,
	la %r16,bo@sdarel(%r13)	 # tmp1711,
	slwi %r30,%r31,3	 # D.4409, nodes.10,
	slwi %r22,%r10,3	 # D.4477,,
	mr %r17,%r0	 # tmp1708, tmp1708
.L49:
	mullw %r3,%r31,%r4	 # prephitmp.189, nodes.10, k.92
	ble- %cr4,.L112	 #
	lfd %f10,Wfx@sdarel(%r13)	 # Wfx, Wfx_lsm.244
	lis %r7,X@ha	 #,
	li %r9,0	 # ivtmp.698,
	lfd %f11,Wix@sdarel(%r13)	 # Wix, Wix_lsm.245
	la %r6,X@l(%r7)	 # tmp1766,,
	slwi %r0,%r3,3	 # tmp1733, prephitmp.189,
	lfd %f12,Wcx@sdarel(%r13)	 # Wcx, Wcx_lsm.246
	lfd %f13,Wox@sdarel(%r13)	 # Wox, Wox_lsm.247
.L47:
	add %r7,%r26,%r0	 # tmp1466, tmp1929, tmp1733
	add %r8,%r27,%r0	 # tmp1471, tmp1931, tmp1733
	lfdx %f0,%r6,%r9	 # MEM[symbol: X, index: ivtmp.698_442, offset: 0B], D.3644
	add %r10,%r28,%r0	 # tmp1476, tmp1933, tmp1733
	add %r11,%r29,%r0	 # tmp1481, tmp1935, tmp1733
	lfdx %f6,%r7,%r9	 # MEM[base: D.4466_1259, index: ivtmp.698_442, offset: 0B], MEM[base: D.4466_1259, index: ivtmp.698_442, offset: 0B]
	lfdx %f7,%r8,%r9	 # MEM[base: D.4469_1262, index: ivtmp.698_442, offset: 0B], MEM[base: D.4469_1262, index: ivtmp.698_442, offset: 0B]
	lfdx %f8,%r10,%r9	 # MEM[base: D.4472_1265, index: ivtmp.698_442, offset: 0B], MEM[base: D.4472_1265, index: ivtmp.698_442, offset: 0B]
	lfdx %f9,%r11,%r9	 # MEM[base: D.4475_1268, index: ivtmp.698_442, offset: 0B], MEM[base: D.4475_1268, index: ivtmp.698_442, offset: 0B]
	addi %r9,%r9,8	 # ivtmp.698, ivtmp.698,
	fmadd %f10,%f0,%f6,%f10	 # Wfx_lsm.244, D.3644, MEM[base: D.4466_1259, index: ivtmp.698_442, offset: 0B], Wfx_lsm.244
	cmpw %cr7,%r9,%r22	 # D.4477, tmp1485, ivtmp.698
	fmadd %f11,%f0,%f7,%f11	 # Wix_lsm.245, D.3644, MEM[base: D.4469_1262, index: ivtmp.698_442, offset: 0B], Wix_lsm.245
	fmadd %f12,%f0,%f8,%f12	 # Wcx_lsm.246, D.3644, MEM[base: D.4472_1265, index: ivtmp.698_442, offset: 0B], Wcx_lsm.246
	fmadd %f13,%f0,%f9,%f13	 # Wox_lsm.247, D.3644, MEM[base: D.4475_1268, index: ivtmp.698_442, offset: 0B], Wox_lsm.247
	bne+ %cr7,.L47	 #
	stfd %f10,Wfx@sdarel(%r13)	 # Wfx, Wfx_lsm.244
	stfd %f11,Wix@sdarel(%r13)	 # Wix, Wix_lsm.245
	stfd %f12,Wcx@sdarel(%r13)	 # Wcx, Wcx_lsm.246
	stfd %f13,Wox@sdarel(%r13)	 # Wox, Wox_lsm.247
.L48:
	lfd %f0,hf@sdarel(%r13)	 # hf, hf_lsm.238
	li %r9,0	 # ivtmp.678,
	lfd %f11,hi@sdarel(%r13)	 # hi, hi_lsm.239
	lfd %f12,hc@sdarel(%r13)	 # hc, hc_lsm.240
	lfd %f13,ho@sdarel(%r13)	 # ho, ho_lsm.241
.L46:
	add %r7,%r21,%r0	 # tmp1490, tmp1680, tmp1733
	add %r8,%r18,%r0	 # tmp1494, tmp1684, tmp1733
	lfdx %f10,%r23,%r9	 # MEM[symbol: h, index: ivtmp.678_569, offset: 0B], D.3625
	add %r10,%r20,%r0	 # tmp1498, tmp1678, tmp1733
	add %r11,%r19,%r0	 # tmp1502, tmp1689, tmp1733
	lfdx %f6,%r7,%r9	 # MEM[base: D.4432_1246, index: ivtmp.678_569, offset: 0B], MEM[base: D.4432_1246, index: ivtmp.678_569, offset: 0B]
	lfdx %f7,%r8,%r9	 # MEM[base: D.4435_1249, index: ivtmp.678_569, offset: 0B], MEM[base: D.4435_1249, index: ivtmp.678_569, offset: 0B]
	lfdx %f8,%r10,%r9	 # MEM[base: D.4438_1252, index: ivtmp.678_569, offset: 0B], MEM[base: D.4438_1252, index: ivtmp.678_569, offset: 0B]
	lfdx %f9,%r11,%r9	 # MEM[base: D.4441_1255, index: ivtmp.678_569, offset: 0B], MEM[base: D.4441_1255, index: ivtmp.678_569, offset: 0B]
	addi %r9,%r9,8	 # ivtmp.678, ivtmp.678,
	fmadd %f0,%f10,%f6,%f0	 # hf_lsm.238, D.3625, MEM[base: D.4432_1246, index: ivtmp.678_569, offset: 0B], hf_lsm.238
	cmpw %cr7,%r9,%r30	 # D.4409, tmp1505, ivtmp.678
	fmadd %f11,%f10,%f7,%f11	 # hi_lsm.239, D.3625, MEM[base: D.4435_1249, index: ivtmp.678_569, offset: 0B], hi_lsm.239
	fmadd %f12,%f10,%f8,%f12	 # hc_lsm.240, D.3625, MEM[base: D.4438_1252, index: ivtmp.678_569, offset: 0B], hc_lsm.240
	fmadd %f13,%f10,%f9,%f13	 # ho_lsm.241, D.3625, MEM[base: D.4441_1255, index: ivtmp.678_569, offset: 0B], ho_lsm.241
	bne+ %cr7,.L46	 #
	lfd %f1,Wfx@sdarel(%r13)	 # Wfx, Wfx
	slwi %r4,%r4,3	 # tmp1511, k.92,
	lfdx %f10,%r17,%r4	 # bf, tmp1514
	lwz %r9,8(%r1)	 # %sfp,
	fadd %f1,%f0,%f1	 # tmp1508, hf_lsm.238, Wfx
	stfd %f11,hi@sdarel(%r13)	 # hi, hi_lsm.239
	add %r3,%r3,%r9	 # tmp1507, prephitmp.189,
	stfd %f12,hc@sdarel(%r13)	 # hc, hc_lsm.240
	stw %r3,iter@sdarel(%r13)	 # iter, tmp1507
	fadd %f1,%f1,%f10	 #, tmp1508, tmp1514
	stfd %f13,ho@sdarel(%r13)	 # ho, ho_lsm.241
	stfd %f0,hf@sdarel(%r13)	 # hf, hf_lsm.238
	stw %r31,i@sdarel(%r13)	 # i, nodes.10
	bl sigmoid	 #
	lfd %f0,hi@sdarel(%r13)	 # hi, hi
	fmr %f30,%f1	 # D.3605,
	lwz %r0,k@sdarel(%r13)	 # k, k.92
	lfd %f1,Wix@sdarel(%r13)	 # Wix, Wix
	slwi %r0,%r0,3	 # tmp1517, k.92,
	lfdx %f31,%r25,%r0	 # C, D.3604
	fadd %f1,%f1,%f0	 # tmp1519, Wix, hi
	lfdx %f0,%r14,%r0	 # bi, tmp1526
	fadd %f1,%f1,%f0	 #, tmp1519, tmp1526
	bl sigmoid	 #
	lfd %f0,hc@sdarel(%r13)	 # hc, hc
	fmr %f29,%f1	 # D.3599,
	lwz %r0,k@sdarel(%r13)	 # k, k.92
	lfd %f1,Wcx@sdarel(%r13)	 # Wcx, Wcx
	slwi %r0,%r0,3	 # tmp1531, k.92,
	fadd %f1,%f1,%f0	 # tmp1527, Wcx, hc
	lfdx %f0,%r15,%r0	 # bc, tmp1534
	stw %r0,28(%r1)	 #,
	fadd %f1,%f1,%f0	 #, tmp1527, tmp1534
	bl tanh	 #
	lfd %f13,ho@sdarel(%r13)	 # ho, ho
	fmul %f0,%f29,%f1	 # tmp1539, D.3599,
	lfd %f12,Wox@sdarel(%r13)	 # Wox, Wox
	lwz %r0,28(%r1)	 #,
	fadd %f12,%f12,%f13	 # tmp1541, Wox, ho
	lfdx %f13,%r16,%r0	 # bo, tmp1548
	fmadd %f0,%f30,%f31,%f0	 # tmp1540, D.3605, D.3604, tmp1539
	fadd %f1,%f12,%f13	 #, tmp1541, tmp1548
	stfdx %f0,%r25,%r0	 # C, tmp1540
	bl sigmoid	 #
	lwz %r0,k@sdarel(%r13)	 # k, k.92
	fmr %f31,%f1	 # D.3589,
	slwi %r0,%r0,3	 # tmp1551, k.92,
	lfdx %f1,%r25,%r0	 # C,
	stw %r0,28(%r1)	 #,
	bl tanh	 #
	lwz %r0,28(%r1)	 #,
	fmul %f1,%f31,%f1	 # tmp1558, D.3589,
	stfdx %f1,%r24,%r0	 # h_next, tmp1558
	bl ResetVar	 #
	lwz %r4,k@sdarel(%r13)	 # k, k.92
	addi %r4,%r4,1	 # k.92, k.92,
	cmpw %cr7,%r31,%r4	 # k.92, tmp1559, nodes.10
	stw %r4,k@sdarel(%r13)	 # k, k.92
	bgt+ %cr7,.L49	 #
	li %r9,0	 # ivtmp.665,
.L50:
	lfdx %f0,%r24,%r9	 # MEM[symbol: h_next, index: ivtmp.665_756, offset: 0B], MEM[symbol: h_next, index: ivtmp.665_756, offset: 0B]
	stfdx %f0,%r23,%r9	 # MEM[symbol: h, index: ivtmp.665_756, offset: 0B], MEM[symbol: h_next, index: ivtmp.665_756, offset: 0B]
	addi %r9,%r9,8	 # ivtmp.665, ivtmp.665,
	cmpw %cr7,%r9,%r30	 # D.4409, tmp1566, ivtmp.665
	bne+ %cr7,.L50	 #
	stw %r31,k@sdarel(%r13)	 # k, nodes.10
.L44:
	lwz %r4,t@sdarel(%r13)	 # t, t.91
	lwz %r10,16(%r1)	 # %sfp,
	addi %r4,%r4,1	 # t.91, t.91,
	cmpw %cr7,%r10,%r4	 # t.91, tmp1567,
	stw %r4,t@sdarel(%r13)	 # t, t.91
	bgt+ %cr7,.L51	 #
	lwz %r31,nodes@sdarel(%r13)	 # nodes, nodes.10
.L43:
	ble- %cr3,.L113	 #
	lwz %r0,20(%r1)	 # %sfp,
	lis %r7,out-8@ha	 # tmp1906,
	li %r8,0	 # ivtmp.656,
	lwz %r9,24(%r1)	 # %sfp,
	la %r7,out-8@l(%r7)	 # ivtmp.645,, tmp1906
	lis %r4,h@ha	 # tmp1905,
	cmpwi %cr6,%r0,0	 #, tmp1727,
	lwz %r3,20(%r1)	 # %sfp, i_lsm.233
	slwi %r0,%r0,3	 # tmp1910,,
	slwi %r10,%r9,3	 # D.4378,,
	la %r6,W@sdarel(%r13)	 # tmp1909,
	add %r0,%r7,%r0	 # D.4387, ivtmp.645, tmp1910
	mr %r30,%r9	 # nodes.10,
.L55:
	ble- %cr6,.L63	 #
	slwi %r11,%r8,3	 # tmp1571, ivtmp.656,
	la %r9,h@l(%r4)	 # tmp1770,, tmp1905
	lfdx %f12,%r9,%r11	 # MEM[symbol: h, index: D.4394_748, offset: 0B], pretmp.186
	mr %r9,%r7	 # ivtmp.645, ivtmp.645
	add %r11,%r11,%r6	 # ivtmp.650, tmp1571, tmp1909
.L54:
	lfdu %f0,8(%r9)	 # MEM[(double[6] *)D.4380_1233], MEM[(double[6] *)D.4380_1233]
	lfd %f13,0(%r11)	 # MEM[(double[1] *)D.4381_1234], MEM[(double[1] *)D.4381_1234]
	add %r11,%r11,%r10	 # ivtmp.650, ivtmp.650, D.4378
	cmpw %cr7,%r9,%r0	 # D.4387, tmp1584, ivtmp.645
	fmadd %f0,%f12,%f13,%f0	 # tmp1581, pretmp.186, MEM[(double[1] *)D.4381_1234], MEM[(double[6] *)D.4380_1233]
	stfd %f0,0(%r9)	 # MEM[(double[6] *)D.4380_1233], tmp1581
	bne+ %cr7,.L54	 #
	mr %r9,%r3	 # i_lsm.233, i_lsm.233
.L53:
	addi %r8,%r8,1	 # ivtmp.656, ivtmp.656,
	cmpw %cr7,%r8,%r30	 # nodes.10, tmp1585, ivtmp.656
	bne+ %cr7,.L55	 #
	stw %r9,i@sdarel(%r13)	 # i, i_lsm.233
.L52:
	li %r0,0	 # tmp1586,
	stw %r0,y@sdarel(%r13)	 # y, tmp1586
	ble- %cr6,.L104	 #
	lwz %r10,20(%r1)	 # %sfp,
	lis %r8,out@ha	 # tmp1693,
	li %r11,0	 # ivtmp.630,
	la %r9,out@l(%r8)	 # tmp1751,, tmp1693
	slwi %r7,%r10,3	 # D.4363,,
	la %r10,b@sdarel(%r13)	 # tmp1768,
	addi %r7,%r7,-8	 # tmp1958, D.4363,
	srwi %r7,%r7,3	 # tmp1959, tmp1958,
	addi %r7,%r7,1	 #, tmp1959,
	mtctr %r7	 # tmp1956,
.L56:
	lfdx %f13,%r9,%r11	 # MEM[symbol: out, index: ivtmp.630_531, offset: 0B], MEM[symbol: out, index: ivtmp.630_531, offset: 0B]
	lfdx %f0,%r10,%r11	 # MEM[symbol: b, index: ivtmp.630_531, offset: 0B], MEM[symbol: b, index: ivtmp.630_531, offset: 0B]
	fadd %f0,%f13,%f0	 # tmp1595, MEM[symbol: out, index: ivtmp.630_531, offset: 0B], MEM[symbol: b, index: ivtmp.630_531, offset: 0B]
	stfdx %f0,%r9,%r11	 # MEM[symbol: out, index: ivtmp.630_531, offset: 0B], tmp1595
	addi %r11,%r11,8	 # ivtmp.630, ivtmp.630,
	bdnz .L56	 #
	b .L105	 #
.L107:
	lfdx %f0,%r3,%r0	 # X6, D.3300
	stfdx %f0,%r3,%r9	 # X6, D.3300
	b .L8	 #
.L112:
	slwi %r0,%r3,3	 # tmp1733, prephitmp.189,
	b .L48	 #
.L110:
	slwi %r0,%r3,3	 # tmp1732, prephitmp.193,
	b .L33	 #
.L18:
	lwz %r9,t@sdarel(%r13)	 # t,
	stw %r0,k@sdarel(%r13)	 # k, tmp1068
	stw %r9,8(%r1)	 # %sfp,
	b .L59	 #
.L63:
	li %r9,0	 # i_lsm.233,
	b .L53	 #
.L62:
	li %r9,0	 # i_lsm.203,
	b .L38	 #
.L61:
	li %r9,0	 # y_lsm.229,
	b .L14	 #
.L111:
	lwz %r11,20(%r1)	 # %sfp,
	cmpwi %cr6,%r11,0	 #, tmp1724,
	b .L37	 #
.L113:
	lwz %r11,20(%r1)	 # %sfp,
	cmpwi %cr6,%r11,0	 #, tmp1727,
	b .L52	 #
.L104:
	lis %r8,out@ha	 # tmp1693,
	la %r9,out@l(%r8)	 # tmp1751,, tmp1693
	b .L41	 #
.L106:
	lis %r11,X1@ha	 # tmp1772,
	lis %r8,X2@ha	 # tmp1773,
	lis %r7,X3@ha	 # tmp1774,
	lis %r6,X4@ha	 # tmp1775,
	lis %r31,X5@ha	 # tmp1776,
	lis %r3,X6@ha	 # tmp1777,
	la %r11,X1@l(%r11)	 # tmp1757,, tmp1772
	la %r8,X2@l(%r8)	 # tmp1758,, tmp1773
	la %r7,X3@l(%r7)	 # tmp1759,, tmp1774
	la %r6,X4@l(%r6)	 # tmp1761,, tmp1775
	la %r31,X5@l(%r31)	 # tmp1762,, tmp1776
	la %r3,X6@l(%r3)	 # tmp1763,, tmp1777
	b .L7	 #
	.size	main, .-main
	.comm	test,8,8
	.comm	testy,4,4
	.comm	foutput6,4,4
	.comm	foutput5,4,4
	.comm	foutput4,4,4
	.comm	foutput3,4,4
	.comm	foutput2,4,4
	.comm	foutput,4,4
	.comm	L6,4,4
	.comm	L5,4,4
	.comm	L4,4,4
	.comm	L3,4,4
	.comm	L2,4,4
	.comm	lam,4,4
	.comm	Lr,4,4
	.comm	L1,4,4
	.comm	x6,4,4
	.comm	x5,4,4
	.comm	x4,4,4
	.comm	x3,4,4
	.comm	x2,4,4
	.comm	x1,4,4
	.comm	nod,8,8
	.comm	Timesteps,8,8
	.comm	numOutputs,8,8
	.comm	numInputs,8,8
	.globl b
	.section	.sdata,"aw",@progbits
	.align 3
	.type	b, @object
	.size	b, 8
b:
	.long	1063924075
	.long	579267146
	.globl W
	.align 3
	.type	W, @object
	.size	W, 8
W:
	.long	1073473400
	.long	1237170484
	.globl bo
	.align 3
	.type	bo, @object
	.size	bo, 8
bo:
	.long	1073989325
	.long	2040198801
	.globl bc
	.align 3
	.type	bc, @object
	.size	bc, 8
bc:
	.long	-1084363474
	.long	1036082121
	.globl bf
	.align 3
	.type	bf, @object
	.size	bf, 8
bf:
	.long	1073103304
	.long	560750930
	.globl bi
	.align 3
	.type	bi, @object
	.size	bi, 8
bi:
	.long	1072394809
	.long	942666294
	.globl Uo
	.align 3
	.type	Uo, @object
	.size	Uo, 8
Uo:
	.long	1071701165
	.long	346071285
	.globl Uc
	.align 3
	.type	Uc, @object
	.size	Uc, 8
Uc:
	.long	-1075023577
	.long	-169324791
	.globl Uf
	.align 3
	.type	Uf, @object
	.size	Uf, 8
Uf:
	.long	-1075104379
	.long	-204839016
	.globl Ui
	.align 3
	.type	Ui, @object
	.size	Ui, 8
Ui:
	.long	1071781472
	.long	-901434608
	.globl Wo
	.section	".data"
	.align 3
	.type	Wo, @object
	.size	Wo, 16
Wo:
	.long	1071039509
	.long	-1005811247
	.long	-1075703696
	.long	1074002958
	.globl Wc
	.align 3
	.type	Wc, @object
	.size	Wc, 16
Wc:
	.long	1071911872
	.long	-590052915
	.long	1072037082
	.long	1177686905
	.globl Wf
	.align 3
	.type	Wf, @object
	.size	Wf, 16
Wf:
	.long	1072180138
	.long	128313007
	.long	1071569800
	.long	1006185081
	.globl Wi
	.align 3
	.type	Wi, @object
	.size	Wi, 16
Wi:
	.long	1070254016
	.long	135811676
	.long	-1076154235
	.long	1131826275
	.globl tO
	.section	".sbss","aw",@nobits
	.align 3
tO:
	.zero	8
	.size	tO, 8
	.type	tO, @object
	.globl tc
	.align 3
tc:
	.zero	8
	.size	tc, 8
	.type	tc, @object
	.globl ti
	.align 3
ti:
	.zero	8
	.size	ti, 8
	.type	ti, @object
	.globl tf
	.align 3
tf:
	.zero	8
	.size	tf, 8
	.type	tf, @object
	.globl f2
	.align 2
f2:
	.zero	4
	.size	f2, 4
	.type	f2, @object
	.globl f
	.align 2
f:
	.zero	4
	.size	f, 4
	.type	f, @object
	.globl iter
	.align 2
iter:
	.zero	4
	.size	iter, 4
	.type	iter, @object
	.globl out
	.lcomm	out,48,8
	.type	out, @object
	.globl X6
	.lcomm	X6,80,8
	.type	X6, @object
	.globl X5
	.lcomm	X5,80,8
	.type	X5, @object
	.globl X4
	.lcomm	X4,80,8
	.type	X4, @object
	.globl X3
	.lcomm	X3,80,8
	.type	X3, @object
	.globl X2
	.lcomm	X2,80,8
	.type	X2, @object
	.globl X1
	.lcomm	X1,80,8
	.type	X1, @object
	.globl X
	.lcomm	X,48,8
	.type	X, @object
	.globl ddc
	.align 3
ddc:
	.zero	8
	.size	ddc, 8
	.type	ddc, @object
	.globl loss
	.lcomm	loss,48,8
	.type	loss, @object
	.globl ho
	.align 3
ho:
	.zero	8
	.size	ho, 8
	.type	ho, @object
	.globl hi
	.align 3
hi:
	.zero	8
	.size	hi, 8
	.type	hi, @object
	.globl hc
	.align 3
hc:
	.zero	8
	.size	hc, 8
	.type	hc, @object
	.globl hf
	.align 3
hf:
	.zero	8
	.size	hf, 8
	.type	hf, @object
	.globl Wox
	.align 3
Wox:
	.zero	8
	.size	Wox, 8
	.type	Wox, @object
	.globl Wix
	.align 3
Wix:
	.zero	8
	.size	Wix, 8
	.type	Wix, @object
	.globl Wcx
	.align 3
Wcx:
	.zero	8
	.size	Wcx, 8
	.type	Wcx, @object
	.globl Wfx
	.align 3
Wfx:
	.zero	8
	.size	Wfx, 8
	.type	Wfx, @object
	.globl dUo
	.lcomm	dUo,800,8
	.type	dUo, @object
	.globl dUc
	.lcomm	dUc,800,8
	.type	dUc, @object
	.globl dUi
	.lcomm	dUi,800,8
	.type	dUi, @object
	.globl dUf
	.lcomm	dUf,800,8
	.type	dUf, @object
	.globl Og
	.align 3
Og:
	.zero	8
	.size	Og, 8
	.type	Og, @object
	.globl Cg
	.align 3
Cg:
	.zero	8
	.size	Cg, 8
	.type	Cg, @object
	.globl Ig
	.align 3
Ig:
	.zero	8
	.size	Ig, 8
	.type	Ig, @object
	.globl Fg
	.align 3
Fg:
	.zero	8
	.size	Fg, 8
	.type	Fg, @object
	.globl dOg
	.lcomm	dOg,800,8
	.type	dOg, @object
	.globl dcg
	.lcomm	dcg,800,8
	.type	dcg, @object
	.globl dig
	.lcomm	dig,800,8
	.type	dig, @object
	.globl dfg
	.lcomm	dfg,800,8
	.type	dfg, @object
	.globl dC
	.lcomm	dC,800,8
	.type	dC, @object
	.globl Cprev
	.lcomm	Cprev,88,8
	.type	Cprev, @object
	.globl C
	.lcomm	C,88,8
	.type	C, @object
	.globl h_all
	.lcomm	h_all,880,8
	.type	h_all, @object
	.globl h_next
	.lcomm	h_next,88,8
	.type	h_next, @object
	.globl h
	.lcomm	h,88,8
	.type	h, @object
	.globl Wloss
	.lcomm	Wloss,480,8
	.type	Wloss, @object
	.globl dhloss
	.lcomm	dhloss,88,8
	.type	dhloss, @object
	.globl hloss
	.lcomm	hloss,88,8
	.type	hloss, @object
	.comm	y,4,4
	.comm	j,4,4
	.comm	t,4,4
	.comm	k,4,4
	.comm	i,4,4
	.comm	nodes,4,4
	.comm	T,4,4
	.comm	Y,4,4
	.comm	N,4,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.long	1065353216
	.ident	"GCC: (GNU) 4.6.0"
	.gnu_attribute 4, 1
	.section	.note.GNU-stack,"",@progbits
