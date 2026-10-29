import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw134
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody134_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody134_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody134_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody134_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody134_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody134_5 : StackLang.HolProg 64 :=
.seq AllocBody134_3 AllocBody134_4

def AllocBody134_6 : StackLang.HolProg 64 :=
.seq AllocBody134_2 AllocBody134_5

def AllocBody134_7 : StackLang.HolProg 64 :=
.seq AllocBody134_1 AllocBody134_6

def AllocBody134_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody134_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody134_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody134_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody134_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody134_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody134_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody134_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody134_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody134_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody134_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody134_22 : StackLang.HolProg 64 :=
.seq AllocBody134_20 AllocBody134_21

def AllocBody134_23 : StackLang.HolProg 64 :=
.seq AllocBody134_19 AllocBody134_22

def AllocBody134_24 : StackLang.HolProg 64 :=
.seq AllocBody134_18 AllocBody134_23

def AllocBody134_25 : StackLang.HolProg 64 :=
.seq AllocBody134_17 AllocBody134_24

def AllocBody134_26 : StackLang.HolProg 64 :=
.seq AllocBody134_16 AllocBody134_25

def AllocBody134_27 : StackLang.HolProg 64 :=
.seq AllocBody134_15 AllocBody134_26

def AllocBody134_28 : StackLang.HolProg 64 :=
.seq AllocBody134_14 AllocBody134_27

def AllocBody134_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody134_28 AllocBody134_29

def AllocBody134_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody134_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody134_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def AllocBody134_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody134_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody134_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody134_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody134_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 5

def AllocBody134_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 4

def AllocBody134_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def AllocBody134_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody134_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody134_43 : StackLang.HolProg 64 :=
.seq AllocBody134_41 AllocBody134_42

def AllocBody134_44 : StackLang.HolProg 64 :=
.seq AllocBody134_40 AllocBody134_43

def AllocBody134_45 : StackLang.HolProg 64 :=
.seq AllocBody134_39 AllocBody134_44

def AllocBody134_46 : StackLang.HolProg 64 :=
.seq AllocBody134_38 AllocBody134_45

def AllocBody134_47 : StackLang.HolProg 64 :=
.seq AllocBody134_37 AllocBody134_46

def AllocBody134_48 : StackLang.HolProg 64 :=
.seq AllocBody134_36 AllocBody134_47

def AllocBody134_49 : StackLang.HolProg 64 :=
.seq AllocBody134_35 AllocBody134_48

def AllocBody134_50 : StackLang.HolProg 64 :=
.seq AllocBody134_34 AllocBody134_49

def AllocBody134_51 : StackLang.HolProg 64 :=
.seq AllocBody134_33 AllocBody134_50

def AllocBody134_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 87#64)

def AllocBody134_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody134_55 : StackLang.HolProg 64 :=
.seq AllocBody134_53 AllocBody134_54

def AllocBody134_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody134_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody134_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody134_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 134 3

def AllocBody134_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody134_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody134_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody134_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody134_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody134_66 : StackLang.HolProg 64 :=
.seq AllocBody134_64 AllocBody134_65

def AllocBody134_67 : StackLang.HolProg 64 :=
.seq AllocBody134_63 AllocBody134_66

def AllocBody134_68 : StackLang.HolProg 64 :=
.seq AllocBody134_62 AllocBody134_67

def AllocBody134_69 : StackLang.HolProg 64 :=
.seq AllocBody134_61 AllocBody134_68

def AllocBody134_70 : StackLang.HolProg 64 :=
.seq AllocBody134_60 AllocBody134_69

def AllocBody134_71 : StackLang.HolProg 64 :=
.seq AllocBody134_59 AllocBody134_70

def AllocBody134_72 : StackLang.HolProg 64 :=
.seq AllocBody134_58 AllocBody134_71

def AllocBody134_73 : StackLang.HolProg 64 :=
.seq AllocBody134_57 AllocBody134_72

def AllocBody134_74 : StackLang.HolProg 64 :=
.seq AllocBody134_56 AllocBody134_73

def AllocBody134_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody134_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody134_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody134_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody134_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody134_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody134_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody134_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody134_85 : StackLang.HolProg 64 :=
.seq AllocBody134_83 AllocBody134_84

def AllocBody134_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody134_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody134_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody134_89 : StackLang.HolProg 64 :=
.seq AllocBody134_87 AllocBody134_88

def AllocBody134_90 : StackLang.HolProg 64 :=
.seq AllocBody134_86 AllocBody134_89

def AllocBody134_91 : StackLang.HolProg 64 :=
.seq AllocBody134_85 AllocBody134_90

def AllocBody134_92 : StackLang.HolProg 64 :=
.seq AllocBody134_82 AllocBody134_91

def AllocBody134_93 : StackLang.HolProg 64 :=
.seq AllocBody134_81 AllocBody134_92

def AllocBody134_94 : StackLang.HolProg 64 :=
.seq AllocBody134_80 AllocBody134_93

def AllocBody134_95 : StackLang.HolProg 64 :=
.seq AllocBody134_79 AllocBody134_94

def AllocBody134_96 : StackLang.HolProg 64 :=
.seq AllocBody134_78 AllocBody134_95

def AllocBody134_97 : StackLang.HolProg 64 :=
.seq AllocBody134_77 AllocBody134_96

def AllocBody134_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody134_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody134_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody134_101 : StackLang.HolProg 64 :=
.seq AllocBody134_99 AllocBody134_100

def AllocBody134_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody134_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody134_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody134_105 : StackLang.HolProg 64 :=
.seq AllocBody134_103 AllocBody134_104

def AllocBody134_106 : StackLang.HolProg 64 :=
.seq AllocBody134_102 AllocBody134_105

def AllocBody134_107 : StackLang.HolProg 64 :=
.seq AllocBody134_101 AllocBody134_106

def AllocBody134_108 : StackLang.HolProg 64 :=
.seq AllocBody134_98 AllocBody134_107

def AllocBody134_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody134_110 : StackLang.HolProg 64 :=
.seq AllocBody134_108 AllocBody134_109

def AllocBody134_111 : StackLang.HolProg 64 :=
.call (some (AllocBody134_97, 0, 134, 2)) (Sum.inl 132) (some (AllocBody134_110, 134, 3))

def AllocBody134_112 : StackLang.HolProg 64 :=
.seq AllocBody134_76 AllocBody134_111

def AllocBody134_113 : StackLang.HolProg 64 :=
.seq AllocBody134_75 AllocBody134_112

def AllocBody134_114 : StackLang.HolProg 64 :=
.seq AllocBody134_74 AllocBody134_113

def AllocBody134_115 : StackLang.HolProg 64 :=
.seq AllocBody134_55 AllocBody134_114

def AllocBody134_116 : StackLang.HolProg 64 :=
.seq AllocBody134_52 AllocBody134_115

def AllocBody134_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody134_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody134_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody134_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody134_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody134_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody134_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody134_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody134_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 4

def AllocBody134_126 : StackLang.HolProg 64 :=
.seq AllocBody134_124 AllocBody134_125

def AllocBody134_127 : StackLang.HolProg 64 :=
.seq AllocBody134_123 AllocBody134_126

def AllocBody134_128 : StackLang.HolProg 64 :=
.seq AllocBody134_122 AllocBody134_127

def AllocBody134_129 : StackLang.HolProg 64 :=
.seq AllocBody134_121 AllocBody134_128

def AllocBody134_130 : StackLang.HolProg 64 :=
.seq AllocBody134_120 AllocBody134_129

def AllocBody134_131 : StackLang.HolProg 64 :=
.seq AllocBody134_119 AllocBody134_130

def AllocBody134_132 : StackLang.HolProg 64 :=
.seq AllocBody134_118 AllocBody134_131

def AllocBody134_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 88#64)

def AllocBody134_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody134_136 : StackLang.HolProg 64 :=
.seq AllocBody134_134 AllocBody134_135

def AllocBody134_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody134_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody134_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody134_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 134 5

def AllocBody134_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody134_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody134_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody134_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody134_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody134_147 : StackLang.HolProg 64 :=
.seq AllocBody134_145 AllocBody134_146

def AllocBody134_148 : StackLang.HolProg 64 :=
.seq AllocBody134_144 AllocBody134_147

def AllocBody134_149 : StackLang.HolProg 64 :=
.seq AllocBody134_143 AllocBody134_148

def AllocBody134_150 : StackLang.HolProg 64 :=
.seq AllocBody134_142 AllocBody134_149

def AllocBody134_151 : StackLang.HolProg 64 :=
.seq AllocBody134_141 AllocBody134_150

def AllocBody134_152 : StackLang.HolProg 64 :=
.seq AllocBody134_140 AllocBody134_151

def AllocBody134_153 : StackLang.HolProg 64 :=
.seq AllocBody134_139 AllocBody134_152

def AllocBody134_154 : StackLang.HolProg 64 :=
.seq AllocBody134_138 AllocBody134_153

def AllocBody134_155 : StackLang.HolProg 64 :=
.seq AllocBody134_137 AllocBody134_154

def AllocBody134_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody134_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody134_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody134_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody134_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody134_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody134_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody134_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody134_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody134_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody134_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody134_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody134_170 : StackLang.HolProg 64 :=
.seq AllocBody134_168 AllocBody134_169

def AllocBody134_171 : StackLang.HolProg 64 :=
.seq AllocBody134_167 AllocBody134_170

def AllocBody134_172 : StackLang.HolProg 64 :=
.seq AllocBody134_166 AllocBody134_171

def AllocBody134_173 : StackLang.HolProg 64 :=
.seq AllocBody134_165 AllocBody134_172

def AllocBody134_174 : StackLang.HolProg 64 :=
.seq AllocBody134_164 AllocBody134_173

def AllocBody134_175 : StackLang.HolProg 64 :=
.seq AllocBody134_163 AllocBody134_174

def AllocBody134_176 : StackLang.HolProg 64 :=
.seq AllocBody134_162 AllocBody134_175

def AllocBody134_177 : StackLang.HolProg 64 :=
.seq AllocBody134_161 AllocBody134_176

def AllocBody134_178 : StackLang.HolProg 64 :=
.seq AllocBody134_160 AllocBody134_177

def AllocBody134_179 : StackLang.HolProg 64 :=
.seq AllocBody134_159 AllocBody134_178

def AllocBody134_180 : StackLang.HolProg 64 :=
.seq AllocBody134_158 AllocBody134_179

def AllocBody134_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody134_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody134_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody134_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody134_185 : StackLang.HolProg 64 :=
.seq AllocBody134_183 AllocBody134_184

def AllocBody134_186 : StackLang.HolProg 64 :=
.seq AllocBody134_182 AllocBody134_185

def AllocBody134_187 : StackLang.HolProg 64 :=
.seq AllocBody134_181 AllocBody134_186

def AllocBody134_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody134_189 : StackLang.HolProg 64 :=
.seq AllocBody134_187 AllocBody134_188

def AllocBody134_190 : StackLang.HolProg 64 :=
.call (some (AllocBody134_180, 0, 134, 4)) (Sum.inl 132) (some (AllocBody134_189, 134, 5))

def AllocBody134_191 : StackLang.HolProg 64 :=
.seq AllocBody134_157 AllocBody134_190

def AllocBody134_192 : StackLang.HolProg 64 :=
.seq AllocBody134_156 AllocBody134_191

def AllocBody134_193 : StackLang.HolProg 64 :=
.seq AllocBody134_155 AllocBody134_192

def AllocBody134_194 : StackLang.HolProg 64 :=
.seq AllocBody134_136 AllocBody134_193

def AllocBody134_195 : StackLang.HolProg 64 :=
.seq AllocBody134_133 AllocBody134_194

def AllocBody134_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody134_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody134_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 89#64)

def AllocBody134_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody134_201 : StackLang.HolProg 64 :=
.seq AllocBody134_199 AllocBody134_200

def AllocBody134_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody134_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody134_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody134_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 134 7

def AllocBody134_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody134_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody134_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody134_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody134_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody134_212 : StackLang.HolProg 64 :=
.seq AllocBody134_210 AllocBody134_211

def AllocBody134_213 : StackLang.HolProg 64 :=
.seq AllocBody134_209 AllocBody134_212

def AllocBody134_214 : StackLang.HolProg 64 :=
.seq AllocBody134_208 AllocBody134_213

def AllocBody134_215 : StackLang.HolProg 64 :=
.seq AllocBody134_207 AllocBody134_214

def AllocBody134_216 : StackLang.HolProg 64 :=
.seq AllocBody134_206 AllocBody134_215

def AllocBody134_217 : StackLang.HolProg 64 :=
.seq AllocBody134_205 AllocBody134_216

def AllocBody134_218 : StackLang.HolProg 64 :=
.seq AllocBody134_204 AllocBody134_217

def AllocBody134_219 : StackLang.HolProg 64 :=
.seq AllocBody134_203 AllocBody134_218

def AllocBody134_220 : StackLang.HolProg 64 :=
.seq AllocBody134_202 AllocBody134_219

def AllocBody134_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody134_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody134_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody134_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody134_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody134_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody134_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody134_230 : StackLang.HolProg 64 :=
.seq AllocBody134_228 AllocBody134_229

def AllocBody134_231 : StackLang.HolProg 64 :=
.seq AllocBody134_227 AllocBody134_230

def AllocBody134_232 : StackLang.HolProg 64 :=
.seq AllocBody134_226 AllocBody134_231

def AllocBody134_233 : StackLang.HolProg 64 :=
.seq AllocBody134_225 AllocBody134_232

def AllocBody134_234 : StackLang.HolProg 64 :=
.seq AllocBody134_224 AllocBody134_233

def AllocBody134_235 : StackLang.HolProg 64 :=
.seq AllocBody134_223 AllocBody134_234

def AllocBody134_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody134_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody134_238 : StackLang.HolProg 64 :=
.seq AllocBody134_236 AllocBody134_237

def AllocBody134_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody134_240 : StackLang.HolProg 64 :=
.seq AllocBody134_238 AllocBody134_239

def AllocBody134_241 : StackLang.HolProg 64 :=
.call (some (AllocBody134_235, 0, 134, 6)) (Sum.inl 131) (some (AllocBody134_240, 134, 7))

def AllocBody134_242 : StackLang.HolProg 64 :=
.seq AllocBody134_222 AllocBody134_241

def AllocBody134_243 : StackLang.HolProg 64 :=
.seq AllocBody134_221 AllocBody134_242

def AllocBody134_244 : StackLang.HolProg 64 :=
.seq AllocBody134_220 AllocBody134_243

def AllocBody134_245 : StackLang.HolProg 64 :=
.seq AllocBody134_201 AllocBody134_244

def AllocBody134_246 : StackLang.HolProg 64 :=
.seq AllocBody134_198 AllocBody134_245

def AllocBody134_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody134_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody134_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def AllocBody134_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody134_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody134_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody134_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 118

def AllocBody134_256 : StackLang.HolProg 64 :=
.seq AllocBody134_254 AllocBody134_255

def AllocBody134_257 : StackLang.HolProg 64 :=
.seq AllocBody134_253 AllocBody134_256

def AllocBody134_258 : StackLang.HolProg 64 :=
.seq AllocBody134_252 AllocBody134_257

def AllocBody134_259 : StackLang.HolProg 64 :=
.seq AllocBody134_251 AllocBody134_258

def AllocBody134_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody134_261 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody134_259 AllocBody134_260

def AllocBody134_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody134_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody134_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody134_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody134_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody134_267 : StackLang.HolProg 64 :=
.seq AllocBody134_265 AllocBody134_266

def AllocBody134_268 : StackLang.HolProg 64 :=
.seq AllocBody134_264 AllocBody134_267

def AllocBody134_269 : StackLang.HolProg 64 :=
.seq AllocBody134_263 AllocBody134_268

def AllocBody134_270 : StackLang.HolProg 64 :=
.seq AllocBody134_262 AllocBody134_269

def AllocBody134_271 : StackLang.HolProg 64 :=
.seq AllocBody134_261 AllocBody134_270

def AllocBody134_272 : StackLang.HolProg 64 :=
.seq AllocBody134_250 AllocBody134_271

def AllocBody134_273 : StackLang.HolProg 64 :=
.seq AllocBody134_249 AllocBody134_272

def AllocBody134_274 : StackLang.HolProg 64 :=
.seq AllocBody134_248 AllocBody134_273

def AllocBody134_275 : StackLang.HolProg 64 :=
.seq AllocBody134_247 AllocBody134_274

def AllocBody134_276 : StackLang.HolProg 64 :=
.seq AllocBody134_246 AllocBody134_275

def AllocBody134_277 : StackLang.HolProg 64 :=
.seq AllocBody134_197 AllocBody134_276

def AllocBody134_278 : StackLang.HolProg 64 :=
.seq AllocBody134_196 AllocBody134_277

def AllocBody134_279 : StackLang.HolProg 64 :=
.seq AllocBody134_195 AllocBody134_278

def AllocBody134_280 : StackLang.HolProg 64 :=
.seq AllocBody134_132 AllocBody134_279

def AllocBody134_281 : StackLang.HolProg 64 :=
.seq AllocBody134_117 AllocBody134_280

def AllocBody134_282 : StackLang.HolProg 64 :=
.seq AllocBody134_116 AllocBody134_281

def AllocBody134_283 : StackLang.HolProg 64 :=
.seq AllocBody134_51 AllocBody134_282

def AllocBody134_284 : StackLang.HolProg 64 :=
.seq AllocBody134_32 AllocBody134_283

def AllocBody134_285 : StackLang.HolProg 64 :=
.seq AllocBody134_31 AllocBody134_284

def AllocBody134_286 : StackLang.HolProg 64 :=
.seq AllocBody134_30 AllocBody134_285

def AllocBody134_287 : StackLang.HolProg 64 :=
.seq AllocBody134_13 AllocBody134_286

def AllocBody134_288 : StackLang.HolProg 64 :=
.seq AllocBody134_12 AllocBody134_287

def AllocBody134_289 : StackLang.HolProg 64 :=
.seq AllocBody134_11 AllocBody134_288

def AllocBody134_290 : StackLang.HolProg 64 :=
.seq AllocBody134_10 AllocBody134_289

def AllocBody134_291 : StackLang.HolProg 64 :=
.seq AllocBody134_9 AllocBody134_290

def AllocBody134_292 : StackLang.HolProg 64 :=
.seq AllocBody134_8 AllocBody134_291

def AllocBody134_293 : StackLang.HolProg 64 :=
.seq AllocBody134_7 AllocBody134_292

def AllocBody134_294 : StackLang.HolProg 64 :=
.seq AllocBody134_0 AllocBody134_293

def Alloc134 : Nat × StackLang.HolProg 64 := (134, AllocBody134_294)
theorem Alloc134_eq : StackAlloc.progComp (134, raw134) = Alloc134 := by
  kernel_rfl
#print axioms Alloc134_eq
end InitECandidate.Proofs.BackendStages
