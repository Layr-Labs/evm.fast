import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed627
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody627_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody627_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 16#64)

def NamedBody627_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody627_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody627_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody627_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody627_10 : StackLang.HolProg 64 :=
.seq NamedBody627_8 NamedBody627_9

def NamedBody627_11 : StackLang.HolProg 64 :=
.seq NamedBody627_7 NamedBody627_10

def NamedBody627_12 : StackLang.HolProg 64 :=
.seq NamedBody627_6 NamedBody627_11

def NamedBody627_13 : StackLang.HolProg 64 :=
.seq NamedBody627_5 NamedBody627_12

def NamedBody627_14 : StackLang.HolProg 64 :=
.seq NamedBody627_4 NamedBody627_13

def NamedBody627_15 : StackLang.HolProg 64 :=
.seq NamedBody627_3 NamedBody627_14

def NamedBody627_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody627_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody627_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 17 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody627_19 : StackLang.HolProg 64 :=
.seq NamedBody627_17 NamedBody627_18

def NamedBody627_20 : StackLang.HolProg 64 :=
.seq NamedBody627_16 NamedBody627_19

def NamedBody627_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody627_15 NamedBody627_20

def NamedBody627_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody627_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody627_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody627_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody627_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4294967295#64)

def NamedBody627_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 16
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody627_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody627_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 17
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 16)))

def NamedBody627_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody627_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody627_36 : StackLang.HolProg 64 :=
.seq NamedBody627_34 NamedBody627_35

def NamedBody627_37 : StackLang.HolProg 64 :=
.seq NamedBody627_33 NamedBody627_36

def NamedBody627_38 : StackLang.HolProg 64 :=
.seq NamedBody627_32 NamedBody627_37

def NamedBody627_39 : StackLang.HolProg 64 :=
.seq NamedBody627_31 NamedBody627_38

def NamedBody627_40 : StackLang.HolProg 64 :=
.seq NamedBody627_30 NamedBody627_39

def NamedBody627_41 : StackLang.HolProg 64 :=
.seq NamedBody627_29 NamedBody627_40

def NamedBody627_42 : StackLang.HolProg 64 :=
.seq NamedBody627_28 NamedBody627_41

def NamedBody627_43 : StackLang.HolProg 64 :=
.seq NamedBody627_27 NamedBody627_42

def NamedBody627_44 : StackLang.HolProg 64 :=
.seq NamedBody627_26 NamedBody627_43

def NamedBody627_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 15)))

def NamedBody627_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 30 16
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 16)))

def NamedBody627_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 29 17
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 17)))

def NamedBody627_48 : StackLang.HolProg 64 :=
.seq NamedBody627_46 NamedBody627_47

def NamedBody627_49 : StackLang.HolProg 64 :=
.seq NamedBody627_45 NamedBody627_48

def NamedBody627_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody627_44 NamedBody627_49

def NamedBody627_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody627_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody627_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 48#64)

def NamedBody627_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody627_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4294967295#64)

def NamedBody627_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 29
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody627_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 30)))

def NamedBody627_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody627_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody627_64 : StackLang.HolProg 64 :=
.seq NamedBody627_62 NamedBody627_63

def NamedBody627_65 : StackLang.HolProg 64 :=
.seq NamedBody627_61 NamedBody627_64

def NamedBody627_66 : StackLang.HolProg 64 :=
.seq NamedBody627_60 NamedBody627_65

def NamedBody627_67 : StackLang.HolProg 64 :=
.seq NamedBody627_59 NamedBody627_66

def NamedBody627_68 : StackLang.HolProg 64 :=
.seq NamedBody627_58 NamedBody627_67

def NamedBody627_69 : StackLang.HolProg 64 :=
.seq NamedBody627_57 NamedBody627_68

def NamedBody627_70 : StackLang.HolProg 64 :=
.seq NamedBody627_56 NamedBody627_69

def NamedBody627_71 : StackLang.HolProg 64 :=
.seq NamedBody627_55 NamedBody627_70

def NamedBody627_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody627_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 30
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 30)))

def NamedBody627_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 29
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 29)))

def NamedBody627_75 : StackLang.HolProg 64 :=
.seq NamedBody627_73 NamedBody627_74

def NamedBody627_76 : StackLang.HolProg 64 :=
.seq NamedBody627_72 NamedBody627_75

def NamedBody627_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody627_71 NamedBody627_76

def NamedBody627_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody627_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody627_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody627_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody627_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4294967295#64)

def NamedBody627_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody627_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody627_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody627_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody627_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody627_93 : StackLang.HolProg 64 :=
.seq NamedBody627_91 NamedBody627_92

def NamedBody627_94 : StackLang.HolProg 64 :=
.seq NamedBody627_90 NamedBody627_93

def NamedBody627_95 : StackLang.HolProg 64 :=
.seq NamedBody627_89 NamedBody627_94

def NamedBody627_96 : StackLang.HolProg 64 :=
.seq NamedBody627_88 NamedBody627_95

def NamedBody627_97 : StackLang.HolProg 64 :=
.seq NamedBody627_87 NamedBody627_96

def NamedBody627_98 : StackLang.HolProg 64 :=
.seq NamedBody627_86 NamedBody627_97

def NamedBody627_99 : StackLang.HolProg 64 :=
.seq NamedBody627_85 NamedBody627_98

def NamedBody627_100 : StackLang.HolProg 64 :=
.seq NamedBody627_84 NamedBody627_99

def NamedBody627_101 : StackLang.HolProg 64 :=
.seq NamedBody627_83 NamedBody627_100

def NamedBody627_102 : StackLang.HolProg 64 :=
.seq NamedBody627_82 NamedBody627_101

def NamedBody627_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody627_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody627_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody627_106 : StackLang.HolProg 64 :=
.seq NamedBody627_104 NamedBody627_105

def NamedBody627_107 : StackLang.HolProg 64 :=
.seq NamedBody627_103 NamedBody627_106

def NamedBody627_108 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody627_102 NamedBody627_107

def NamedBody627_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody627_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody627_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4294967295#64)

def NamedBody627_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody627_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody627_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody627_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody627_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody627_120 : StackLang.HolProg 64 :=
.seq NamedBody627_118 NamedBody627_119

def NamedBody627_121 : StackLang.HolProg 64 :=
.seq NamedBody627_117 NamedBody627_120

def NamedBody627_122 : StackLang.HolProg 64 :=
.seq NamedBody627_116 NamedBody627_121

def NamedBody627_123 : StackLang.HolProg 64 :=
.seq NamedBody627_115 NamedBody627_122

def NamedBody627_124 : StackLang.HolProg 64 :=
.seq NamedBody627_114 NamedBody627_123

def NamedBody627_125 : StackLang.HolProg 64 :=
.seq NamedBody627_113 NamedBody627_124

def NamedBody627_126 : StackLang.HolProg 64 :=
.seq NamedBody627_112 NamedBody627_125

def NamedBody627_127 : StackLang.HolProg 64 :=
.seq NamedBody627_111 NamedBody627_126

def NamedBody627_128 : StackLang.HolProg 64 :=
.seq NamedBody627_110 NamedBody627_127

def NamedBody627_129 : StackLang.HolProg 64 :=
.seq NamedBody627_109 NamedBody627_128

def NamedBody627_130 : StackLang.HolProg 64 :=
.seq NamedBody627_108 NamedBody627_129

def NamedBody627_131 : StackLang.HolProg 64 :=
.seq NamedBody627_81 NamedBody627_130

def NamedBody627_132 : StackLang.HolProg 64 :=
.seq NamedBody627_80 NamedBody627_131

def NamedBody627_133 : StackLang.HolProg 64 :=
.seq NamedBody627_79 NamedBody627_132

def NamedBody627_134 : StackLang.HolProg 64 :=
.seq NamedBody627_78 NamedBody627_133

def NamedBody627_135 : StackLang.HolProg 64 :=
.seq NamedBody627_77 NamedBody627_134

def NamedBody627_136 : StackLang.HolProg 64 :=
.seq NamedBody627_54 NamedBody627_135

def NamedBody627_137 : StackLang.HolProg 64 :=
.seq NamedBody627_53 NamedBody627_136

def NamedBody627_138 : StackLang.HolProg 64 :=
.seq NamedBody627_52 NamedBody627_137

def NamedBody627_139 : StackLang.HolProg 64 :=
.seq NamedBody627_51 NamedBody627_138

def NamedBody627_140 : StackLang.HolProg 64 :=
.seq NamedBody627_50 NamedBody627_139

def NamedBody627_141 : StackLang.HolProg 64 :=
.seq NamedBody627_25 NamedBody627_140

def NamedBody627_142 : StackLang.HolProg 64 :=
.seq NamedBody627_24 NamedBody627_141

def NamedBody627_143 : StackLang.HolProg 64 :=
.seq NamedBody627_23 NamedBody627_142

def NamedBody627_144 : StackLang.HolProg 64 :=
.seq NamedBody627_22 NamedBody627_143

def NamedBody627_145 : StackLang.HolProg 64 :=
.seq NamedBody627_21 NamedBody627_144

def NamedBody627_146 : StackLang.HolProg 64 :=
.seq NamedBody627_2 NamedBody627_145

def NamedBody627_147 : StackLang.HolProg 64 :=
.seq NamedBody627_1 NamedBody627_146

def NamedBody627_148 : StackLang.HolProg 64 :=
.seq NamedBody627_0 NamedBody627_147

def Named627 : Nat × StackLang.HolProg 64 := (627, NamedBody627_148)
theorem Named627_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed627 = Named627 := by
  kernel_rfl
#print axioms Named627_eq
end InitECandidate.Proofs.BackendStages
