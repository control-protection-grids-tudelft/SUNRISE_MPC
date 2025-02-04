	.file	"dv_CS.c"

 # rs6000/powerpc options: -msdata=sysv -G 8
 # GNU C (GCC) version 4.6.0 (powerpc-750-linux-gnu)
 #	compiled by GNU C version 4.5.2, GMP version 5.0.1, MPFR version 2.4.1, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed:  -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\BLTIN_GCC
 # -I D:\RSCAD\RSCAD FX 2.3\BIN\CMODEL_SOURCE\SHARED_CODE
 # -iprefix d:\rscad\rscad fx 2.3\bin\mingw-cross\bin\../lib/gcc/powerpc-750-linux-gnu/4.6.0/
 # -D__unix__ -D__gnu_linux__ -D__linux__ -Asystem=linux -Asystem=unix
 # -Asystem=posix
 # C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\dv_CS.c
 # -mregnames -msdata=sysv -mtoc
 # -auxbase-strip C:\Users\e451508\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\dv_CS.s
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
	.globl calculate_u
	.type	calculate_u, @function
calculate_u:
	stwu %r1,-48(%r1)	 #,,
	fneg %f6,%f6	 # tmp136, Ts
	mflr %r0	 #,
	stfd %f31,40(%r1)	 #,
	fmr %f31,%f1	 # i_ref, i_ref
	fdiv %f1,%f6,%f4	 #, tmp136, tau
	stfd %f30,32(%r1)	 #,
	stw %r0,52(%r1)	 #,
	stfd %f28,16(%r1)	 #,
	stfd %f29,24(%r1)	 #,
	fmr %f30,%f2	 # i_m, i_m
	fmr %f29,%f3	 # R, R
	fmr %f28,%f5	 # u_g, u_g
	bl exp	 #
	lis %r9,.LC1@ha	 # tmp144,
	lwz %r0,52(%r1)	 #,
	fneg %f30,%f30	 # tmp139, i_m
	lfs %f0,.LC1@l(%r9)	 #, tmp142
	mtlr %r0	 #,
	fmadd %f31,%f30,%f1,%f31	 # tmp140, tmp139, exp_term, i_ref
	lfd %f30,32(%r1)	 #,
	fsub %f1,%f0,%f1	 # tmp141, tmp142, exp_term
	fdiv %f1,%f31,%f1	 # tmp146, tmp140, tmp141
	lfd %f31,40(%r1)	 #,
	fneg %f1,%f1	 # tmp147, tmp146
	fmadd %f1,%f1,%f29,%f28	 #, tmp147, R, u_g
	lfd %f28,16(%r1)	 #,
	lfd %f29,24(%r1)	 #,
	addi %r1,%r1,48	 #,,
	blr	 #
	.size	calculate_u, .-calculate_u
	.section	.text.startup,"ax",@progbits
	.align 2
	.globl main
	.type	main, @function
main:
	stwu %r1,-64(%r1)	 #,,
	mflr %r0	 #,
	lwz %r9,wLpu@sdarel(%r13)	 # wLpu, wLpu
	lfd %f1,Ts@sdarel(%r13)	 # Ts, Ts
	stw %r0,68(%r1)	 #,
	stfd %f30,48(%r1)	 #,
	lfd %f30,Rpu@sdarel(%r13)	 # Rpu, Rpu.4
	fneg %f1,%f1	 # tmp189, Ts
	lfd %f13,0(%r9)	 # *wLpu.0_2, *wLpu.0_2
	lwz %r9,wPLL@sdarel(%r13)	 # wPLL, wPLL
	stfd %f27,24(%r1)	 #,
	lfd %f0,0(%r9)	 # *wPLL.1_4, *wPLL.1_4
	lwz %r9,ia_m@sdarel(%r13)	 # ia_m, ia_m
	stfd %f28,32(%r1)	 #,
	fdiv %f13,%f13,%f0	 # Lpu.2, *wLpu.0_2, *wPLL.1_4
	stfd %f29,40(%r1)	 #,
	stfd %f31,56(%r1)	 #,
	stw %r30,16(%r1)	 #,
	stw %r31,20(%r1)	 #,
	lwz %r31,VAC_A@sdarel(%r13)	 # VAC_A, VAC_A.6
	fdiv %f0,%f13,%f30	 # tau.5, Lpu.2, Rpu.4
	stfd %f13,Lpu@sdarel(%r13)	 # Lpu, Lpu.2
	fdiv %f1,%f1,%f0	 #, tmp189, tau.5
	stfd %f0,tau@sdarel(%r13)	 # tau, tau.5
	lfd %f27,0(%r9)	 # *ia_m.8_13, D.2486
	lwz %r9,ia_ref@sdarel(%r13)	 # ia_ref, ia_ref
	lfd %f28,0(%r9)	 # *ia_ref.7_11, D.2484
	lwz %r9,vga@sdarel(%r13)	 # vga, vga
	lfd %f29,0(%r9)	 # *vga.10_17, D.2489
	bl exp	 #
	lis %r9,.LC1@ha	 # tmp198,
	fneg %f27,%f27	 # tmp193, D.2486
	lwz %r30,VAC_B@sdarel(%r13)	 # VAC_B, VAC_B.12
	lfs %f31,.LC1@l(%r9)	 #, tmp196
	fneg %f30,%f30	 # tmp192, Rpu.4
	lwz %r9,ib_m@sdarel(%r13)	 # ib_m, ib_m
	fsub %f0,%f31,%f1	 # tmp195, tmp196, exp_term
	fmadd %f1,%f27,%f1,%f28	 # tmp194, tmp193, exp_term, D.2484
	fdiv %f1,%f1,%f0	 # tmp200, tmp194, tmp195
	fmadd %f29,%f30,%f1,%f29	 # tmp201, tmp192, tmp200, D.2489
	stfd %f29,0(%r31)	 # *VAC_A.6_10, tmp201
	lfd %f1,Ts@sdarel(%r13)	 # Ts, Ts
	lfd %f0,tau@sdarel(%r13)	 # tau, tau
	lfd %f27,0(%r9)	 # *ib_m.14_24, D.2496
	fneg %f1,%f1	 # tmp205, Ts
	lwz %r9,ib_ref@sdarel(%r13)	 # ib_ref, ib_ref
	lfd %f28,Rpu@sdarel(%r13)	 # Rpu, Rpu.4
	lfd %f29,0(%r9)	 # *ib_ref.13_22, D.2494
	fneg %f27,%f27	 # tmp210, D.2496
	fdiv %f1,%f1,%f0	 #, tmp205, tau
	lwz %r9,vgb@sdarel(%r13)	 # vgb, vgb
	lfd %f30,0(%r9)	 # *vgb.15_28, D.2498
	bl exp	 #
	fneg %f28,%f28	 # tmp209, Rpu.4
	lwz %r31,VAC_C@sdarel(%r13)	 # VAC_C, VAC_C.16
	fsub %f0,%f31,%f1	 # tmp212, tmp196, exp_term
	lwz %r9,ic_m@sdarel(%r13)	 # ic_m, ic_m
	fmadd %f1,%f27,%f1,%f29	 # tmp211, tmp210, exp_term, D.2494
	fdiv %f1,%f1,%f0	 # tmp217, tmp211, tmp212
	fmadd %f30,%f28,%f1,%f30	 # tmp218, tmp209, tmp217, D.2498
	stfd %f30,0(%r30)	 # *VAC_B.12_21, tmp218
	lfd %f1,Ts@sdarel(%r13)	 # Ts, Ts
	lfd %f0,tau@sdarel(%r13)	 # tau, tau
	lfd %f27,0(%r9)	 # *ic_m.18_35, D.2504
	fneg %f1,%f1	 # tmp222, Ts
	lwz %r9,ic_ref@sdarel(%r13)	 # ic_ref, ic_ref
	lfd %f28,Rpu@sdarel(%r13)	 # Rpu, Rpu.4
	lfd %f29,0(%r9)	 # *ic_ref.17_33, D.2502
	fneg %f27,%f27	 # tmp227, D.2504
	fdiv %f1,%f1,%f0	 #, tmp222, tau
	lwz %r9,vgc@sdarel(%r13)	 # vgc, vgc
	lfd %f30,0(%r9)	 # *vgc.19_39, D.2506
	bl exp	 #
	fneg %f28,%f28	 # tmp226, Rpu.4
	lwz %r0,68(%r1)	 #,
	fsub %f31,%f31,%f1	 # tmp229, tmp196, exp_term
	lwz %r30,16(%r1)	 #,
	fmadd %f1,%f27,%f1,%f29	 # tmp228, tmp227, exp_term, D.2502
	mtlr %r0	 #,
	lfd %f27,24(%r1)	 #,
	lfd %f29,40(%r1)	 #,
	fdiv %f1,%f1,%f31	 # tmp234, tmp228, tmp229
	lfd %f31,56(%r1)	 #,
	fmadd %f30,%f28,%f1,%f30	 # tmp235, tmp226, tmp234, D.2506
	lfd %f28,32(%r1)	 #,
	stfd %f30,0(%r31)	 # *VAC_C.16_32, tmp235
	lwz %r31,20(%r1)	 #,
	lfd %f30,48(%r1)	 #,
	addi %r1,%r1,64	 #,,
	blr	 #
	.size	main, .-main
	.comm	VAC_C,4,4
	.comm	VAC_B,4,4
	.comm	VAC_A,4,4
	.comm	wLpu,4,4
	.comm	vgc,4,4
	.comm	vgb,4,4
	.comm	vga,4,4
	.comm	ic_m,4,4
	.comm	ic_ref,4,4
	.comm	ib_m,4,4
	.comm	ib_ref,4,4
	.comm	ia_m,4,4
	.comm	ia_ref,4,4
	.comm	wPLL,4,4
	.comm	Rpu,8,8
	.comm	f,8,8
	.comm	tau,8,8
	.comm	Lpu,8,8
	.comm	Ts,8,8
	.comm	dt,8,8
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.long	1065353216
	.ident	"GCC: (GNU) 4.6.0"
	.gnu_attribute 4, 1
	.section	.note.GNU-stack,"",@progbits
