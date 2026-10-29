import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw143
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody143_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody143_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody143_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody143_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody143_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody143_5 : StackLang.HolProg 64 :=
.seq AllocBody143_3 AllocBody143_4

def AllocBody143_6 : StackLang.HolProg 64 :=
.seq AllocBody143_2 AllocBody143_5

def AllocBody143_7 : StackLang.HolProg 64 :=
.seq AllocBody143_1 AllocBody143_6

def AllocBody143_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody143_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 256#64)

def AllocBody143_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody143_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody143_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 18446744073709551615#64)

def AllocBody143_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 18446744073709551615#64)

def AllocBody143_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 18446744073709551615#64)

def AllocBody143_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody143_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody143_22 : StackLang.HolProg 64 :=
.seq AllocBody143_20 AllocBody143_21

def AllocBody143_23 : StackLang.HolProg 64 :=
.seq AllocBody143_19 AllocBody143_22

def AllocBody143_24 : StackLang.HolProg 64 :=
.seq AllocBody143_18 AllocBody143_23

def AllocBody143_25 : StackLang.HolProg 64 :=
.seq AllocBody143_17 AllocBody143_24

def AllocBody143_26 : StackLang.HolProg 64 :=
.seq AllocBody143_16 AllocBody143_25

def AllocBody143_27 : StackLang.HolProg 64 :=
.seq AllocBody143_15 AllocBody143_26

def AllocBody143_28 : StackLang.HolProg 64 :=
.seq AllocBody143_14 AllocBody143_27

def AllocBody143_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody143_28 AllocBody143_29

def AllocBody143_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody143_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody143_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody143_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody143_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody143_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody143_40 : StackLang.HolProg 64 :=
.seq AllocBody143_38 AllocBody143_39

def AllocBody143_41 : StackLang.HolProg 64 :=
.seq AllocBody143_37 AllocBody143_40

def AllocBody143_42 : StackLang.HolProg 64 :=
.seq AllocBody143_36 AllocBody143_41

def AllocBody143_43 : StackLang.HolProg 64 :=
.seq AllocBody143_35 AllocBody143_42

def AllocBody143_44 : StackLang.HolProg 64 :=
.seq AllocBody143_34 AllocBody143_43

def AllocBody143_45 : StackLang.HolProg 64 :=
.seq AllocBody143_33 AllocBody143_44

def AllocBody143_46 : StackLang.HolProg 64 :=
.seq AllocBody143_32 AllocBody143_45

def AllocBody143_47 : StackLang.HolProg 64 :=
.seq AllocBody143_31 AllocBody143_46

def AllocBody143_48 : StackLang.HolProg 64 :=
.seq AllocBody143_30 AllocBody143_47

def AllocBody143_49 : StackLang.HolProg 64 :=
.seq AllocBody143_13 AllocBody143_48

def AllocBody143_50 : StackLang.HolProg 64 :=
.seq AllocBody143_12 AllocBody143_49

def AllocBody143_51 : StackLang.HolProg 64 :=
.seq AllocBody143_11 AllocBody143_50

def AllocBody143_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody143_53 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody143_51 AllocBody143_52

def AllocBody143_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody143_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody143_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody143_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody143_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody143_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody143_62 : StackLang.HolProg 64 :=
.seq AllocBody143_60 AllocBody143_61

def AllocBody143_63 : StackLang.HolProg 64 :=
.seq AllocBody143_59 AllocBody143_62

def AllocBody143_64 : StackLang.HolProg 64 :=
.seq AllocBody143_58 AllocBody143_63

def AllocBody143_65 : StackLang.HolProg 64 :=
.seq AllocBody143_57 AllocBody143_64

def AllocBody143_66 : StackLang.HolProg 64 :=
.seq AllocBody143_56 AllocBody143_65

def AllocBody143_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 105#64)

def AllocBody143_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody143_70 : StackLang.HolProg 64 :=
.seq AllocBody143_68 AllocBody143_69

def AllocBody143_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody143_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody143_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody143_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 143 3

def AllocBody143_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody143_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody143_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody143_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody143_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody143_81 : StackLang.HolProg 64 :=
.seq AllocBody143_79 AllocBody143_80

def AllocBody143_82 : StackLang.HolProg 64 :=
.seq AllocBody143_78 AllocBody143_81

def AllocBody143_83 : StackLang.HolProg 64 :=
.seq AllocBody143_77 AllocBody143_82

def AllocBody143_84 : StackLang.HolProg 64 :=
.seq AllocBody143_76 AllocBody143_83

def AllocBody143_85 : StackLang.HolProg 64 :=
.seq AllocBody143_75 AllocBody143_84

def AllocBody143_86 : StackLang.HolProg 64 :=
.seq AllocBody143_74 AllocBody143_85

def AllocBody143_87 : StackLang.HolProg 64 :=
.seq AllocBody143_73 AllocBody143_86

def AllocBody143_88 : StackLang.HolProg 64 :=
.seq AllocBody143_72 AllocBody143_87

def AllocBody143_89 : StackLang.HolProg 64 :=
.seq AllocBody143_71 AllocBody143_88

def AllocBody143_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody143_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody143_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody143_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody143_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody143_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody143_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody143_99 : StackLang.HolProg 64 :=
.seq AllocBody143_97 AllocBody143_98

def AllocBody143_100 : StackLang.HolProg 64 :=
.seq AllocBody143_96 AllocBody143_99

def AllocBody143_101 : StackLang.HolProg 64 :=
.seq AllocBody143_95 AllocBody143_100

def AllocBody143_102 : StackLang.HolProg 64 :=
.seq AllocBody143_94 AllocBody143_101

def AllocBody143_103 : StackLang.HolProg 64 :=
.seq AllocBody143_93 AllocBody143_102

def AllocBody143_104 : StackLang.HolProg 64 :=
.seq AllocBody143_92 AllocBody143_103

def AllocBody143_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody143_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody143_107 : StackLang.HolProg 64 :=
.seq AllocBody143_105 AllocBody143_106

def AllocBody143_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody143_109 : StackLang.HolProg 64 :=
.seq AllocBody143_107 AllocBody143_108

def AllocBody143_110 : StackLang.HolProg 64 :=
.call (some (AllocBody143_104, 0, 143, 2)) (Sum.inl 142) (some (AllocBody143_109, 143, 3))

def AllocBody143_111 : StackLang.HolProg 64 :=
.seq AllocBody143_91 AllocBody143_110

def AllocBody143_112 : StackLang.HolProg 64 :=
.seq AllocBody143_90 AllocBody143_111

def AllocBody143_113 : StackLang.HolProg 64 :=
.seq AllocBody143_89 AllocBody143_112

def AllocBody143_114 : StackLang.HolProg 64 :=
.seq AllocBody143_70 AllocBody143_113

def AllocBody143_115 : StackLang.HolProg 64 :=
.seq AllocBody143_67 AllocBody143_114

def AllocBody143_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody143_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody143_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def AllocBody143_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody143_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def AllocBody143_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def AllocBody143_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 18446744073709551615#64)

def AllocBody143_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody143_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody143_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody143_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody143_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody143_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody143_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody143_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 3

def AllocBody143_137 : StackLang.HolProg 64 :=
.seq AllocBody143_135 AllocBody143_136

def AllocBody143_138 : StackLang.HolProg 64 :=
.seq AllocBody143_134 AllocBody143_137

def AllocBody143_139 : StackLang.HolProg 64 :=
.seq AllocBody143_133 AllocBody143_138

def AllocBody143_140 : StackLang.HolProg 64 :=
.seq AllocBody143_132 AllocBody143_139

def AllocBody143_141 : StackLang.HolProg 64 :=
.seq AllocBody143_131 AllocBody143_140

def AllocBody143_142 : StackLang.HolProg 64 :=
.seq AllocBody143_130 AllocBody143_141

def AllocBody143_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 106#64)

def AllocBody143_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody143_146 : StackLang.HolProg 64 :=
.seq AllocBody143_144 AllocBody143_145

def AllocBody143_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody143_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody143_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody143_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 143 5

def AllocBody143_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody143_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody143_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody143_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody143_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody143_157 : StackLang.HolProg 64 :=
.seq AllocBody143_155 AllocBody143_156

def AllocBody143_158 : StackLang.HolProg 64 :=
.seq AllocBody143_154 AllocBody143_157

def AllocBody143_159 : StackLang.HolProg 64 :=
.seq AllocBody143_153 AllocBody143_158

def AllocBody143_160 : StackLang.HolProg 64 :=
.seq AllocBody143_152 AllocBody143_159

def AllocBody143_161 : StackLang.HolProg 64 :=
.seq AllocBody143_151 AllocBody143_160

def AllocBody143_162 : StackLang.HolProg 64 :=
.seq AllocBody143_150 AllocBody143_161

def AllocBody143_163 : StackLang.HolProg 64 :=
.seq AllocBody143_149 AllocBody143_162

def AllocBody143_164 : StackLang.HolProg 64 :=
.seq AllocBody143_148 AllocBody143_163

def AllocBody143_165 : StackLang.HolProg 64 :=
.seq AllocBody143_147 AllocBody143_164

def AllocBody143_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody143_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody143_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody143_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody143_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody143_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody143_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody143_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody143_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody143_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody143_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody143_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody143_180 : StackLang.HolProg 64 :=
.seq AllocBody143_178 AllocBody143_179

def AllocBody143_181 : StackLang.HolProg 64 :=
.seq AllocBody143_177 AllocBody143_180

def AllocBody143_182 : StackLang.HolProg 64 :=
.seq AllocBody143_176 AllocBody143_181

def AllocBody143_183 : StackLang.HolProg 64 :=
.seq AllocBody143_175 AllocBody143_182

def AllocBody143_184 : StackLang.HolProg 64 :=
.seq AllocBody143_174 AllocBody143_183

def AllocBody143_185 : StackLang.HolProg 64 :=
.seq AllocBody143_173 AllocBody143_184

def AllocBody143_186 : StackLang.HolProg 64 :=
.seq AllocBody143_172 AllocBody143_185

def AllocBody143_187 : StackLang.HolProg 64 :=
.seq AllocBody143_171 AllocBody143_186

def AllocBody143_188 : StackLang.HolProg 64 :=
.seq AllocBody143_170 AllocBody143_187

def AllocBody143_189 : StackLang.HolProg 64 :=
.seq AllocBody143_169 AllocBody143_188

def AllocBody143_190 : StackLang.HolProg 64 :=
.seq AllocBody143_168 AllocBody143_189

def AllocBody143_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody143_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody143_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody143_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody143_195 : StackLang.HolProg 64 :=
.seq AllocBody143_193 AllocBody143_194

def AllocBody143_196 : StackLang.HolProg 64 :=
.seq AllocBody143_192 AllocBody143_195

def AllocBody143_197 : StackLang.HolProg 64 :=
.seq AllocBody143_191 AllocBody143_196

def AllocBody143_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody143_199 : StackLang.HolProg 64 :=
.seq AllocBody143_197 AllocBody143_198

def AllocBody143_200 : StackLang.HolProg 64 :=
.call (some (AllocBody143_190, 0, 143, 4)) (Sum.inl 141) (some (AllocBody143_199, 143, 5))

def AllocBody143_201 : StackLang.HolProg 64 :=
.seq AllocBody143_167 AllocBody143_200

def AllocBody143_202 : StackLang.HolProg 64 :=
.seq AllocBody143_166 AllocBody143_201

def AllocBody143_203 : StackLang.HolProg 64 :=
.seq AllocBody143_165 AllocBody143_202

def AllocBody143_204 : StackLang.HolProg 64 :=
.seq AllocBody143_146 AllocBody143_203

def AllocBody143_205 : StackLang.HolProg 64 :=
.seq AllocBody143_143 AllocBody143_204

def AllocBody143_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody143_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 107#64)

def AllocBody143_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody143_211 : StackLang.HolProg 64 :=
.seq AllocBody143_209 AllocBody143_210

def AllocBody143_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody143_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody143_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody143_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 143 7

def AllocBody143_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody143_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody143_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody143_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody143_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody143_222 : StackLang.HolProg 64 :=
.seq AllocBody143_220 AllocBody143_221

def AllocBody143_223 : StackLang.HolProg 64 :=
.seq AllocBody143_219 AllocBody143_222

def AllocBody143_224 : StackLang.HolProg 64 :=
.seq AllocBody143_218 AllocBody143_223

def AllocBody143_225 : StackLang.HolProg 64 :=
.seq AllocBody143_217 AllocBody143_224

def AllocBody143_226 : StackLang.HolProg 64 :=
.seq AllocBody143_216 AllocBody143_225

def AllocBody143_227 : StackLang.HolProg 64 :=
.seq AllocBody143_215 AllocBody143_226

def AllocBody143_228 : StackLang.HolProg 64 :=
.seq AllocBody143_214 AllocBody143_227

def AllocBody143_229 : StackLang.HolProg 64 :=
.seq AllocBody143_213 AllocBody143_228

def AllocBody143_230 : StackLang.HolProg 64 :=
.seq AllocBody143_212 AllocBody143_229

def AllocBody143_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody143_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody143_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody143_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody143_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody143_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody143_239 : StackLang.HolProg 64 :=
.seq AllocBody143_237 AllocBody143_238

def AllocBody143_240 : StackLang.HolProg 64 :=
.seq AllocBody143_236 AllocBody143_239

def AllocBody143_241 : StackLang.HolProg 64 :=
.seq AllocBody143_235 AllocBody143_240

def AllocBody143_242 : StackLang.HolProg 64 :=
.seq AllocBody143_234 AllocBody143_241

def AllocBody143_243 : StackLang.HolProg 64 :=
.seq AllocBody143_233 AllocBody143_242

def AllocBody143_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody143_245 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody143_246 : StackLang.HolProg 64 :=
.seq AllocBody143_244 AllocBody143_245

def AllocBody143_247 : StackLang.HolProg 64 :=
.call (some (AllocBody143_243, 0, 143, 6)) (Sum.inl 113) (some (AllocBody143_246, 143, 7))

def AllocBody143_248 : StackLang.HolProg 64 :=
.seq AllocBody143_232 AllocBody143_247

def AllocBody143_249 : StackLang.HolProg 64 :=
.seq AllocBody143_231 AllocBody143_248

def AllocBody143_250 : StackLang.HolProg 64 :=
.seq AllocBody143_230 AllocBody143_249

def AllocBody143_251 : StackLang.HolProg 64 :=
.seq AllocBody143_211 AllocBody143_250

def AllocBody143_252 : StackLang.HolProg 64 :=
.seq AllocBody143_208 AllocBody143_251

def AllocBody143_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_255 : StackLang.HolProg 64 :=
.seq AllocBody143_253 AllocBody143_254

def AllocBody143_256 : StackLang.HolProg 64 :=
.seq AllocBody143_252 AllocBody143_255

def AllocBody143_257 : StackLang.HolProg 64 :=
.seq AllocBody143_207 AllocBody143_256

def AllocBody143_258 : StackLang.HolProg 64 :=
.seq AllocBody143_206 AllocBody143_257

def AllocBody143_259 : StackLang.HolProg 64 :=
.seq AllocBody143_205 AllocBody143_258

def AllocBody143_260 : StackLang.HolProg 64 :=
.seq AllocBody143_142 AllocBody143_259

def AllocBody143_261 : StackLang.HolProg 64 :=
.seq AllocBody143_129 AllocBody143_260

def AllocBody143_262 : StackLang.HolProg 64 :=
.seq AllocBody143_128 AllocBody143_261

def AllocBody143_263 : StackLang.HolProg 64 :=
.seq AllocBody143_127 AllocBody143_262

def AllocBody143_264 : StackLang.HolProg 64 :=
.seq AllocBody143_126 AllocBody143_263

def AllocBody143_265 : StackLang.HolProg 64 :=
.seq AllocBody143_125 AllocBody143_264

def AllocBody143_266 : StackLang.HolProg 64 :=
.seq AllocBody143_124 AllocBody143_265

def AllocBody143_267 : StackLang.HolProg 64 :=
.seq AllocBody143_123 AllocBody143_266

def AllocBody143_268 : StackLang.HolProg 64 :=
.seq AllocBody143_122 AllocBody143_267

def AllocBody143_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody143_271 : StackLang.HolProg 64 :=
.seq AllocBody143_269 AllocBody143_270

def AllocBody143_272 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody143_268 AllocBody143_271

def AllocBody143_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody143_275 : StackLang.HolProg 64 :=
.seq AllocBody143_273 AllocBody143_274

def AllocBody143_276 : StackLang.HolProg 64 :=
.seq AllocBody143_272 AllocBody143_275

def AllocBody143_277 : StackLang.HolProg 64 :=
.seq AllocBody143_121 AllocBody143_276

def AllocBody143_278 : StackLang.HolProg 64 :=
.seq AllocBody143_120 AllocBody143_277

def AllocBody143_279 : StackLang.HolProg 64 :=
.seq AllocBody143_119 AllocBody143_278

def AllocBody143_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody143_282 : StackLang.HolProg 64 :=
.seq AllocBody143_280 AllocBody143_281

def AllocBody143_283 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody143_279 AllocBody143_282

def AllocBody143_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody143_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody143_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody143_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody143_288 : StackLang.HolProg 64 :=
.seq AllocBody143_286 AllocBody143_287

def AllocBody143_289 : StackLang.HolProg 64 :=
.seq AllocBody143_285 AllocBody143_288

def AllocBody143_290 : StackLang.HolProg 64 :=
.seq AllocBody143_284 AllocBody143_289

def AllocBody143_291 : StackLang.HolProg 64 :=
.seq AllocBody143_283 AllocBody143_290

def AllocBody143_292 : StackLang.HolProg 64 :=
.seq AllocBody143_118 AllocBody143_291

def AllocBody143_293 : StackLang.HolProg 64 :=
.seq AllocBody143_117 AllocBody143_292

def AllocBody143_294 : StackLang.HolProg 64 :=
.seq AllocBody143_116 AllocBody143_293

def AllocBody143_295 : StackLang.HolProg 64 :=
.seq AllocBody143_115 AllocBody143_294

def AllocBody143_296 : StackLang.HolProg 64 :=
.seq AllocBody143_66 AllocBody143_295

def AllocBody143_297 : StackLang.HolProg 64 :=
.seq AllocBody143_55 AllocBody143_296

def AllocBody143_298 : StackLang.HolProg 64 :=
.seq AllocBody143_54 AllocBody143_297

def AllocBody143_299 : StackLang.HolProg 64 :=
.seq AllocBody143_53 AllocBody143_298

def AllocBody143_300 : StackLang.HolProg 64 :=
.seq AllocBody143_10 AllocBody143_299

def AllocBody143_301 : StackLang.HolProg 64 :=
.seq AllocBody143_9 AllocBody143_300

def AllocBody143_302 : StackLang.HolProg 64 :=
.seq AllocBody143_8 AllocBody143_301

def AllocBody143_303 : StackLang.HolProg 64 :=
.seq AllocBody143_7 AllocBody143_302

def AllocBody143_304 : StackLang.HolProg 64 :=
.seq AllocBody143_0 AllocBody143_303

def Alloc143 : Nat × StackLang.HolProg 64 := (143, AllocBody143_304)
theorem Alloc143_eq : StackAlloc.progComp (143, raw143) = Alloc143 := by
  kernel_rfl
#print axioms Alloc143_eq
end InitECandidate.Proofs.BackendStages
