import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function133
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody133_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def rawBody133_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody133_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody133_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody133_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody133_5 : StackLang.HolProg 64 :=
.seq rawBody133_3 rawBody133_4

def rawBody133_6 : StackLang.HolProg 64 :=
.seq rawBody133_2 rawBody133_5

def rawBody133_7 : StackLang.HolProg 64 :=
.seq rawBody133_1 rawBody133_6

def rawBody133_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody133_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody133_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody133_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody133_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody133_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody133_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody133_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody133_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody133_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody133_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody133_22 : StackLang.HolProg 64 :=
.seq rawBody133_20 rawBody133_21

def rawBody133_23 : StackLang.HolProg 64 :=
.seq rawBody133_19 rawBody133_22

def rawBody133_24 : StackLang.HolProg 64 :=
.seq rawBody133_18 rawBody133_23

def rawBody133_25 : StackLang.HolProg 64 :=
.seq rawBody133_17 rawBody133_24

def rawBody133_26 : StackLang.HolProg 64 :=
.seq rawBody133_16 rawBody133_25

def rawBody133_27 : StackLang.HolProg 64 :=
.seq rawBody133_15 rawBody133_26

def rawBody133_28 : StackLang.HolProg 64 :=
.seq rawBody133_14 rawBody133_27

def rawBody133_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody133_28 rawBody133_29

def rawBody133_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody133_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody133_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def rawBody133_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody133_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody133_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody133_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody133_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 6

def rawBody133_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def rawBody133_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def rawBody133_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody133_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 2

def rawBody133_43 : StackLang.HolProg 64 :=
.seq rawBody133_41 rawBody133_42

def rawBody133_44 : StackLang.HolProg 64 :=
.seq rawBody133_40 rawBody133_43

def rawBody133_45 : StackLang.HolProg 64 :=
.seq rawBody133_39 rawBody133_44

def rawBody133_46 : StackLang.HolProg 64 :=
.seq rawBody133_38 rawBody133_45

def rawBody133_47 : StackLang.HolProg 64 :=
.seq rawBody133_37 rawBody133_46

def rawBody133_48 : StackLang.HolProg 64 :=
.seq rawBody133_36 rawBody133_47

def rawBody133_49 : StackLang.HolProg 64 :=
.seq rawBody133_35 rawBody133_48

def rawBody133_50 : StackLang.HolProg 64 :=
.seq rawBody133_34 rawBody133_49

def rawBody133_51 : StackLang.HolProg 64 :=
.seq rawBody133_33 rawBody133_50

def rawBody133_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 84#64)

def rawBody133_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody133_55 : StackLang.HolProg 64 :=
.seq rawBody133_53 rawBody133_54

def rawBody133_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody133_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody133_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody133_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 133 3

def rawBody133_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody133_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody133_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody133_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody133_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody133_66 : StackLang.HolProg 64 :=
.seq rawBody133_64 rawBody133_65

def rawBody133_67 : StackLang.HolProg 64 :=
.seq rawBody133_63 rawBody133_66

def rawBody133_68 : StackLang.HolProg 64 :=
.seq rawBody133_62 rawBody133_67

def rawBody133_69 : StackLang.HolProg 64 :=
.seq rawBody133_61 rawBody133_68

def rawBody133_70 : StackLang.HolProg 64 :=
.seq rawBody133_60 rawBody133_69

def rawBody133_71 : StackLang.HolProg 64 :=
.seq rawBody133_59 rawBody133_70

def rawBody133_72 : StackLang.HolProg 64 :=
.seq rawBody133_58 rawBody133_71

def rawBody133_73 : StackLang.HolProg 64 :=
.seq rawBody133_57 rawBody133_72

def rawBody133_74 : StackLang.HolProg 64 :=
.seq rawBody133_56 rawBody133_73

def rawBody133_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody133_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody133_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody133_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody133_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody133_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody133_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody133_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody133_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody133_86 : StackLang.HolProg 64 :=
.seq rawBody133_84 rawBody133_85

def rawBody133_87 : StackLang.HolProg 64 :=
.seq rawBody133_83 rawBody133_86

def rawBody133_88 : StackLang.HolProg 64 :=
.seq rawBody133_82 rawBody133_87

def rawBody133_89 : StackLang.HolProg 64 :=
.seq rawBody133_81 rawBody133_88

def rawBody133_90 : StackLang.HolProg 64 :=
.seq rawBody133_80 rawBody133_89

def rawBody133_91 : StackLang.HolProg 64 :=
.seq rawBody133_79 rawBody133_90

def rawBody133_92 : StackLang.HolProg 64 :=
.seq rawBody133_78 rawBody133_91

def rawBody133_93 : StackLang.HolProg 64 :=
.seq rawBody133_77 rawBody133_92

def rawBody133_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody133_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody133_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody133_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody133_98 : StackLang.HolProg 64 :=
.seq rawBody133_96 rawBody133_97

def rawBody133_99 : StackLang.HolProg 64 :=
.seq rawBody133_95 rawBody133_98

def rawBody133_100 : StackLang.HolProg 64 :=
.seq rawBody133_94 rawBody133_99

def rawBody133_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody133_102 : StackLang.HolProg 64 :=
.seq rawBody133_100 rawBody133_101

def rawBody133_103 : StackLang.HolProg 64 :=
.call (some (rawBody133_93, 0, 133, 2)) (Sum.inl 132) (some (rawBody133_102, 133, 3))

def rawBody133_104 : StackLang.HolProg 64 :=
.seq rawBody133_76 rawBody133_103

def rawBody133_105 : StackLang.HolProg 64 :=
.seq rawBody133_75 rawBody133_104

def rawBody133_106 : StackLang.HolProg 64 :=
.seq rawBody133_74 rawBody133_105

def rawBody133_107 : StackLang.HolProg 64 :=
.seq rawBody133_55 rawBody133_106

def rawBody133_108 : StackLang.HolProg 64 :=
.seq rawBody133_52 rawBody133_107

def rawBody133_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody133_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody133_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody133_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody133_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody133_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody133_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody133_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody133_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def rawBody133_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 4

def rawBody133_119 : StackLang.HolProg 64 :=
.seq rawBody133_117 rawBody133_118

def rawBody133_120 : StackLang.HolProg 64 :=
.seq rawBody133_116 rawBody133_119

def rawBody133_121 : StackLang.HolProg 64 :=
.seq rawBody133_115 rawBody133_120

def rawBody133_122 : StackLang.HolProg 64 :=
.seq rawBody133_114 rawBody133_121

def rawBody133_123 : StackLang.HolProg 64 :=
.seq rawBody133_113 rawBody133_122

def rawBody133_124 : StackLang.HolProg 64 :=
.seq rawBody133_112 rawBody133_123

def rawBody133_125 : StackLang.HolProg 64 :=
.seq rawBody133_111 rawBody133_124

def rawBody133_126 : StackLang.HolProg 64 :=
.seq rawBody133_110 rawBody133_125

def rawBody133_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 85#64)

def rawBody133_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody133_130 : StackLang.HolProg 64 :=
.seq rawBody133_128 rawBody133_129

def rawBody133_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody133_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody133_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody133_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 133 5

def rawBody133_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody133_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody133_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody133_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody133_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody133_141 : StackLang.HolProg 64 :=
.seq rawBody133_139 rawBody133_140

def rawBody133_142 : StackLang.HolProg 64 :=
.seq rawBody133_138 rawBody133_141

def rawBody133_143 : StackLang.HolProg 64 :=
.seq rawBody133_137 rawBody133_142

def rawBody133_144 : StackLang.HolProg 64 :=
.seq rawBody133_136 rawBody133_143

def rawBody133_145 : StackLang.HolProg 64 :=
.seq rawBody133_135 rawBody133_144

def rawBody133_146 : StackLang.HolProg 64 :=
.seq rawBody133_134 rawBody133_145

def rawBody133_147 : StackLang.HolProg 64 :=
.seq rawBody133_133 rawBody133_146

def rawBody133_148 : StackLang.HolProg 64 :=
.seq rawBody133_132 rawBody133_147

def rawBody133_149 : StackLang.HolProg 64 :=
.seq rawBody133_131 rawBody133_148

def rawBody133_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody133_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody133_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody133_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody133_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody133_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody133_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody133_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody133_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody133_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody133_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody133_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody133_164 : StackLang.HolProg 64 :=
.seq rawBody133_162 rawBody133_163

def rawBody133_165 : StackLang.HolProg 64 :=
.seq rawBody133_161 rawBody133_164

def rawBody133_166 : StackLang.HolProg 64 :=
.seq rawBody133_160 rawBody133_165

def rawBody133_167 : StackLang.HolProg 64 :=
.seq rawBody133_159 rawBody133_166

def rawBody133_168 : StackLang.HolProg 64 :=
.seq rawBody133_158 rawBody133_167

def rawBody133_169 : StackLang.HolProg 64 :=
.seq rawBody133_157 rawBody133_168

def rawBody133_170 : StackLang.HolProg 64 :=
.seq rawBody133_156 rawBody133_169

def rawBody133_171 : StackLang.HolProg 64 :=
.seq rawBody133_155 rawBody133_170

def rawBody133_172 : StackLang.HolProg 64 :=
.seq rawBody133_154 rawBody133_171

def rawBody133_173 : StackLang.HolProg 64 :=
.seq rawBody133_153 rawBody133_172

def rawBody133_174 : StackLang.HolProg 64 :=
.seq rawBody133_152 rawBody133_173

def rawBody133_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody133_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody133_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody133_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody133_179 : StackLang.HolProg 64 :=
.seq rawBody133_177 rawBody133_178

def rawBody133_180 : StackLang.HolProg 64 :=
.seq rawBody133_176 rawBody133_179

def rawBody133_181 : StackLang.HolProg 64 :=
.seq rawBody133_175 rawBody133_180

def rawBody133_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody133_183 : StackLang.HolProg 64 :=
.seq rawBody133_181 rawBody133_182

def rawBody133_184 : StackLang.HolProg 64 :=
.call (some (rawBody133_174, 0, 133, 4)) (Sum.inl 132) (some (rawBody133_183, 133, 5))

def rawBody133_185 : StackLang.HolProg 64 :=
.seq rawBody133_151 rawBody133_184

def rawBody133_186 : StackLang.HolProg 64 :=
.seq rawBody133_150 rawBody133_185

def rawBody133_187 : StackLang.HolProg 64 :=
.seq rawBody133_149 rawBody133_186

def rawBody133_188 : StackLang.HolProg 64 :=
.seq rawBody133_130 rawBody133_187

def rawBody133_189 : StackLang.HolProg 64 :=
.seq rawBody133_127 rawBody133_188

def rawBody133_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody133_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody133_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 86#64)

def rawBody133_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody133_195 : StackLang.HolProg 64 :=
.seq rawBody133_193 rawBody133_194

def rawBody133_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody133_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody133_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody133_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 133 7

def rawBody133_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody133_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody133_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody133_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody133_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody133_206 : StackLang.HolProg 64 :=
.seq rawBody133_204 rawBody133_205

def rawBody133_207 : StackLang.HolProg 64 :=
.seq rawBody133_203 rawBody133_206

def rawBody133_208 : StackLang.HolProg 64 :=
.seq rawBody133_202 rawBody133_207

def rawBody133_209 : StackLang.HolProg 64 :=
.seq rawBody133_201 rawBody133_208

def rawBody133_210 : StackLang.HolProg 64 :=
.seq rawBody133_200 rawBody133_209

def rawBody133_211 : StackLang.HolProg 64 :=
.seq rawBody133_199 rawBody133_210

def rawBody133_212 : StackLang.HolProg 64 :=
.seq rawBody133_198 rawBody133_211

def rawBody133_213 : StackLang.HolProg 64 :=
.seq rawBody133_197 rawBody133_212

def rawBody133_214 : StackLang.HolProg 64 :=
.seq rawBody133_196 rawBody133_213

def rawBody133_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody133_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody133_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody133_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody133_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody133_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody133_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody133_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody133_225 : StackLang.HolProg 64 :=
.seq rawBody133_223 rawBody133_224

def rawBody133_226 : StackLang.HolProg 64 :=
.seq rawBody133_222 rawBody133_225

def rawBody133_227 : StackLang.HolProg 64 :=
.seq rawBody133_221 rawBody133_226

def rawBody133_228 : StackLang.HolProg 64 :=
.seq rawBody133_220 rawBody133_227

def rawBody133_229 : StackLang.HolProg 64 :=
.seq rawBody133_219 rawBody133_228

def rawBody133_230 : StackLang.HolProg 64 :=
.seq rawBody133_218 rawBody133_229

def rawBody133_231 : StackLang.HolProg 64 :=
.seq rawBody133_217 rawBody133_230

def rawBody133_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody133_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody133_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody133_235 : StackLang.HolProg 64 :=
.seq rawBody133_233 rawBody133_234

def rawBody133_236 : StackLang.HolProg 64 :=
.seq rawBody133_232 rawBody133_235

def rawBody133_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody133_238 : StackLang.HolProg 64 :=
.seq rawBody133_236 rawBody133_237

def rawBody133_239 : StackLang.HolProg 64 :=
.call (some (rawBody133_231, 0, 133, 6)) (Sum.inl 130) (some (rawBody133_238, 133, 7))

def rawBody133_240 : StackLang.HolProg 64 :=
.seq rawBody133_216 rawBody133_239

def rawBody133_241 : StackLang.HolProg 64 :=
.seq rawBody133_215 rawBody133_240

def rawBody133_242 : StackLang.HolProg 64 :=
.seq rawBody133_214 rawBody133_241

def rawBody133_243 : StackLang.HolProg 64 :=
.seq rawBody133_195 rawBody133_242

def rawBody133_244 : StackLang.HolProg 64 :=
.seq rawBody133_192 rawBody133_243

def rawBody133_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody133_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody133_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody133_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def rawBody133_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody133_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody133_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody133_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 118

def rawBody133_255 : StackLang.HolProg 64 :=
.seq rawBody133_253 rawBody133_254

def rawBody133_256 : StackLang.HolProg 64 :=
.seq rawBody133_252 rawBody133_255

def rawBody133_257 : StackLang.HolProg 64 :=
.seq rawBody133_251 rawBody133_256

def rawBody133_258 : StackLang.HolProg 64 :=
.seq rawBody133_250 rawBody133_257

def rawBody133_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody133_260 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody133_258 rawBody133_259

def rawBody133_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody133_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody133_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody133_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody133_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody133_266 : StackLang.HolProg 64 :=
.seq rawBody133_264 rawBody133_265

def rawBody133_267 : StackLang.HolProg 64 :=
.seq rawBody133_263 rawBody133_266

def rawBody133_268 : StackLang.HolProg 64 :=
.seq rawBody133_262 rawBody133_267

def rawBody133_269 : StackLang.HolProg 64 :=
.seq rawBody133_261 rawBody133_268

def rawBody133_270 : StackLang.HolProg 64 :=
.seq rawBody133_260 rawBody133_269

def rawBody133_271 : StackLang.HolProg 64 :=
.seq rawBody133_249 rawBody133_270

def rawBody133_272 : StackLang.HolProg 64 :=
.seq rawBody133_248 rawBody133_271

def rawBody133_273 : StackLang.HolProg 64 :=
.seq rawBody133_247 rawBody133_272

def rawBody133_274 : StackLang.HolProg 64 :=
.seq rawBody133_246 rawBody133_273

def rawBody133_275 : StackLang.HolProg 64 :=
.seq rawBody133_245 rawBody133_274

def rawBody133_276 : StackLang.HolProg 64 :=
.seq rawBody133_244 rawBody133_275

def rawBody133_277 : StackLang.HolProg 64 :=
.seq rawBody133_191 rawBody133_276

def rawBody133_278 : StackLang.HolProg 64 :=
.seq rawBody133_190 rawBody133_277

def rawBody133_279 : StackLang.HolProg 64 :=
.seq rawBody133_189 rawBody133_278

def rawBody133_280 : StackLang.HolProg 64 :=
.seq rawBody133_126 rawBody133_279

def rawBody133_281 : StackLang.HolProg 64 :=
.seq rawBody133_109 rawBody133_280

def rawBody133_282 : StackLang.HolProg 64 :=
.seq rawBody133_108 rawBody133_281

def rawBody133_283 : StackLang.HolProg 64 :=
.seq rawBody133_51 rawBody133_282

def rawBody133_284 : StackLang.HolProg 64 :=
.seq rawBody133_32 rawBody133_283

def rawBody133_285 : StackLang.HolProg 64 :=
.seq rawBody133_31 rawBody133_284

def rawBody133_286 : StackLang.HolProg 64 :=
.seq rawBody133_30 rawBody133_285

def rawBody133_287 : StackLang.HolProg 64 :=
.seq rawBody133_13 rawBody133_286

def rawBody133_288 : StackLang.HolProg 64 :=
.seq rawBody133_12 rawBody133_287

def rawBody133_289 : StackLang.HolProg 64 :=
.seq rawBody133_11 rawBody133_288

def rawBody133_290 : StackLang.HolProg 64 :=
.seq rawBody133_10 rawBody133_289

def rawBody133_291 : StackLang.HolProg 64 :=
.seq rawBody133_9 rawBody133_290

def rawBody133_292 : StackLang.HolProg 64 :=
.seq rawBody133_8 rawBody133_291

def rawBody133_293 : StackLang.HolProg 64 :=
.seq rawBody133_7 rawBody133_292

def rawBody133_294 : StackLang.HolProg 64 :=
.seq rawBody133_0 rawBody133_293

def raw133 : StackLang.HolProg 64 := rawBody133_294
theorem raw133_eq : StackRawCall.compTop RawInfo.rawInfo (function133 (.list [])).1 = raw133 := by
  kernel_rfl
#print axioms raw133_eq
end InitECandidate.Proofs.BackendStages
