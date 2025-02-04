	.file	"HiddenLv2TAN_CS.c"

 # rs6000/powerpc options: -msdata=sysv -G 8
 # GNU C (GCC) version 4.6.0 (powerpc-750-linux-gnu)
 #	compiled by GNU C version 4.5.2, GMP version 5.0.1, MPFR version 2.4.1, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\BLTIN_GCC
 # -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\SHARED_CODE
 # -iprefix d:\rscad\rscad fx 2.3\bin\mingw-cross\bin\../lib/gcc/powerpc-750-linux-gnu/4.6.0/
 # -D__unix__ -D__gnu_linux__ -D__linux__ -Asystem=linux -Asystem=unix
 # -Asystem=posix
 # C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\HiddenLv2TAN_CS.c
 # -mregnames -msdata=sysv -mtoc
 # -auxbase-strip C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\HiddenLv2TAN_CS.s
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
	stwu %r1,-160(%r1)	 #,,
	mflr %r0	 #,
	lis %r11,.LC0@ha	 # tmp784,
	lwz %r9,Learning_rate@sdarel(%r13)	 # Learning_rate, Learning_rate.0
	lfd %f0,.LC0@l(%r11)	 #, tmp444
	stw %r0,164(%r1)	 #,
	stw %r23,36(%r1)	 #,
	stw %r27,52(%r1)	 #,
	lfd %f13,0(%r9)	 # *Learning_rate.0_2, *Learning_rate.0_2
	stfd %f21,72(%r1)	 #,
	stfd %f22,80(%r1)	 #,
	fcmpu %cr7,%f13,%f0	 # tmp448, *Learning_rate.0_2, tmp444
	stfd %f23,88(%r1)	 #,
	stfd %f24,96(%r1)	 #,
	stfd %f25,104(%r1)	 #,
	stfd %f26,112(%r1)	 #,
	stfd %f27,120(%r1)	 #,
	stfd %f28,128(%r1)	 #,
	stfd %f29,136(%r1)	 #,
	stfd %f30,144(%r1)	 #,
	stfd %f31,152(%r1)	 #,
	stw %r19,20(%r1)	 #,
	stw %r20,24(%r1)	 #,
	stw %r21,28(%r1)	 #,
	stw %r22,32(%r1)	 #,
	stw %r24,40(%r1)	 #,
	stw %r25,44(%r1)	 #,
	stw %r26,48(%r1)	 #,
	stw %r28,56(%r1)	 #,
	stw %r29,60(%r1)	 #,
	stw %r30,64(%r1)	 #,
	stw %r31,68(%r1)	 #,
	lwz %r23,Y@sdarel(%r13)	 # Y, Y.1
	lwz %r27,N@sdarel(%r13)	 # N, pretmp.90
	bgt- %cr7,.L22	 #
.L2:
	cmpwi %cr7,%r27,0	 #, tmp623, pretmp.90
	li %r0,0	 # tmp622,
	stw %r0,i@sdarel(%r13)	 # i, tmp622
	ble- %cr7,.L9	 #
	slwi %r7,%r27,3	 # D.3112, pretmp.90,
	lis %r31,daa1@ha	 # tmp780,
	addi %r7,%r7,-8	 # tmp825, D.3112,
	lis %r8,X@ha	 # tmp770,
	srwi %r7,%r7,3	 # tmp826, tmp825,
	lis %r29,daa@ha	 # tmp777,
	addi %r7,%r7,1	 #, tmp826,
	lis %r10,X1@ha	 # tmp767,
	mtctr %r7	 # tmp823,
	li %r9,0	 # ivtmp.154,
	la %r31,daa1@l(%r31)	 # tmp788,, tmp780
	la %r10,X1@l(%r10)	 # tmp773,, tmp767
	la %r11,X@l(%r8)	 # tmp775,, tmp770
	la %r29,daa@l(%r29)	 # tmp782,, tmp777
.L10:
	lfdx %f13,%r11,%r9	 # MEM[symbol: X, index: ivtmp.154_235, offset: 0B], MEM[symbol: X, index: ivtmp.154_235, offset: 0B]
	lfdx %f0,%r29,%r9	 # MEM[symbol: daa, index: ivtmp.154_235, offset: 0B], MEM[symbol: daa, index: ivtmp.154_235, offset: 0B]
	stfdx %f13,%r10,%r9	 # MEM[symbol: X1, index: ivtmp.154_235, offset: 0B], MEM[symbol: X, index: ivtmp.154_235, offset: 0B]
	stfdx %f0,%r31,%r9	 # MEM[symbol: daa1, index: ivtmp.154_235, offset: 0B], MEM[symbol: daa, index: ivtmp.154_235, offset: 0B]
	addi %r9,%r9,8	 # ivtmp.154, ivtmp.154,
	bdnz .L10	 #
	lwz %r9,input1@sdarel(%r13)	 # input1, input1
	cmpwi %cr7,%r27,1	 #, tmp638, pretmp.90
	stw %r27,i@sdarel(%r13)	 # i, pretmp.90
	lfd %f0,0(%r9)	 # *input1.42_166, D.2916
	stfd %f0,0(%r11)	 # X, D.2916
	ble- %cr7,.L11	 #
	lwz %r9,input2@sdarel(%r13)	 # input2, input2
	cmpwi %cr7,%r27,2	 #, tmp642, pretmp.90
	lfd %f0,0(%r9)	 # *input2.43_168, D.2914
	stfd %f0,8(%r11)	 # X, D.2914
	beq- %cr7,.L11	 #
	lwz %r9,input3@sdarel(%r13)	 # input3, input3
	cmpwi %cr7,%r27,3	 #, tmp646, pretmp.90
	lfd %f0,0(%r9)	 # *input3.44_170, D.2912
	stfd %f0,16(%r11)	 # X, D.2912
	beq- %cr7,.L11	 #
	lwz %r9,input4@sdarel(%r13)	 # input4, input4
	cmpwi %cr7,%r27,4	 #, tmp650, pretmp.90
	lfd %f0,0(%r9)	 # *input4.45_172, D.2910
	stfd %f0,24(%r11)	 # X, D.2910
	beq- %cr7,.L11	 #
	lwz %r9,input5@sdarel(%r13)	 # input5, input5
	cmpwi %cr7,%r27,5	 #, tmp654, pretmp.90
	lfd %f0,0(%r9)	 # *input5.46_174, D.2908
	stfd %f0,32(%r11)	 # X, D.2908
	beq- %cr7,.L11	 #
	lwz %r9,input6@sdarel(%r13)	 # input6, input6
	cmpwi %cr7,%r27,6	 #, tmp658, pretmp.90
	lfd %f0,0(%r9)	 # *input6.47_176, D.2906
	stfd %f0,40(%r11)	 # X, D.2906
	beq- %cr7,.L11	 #
	lwz %r9,input7@sdarel(%r13)	 # input7, input7
	cmpwi %cr7,%r27,7	 #, tmp662, pretmp.90
	lfd %f0,0(%r9)	 # *input7.48_178, D.2904
	stfd %f0,48(%r11)	 # X, D.2904
	beq- %cr7,.L11	 #
	lwz %r9,input8@sdarel(%r13)	 # input8, input8
	cmpwi %cr7,%r27,8	 #, tmp666, pretmp.90
	lfd %f0,0(%r9)	 # *input8.49_180, D.2902
	stfd %f0,56(%r11)	 # X, D.2902
	beq- %cr7,.L11	 #
	lwz %r9,input9@sdarel(%r13)	 # input9, input9
	cmpwi %cr7,%r27,9	 #, tmp670, pretmp.90
	lfd %f0,0(%r9)	 # *input9.50_182, D.2900
	stfd %f0,64(%r11)	 # X, D.2900
	beq- %cr7,.L11	 #
	lwz %r9,input10@sdarel(%r13)	 # input10, input10
	lfd %f0,0(%r9)	 # *input10.51_184, D.2898
	stfd %f0,72(%r11)	 # X, D.2898
.L11:
	cmpwi %cr7,%r23,0	 #, tmp675, Y.1
	li %r0,0	 # tmp674,
	stw %r0,k@sdarel(%r13)	 # k, tmp674
	ble- %cr7,.L23	 #
	la %r9,X@l(%r8)	 # tmp676,, tmp770
	lis %r11,.LC4@ha	 # tmp787,
	lfd %f22,X@l(%r8)	 # X, pretmp.92
	lfs %f21,.LC4@l(%r11)	 #, tmp807
	lis %r29,daa@ha	 # tmp777,
	lis %r22,a2@ha	 # tmp785,
	lfd %f23,8(%r9)	 # X, pretmp.95
	lis %r31,W@ha	 # tmp696,
	lis %r26,b@ha	 # tmp772,
	lfd %f24,16(%r9)	 # X, pretmp.97
	slwi %r24,%r27,3	 # D.3075, pretmp.90,
	la %r31,W@l(%r31)	 # ivtmp.123,, tmp696
	lfd %f25,24(%r9)	 # X, pretmp.99
	slwi %r25,%r23,3	 # D.3087, Y.1,
	li %r30,0	 # ivtmp.135,
	lfd %f26,32(%r9)	 # X, pretmp.101
	la %r29,daa@l(%r29)	 # tmp782,, tmp777
	la %r26,b@l(%r26)	 # tmp776,, tmp772
	lfd %f27,40(%r9)	 # X, pretmp.103
	la %r28,a2@l(%r22)	 # tmp790,, tmp785
	lfd %f28,48(%r9)	 # X, pretmp.105
	lfd %f29,56(%r9)	 # X, pretmp.107
	lfd %f30,64(%r9)	 # X, pretmp.109
	lfd %f31,72(%r9)	 # X, pretmp.111
.L13:
	lfd %f1,8(%r31)	 # MEM[(double[100] *)D.3076_186 + 8B], MEM[(double[100] *)D.3076_186 + 8B]
	lfd %f0,0(%r31)	 # MEM[(double[100] *)D.3076_186], MEM[(double[100] *)D.3076_186]
	lfd %f12,16(%r31)	 # MEM[(double[100] *)D.3076_186 + 16B], MEM[(double[100] *)D.3076_186 + 16B]
	fmul %f1,%f23,%f1	 # tmp697, pretmp.95, MEM[(double[100] *)D.3076_186 + 8B]
	lfd %f13,24(%r31)	 # MEM[(double[100] *)D.3076_186 + 24B], MEM[(double[100] *)D.3076_186 + 24B]
	lfd %f9,40(%r31)	 # MEM[(double[100] *)D.3076_186 + 40B], MEM[(double[100] *)D.3076_186 + 40B]
	lfd %f10,48(%r31)	 # MEM[(double[100] *)D.3076_186 + 48B], MEM[(double[100] *)D.3076_186 + 48B]
	fmadd %f1,%f0,%f22,%f1	 # tmp699, MEM[(double[100] *)D.3076_186], pretmp.92, tmp697
	lfd %f0,32(%r31)	 # MEM[(double[100] *)D.3076_186 + 32B], MEM[(double[100] *)D.3076_186 + 32B]
	lfd %f11,56(%r31)	 # MEM[(double[100] *)D.3076_186 + 56B], MEM[(double[100] *)D.3076_186 + 56B]
	fmadd %f1,%f12,%f24,%f1	 # tmp701, MEM[(double[100] *)D.3076_186 + 16B], pretmp.97, tmp699
	lfd %f12,64(%r31)	 # MEM[(double[100] *)D.3076_186 + 64B], MEM[(double[100] *)D.3076_186 + 64B]
	fmadd %f1,%f13,%f25,%f1	 # tmp703, MEM[(double[100] *)D.3076_186 + 24B], pretmp.99, tmp701
	lfd %f13,72(%r31)	 # MEM[(double[100] *)D.3076_186 + 72B], MEM[(double[100] *)D.3076_186 + 72B]
	add %r31,%r31,%r24	 # ivtmp.123, ivtmp.123, D.3075
	fmadd %f1,%f0,%f26,%f1	 # tmp705, MEM[(double[100] *)D.3076_186 + 32B], pretmp.101, tmp703
	lfdx %f0,%r26,%r30	 # MEM[symbol: b, index: ivtmp.135_391, offset: 0B], MEM[symbol: b, index: ivtmp.135_391, offset: 0B]
	fmadd %f1,%f9,%f27,%f1	 # tmp707, MEM[(double[100] *)D.3076_186 + 40B], pretmp.103, tmp705
	fmadd %f1,%f10,%f28,%f1	 # tmp709, MEM[(double[100] *)D.3076_186 + 48B], pretmp.105, tmp707
	fmadd %f1,%f11,%f29,%f1	 # tmp711, MEM[(double[100] *)D.3076_186 + 56B], pretmp.107, tmp709
	fmadd %f1,%f12,%f30,%f1	 # tmp713, MEM[(double[100] *)D.3076_186 + 64B], pretmp.109, tmp711
	fmadd %f1,%f13,%f31,%f1	 # tmp715, MEM[(double[100] *)D.3076_186 + 72B], pretmp.111, tmp713
	fadd %f1,%f1,%f0	 #, tmp715, MEM[symbol: b, index: ivtmp.135_391, offset: 0B]
	bl tanh	 #
	fneg %f0,%f1	 # tmp725, D.2923
	stfdx %f1,%r28,%r30	 # MEM[symbol: a2, index: ivtmp.135_391, offset: 0B], D.2923
	fmadd %f1,%f0,%f1,%f21	 # tmp726, tmp725, D.2923, tmp807
	stfdx %f1,%r29,%r30	 # MEM[symbol: daa, index: ivtmp.135_391, offset: 0B], tmp726
	addi %r30,%r30,8	 # ivtmp.135, ivtmp.135,
	cmpw %cr7,%r30,%r25	 # D.3087, tmp731, ivtmp.135
	bne+ %cr7,.L13	 #
	addi %r0,%r23,-1	 # tmp732, Y.1,
	stw %r23,k@sdarel(%r13)	 # k, Y.1
	mullw %r27,%r0,%r27	 # tmp733, tmp732, pretmp.90
	stw %r27,indx@sdarel(%r13)	 # indx, tmp733
.L12:
	lfd %f0,a2@l(%r22)	 # a2, D.2611
	lwz %r9,foutput@sdarel(%r13)	 # foutput, foutput
	lwz %r0,164(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput.14_35, D.2611
	lwz %r9,foutput2@sdarel(%r13)	 # foutput2, foutput2
	mtlr %r0	 #,
	lwz %r19,20(%r1)	 #,
	lfd %f0,8(%r28)	 # a2, D.2613
	lwz %r20,24(%r1)	 #,
	lwz %r21,28(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput2.15_37, D.2613
	lwz %r9,foutput3@sdarel(%r13)	 # foutput3, foutput3
	lwz %r22,32(%r1)	 #,
	lfd %f0,16(%r28)	 # a2, D.2615
	lwz %r23,36(%r1)	 #,
	lwz %r24,40(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput3.16_39, D.2615
	lwz %r9,foutput4@sdarel(%r13)	 # foutput4, foutput4
	lwz %r25,44(%r1)	 #,
	lfd %f0,24(%r28)	 # a2, D.2617
	lwz %r26,48(%r1)	 #,
	lwz %r27,52(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput4.17_41, D.2617
	lwz %r9,foutput5@sdarel(%r13)	 # foutput5, foutput5
	lwz %r29,60(%r1)	 #,
	lfd %f0,32(%r28)	 # a2, D.2619
	lwz %r30,64(%r1)	 #,
	lwz %r31,68(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput5.18_43, D.2619
	lwz %r9,foutput6@sdarel(%r13)	 # foutput6, foutput6
	lfd %f21,72(%r1)	 #,
	lfd %f0,40(%r28)	 # a2, D.2621
	lfd %f22,80(%r1)	 #,
	lfd %f23,88(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput6.19_45, D.2621
	lwz %r9,foutput7@sdarel(%r13)	 # foutput7, foutput7
	lfd %f24,96(%r1)	 #,
	lfd %f0,48(%r28)	 # a2, D.2623
	lfd %f25,104(%r1)	 #,
	lfd %f26,112(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput7.20_47, D.2623
	lwz %r9,foutput8@sdarel(%r13)	 # foutput8, foutput8
	lfd %f27,120(%r1)	 #,
	lfd %f0,56(%r28)	 # a2, D.2625
	lfd %f28,128(%r1)	 #,
	lfd %f29,136(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput8.21_49, D.2625
	lwz %r9,foutput9@sdarel(%r13)	 # foutput9, foutput9
	lfd %f30,144(%r1)	 #,
	lfd %f0,64(%r28)	 # a2, D.2627
	lfd %f31,152(%r1)	 #,
	stfd %f0,0(%r9)	 # *foutput9.22_51, D.2627
	lwz %r9,foutput10@sdarel(%r13)	 # foutput10, foutput10
	lfd %f0,72(%r28)	 # a2, D.2629
	lwz %r28,56(%r1)	 #,
	addi %r1,%r1,160	 #,,
	stfd %f0,0(%r9)	 # *foutput10.23_53, D.2629
	blr	 #
.L22:
	lwz %r10,L1@sdarel(%r13)	 # L1, L1
	cmpwi %cr7,%r23,1	 #, tmp452, Y.1
	lfd %f0,0(%r10)	 # *L1.24_94, D.2863
	lis %r10,loss@ha	 # tmp793,
	la %r25,loss@l(%r10)	 # tmp771,, tmp793
	stfd %f0,loss@l(%r10)	 # loss, D.2863
	ble- %cr7,.L4	 #
	lwz %r10,L2@sdarel(%r13)	 # L2, L2
	cmpwi %cr7,%r23,2	 #, tmp456, Y.1
	lfd %f0,0(%r10)	 # *L2.25_96, D.2861
	stfd %f0,8(%r25)	 # loss, D.2861
	beq- %cr7,.L4	 #
	lwz %r10,L3@sdarel(%r13)	 # L3, L3
	cmpwi %cr7,%r23,3	 #, tmp460, Y.1
	lfd %f0,0(%r10)	 # *L3.26_98, D.2859
	stfd %f0,16(%r25)	 # loss, D.2859
	beq- %cr7,.L4	 #
	lwz %r10,L4@sdarel(%r13)	 # L4, L4
	cmpwi %cr7,%r23,4	 #, tmp464, Y.1
	lfd %f0,0(%r10)	 # *L4.27_100, D.2857
	stfd %f0,24(%r25)	 # loss, D.2857
	beq- %cr7,.L4	 #
	lwz %r10,L5@sdarel(%r13)	 # L5, L5
	cmpwi %cr7,%r23,5	 #, tmp468, Y.1
	lfd %f0,0(%r10)	 # *L5.28_102, D.2855
	stfd %f0,32(%r25)	 # loss, D.2855
	beq- %cr7,.L4	 #
	lwz %r10,L6@sdarel(%r13)	 # L6, L6
	cmpwi %cr7,%r23,6	 #, tmp472, Y.1
	lfd %f0,0(%r10)	 # *L6.29_104, D.2853
	stfd %f0,40(%r25)	 # loss, D.2853
	beq- %cr7,.L4	 #
	lwz %r10,L7@sdarel(%r13)	 # L7, L7
	cmpwi %cr7,%r23,7	 #, tmp476, Y.1
	lfd %f0,0(%r10)	 # *L7.30_106, D.2851
	stfd %f0,48(%r25)	 # loss, D.2851
	beq- %cr7,.L4	 #
	lwz %r10,L8@sdarel(%r13)	 # L8, L8
	cmpwi %cr7,%r23,8	 #, tmp480, Y.1
	lfd %f0,0(%r10)	 # *L8.31_108, D.2849
	stfd %f0,56(%r25)	 # loss, D.2849
	beq- %cr7,.L4	 #
	lwz %r10,L9@sdarel(%r13)	 # L9, L9
	cmpwi %cr7,%r23,9	 #, tmp484, Y.1
	lfd %f0,0(%r10)	 # *L9.32_110, D.2847
	stfd %f0,64(%r25)	 # loss, D.2847
	beq- %cr7,.L4	 #
	lwz %r10,L10@sdarel(%r13)	 # L10, L10
	lfd %f0,0(%r10)	 # *L10.33_112, D.2845
	stfd %f0,72(%r25)	 # loss, D.2845
.L4:
	cmpwi %cr7,%r23,0	 #, tmp540, Y.1
	lfd %f0,.LC0@l(%r11)	 #, tmp493
	lis %r19,da1@ha	 # tmp768,
	lfd %f6,0(%r9)	 # *Learning_rate.0_2, D.2582
	la %r26,da1@l(%r19)	 # tmp774,, tmp768
	li %r0,0	 # tmp539,
	lwz %r9,lamm@sdarel(%r13)	 # lamm, lamm
	lwz %r27,N@sdarel(%r13)	 # N, pretmp.90
	lfd %f7,0(%r9)	 # *lamm.3_10, D.2589
	stfd %f0,da1@l(%r19)	 # da1, tmp493
	stfd %f0,8(%r26)	 # da1, tmp493
	stfd %f0,16(%r26)	 # da1, tmp493
	stfd %f0,24(%r26)	 # da1, tmp493
	stfd %f0,32(%r26)	 # da1, tmp493
	stfd %f0,40(%r26)	 # da1, tmp493
	stfd %f0,48(%r26)	 # da1, tmp493
	stfd %f0,56(%r26)	 # da1, tmp493
	stfd %f0,64(%r26)	 # da1, tmp493
	stfd %f0,72(%r26)	 # da1, tmp493
	stw %r0,k@sdarel(%r13)	 # k, tmp539
	ble- %cr7,.L5	 #
	lis %r12,X1-8@ha	 # tmp814,
	cmpwi %cr1,%r27,0	 #, tmp778, pretmp.90
	fneg %f7,%f7	 # tmp819, D.2589
	lis %r31,daa1@ha	 # tmp780,
	la %r12,X1-8@l(%r12)	 # ivtmp.180,, tmp814
	slwi %r3,%r27,3	 # tmp817, pretmp.90,
	lis %r30,b-8@ha	 # tmp541,
	lis %r28,W@ha	 # tmp812,
	la %r30,b-8@l(%r30)	 # ivtmp.212,, tmp541
	slwi %r24,%r23,3	 # D.3180, Y.1,
	li %r29,-1	 # ivtmp.219,
	li %r6,0	 # D.3141,
	la %r31,daa1@l(%r31)	 # tmp788,, tmp780
	la %r28,W@l(%r28)	 # tmp813,, tmp812
	lis %r20,da1-8@ha	 # tmp816,
	add %r3,%r12,%r3	 # D.3152, ivtmp.180, tmp817
	lis %r21,.LC0@ha	 # tmp820,
	lis %r22,.LC2@ha	 # tmp821,
	lis %r4,0x4330	 # tmp822,
.L8:
	lfdx %f11,%r25,%r6	 # MEM[symbol: loss, index: D.3141_193, offset: 0B], MEM[symbol: loss, index: D.3141_193, offset: 0B]
	lfdx %f13,%r31,%r6	 # MEM[symbol: daa1, index: D.3141_193, offset: 0B], MEM[symbol: daa1, index: D.3141_193, offset: 0B]
	lfdu %f0,8(%r30)	 # MEM[(double[10] *)D.3177_424], MEM[(double[10] *)D.3177_424]
	fmul %f11,%f11,%f13	 # L_lsm.116, MEM[symbol: loss, index: D.3141_193, offset: 0B], MEM[symbol: daa1, index: D.3141_193, offset: 0B]
	fmul %f8,%f6,%f11	 # D.2875, D.2582, L_lsm.116
	fsub %f0,%f0,%f8	 # tmp549, MEM[(double[10] *)D.3177_424], D.2875
	stfd %f0,0(%r30)	 # MEM[(double[10] *)D.3177_424], tmp549
	ble- %cr1,.L6	 #
	fneg %f8,%f8	 # tmp769, D.2875
	lfs %f9,.LC2@l(%r22)	 #, tmp811
	slwi %r8,%r29,3	 # tmp551, ivtmp.219,
	mr %r10,%r12	 # ivtmp.180, ivtmp.180
	lfd %f10,.LC0@l(%r21)	 #, tmp808
	add %r8,%r8,%r28	 # ivtmp.176, tmp551, tmp813
	la %r11,da1-8@l(%r20)	 # ivtmp.187,, tmp816
	mr %r9,%r28	 # ivtmp.191, tmp813
.L7:
	lfdu %f0,8(%r8)	 # MEM[(double[100] *)D.3142_378], D.2880
	stw %r4,8(%r1)	 #, tmp822
	fcmpu %cr7,%f0,%f10	 # tmp570, D.2880, tmp808
	lfdu %f12,8(%r10)	 # MEM[(double[10] *)D.3143_375], MEM[(double[10] *)D.3143_375]
	lfdu %f13,8(%r11)	 # MEM[(double[10] *)D.3145_412], MEM[(double[10] *)D.3145_412]
	fmadd %f0,%f8,%f12,%f0	 # tmp563, tmp769, MEM[(double[10] *)D.3143_375], D.2880
	cmpw %cr6,%r10,%r3	 # D.3152, tmp590, ivtmp.180
	mfcr %r7	 # tmp569, tmp570
	rlwinm %r7,%r7,30,1	 # tmp569,
	mfcr %r0	 # tmp575, tmp570
	rlwinm %r0,%r0,29,1	 # tmp575,
	subf %r0,%r0,%r7	 # tmp577, tmp575, tmp569
	xoris %r0,%r0,0x8000	 #, tmp585, tmp577,
	stw %r0,12(%r1)	 #, tmp585
	lfd %f12,8(%r1)	 #, tmp584
	fsub %f12,%f12,%f9	 # tmp578, tmp584, tmp811
	fmadd %f0,%f7,%f12,%f0	 # tmp586, tmp819, tmp578, tmp563
	stfd %f0,0(%r8)	 # MEM[(double[100] *)D.3142_378], tmp586
	lfd %f0,0(%r9)	 # MEM[(double[100] *)D.3146_413], MEM[(double[100] *)D.3146_413]
	add %r9,%r9,%r6	 # ivtmp.191, ivtmp.191, D.3141
	fmadd %f0,%f11,%f0,%f13	 # tmp587, L_lsm.116, MEM[(double[100] *)D.3146_413], MEM[(double[10] *)D.3145_412]
	stfd %f0,0(%r11)	 # MEM[(double[10] *)D.3145_412], tmp587
	bne+ %cr6,.L7	 #
.L6:
	addi %r6,%r6,8	 # D.3141, D.3141,
	add %r29,%r29,%r27	 # ivtmp.219, ivtmp.219, pretmp.90
	cmpw %cr7,%r6,%r24	 # D.3180, tmp591, D.3141
	bne+ %cr7,.L8	 #
	stfd %f11,L@sdarel(%r13)	 # L, L_lsm.116
	stw %r23,k@sdarel(%r13)	 # k, Y.1
.L5:
	lfd %f0,da1@l(%r19)	 # da1, D.2591
	lwz %r9,Li1@sdarel(%r13)	 # Li1, Li1
	stfd %f0,0(%r9)	 # *Li1.4_12, D.2591
	lwz %r9,Li2@sdarel(%r13)	 # Li2, Li2
	lfd %f0,8(%r26)	 # da1, D.2593
	stfd %f0,0(%r9)	 # *Li2.5_14, D.2593
	lwz %r9,Li3@sdarel(%r13)	 # Li3, Li3
	lfd %f0,16(%r26)	 # da1, D.2595
	stfd %f0,0(%r9)	 # *Li3.6_16, D.2595
	lwz %r9,Li4@sdarel(%r13)	 # Li4, Li4
	lfd %f0,24(%r26)	 # da1, D.2597
	stfd %f0,0(%r9)	 # *Li4.7_18, D.2597
	lwz %r9,Li5@sdarel(%r13)	 # Li5, Li5
	lfd %f0,32(%r26)	 # da1, D.2599
	stfd %f0,0(%r9)	 # *Li5.8_20, D.2599
	lwz %r9,Li6@sdarel(%r13)	 # Li6, Li6
	lfd %f0,40(%r26)	 # da1, D.2601
	stfd %f0,0(%r9)	 # *Li6.9_22, D.2601
	lwz %r9,Li7@sdarel(%r13)	 # Li7, Li7
	lfd %f0,48(%r26)	 # da1, D.2603
	stfd %f0,0(%r9)	 # *Li7.10_24, D.2603
	lwz %r9,Li8@sdarel(%r13)	 # Li8, Li8
	lfd %f0,56(%r26)	 # da1, D.2605
	stfd %f0,0(%r9)	 # *Li8.11_26, D.2605
	lwz %r9,Li9@sdarel(%r13)	 # Li9, Li9
	lfd %f0,64(%r26)	 # da1, D.2607
	stfd %f0,0(%r9)	 # *Li9.12_28, D.2607
	lwz %r9,Li10@sdarel(%r13)	 # Li10, Li10
	lfd %f0,72(%r26)	 # da1, D.2609
	stfd %f0,0(%r9)	 # *Li10.13_30, D.2609
	b .L2	 #
.L23:
	lis %r22,a2@ha	 # tmp785,
	la %r28,a2@l(%r22)	 # tmp790,, tmp785
	b .L12	 #
.L9:
	lwz %r9,input1@sdarel(%r13)	 # input1, input1
	lis %r8,X@ha	 # tmp770,
	lfd %f0,0(%r9)	 # *input1.42_445, D.2916
	stfd %f0,X@l(%r8)	 # X, D.2916
	b .L11	 #
	.size	main, .-main
	.comm	L,8,8
	.globl loss
	.lcomm	loss,80,8
	.type	loss, @object
	.comm	indx,4,4
	.comm	k,4,4
	.comm	i,4,4
	.globl daa1
	.lcomm	daa1,80,8
	.type	daa1, @object
	.globl daa
	.lcomm	daa,80,8
	.type	daa, @object
	.comm	da,80,8
	.comm	da1,80,8
	.comm	a2,80,8
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
