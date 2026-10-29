import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function483
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody483_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody483_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody483_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody483_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody483_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody483_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody483_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody483_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody483_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody483_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody483_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody483_11 : StackLang.HolProg 64 :=
.seq rawBody483_9 rawBody483_10

def rawBody483_12 : StackLang.HolProg 64 :=
.seq rawBody483_8 rawBody483_11

def rawBody483_13 : StackLang.HolProg 64 :=
.seq rawBody483_7 rawBody483_12

def rawBody483_14 : StackLang.HolProg 64 :=
.seq rawBody483_6 rawBody483_13

def rawBody483_15 : StackLang.HolProg 64 :=
.seq rawBody483_5 rawBody483_14

def rawBody483_16 : StackLang.HolProg 64 :=
.seq rawBody483_4 rawBody483_15

def rawBody483_17 : StackLang.HolProg 64 :=
.seq rawBody483_3 rawBody483_16

def rawBody483_18 : StackLang.HolProg 64 :=
.seq rawBody483_2 rawBody483_17

def rawBody483_19 : StackLang.HolProg 64 :=
.seq rawBody483_1 rawBody483_18

def rawBody483_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1517#64)

def rawBody483_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody483_23 : StackLang.HolProg 64 :=
.seq rawBody483_21 rawBody483_22

def rawBody483_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody483_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody483_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody483_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 483 3

def rawBody483_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody483_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody483_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody483_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody483_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody483_34 : StackLang.HolProg 64 :=
.seq rawBody483_32 rawBody483_33

def rawBody483_35 : StackLang.HolProg 64 :=
.seq rawBody483_31 rawBody483_34

def rawBody483_36 : StackLang.HolProg 64 :=
.seq rawBody483_30 rawBody483_35

def rawBody483_37 : StackLang.HolProg 64 :=
.seq rawBody483_29 rawBody483_36

def rawBody483_38 : StackLang.HolProg 64 :=
.seq rawBody483_28 rawBody483_37

def rawBody483_39 : StackLang.HolProg 64 :=
.seq rawBody483_27 rawBody483_38

def rawBody483_40 : StackLang.HolProg 64 :=
.seq rawBody483_26 rawBody483_39

def rawBody483_41 : StackLang.HolProg 64 :=
.seq rawBody483_25 rawBody483_40

def rawBody483_42 : StackLang.HolProg 64 :=
.seq rawBody483_24 rawBody483_41

def rawBody483_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody483_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody483_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody483_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody483_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody483_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody483_51 : StackLang.HolProg 64 :=
.seq rawBody483_49 rawBody483_50

def rawBody483_52 : StackLang.HolProg 64 :=
.seq rawBody483_48 rawBody483_51

def rawBody483_53 : StackLang.HolProg 64 :=
.seq rawBody483_47 rawBody483_52

def rawBody483_54 : StackLang.HolProg 64 :=
.seq rawBody483_46 rawBody483_53

def rawBody483_55 : StackLang.HolProg 64 :=
.seq rawBody483_45 rawBody483_54

def rawBody483_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody483_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody483_58 : StackLang.HolProg 64 :=
.seq rawBody483_56 rawBody483_57

def rawBody483_59 : StackLang.HolProg 64 :=
.call (some (rawBody483_55, 0, 483, 2)) (Sum.inl 480) (some (rawBody483_58, 483, 3))

def rawBody483_60 : StackLang.HolProg 64 :=
.seq rawBody483_44 rawBody483_59

def rawBody483_61 : StackLang.HolProg 64 :=
.seq rawBody483_43 rawBody483_60

def rawBody483_62 : StackLang.HolProg 64 :=
.seq rawBody483_42 rawBody483_61

def rawBody483_63 : StackLang.HolProg 64 :=
.seq rawBody483_23 rawBody483_62

def rawBody483_64 : StackLang.HolProg 64 :=
.seq rawBody483_20 rawBody483_63

def rawBody483_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody483_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody483_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody483_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody483_69 : StackLang.HolProg 64 :=
.seq rawBody483_67 rawBody483_68

def rawBody483_70 : StackLang.HolProg 64 :=
.seq rawBody483_66 rawBody483_69

def rawBody483_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1518#64)

def rawBody483_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody483_74 : StackLang.HolProg 64 :=
.seq rawBody483_72 rawBody483_73

def rawBody483_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody483_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody483_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody483_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 483 5

def rawBody483_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody483_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody483_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody483_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody483_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody483_85 : StackLang.HolProg 64 :=
.seq rawBody483_83 rawBody483_84

def rawBody483_86 : StackLang.HolProg 64 :=
.seq rawBody483_82 rawBody483_85

def rawBody483_87 : StackLang.HolProg 64 :=
.seq rawBody483_81 rawBody483_86

def rawBody483_88 : StackLang.HolProg 64 :=
.seq rawBody483_80 rawBody483_87

def rawBody483_89 : StackLang.HolProg 64 :=
.seq rawBody483_79 rawBody483_88

def rawBody483_90 : StackLang.HolProg 64 :=
.seq rawBody483_78 rawBody483_89

def rawBody483_91 : StackLang.HolProg 64 :=
.seq rawBody483_77 rawBody483_90

def rawBody483_92 : StackLang.HolProg 64 :=
.seq rawBody483_76 rawBody483_91

def rawBody483_93 : StackLang.HolProg 64 :=
.seq rawBody483_75 rawBody483_92

def rawBody483_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody483_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody483_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody483_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody483_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody483_101 : StackLang.HolProg 64 :=
.seq rawBody483_99 rawBody483_100

def rawBody483_102 : StackLang.HolProg 64 :=
.seq rawBody483_98 rawBody483_101

def rawBody483_103 : StackLang.HolProg 64 :=
.seq rawBody483_97 rawBody483_102

def rawBody483_104 : StackLang.HolProg 64 :=
.seq rawBody483_96 rawBody483_103

def rawBody483_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_106 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody483_107 : StackLang.HolProg 64 :=
.seq rawBody483_105 rawBody483_106

def rawBody483_108 : StackLang.HolProg 64 :=
.call (some (rawBody483_104, 0, 483, 4)) (Sum.inl 463) (some (rawBody483_107, 483, 5))

def rawBody483_109 : StackLang.HolProg 64 :=
.seq rawBody483_95 rawBody483_108

def rawBody483_110 : StackLang.HolProg 64 :=
.seq rawBody483_94 rawBody483_109

def rawBody483_111 : StackLang.HolProg 64 :=
.seq rawBody483_93 rawBody483_110

def rawBody483_112 : StackLang.HolProg 64 :=
.seq rawBody483_74 rawBody483_111

def rawBody483_113 : StackLang.HolProg 64 :=
.seq rawBody483_71 rawBody483_112

def rawBody483_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody483_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody483_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1519#64)

def rawBody483_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody483_119 : StackLang.HolProg 64 :=
.seq rawBody483_117 rawBody483_118

def rawBody483_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody483_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody483_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody483_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 483 7

def rawBody483_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody483_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody483_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody483_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody483_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody483_130 : StackLang.HolProg 64 :=
.seq rawBody483_128 rawBody483_129

def rawBody483_131 : StackLang.HolProg 64 :=
.seq rawBody483_127 rawBody483_130

def rawBody483_132 : StackLang.HolProg 64 :=
.seq rawBody483_126 rawBody483_131

def rawBody483_133 : StackLang.HolProg 64 :=
.seq rawBody483_125 rawBody483_132

def rawBody483_134 : StackLang.HolProg 64 :=
.seq rawBody483_124 rawBody483_133

def rawBody483_135 : StackLang.HolProg 64 :=
.seq rawBody483_123 rawBody483_134

def rawBody483_136 : StackLang.HolProg 64 :=
.seq rawBody483_122 rawBody483_135

def rawBody483_137 : StackLang.HolProg 64 :=
.seq rawBody483_121 rawBody483_136

def rawBody483_138 : StackLang.HolProg 64 :=
.seq rawBody483_120 rawBody483_137

def rawBody483_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody483_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody483_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody483_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody483_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody483_146 : StackLang.HolProg 64 :=
.seq rawBody483_144 rawBody483_145

def rawBody483_147 : StackLang.HolProg 64 :=
.seq rawBody483_143 rawBody483_146

def rawBody483_148 : StackLang.HolProg 64 :=
.seq rawBody483_142 rawBody483_147

def rawBody483_149 : StackLang.HolProg 64 :=
.seq rawBody483_141 rawBody483_148

def rawBody483_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody483_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody483_152 : StackLang.HolProg 64 :=
.seq rawBody483_150 rawBody483_151

def rawBody483_153 : StackLang.HolProg 64 :=
.call (some (rawBody483_149, 0, 483, 6)) (Sum.inl 470) (some (rawBody483_152, 483, 7))

def rawBody483_154 : StackLang.HolProg 64 :=
.seq rawBody483_140 rawBody483_153

def rawBody483_155 : StackLang.HolProg 64 :=
.seq rawBody483_139 rawBody483_154

def rawBody483_156 : StackLang.HolProg 64 :=
.seq rawBody483_138 rawBody483_155

def rawBody483_157 : StackLang.HolProg 64 :=
.seq rawBody483_119 rawBody483_156

def rawBody483_158 : StackLang.HolProg 64 :=
.seq rawBody483_116 rawBody483_157

def rawBody483_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody483_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody483_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1520#64)

def rawBody483_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody483_164 : StackLang.HolProg 64 :=
.seq rawBody483_162 rawBody483_163

def rawBody483_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody483_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody483_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody483_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 483 9

def rawBody483_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody483_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody483_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody483_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody483_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody483_175 : StackLang.HolProg 64 :=
.seq rawBody483_173 rawBody483_174

def rawBody483_176 : StackLang.HolProg 64 :=
.seq rawBody483_172 rawBody483_175

def rawBody483_177 : StackLang.HolProg 64 :=
.seq rawBody483_171 rawBody483_176

def rawBody483_178 : StackLang.HolProg 64 :=
.seq rawBody483_170 rawBody483_177

def rawBody483_179 : StackLang.HolProg 64 :=
.seq rawBody483_169 rawBody483_178

def rawBody483_180 : StackLang.HolProg 64 :=
.seq rawBody483_168 rawBody483_179

def rawBody483_181 : StackLang.HolProg 64 :=
.seq rawBody483_167 rawBody483_180

def rawBody483_182 : StackLang.HolProg 64 :=
.seq rawBody483_166 rawBody483_181

def rawBody483_183 : StackLang.HolProg 64 :=
.seq rawBody483_165 rawBody483_182

def rawBody483_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody483_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody483_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody483_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody483_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody483_191 : StackLang.HolProg 64 :=
.seq rawBody483_189 rawBody483_190

def rawBody483_192 : StackLang.HolProg 64 :=
.seq rawBody483_188 rawBody483_191

def rawBody483_193 : StackLang.HolProg 64 :=
.seq rawBody483_187 rawBody483_192

def rawBody483_194 : StackLang.HolProg 64 :=
.seq rawBody483_186 rawBody483_193

def rawBody483_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody483_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody483_197 : StackLang.HolProg 64 :=
.seq rawBody483_195 rawBody483_196

def rawBody483_198 : StackLang.HolProg 64 :=
.call (some (rawBody483_194, 0, 483, 8)) (Sum.inl 482) (some (rawBody483_197, 483, 9))

def rawBody483_199 : StackLang.HolProg 64 :=
.seq rawBody483_185 rawBody483_198

def rawBody483_200 : StackLang.HolProg 64 :=
.seq rawBody483_184 rawBody483_199

def rawBody483_201 : StackLang.HolProg 64 :=
.seq rawBody483_183 rawBody483_200

def rawBody483_202 : StackLang.HolProg 64 :=
.seq rawBody483_164 rawBody483_201

def rawBody483_203 : StackLang.HolProg 64 :=
.seq rawBody483_161 rawBody483_202

def rawBody483_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody483_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody483_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody483_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody483_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody483_209 : StackLang.HolProg 64 :=
.seq rawBody483_207 rawBody483_208

def rawBody483_210 : StackLang.HolProg 64 :=
.seq rawBody483_206 rawBody483_209

def rawBody483_211 : StackLang.HolProg 64 :=
.seq rawBody483_205 rawBody483_210

def rawBody483_212 : StackLang.HolProg 64 :=
.seq rawBody483_204 rawBody483_211

def rawBody483_213 : StackLang.HolProg 64 :=
.seq rawBody483_203 rawBody483_212

def rawBody483_214 : StackLang.HolProg 64 :=
.seq rawBody483_160 rawBody483_213

def rawBody483_215 : StackLang.HolProg 64 :=
.seq rawBody483_159 rawBody483_214

def rawBody483_216 : StackLang.HolProg 64 :=
.seq rawBody483_158 rawBody483_215

def rawBody483_217 : StackLang.HolProg 64 :=
.seq rawBody483_115 rawBody483_216

def rawBody483_218 : StackLang.HolProg 64 :=
.seq rawBody483_114 rawBody483_217

def rawBody483_219 : StackLang.HolProg 64 :=
.seq rawBody483_113 rawBody483_218

def rawBody483_220 : StackLang.HolProg 64 :=
.seq rawBody483_70 rawBody483_219

def rawBody483_221 : StackLang.HolProg 64 :=
.seq rawBody483_65 rawBody483_220

def rawBody483_222 : StackLang.HolProg 64 :=
.seq rawBody483_64 rawBody483_221

def rawBody483_223 : StackLang.HolProg 64 :=
.seq rawBody483_19 rawBody483_222

def rawBody483_224 : StackLang.HolProg 64 :=
.seq rawBody483_0 rawBody483_223

def raw483 : StackLang.HolProg 64 := rawBody483_224
theorem raw483_eq : StackRawCall.compTop RawInfo.rawInfo (function483 (.list [])).1 = raw483 := by
  kernel_rfl
#print axioms raw483_eq
end InitECandidate.Proofs.BackendStages
