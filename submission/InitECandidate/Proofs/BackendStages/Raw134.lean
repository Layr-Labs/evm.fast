import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function134
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody134_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody134_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody134_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody134_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody134_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody134_5 : StackLang.HolProg 64 :=
.seq rawBody134_3 rawBody134_4

def rawBody134_6 : StackLang.HolProg 64 :=
.seq rawBody134_2 rawBody134_5

def rawBody134_7 : StackLang.HolProg 64 :=
.seq rawBody134_1 rawBody134_6

def rawBody134_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody134_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody134_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody134_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody134_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody134_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody134_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody134_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody134_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody134_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody134_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody134_22 : StackLang.HolProg 64 :=
.seq rawBody134_20 rawBody134_21

def rawBody134_23 : StackLang.HolProg 64 :=
.seq rawBody134_19 rawBody134_22

def rawBody134_24 : StackLang.HolProg 64 :=
.seq rawBody134_18 rawBody134_23

def rawBody134_25 : StackLang.HolProg 64 :=
.seq rawBody134_17 rawBody134_24

def rawBody134_26 : StackLang.HolProg 64 :=
.seq rawBody134_16 rawBody134_25

def rawBody134_27 : StackLang.HolProg 64 :=
.seq rawBody134_15 rawBody134_26

def rawBody134_28 : StackLang.HolProg 64 :=
.seq rawBody134_14 rawBody134_27

def rawBody134_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody134_28 rawBody134_29

def rawBody134_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody134_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody134_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def rawBody134_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody134_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody134_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody134_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody134_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 5

def rawBody134_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 4

def rawBody134_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def rawBody134_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody134_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def rawBody134_43 : StackLang.HolProg 64 :=
.seq rawBody134_41 rawBody134_42

def rawBody134_44 : StackLang.HolProg 64 :=
.seq rawBody134_40 rawBody134_43

def rawBody134_45 : StackLang.HolProg 64 :=
.seq rawBody134_39 rawBody134_44

def rawBody134_46 : StackLang.HolProg 64 :=
.seq rawBody134_38 rawBody134_45

def rawBody134_47 : StackLang.HolProg 64 :=
.seq rawBody134_37 rawBody134_46

def rawBody134_48 : StackLang.HolProg 64 :=
.seq rawBody134_36 rawBody134_47

def rawBody134_49 : StackLang.HolProg 64 :=
.seq rawBody134_35 rawBody134_48

def rawBody134_50 : StackLang.HolProg 64 :=
.seq rawBody134_34 rawBody134_49

def rawBody134_51 : StackLang.HolProg 64 :=
.seq rawBody134_33 rawBody134_50

def rawBody134_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 87#64)

def rawBody134_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody134_55 : StackLang.HolProg 64 :=
.seq rawBody134_53 rawBody134_54

def rawBody134_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody134_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody134_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody134_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 134 3

def rawBody134_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody134_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody134_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody134_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody134_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody134_66 : StackLang.HolProg 64 :=
.seq rawBody134_64 rawBody134_65

def rawBody134_67 : StackLang.HolProg 64 :=
.seq rawBody134_63 rawBody134_66

def rawBody134_68 : StackLang.HolProg 64 :=
.seq rawBody134_62 rawBody134_67

def rawBody134_69 : StackLang.HolProg 64 :=
.seq rawBody134_61 rawBody134_68

def rawBody134_70 : StackLang.HolProg 64 :=
.seq rawBody134_60 rawBody134_69

def rawBody134_71 : StackLang.HolProg 64 :=
.seq rawBody134_59 rawBody134_70

def rawBody134_72 : StackLang.HolProg 64 :=
.seq rawBody134_58 rawBody134_71

def rawBody134_73 : StackLang.HolProg 64 :=
.seq rawBody134_57 rawBody134_72

def rawBody134_74 : StackLang.HolProg 64 :=
.seq rawBody134_56 rawBody134_73

def rawBody134_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody134_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody134_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody134_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody134_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody134_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody134_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody134_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody134_85 : StackLang.HolProg 64 :=
.seq rawBody134_83 rawBody134_84

def rawBody134_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody134_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody134_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody134_89 : StackLang.HolProg 64 :=
.seq rawBody134_87 rawBody134_88

def rawBody134_90 : StackLang.HolProg 64 :=
.seq rawBody134_86 rawBody134_89

def rawBody134_91 : StackLang.HolProg 64 :=
.seq rawBody134_85 rawBody134_90

def rawBody134_92 : StackLang.HolProg 64 :=
.seq rawBody134_82 rawBody134_91

def rawBody134_93 : StackLang.HolProg 64 :=
.seq rawBody134_81 rawBody134_92

def rawBody134_94 : StackLang.HolProg 64 :=
.seq rawBody134_80 rawBody134_93

def rawBody134_95 : StackLang.HolProg 64 :=
.seq rawBody134_79 rawBody134_94

def rawBody134_96 : StackLang.HolProg 64 :=
.seq rawBody134_78 rawBody134_95

def rawBody134_97 : StackLang.HolProg 64 :=
.seq rawBody134_77 rawBody134_96

def rawBody134_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody134_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody134_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody134_101 : StackLang.HolProg 64 :=
.seq rawBody134_99 rawBody134_100

def rawBody134_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody134_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody134_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody134_105 : StackLang.HolProg 64 :=
.seq rawBody134_103 rawBody134_104

def rawBody134_106 : StackLang.HolProg 64 :=
.seq rawBody134_102 rawBody134_105

def rawBody134_107 : StackLang.HolProg 64 :=
.seq rawBody134_101 rawBody134_106

def rawBody134_108 : StackLang.HolProg 64 :=
.seq rawBody134_98 rawBody134_107

def rawBody134_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody134_110 : StackLang.HolProg 64 :=
.seq rawBody134_108 rawBody134_109

def rawBody134_111 : StackLang.HolProg 64 :=
.call (some (rawBody134_97, 0, 134, 2)) (Sum.inl 132) (some (rawBody134_110, 134, 3))

def rawBody134_112 : StackLang.HolProg 64 :=
.seq rawBody134_76 rawBody134_111

def rawBody134_113 : StackLang.HolProg 64 :=
.seq rawBody134_75 rawBody134_112

def rawBody134_114 : StackLang.HolProg 64 :=
.seq rawBody134_74 rawBody134_113

def rawBody134_115 : StackLang.HolProg 64 :=
.seq rawBody134_55 rawBody134_114

def rawBody134_116 : StackLang.HolProg 64 :=
.seq rawBody134_52 rawBody134_115

def rawBody134_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody134_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody134_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody134_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody134_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody134_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody134_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody134_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody134_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 4

def rawBody134_126 : StackLang.HolProg 64 :=
.seq rawBody134_124 rawBody134_125

def rawBody134_127 : StackLang.HolProg 64 :=
.seq rawBody134_123 rawBody134_126

def rawBody134_128 : StackLang.HolProg 64 :=
.seq rawBody134_122 rawBody134_127

def rawBody134_129 : StackLang.HolProg 64 :=
.seq rawBody134_121 rawBody134_128

def rawBody134_130 : StackLang.HolProg 64 :=
.seq rawBody134_120 rawBody134_129

def rawBody134_131 : StackLang.HolProg 64 :=
.seq rawBody134_119 rawBody134_130

def rawBody134_132 : StackLang.HolProg 64 :=
.seq rawBody134_118 rawBody134_131

def rawBody134_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 88#64)

def rawBody134_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody134_136 : StackLang.HolProg 64 :=
.seq rawBody134_134 rawBody134_135

def rawBody134_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody134_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody134_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody134_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 134 5

def rawBody134_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody134_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody134_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody134_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody134_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody134_147 : StackLang.HolProg 64 :=
.seq rawBody134_145 rawBody134_146

def rawBody134_148 : StackLang.HolProg 64 :=
.seq rawBody134_144 rawBody134_147

def rawBody134_149 : StackLang.HolProg 64 :=
.seq rawBody134_143 rawBody134_148

def rawBody134_150 : StackLang.HolProg 64 :=
.seq rawBody134_142 rawBody134_149

def rawBody134_151 : StackLang.HolProg 64 :=
.seq rawBody134_141 rawBody134_150

def rawBody134_152 : StackLang.HolProg 64 :=
.seq rawBody134_140 rawBody134_151

def rawBody134_153 : StackLang.HolProg 64 :=
.seq rawBody134_139 rawBody134_152

def rawBody134_154 : StackLang.HolProg 64 :=
.seq rawBody134_138 rawBody134_153

def rawBody134_155 : StackLang.HolProg 64 :=
.seq rawBody134_137 rawBody134_154

def rawBody134_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody134_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody134_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody134_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody134_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody134_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody134_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody134_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody134_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody134_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody134_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody134_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody134_170 : StackLang.HolProg 64 :=
.seq rawBody134_168 rawBody134_169

def rawBody134_171 : StackLang.HolProg 64 :=
.seq rawBody134_167 rawBody134_170

def rawBody134_172 : StackLang.HolProg 64 :=
.seq rawBody134_166 rawBody134_171

def rawBody134_173 : StackLang.HolProg 64 :=
.seq rawBody134_165 rawBody134_172

def rawBody134_174 : StackLang.HolProg 64 :=
.seq rawBody134_164 rawBody134_173

def rawBody134_175 : StackLang.HolProg 64 :=
.seq rawBody134_163 rawBody134_174

def rawBody134_176 : StackLang.HolProg 64 :=
.seq rawBody134_162 rawBody134_175

def rawBody134_177 : StackLang.HolProg 64 :=
.seq rawBody134_161 rawBody134_176

def rawBody134_178 : StackLang.HolProg 64 :=
.seq rawBody134_160 rawBody134_177

def rawBody134_179 : StackLang.HolProg 64 :=
.seq rawBody134_159 rawBody134_178

def rawBody134_180 : StackLang.HolProg 64 :=
.seq rawBody134_158 rawBody134_179

def rawBody134_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody134_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody134_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody134_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody134_185 : StackLang.HolProg 64 :=
.seq rawBody134_183 rawBody134_184

def rawBody134_186 : StackLang.HolProg 64 :=
.seq rawBody134_182 rawBody134_185

def rawBody134_187 : StackLang.HolProg 64 :=
.seq rawBody134_181 rawBody134_186

def rawBody134_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody134_189 : StackLang.HolProg 64 :=
.seq rawBody134_187 rawBody134_188

def rawBody134_190 : StackLang.HolProg 64 :=
.call (some (rawBody134_180, 0, 134, 4)) (Sum.inl 132) (some (rawBody134_189, 134, 5))

def rawBody134_191 : StackLang.HolProg 64 :=
.seq rawBody134_157 rawBody134_190

def rawBody134_192 : StackLang.HolProg 64 :=
.seq rawBody134_156 rawBody134_191

def rawBody134_193 : StackLang.HolProg 64 :=
.seq rawBody134_155 rawBody134_192

def rawBody134_194 : StackLang.HolProg 64 :=
.seq rawBody134_136 rawBody134_193

def rawBody134_195 : StackLang.HolProg 64 :=
.seq rawBody134_133 rawBody134_194

def rawBody134_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody134_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody134_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 89#64)

def rawBody134_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody134_201 : StackLang.HolProg 64 :=
.seq rawBody134_199 rawBody134_200

def rawBody134_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody134_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody134_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody134_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 134 7

def rawBody134_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody134_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody134_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody134_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody134_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody134_212 : StackLang.HolProg 64 :=
.seq rawBody134_210 rawBody134_211

def rawBody134_213 : StackLang.HolProg 64 :=
.seq rawBody134_209 rawBody134_212

def rawBody134_214 : StackLang.HolProg 64 :=
.seq rawBody134_208 rawBody134_213

def rawBody134_215 : StackLang.HolProg 64 :=
.seq rawBody134_207 rawBody134_214

def rawBody134_216 : StackLang.HolProg 64 :=
.seq rawBody134_206 rawBody134_215

def rawBody134_217 : StackLang.HolProg 64 :=
.seq rawBody134_205 rawBody134_216

def rawBody134_218 : StackLang.HolProg 64 :=
.seq rawBody134_204 rawBody134_217

def rawBody134_219 : StackLang.HolProg 64 :=
.seq rawBody134_203 rawBody134_218

def rawBody134_220 : StackLang.HolProg 64 :=
.seq rawBody134_202 rawBody134_219

def rawBody134_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody134_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody134_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody134_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody134_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody134_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody134_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody134_230 : StackLang.HolProg 64 :=
.seq rawBody134_228 rawBody134_229

def rawBody134_231 : StackLang.HolProg 64 :=
.seq rawBody134_227 rawBody134_230

def rawBody134_232 : StackLang.HolProg 64 :=
.seq rawBody134_226 rawBody134_231

def rawBody134_233 : StackLang.HolProg 64 :=
.seq rawBody134_225 rawBody134_232

def rawBody134_234 : StackLang.HolProg 64 :=
.seq rawBody134_224 rawBody134_233

def rawBody134_235 : StackLang.HolProg 64 :=
.seq rawBody134_223 rawBody134_234

def rawBody134_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody134_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody134_238 : StackLang.HolProg 64 :=
.seq rawBody134_236 rawBody134_237

def rawBody134_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody134_240 : StackLang.HolProg 64 :=
.seq rawBody134_238 rawBody134_239

def rawBody134_241 : StackLang.HolProg 64 :=
.call (some (rawBody134_235, 0, 134, 6)) (Sum.inl 131) (some (rawBody134_240, 134, 7))

def rawBody134_242 : StackLang.HolProg 64 :=
.seq rawBody134_222 rawBody134_241

def rawBody134_243 : StackLang.HolProg 64 :=
.seq rawBody134_221 rawBody134_242

def rawBody134_244 : StackLang.HolProg 64 :=
.seq rawBody134_220 rawBody134_243

def rawBody134_245 : StackLang.HolProg 64 :=
.seq rawBody134_201 rawBody134_244

def rawBody134_246 : StackLang.HolProg 64 :=
.seq rawBody134_198 rawBody134_245

def rawBody134_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody134_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody134_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def rawBody134_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody134_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody134_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody134_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 118

def rawBody134_256 : StackLang.HolProg 64 :=
.seq rawBody134_254 rawBody134_255

def rawBody134_257 : StackLang.HolProg 64 :=
.seq rawBody134_253 rawBody134_256

def rawBody134_258 : StackLang.HolProg 64 :=
.seq rawBody134_252 rawBody134_257

def rawBody134_259 : StackLang.HolProg 64 :=
.seq rawBody134_251 rawBody134_258

def rawBody134_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody134_261 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody134_259 rawBody134_260

def rawBody134_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody134_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody134_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody134_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody134_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody134_267 : StackLang.HolProg 64 :=
.seq rawBody134_265 rawBody134_266

def rawBody134_268 : StackLang.HolProg 64 :=
.seq rawBody134_264 rawBody134_267

def rawBody134_269 : StackLang.HolProg 64 :=
.seq rawBody134_263 rawBody134_268

def rawBody134_270 : StackLang.HolProg 64 :=
.seq rawBody134_262 rawBody134_269

def rawBody134_271 : StackLang.HolProg 64 :=
.seq rawBody134_261 rawBody134_270

def rawBody134_272 : StackLang.HolProg 64 :=
.seq rawBody134_250 rawBody134_271

def rawBody134_273 : StackLang.HolProg 64 :=
.seq rawBody134_249 rawBody134_272

def rawBody134_274 : StackLang.HolProg 64 :=
.seq rawBody134_248 rawBody134_273

def rawBody134_275 : StackLang.HolProg 64 :=
.seq rawBody134_247 rawBody134_274

def rawBody134_276 : StackLang.HolProg 64 :=
.seq rawBody134_246 rawBody134_275

def rawBody134_277 : StackLang.HolProg 64 :=
.seq rawBody134_197 rawBody134_276

def rawBody134_278 : StackLang.HolProg 64 :=
.seq rawBody134_196 rawBody134_277

def rawBody134_279 : StackLang.HolProg 64 :=
.seq rawBody134_195 rawBody134_278

def rawBody134_280 : StackLang.HolProg 64 :=
.seq rawBody134_132 rawBody134_279

def rawBody134_281 : StackLang.HolProg 64 :=
.seq rawBody134_117 rawBody134_280

def rawBody134_282 : StackLang.HolProg 64 :=
.seq rawBody134_116 rawBody134_281

def rawBody134_283 : StackLang.HolProg 64 :=
.seq rawBody134_51 rawBody134_282

def rawBody134_284 : StackLang.HolProg 64 :=
.seq rawBody134_32 rawBody134_283

def rawBody134_285 : StackLang.HolProg 64 :=
.seq rawBody134_31 rawBody134_284

def rawBody134_286 : StackLang.HolProg 64 :=
.seq rawBody134_30 rawBody134_285

def rawBody134_287 : StackLang.HolProg 64 :=
.seq rawBody134_13 rawBody134_286

def rawBody134_288 : StackLang.HolProg 64 :=
.seq rawBody134_12 rawBody134_287

def rawBody134_289 : StackLang.HolProg 64 :=
.seq rawBody134_11 rawBody134_288

def rawBody134_290 : StackLang.HolProg 64 :=
.seq rawBody134_10 rawBody134_289

def rawBody134_291 : StackLang.HolProg 64 :=
.seq rawBody134_9 rawBody134_290

def rawBody134_292 : StackLang.HolProg 64 :=
.seq rawBody134_8 rawBody134_291

def rawBody134_293 : StackLang.HolProg 64 :=
.seq rawBody134_7 rawBody134_292

def rawBody134_294 : StackLang.HolProg 64 :=
.seq rawBody134_0 rawBody134_293

def raw134 : StackLang.HolProg 64 := rawBody134_294
theorem raw134_eq : StackRawCall.compTop RawInfo.rawInfo (function134 (.list [])).1 = raw134 := by
  kernel_rfl
#print axioms raw134_eq
end InitECandidate.Proofs.BackendStages
