import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw133
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody133_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody133_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody133_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody133_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody133_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody133_5 : StackLang.HolProg 64 :=
.seq AllocBody133_3 AllocBody133_4

def AllocBody133_6 : StackLang.HolProg 64 :=
.seq AllocBody133_2 AllocBody133_5

def AllocBody133_7 : StackLang.HolProg 64 :=
.seq AllocBody133_1 AllocBody133_6

def AllocBody133_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody133_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody133_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody133_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody133_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody133_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody133_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody133_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody133_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody133_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody133_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody133_22 : StackLang.HolProg 64 :=
.seq AllocBody133_20 AllocBody133_21

def AllocBody133_23 : StackLang.HolProg 64 :=
.seq AllocBody133_19 AllocBody133_22

def AllocBody133_24 : StackLang.HolProg 64 :=
.seq AllocBody133_18 AllocBody133_23

def AllocBody133_25 : StackLang.HolProg 64 :=
.seq AllocBody133_17 AllocBody133_24

def AllocBody133_26 : StackLang.HolProg 64 :=
.seq AllocBody133_16 AllocBody133_25

def AllocBody133_27 : StackLang.HolProg 64 :=
.seq AllocBody133_15 AllocBody133_26

def AllocBody133_28 : StackLang.HolProg 64 :=
.seq AllocBody133_14 AllocBody133_27

def AllocBody133_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody133_28 AllocBody133_29

def AllocBody133_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody133_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody133_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def AllocBody133_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody133_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody133_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody133_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody133_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 6

def AllocBody133_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def AllocBody133_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody133_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody133_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 2

def AllocBody133_43 : StackLang.HolProg 64 :=
.seq AllocBody133_41 AllocBody133_42

def AllocBody133_44 : StackLang.HolProg 64 :=
.seq AllocBody133_40 AllocBody133_43

def AllocBody133_45 : StackLang.HolProg 64 :=
.seq AllocBody133_39 AllocBody133_44

def AllocBody133_46 : StackLang.HolProg 64 :=
.seq AllocBody133_38 AllocBody133_45

def AllocBody133_47 : StackLang.HolProg 64 :=
.seq AllocBody133_37 AllocBody133_46

def AllocBody133_48 : StackLang.HolProg 64 :=
.seq AllocBody133_36 AllocBody133_47

def AllocBody133_49 : StackLang.HolProg 64 :=
.seq AllocBody133_35 AllocBody133_48

def AllocBody133_50 : StackLang.HolProg 64 :=
.seq AllocBody133_34 AllocBody133_49

def AllocBody133_51 : StackLang.HolProg 64 :=
.seq AllocBody133_33 AllocBody133_50

def AllocBody133_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 84#64)

def AllocBody133_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody133_55 : StackLang.HolProg 64 :=
.seq AllocBody133_53 AllocBody133_54

def AllocBody133_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody133_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody133_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody133_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 133 3

def AllocBody133_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody133_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody133_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody133_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody133_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody133_66 : StackLang.HolProg 64 :=
.seq AllocBody133_64 AllocBody133_65

def AllocBody133_67 : StackLang.HolProg 64 :=
.seq AllocBody133_63 AllocBody133_66

def AllocBody133_68 : StackLang.HolProg 64 :=
.seq AllocBody133_62 AllocBody133_67

def AllocBody133_69 : StackLang.HolProg 64 :=
.seq AllocBody133_61 AllocBody133_68

def AllocBody133_70 : StackLang.HolProg 64 :=
.seq AllocBody133_60 AllocBody133_69

def AllocBody133_71 : StackLang.HolProg 64 :=
.seq AllocBody133_59 AllocBody133_70

def AllocBody133_72 : StackLang.HolProg 64 :=
.seq AllocBody133_58 AllocBody133_71

def AllocBody133_73 : StackLang.HolProg 64 :=
.seq AllocBody133_57 AllocBody133_72

def AllocBody133_74 : StackLang.HolProg 64 :=
.seq AllocBody133_56 AllocBody133_73

def AllocBody133_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody133_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody133_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody133_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody133_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody133_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody133_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody133_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody133_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody133_86 : StackLang.HolProg 64 :=
.seq AllocBody133_84 AllocBody133_85

def AllocBody133_87 : StackLang.HolProg 64 :=
.seq AllocBody133_83 AllocBody133_86

def AllocBody133_88 : StackLang.HolProg 64 :=
.seq AllocBody133_82 AllocBody133_87

def AllocBody133_89 : StackLang.HolProg 64 :=
.seq AllocBody133_81 AllocBody133_88

def AllocBody133_90 : StackLang.HolProg 64 :=
.seq AllocBody133_80 AllocBody133_89

def AllocBody133_91 : StackLang.HolProg 64 :=
.seq AllocBody133_79 AllocBody133_90

def AllocBody133_92 : StackLang.HolProg 64 :=
.seq AllocBody133_78 AllocBody133_91

def AllocBody133_93 : StackLang.HolProg 64 :=
.seq AllocBody133_77 AllocBody133_92

def AllocBody133_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody133_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody133_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody133_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody133_98 : StackLang.HolProg 64 :=
.seq AllocBody133_96 AllocBody133_97

def AllocBody133_99 : StackLang.HolProg 64 :=
.seq AllocBody133_95 AllocBody133_98

def AllocBody133_100 : StackLang.HolProg 64 :=
.seq AllocBody133_94 AllocBody133_99

def AllocBody133_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody133_102 : StackLang.HolProg 64 :=
.seq AllocBody133_100 AllocBody133_101

def AllocBody133_103 : StackLang.HolProg 64 :=
.call (some (AllocBody133_93, 0, 133, 2)) (Sum.inl 132) (some (AllocBody133_102, 133, 3))

def AllocBody133_104 : StackLang.HolProg 64 :=
.seq AllocBody133_76 AllocBody133_103

def AllocBody133_105 : StackLang.HolProg 64 :=
.seq AllocBody133_75 AllocBody133_104

def AllocBody133_106 : StackLang.HolProg 64 :=
.seq AllocBody133_74 AllocBody133_105

def AllocBody133_107 : StackLang.HolProg 64 :=
.seq AllocBody133_55 AllocBody133_106

def AllocBody133_108 : StackLang.HolProg 64 :=
.seq AllocBody133_52 AllocBody133_107

def AllocBody133_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody133_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody133_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody133_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody133_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody133_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody133_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody133_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody133_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def AllocBody133_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 4

def AllocBody133_119 : StackLang.HolProg 64 :=
.seq AllocBody133_117 AllocBody133_118

def AllocBody133_120 : StackLang.HolProg 64 :=
.seq AllocBody133_116 AllocBody133_119

def AllocBody133_121 : StackLang.HolProg 64 :=
.seq AllocBody133_115 AllocBody133_120

def AllocBody133_122 : StackLang.HolProg 64 :=
.seq AllocBody133_114 AllocBody133_121

def AllocBody133_123 : StackLang.HolProg 64 :=
.seq AllocBody133_113 AllocBody133_122

def AllocBody133_124 : StackLang.HolProg 64 :=
.seq AllocBody133_112 AllocBody133_123

def AllocBody133_125 : StackLang.HolProg 64 :=
.seq AllocBody133_111 AllocBody133_124

def AllocBody133_126 : StackLang.HolProg 64 :=
.seq AllocBody133_110 AllocBody133_125

def AllocBody133_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 85#64)

def AllocBody133_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody133_130 : StackLang.HolProg 64 :=
.seq AllocBody133_128 AllocBody133_129

def AllocBody133_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody133_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody133_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody133_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 133 5

def AllocBody133_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody133_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody133_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody133_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody133_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody133_141 : StackLang.HolProg 64 :=
.seq AllocBody133_139 AllocBody133_140

def AllocBody133_142 : StackLang.HolProg 64 :=
.seq AllocBody133_138 AllocBody133_141

def AllocBody133_143 : StackLang.HolProg 64 :=
.seq AllocBody133_137 AllocBody133_142

def AllocBody133_144 : StackLang.HolProg 64 :=
.seq AllocBody133_136 AllocBody133_143

def AllocBody133_145 : StackLang.HolProg 64 :=
.seq AllocBody133_135 AllocBody133_144

def AllocBody133_146 : StackLang.HolProg 64 :=
.seq AllocBody133_134 AllocBody133_145

def AllocBody133_147 : StackLang.HolProg 64 :=
.seq AllocBody133_133 AllocBody133_146

def AllocBody133_148 : StackLang.HolProg 64 :=
.seq AllocBody133_132 AllocBody133_147

def AllocBody133_149 : StackLang.HolProg 64 :=
.seq AllocBody133_131 AllocBody133_148

def AllocBody133_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody133_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody133_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody133_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody133_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody133_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody133_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody133_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody133_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody133_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody133_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody133_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody133_164 : StackLang.HolProg 64 :=
.seq AllocBody133_162 AllocBody133_163

def AllocBody133_165 : StackLang.HolProg 64 :=
.seq AllocBody133_161 AllocBody133_164

def AllocBody133_166 : StackLang.HolProg 64 :=
.seq AllocBody133_160 AllocBody133_165

def AllocBody133_167 : StackLang.HolProg 64 :=
.seq AllocBody133_159 AllocBody133_166

def AllocBody133_168 : StackLang.HolProg 64 :=
.seq AllocBody133_158 AllocBody133_167

def AllocBody133_169 : StackLang.HolProg 64 :=
.seq AllocBody133_157 AllocBody133_168

def AllocBody133_170 : StackLang.HolProg 64 :=
.seq AllocBody133_156 AllocBody133_169

def AllocBody133_171 : StackLang.HolProg 64 :=
.seq AllocBody133_155 AllocBody133_170

def AllocBody133_172 : StackLang.HolProg 64 :=
.seq AllocBody133_154 AllocBody133_171

def AllocBody133_173 : StackLang.HolProg 64 :=
.seq AllocBody133_153 AllocBody133_172

def AllocBody133_174 : StackLang.HolProg 64 :=
.seq AllocBody133_152 AllocBody133_173

def AllocBody133_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody133_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody133_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody133_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody133_179 : StackLang.HolProg 64 :=
.seq AllocBody133_177 AllocBody133_178

def AllocBody133_180 : StackLang.HolProg 64 :=
.seq AllocBody133_176 AllocBody133_179

def AllocBody133_181 : StackLang.HolProg 64 :=
.seq AllocBody133_175 AllocBody133_180

def AllocBody133_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody133_183 : StackLang.HolProg 64 :=
.seq AllocBody133_181 AllocBody133_182

def AllocBody133_184 : StackLang.HolProg 64 :=
.call (some (AllocBody133_174, 0, 133, 4)) (Sum.inl 132) (some (AllocBody133_183, 133, 5))

def AllocBody133_185 : StackLang.HolProg 64 :=
.seq AllocBody133_151 AllocBody133_184

def AllocBody133_186 : StackLang.HolProg 64 :=
.seq AllocBody133_150 AllocBody133_185

def AllocBody133_187 : StackLang.HolProg 64 :=
.seq AllocBody133_149 AllocBody133_186

def AllocBody133_188 : StackLang.HolProg 64 :=
.seq AllocBody133_130 AllocBody133_187

def AllocBody133_189 : StackLang.HolProg 64 :=
.seq AllocBody133_127 AllocBody133_188

def AllocBody133_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody133_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody133_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 86#64)

def AllocBody133_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody133_195 : StackLang.HolProg 64 :=
.seq AllocBody133_193 AllocBody133_194

def AllocBody133_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody133_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody133_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody133_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 133 7

def AllocBody133_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody133_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody133_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody133_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody133_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody133_206 : StackLang.HolProg 64 :=
.seq AllocBody133_204 AllocBody133_205

def AllocBody133_207 : StackLang.HolProg 64 :=
.seq AllocBody133_203 AllocBody133_206

def AllocBody133_208 : StackLang.HolProg 64 :=
.seq AllocBody133_202 AllocBody133_207

def AllocBody133_209 : StackLang.HolProg 64 :=
.seq AllocBody133_201 AllocBody133_208

def AllocBody133_210 : StackLang.HolProg 64 :=
.seq AllocBody133_200 AllocBody133_209

def AllocBody133_211 : StackLang.HolProg 64 :=
.seq AllocBody133_199 AllocBody133_210

def AllocBody133_212 : StackLang.HolProg 64 :=
.seq AllocBody133_198 AllocBody133_211

def AllocBody133_213 : StackLang.HolProg 64 :=
.seq AllocBody133_197 AllocBody133_212

def AllocBody133_214 : StackLang.HolProg 64 :=
.seq AllocBody133_196 AllocBody133_213

def AllocBody133_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody133_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody133_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody133_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody133_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody133_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody133_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody133_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody133_225 : StackLang.HolProg 64 :=
.seq AllocBody133_223 AllocBody133_224

def AllocBody133_226 : StackLang.HolProg 64 :=
.seq AllocBody133_222 AllocBody133_225

def AllocBody133_227 : StackLang.HolProg 64 :=
.seq AllocBody133_221 AllocBody133_226

def AllocBody133_228 : StackLang.HolProg 64 :=
.seq AllocBody133_220 AllocBody133_227

def AllocBody133_229 : StackLang.HolProg 64 :=
.seq AllocBody133_219 AllocBody133_228

def AllocBody133_230 : StackLang.HolProg 64 :=
.seq AllocBody133_218 AllocBody133_229

def AllocBody133_231 : StackLang.HolProg 64 :=
.seq AllocBody133_217 AllocBody133_230

def AllocBody133_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody133_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody133_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody133_235 : StackLang.HolProg 64 :=
.seq AllocBody133_233 AllocBody133_234

def AllocBody133_236 : StackLang.HolProg 64 :=
.seq AllocBody133_232 AllocBody133_235

def AllocBody133_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody133_238 : StackLang.HolProg 64 :=
.seq AllocBody133_236 AllocBody133_237

def AllocBody133_239 : StackLang.HolProg 64 :=
.call (some (AllocBody133_231, 0, 133, 6)) (Sum.inl 130) (some (AllocBody133_238, 133, 7))

def AllocBody133_240 : StackLang.HolProg 64 :=
.seq AllocBody133_216 AllocBody133_239

def AllocBody133_241 : StackLang.HolProg 64 :=
.seq AllocBody133_215 AllocBody133_240

def AllocBody133_242 : StackLang.HolProg 64 :=
.seq AllocBody133_214 AllocBody133_241

def AllocBody133_243 : StackLang.HolProg 64 :=
.seq AllocBody133_195 AllocBody133_242

def AllocBody133_244 : StackLang.HolProg 64 :=
.seq AllocBody133_192 AllocBody133_243

def AllocBody133_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody133_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody133_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody133_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def AllocBody133_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody133_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody133_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody133_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 118

def AllocBody133_255 : StackLang.HolProg 64 :=
.seq AllocBody133_253 AllocBody133_254

def AllocBody133_256 : StackLang.HolProg 64 :=
.seq AllocBody133_252 AllocBody133_255

def AllocBody133_257 : StackLang.HolProg 64 :=
.seq AllocBody133_251 AllocBody133_256

def AllocBody133_258 : StackLang.HolProg 64 :=
.seq AllocBody133_250 AllocBody133_257

def AllocBody133_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody133_260 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody133_258 AllocBody133_259

def AllocBody133_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody133_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody133_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody133_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody133_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody133_266 : StackLang.HolProg 64 :=
.seq AllocBody133_264 AllocBody133_265

def AllocBody133_267 : StackLang.HolProg 64 :=
.seq AllocBody133_263 AllocBody133_266

def AllocBody133_268 : StackLang.HolProg 64 :=
.seq AllocBody133_262 AllocBody133_267

def AllocBody133_269 : StackLang.HolProg 64 :=
.seq AllocBody133_261 AllocBody133_268

def AllocBody133_270 : StackLang.HolProg 64 :=
.seq AllocBody133_260 AllocBody133_269

def AllocBody133_271 : StackLang.HolProg 64 :=
.seq AllocBody133_249 AllocBody133_270

def AllocBody133_272 : StackLang.HolProg 64 :=
.seq AllocBody133_248 AllocBody133_271

def AllocBody133_273 : StackLang.HolProg 64 :=
.seq AllocBody133_247 AllocBody133_272

def AllocBody133_274 : StackLang.HolProg 64 :=
.seq AllocBody133_246 AllocBody133_273

def AllocBody133_275 : StackLang.HolProg 64 :=
.seq AllocBody133_245 AllocBody133_274

def AllocBody133_276 : StackLang.HolProg 64 :=
.seq AllocBody133_244 AllocBody133_275

def AllocBody133_277 : StackLang.HolProg 64 :=
.seq AllocBody133_191 AllocBody133_276

def AllocBody133_278 : StackLang.HolProg 64 :=
.seq AllocBody133_190 AllocBody133_277

def AllocBody133_279 : StackLang.HolProg 64 :=
.seq AllocBody133_189 AllocBody133_278

def AllocBody133_280 : StackLang.HolProg 64 :=
.seq AllocBody133_126 AllocBody133_279

def AllocBody133_281 : StackLang.HolProg 64 :=
.seq AllocBody133_109 AllocBody133_280

def AllocBody133_282 : StackLang.HolProg 64 :=
.seq AllocBody133_108 AllocBody133_281

def AllocBody133_283 : StackLang.HolProg 64 :=
.seq AllocBody133_51 AllocBody133_282

def AllocBody133_284 : StackLang.HolProg 64 :=
.seq AllocBody133_32 AllocBody133_283

def AllocBody133_285 : StackLang.HolProg 64 :=
.seq AllocBody133_31 AllocBody133_284

def AllocBody133_286 : StackLang.HolProg 64 :=
.seq AllocBody133_30 AllocBody133_285

def AllocBody133_287 : StackLang.HolProg 64 :=
.seq AllocBody133_13 AllocBody133_286

def AllocBody133_288 : StackLang.HolProg 64 :=
.seq AllocBody133_12 AllocBody133_287

def AllocBody133_289 : StackLang.HolProg 64 :=
.seq AllocBody133_11 AllocBody133_288

def AllocBody133_290 : StackLang.HolProg 64 :=
.seq AllocBody133_10 AllocBody133_289

def AllocBody133_291 : StackLang.HolProg 64 :=
.seq AllocBody133_9 AllocBody133_290

def AllocBody133_292 : StackLang.HolProg 64 :=
.seq AllocBody133_8 AllocBody133_291

def AllocBody133_293 : StackLang.HolProg 64 :=
.seq AllocBody133_7 AllocBody133_292

def AllocBody133_294 : StackLang.HolProg 64 :=
.seq AllocBody133_0 AllocBody133_293

def Alloc133 : Nat × StackLang.HolProg 64 := (133, AllocBody133_294)
theorem Alloc133_eq : StackAlloc.progComp (133, raw133) = Alloc133 := by
  kernel_rfl
#print axioms Alloc133_eq
end InitECandidate.Proofs.BackendStages
