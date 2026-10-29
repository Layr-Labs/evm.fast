import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc627
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody627_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody627_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def RemovedBody627_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody627_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody627_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody627_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody627_10 : StackLang.HolProg 64 :=
.seq RemovedBody627_8 RemovedBody627_9

def RemovedBody627_11 : StackLang.HolProg 64 :=
.seq RemovedBody627_7 RemovedBody627_10

def RemovedBody627_12 : StackLang.HolProg 64 :=
.seq RemovedBody627_6 RemovedBody627_11

def RemovedBody627_13 : StackLang.HolProg 64 :=
.seq RemovedBody627_5 RemovedBody627_12

def RemovedBody627_14 : StackLang.HolProg 64 :=
.seq RemovedBody627_4 RemovedBody627_13

def RemovedBody627_15 : StackLang.HolProg 64 :=
.seq RemovedBody627_3 RemovedBody627_14

def RemovedBody627_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody627_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody627_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 17 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody627_19 : StackLang.HolProg 64 :=
.seq RemovedBody627_17 RemovedBody627_18

def RemovedBody627_20 : StackLang.HolProg 64 :=
.seq RemovedBody627_16 RemovedBody627_19

def RemovedBody627_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody627_15 RemovedBody627_20

def RemovedBody627_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody627_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody627_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody627_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody627_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4294967295#64)

def RemovedBody627_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 16
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody627_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody627_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 17
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 16)))

def RemovedBody627_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody627_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody627_36 : StackLang.HolProg 64 :=
.seq RemovedBody627_34 RemovedBody627_35

def RemovedBody627_37 : StackLang.HolProg 64 :=
.seq RemovedBody627_33 RemovedBody627_36

def RemovedBody627_38 : StackLang.HolProg 64 :=
.seq RemovedBody627_32 RemovedBody627_37

def RemovedBody627_39 : StackLang.HolProg 64 :=
.seq RemovedBody627_31 RemovedBody627_38

def RemovedBody627_40 : StackLang.HolProg 64 :=
.seq RemovedBody627_30 RemovedBody627_39

def RemovedBody627_41 : StackLang.HolProg 64 :=
.seq RemovedBody627_29 RemovedBody627_40

def RemovedBody627_42 : StackLang.HolProg 64 :=
.seq RemovedBody627_28 RemovedBody627_41

def RemovedBody627_43 : StackLang.HolProg 64 :=
.seq RemovedBody627_27 RemovedBody627_42

def RemovedBody627_44 : StackLang.HolProg 64 :=
.seq RemovedBody627_26 RemovedBody627_43

def RemovedBody627_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 15)))

def RemovedBody627_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 16
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 16)))

def RemovedBody627_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 17
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 17)))

def RemovedBody627_48 : StackLang.HolProg 64 :=
.seq RemovedBody627_46 RemovedBody627_47

def RemovedBody627_49 : StackLang.HolProg 64 :=
.seq RemovedBody627_45 RemovedBody627_48

def RemovedBody627_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody627_44 RemovedBody627_49

def RemovedBody627_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody627_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody627_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 48#64)

def RemovedBody627_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody627_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4294967295#64)

def RemovedBody627_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody627_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def RemovedBody627_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody627_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody627_64 : StackLang.HolProg 64 :=
.seq RemovedBody627_62 RemovedBody627_63

def RemovedBody627_65 : StackLang.HolProg 64 :=
.seq RemovedBody627_61 RemovedBody627_64

def RemovedBody627_66 : StackLang.HolProg 64 :=
.seq RemovedBody627_60 RemovedBody627_65

def RemovedBody627_67 : StackLang.HolProg 64 :=
.seq RemovedBody627_59 RemovedBody627_66

def RemovedBody627_68 : StackLang.HolProg 64 :=
.seq RemovedBody627_58 RemovedBody627_67

def RemovedBody627_69 : StackLang.HolProg 64 :=
.seq RemovedBody627_57 RemovedBody627_68

def RemovedBody627_70 : StackLang.HolProg 64 :=
.seq RemovedBody627_56 RemovedBody627_69

def RemovedBody627_71 : StackLang.HolProg 64 :=
.seq RemovedBody627_55 RemovedBody627_70

def RemovedBody627_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody627_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def RemovedBody627_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def RemovedBody627_75 : StackLang.HolProg 64 :=
.seq RemovedBody627_73 RemovedBody627_74

def RemovedBody627_76 : StackLang.HolProg 64 :=
.seq RemovedBody627_72 RemovedBody627_75

def RemovedBody627_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody627_71 RemovedBody627_76

def RemovedBody627_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody627_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody627_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody627_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody627_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4294967295#64)

def RemovedBody627_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody627_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody627_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody627_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody627_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody627_93 : StackLang.HolProg 64 :=
.seq RemovedBody627_91 RemovedBody627_92

def RemovedBody627_94 : StackLang.HolProg 64 :=
.seq RemovedBody627_90 RemovedBody627_93

def RemovedBody627_95 : StackLang.HolProg 64 :=
.seq RemovedBody627_89 RemovedBody627_94

def RemovedBody627_96 : StackLang.HolProg 64 :=
.seq RemovedBody627_88 RemovedBody627_95

def RemovedBody627_97 : StackLang.HolProg 64 :=
.seq RemovedBody627_87 RemovedBody627_96

def RemovedBody627_98 : StackLang.HolProg 64 :=
.seq RemovedBody627_86 RemovedBody627_97

def RemovedBody627_99 : StackLang.HolProg 64 :=
.seq RemovedBody627_85 RemovedBody627_98

def RemovedBody627_100 : StackLang.HolProg 64 :=
.seq RemovedBody627_84 RemovedBody627_99

def RemovedBody627_101 : StackLang.HolProg 64 :=
.seq RemovedBody627_83 RemovedBody627_100

def RemovedBody627_102 : StackLang.HolProg 64 :=
.seq RemovedBody627_82 RemovedBody627_101

def RemovedBody627_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody627_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody627_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody627_106 : StackLang.HolProg 64 :=
.seq RemovedBody627_104 RemovedBody627_105

def RemovedBody627_107 : StackLang.HolProg 64 :=
.seq RemovedBody627_103 RemovedBody627_106

def RemovedBody627_108 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody627_102 RemovedBody627_107

def RemovedBody627_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody627_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody627_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4294967295#64)

def RemovedBody627_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody627_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody627_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody627_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody627_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody627_120 : StackLang.HolProg 64 :=
.seq RemovedBody627_118 RemovedBody627_119

def RemovedBody627_121 : StackLang.HolProg 64 :=
.seq RemovedBody627_117 RemovedBody627_120

def RemovedBody627_122 : StackLang.HolProg 64 :=
.seq RemovedBody627_116 RemovedBody627_121

def RemovedBody627_123 : StackLang.HolProg 64 :=
.seq RemovedBody627_115 RemovedBody627_122

def RemovedBody627_124 : StackLang.HolProg 64 :=
.seq RemovedBody627_114 RemovedBody627_123

def RemovedBody627_125 : StackLang.HolProg 64 :=
.seq RemovedBody627_113 RemovedBody627_124

def RemovedBody627_126 : StackLang.HolProg 64 :=
.seq RemovedBody627_112 RemovedBody627_125

def RemovedBody627_127 : StackLang.HolProg 64 :=
.seq RemovedBody627_111 RemovedBody627_126

def RemovedBody627_128 : StackLang.HolProg 64 :=
.seq RemovedBody627_110 RemovedBody627_127

def RemovedBody627_129 : StackLang.HolProg 64 :=
.seq RemovedBody627_109 RemovedBody627_128

def RemovedBody627_130 : StackLang.HolProg 64 :=
.seq RemovedBody627_108 RemovedBody627_129

def RemovedBody627_131 : StackLang.HolProg 64 :=
.seq RemovedBody627_81 RemovedBody627_130

def RemovedBody627_132 : StackLang.HolProg 64 :=
.seq RemovedBody627_80 RemovedBody627_131

def RemovedBody627_133 : StackLang.HolProg 64 :=
.seq RemovedBody627_79 RemovedBody627_132

def RemovedBody627_134 : StackLang.HolProg 64 :=
.seq RemovedBody627_78 RemovedBody627_133

def RemovedBody627_135 : StackLang.HolProg 64 :=
.seq RemovedBody627_77 RemovedBody627_134

def RemovedBody627_136 : StackLang.HolProg 64 :=
.seq RemovedBody627_54 RemovedBody627_135

def RemovedBody627_137 : StackLang.HolProg 64 :=
.seq RemovedBody627_53 RemovedBody627_136

def RemovedBody627_138 : StackLang.HolProg 64 :=
.seq RemovedBody627_52 RemovedBody627_137

def RemovedBody627_139 : StackLang.HolProg 64 :=
.seq RemovedBody627_51 RemovedBody627_138

def RemovedBody627_140 : StackLang.HolProg 64 :=
.seq RemovedBody627_50 RemovedBody627_139

def RemovedBody627_141 : StackLang.HolProg 64 :=
.seq RemovedBody627_25 RemovedBody627_140

def RemovedBody627_142 : StackLang.HolProg 64 :=
.seq RemovedBody627_24 RemovedBody627_141

def RemovedBody627_143 : StackLang.HolProg 64 :=
.seq RemovedBody627_23 RemovedBody627_142

def RemovedBody627_144 : StackLang.HolProg 64 :=
.seq RemovedBody627_22 RemovedBody627_143

def RemovedBody627_145 : StackLang.HolProg 64 :=
.seq RemovedBody627_21 RemovedBody627_144

def RemovedBody627_146 : StackLang.HolProg 64 :=
.seq RemovedBody627_2 RemovedBody627_145

def RemovedBody627_147 : StackLang.HolProg 64 :=
.seq RemovedBody627_1 RemovedBody627_146

def RemovedBody627_148 : StackLang.HolProg 64 :=
.seq RemovedBody627_0 RemovedBody627_147

def Removed627 : Nat × StackLang.HolProg 64 := (627, RemovedBody627_148)
theorem Removed627_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc627 = Removed627 := by
  kernel_rfl
#print axioms Removed627_eq
end InitECandidate.Proofs.BackendStages
