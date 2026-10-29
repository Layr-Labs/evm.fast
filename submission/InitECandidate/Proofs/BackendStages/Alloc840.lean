import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw840
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody840_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody840_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody840_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def AllocBody840_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody840_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody840_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody840_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody840_7 : StackLang.HolProg 64 :=
.seq AllocBody840_5 AllocBody840_6

def AllocBody840_8 : StackLang.HolProg 64 :=
.seq AllocBody840_4 AllocBody840_7

def AllocBody840_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4206#64)

def AllocBody840_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody840_12 : StackLang.HolProg 64 :=
.seq AllocBody840_10 AllocBody840_11

def AllocBody840_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody840_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody840_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody840_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 840 3

def AllocBody840_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody840_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody840_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody840_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody840_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody840_23 : StackLang.HolProg 64 :=
.seq AllocBody840_21 AllocBody840_22

def AllocBody840_24 : StackLang.HolProg 64 :=
.seq AllocBody840_20 AllocBody840_23

def AllocBody840_25 : StackLang.HolProg 64 :=
.seq AllocBody840_19 AllocBody840_24

def AllocBody840_26 : StackLang.HolProg 64 :=
.seq AllocBody840_18 AllocBody840_25

def AllocBody840_27 : StackLang.HolProg 64 :=
.seq AllocBody840_17 AllocBody840_26

def AllocBody840_28 : StackLang.HolProg 64 :=
.seq AllocBody840_16 AllocBody840_27

def AllocBody840_29 : StackLang.HolProg 64 :=
.seq AllocBody840_15 AllocBody840_28

def AllocBody840_30 : StackLang.HolProg 64 :=
.seq AllocBody840_14 AllocBody840_29

def AllocBody840_31 : StackLang.HolProg 64 :=
.seq AllocBody840_13 AllocBody840_30

def AllocBody840_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody840_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody840_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody840_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody840_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody840_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody840_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody840_41 : StackLang.HolProg 64 :=
.seq AllocBody840_39 AllocBody840_40

def AllocBody840_42 : StackLang.HolProg 64 :=
.seq AllocBody840_38 AllocBody840_41

def AllocBody840_43 : StackLang.HolProg 64 :=
.seq AllocBody840_37 AllocBody840_42

def AllocBody840_44 : StackLang.HolProg 64 :=
.seq AllocBody840_36 AllocBody840_43

def AllocBody840_45 : StackLang.HolProg 64 :=
.seq AllocBody840_35 AllocBody840_44

def AllocBody840_46 : StackLang.HolProg 64 :=
.seq AllocBody840_34 AllocBody840_45

def AllocBody840_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody840_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody840_49 : StackLang.HolProg 64 :=
.seq AllocBody840_47 AllocBody840_48

def AllocBody840_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody840_51 : StackLang.HolProg 64 :=
.seq AllocBody840_49 AllocBody840_50

def AllocBody840_52 : StackLang.HolProg 64 :=
.call (some (AllocBody840_46, 0, 840, 2)) (Sum.inl 180) (some (AllocBody840_51, 840, 3))

def AllocBody840_53 : StackLang.HolProg 64 :=
.seq AllocBody840_33 AllocBody840_52

def AllocBody840_54 : StackLang.HolProg 64 :=
.seq AllocBody840_32 AllocBody840_53

def AllocBody840_55 : StackLang.HolProg 64 :=
.seq AllocBody840_31 AllocBody840_54

def AllocBody840_56 : StackLang.HolProg 64 :=
.seq AllocBody840_12 AllocBody840_55

def AllocBody840_57 : StackLang.HolProg 64 :=
.seq AllocBody840_9 AllocBody840_56

def AllocBody840_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody840_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody840_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def AllocBody840_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody840_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody840_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody840_66 : StackLang.HolProg 64 :=
.seq AllocBody840_64 AllocBody840_65

def AllocBody840_67 : StackLang.HolProg 64 :=
.seq AllocBody840_63 AllocBody840_66

def AllocBody840_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4207#64)

def AllocBody840_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody840_71 : StackLang.HolProg 64 :=
.seq AllocBody840_69 AllocBody840_70

def AllocBody840_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody840_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody840_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody840_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 840 5

def AllocBody840_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody840_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody840_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody840_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody840_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody840_82 : StackLang.HolProg 64 :=
.seq AllocBody840_80 AllocBody840_81

def AllocBody840_83 : StackLang.HolProg 64 :=
.seq AllocBody840_79 AllocBody840_82

def AllocBody840_84 : StackLang.HolProg 64 :=
.seq AllocBody840_78 AllocBody840_83

def AllocBody840_85 : StackLang.HolProg 64 :=
.seq AllocBody840_77 AllocBody840_84

def AllocBody840_86 : StackLang.HolProg 64 :=
.seq AllocBody840_76 AllocBody840_85

def AllocBody840_87 : StackLang.HolProg 64 :=
.seq AllocBody840_75 AllocBody840_86

def AllocBody840_88 : StackLang.HolProg 64 :=
.seq AllocBody840_74 AllocBody840_87

def AllocBody840_89 : StackLang.HolProg 64 :=
.seq AllocBody840_73 AllocBody840_88

def AllocBody840_90 : StackLang.HolProg 64 :=
.seq AllocBody840_72 AllocBody840_89

def AllocBody840_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody840_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody840_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody840_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody840_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody840_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody840_99 : StackLang.HolProg 64 :=
.seq AllocBody840_97 AllocBody840_98

def AllocBody840_100 : StackLang.HolProg 64 :=
.seq AllocBody840_96 AllocBody840_99

def AllocBody840_101 : StackLang.HolProg 64 :=
.seq AllocBody840_95 AllocBody840_100

def AllocBody840_102 : StackLang.HolProg 64 :=
.seq AllocBody840_94 AllocBody840_101

def AllocBody840_103 : StackLang.HolProg 64 :=
.seq AllocBody840_93 AllocBody840_102

def AllocBody840_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody840_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody840_106 : StackLang.HolProg 64 :=
.seq AllocBody840_104 AllocBody840_105

def AllocBody840_107 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody840_108 : StackLang.HolProg 64 :=
.seq AllocBody840_106 AllocBody840_107

def AllocBody840_109 : StackLang.HolProg 64 :=
.call (some (AllocBody840_103, 0, 840, 4)) (Sum.inl 77) (some (AllocBody840_108, 840, 5))

def AllocBody840_110 : StackLang.HolProg 64 :=
.seq AllocBody840_92 AllocBody840_109

def AllocBody840_111 : StackLang.HolProg 64 :=
.seq AllocBody840_91 AllocBody840_110

def AllocBody840_112 : StackLang.HolProg 64 :=
.seq AllocBody840_90 AllocBody840_111

def AllocBody840_113 : StackLang.HolProg 64 :=
.seq AllocBody840_71 AllocBody840_112

def AllocBody840_114 : StackLang.HolProg 64 :=
.seq AllocBody840_68 AllocBody840_113

def AllocBody840_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody840_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody840_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody840_118 : StackLang.HolProg 64 :=
.seq AllocBody840_116 AllocBody840_117

def AllocBody840_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4208#64)

def AllocBody840_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody840_122 : StackLang.HolProg 64 :=
.seq AllocBody840_120 AllocBody840_121

def AllocBody840_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody840_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody840_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody840_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 840 7

def AllocBody840_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody840_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody840_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody840_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody840_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody840_133 : StackLang.HolProg 64 :=
.seq AllocBody840_131 AllocBody840_132

def AllocBody840_134 : StackLang.HolProg 64 :=
.seq AllocBody840_130 AllocBody840_133

def AllocBody840_135 : StackLang.HolProg 64 :=
.seq AllocBody840_129 AllocBody840_134

def AllocBody840_136 : StackLang.HolProg 64 :=
.seq AllocBody840_128 AllocBody840_135

def AllocBody840_137 : StackLang.HolProg 64 :=
.seq AllocBody840_127 AllocBody840_136

def AllocBody840_138 : StackLang.HolProg 64 :=
.seq AllocBody840_126 AllocBody840_137

def AllocBody840_139 : StackLang.HolProg 64 :=
.seq AllocBody840_125 AllocBody840_138

def AllocBody840_140 : StackLang.HolProg 64 :=
.seq AllocBody840_124 AllocBody840_139

def AllocBody840_141 : StackLang.HolProg 64 :=
.seq AllocBody840_123 AllocBody840_140

def AllocBody840_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody840_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody840_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody840_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody840_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody840_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody840_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody840_151 : StackLang.HolProg 64 :=
.seq AllocBody840_149 AllocBody840_150

def AllocBody840_152 : StackLang.HolProg 64 :=
.seq AllocBody840_148 AllocBody840_151

def AllocBody840_153 : StackLang.HolProg 64 :=
.seq AllocBody840_147 AllocBody840_152

def AllocBody840_154 : StackLang.HolProg 64 :=
.seq AllocBody840_146 AllocBody840_153

def AllocBody840_155 : StackLang.HolProg 64 :=
.seq AllocBody840_145 AllocBody840_154

def AllocBody840_156 : StackLang.HolProg 64 :=
.seq AllocBody840_144 AllocBody840_155

def AllocBody840_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody840_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody840_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody840_160 : StackLang.HolProg 64 :=
.seq AllocBody840_158 AllocBody840_159

def AllocBody840_161 : StackLang.HolProg 64 :=
.seq AllocBody840_157 AllocBody840_160

def AllocBody840_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody840_163 : StackLang.HolProg 64 :=
.seq AllocBody840_161 AllocBody840_162

def AllocBody840_164 : StackLang.HolProg 64 :=
.call (some (AllocBody840_156, 0, 840, 6)) (Sum.inl 178) (some (AllocBody840_163, 840, 7))

def AllocBody840_165 : StackLang.HolProg 64 :=
.seq AllocBody840_143 AllocBody840_164

def AllocBody840_166 : StackLang.HolProg 64 :=
.seq AllocBody840_142 AllocBody840_165

def AllocBody840_167 : StackLang.HolProg 64 :=
.seq AllocBody840_141 AllocBody840_166

def AllocBody840_168 : StackLang.HolProg 64 :=
.seq AllocBody840_122 AllocBody840_167

def AllocBody840_169 : StackLang.HolProg 64 :=
.seq AllocBody840_119 AllocBody840_168

def AllocBody840_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody840_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody840_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody840_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody840_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody840_176 : StackLang.HolProg 64 :=
.seq AllocBody840_174 AllocBody840_175

def AllocBody840_177 : StackLang.HolProg 64 :=
.seq AllocBody840_173 AllocBody840_176

def AllocBody840_178 : StackLang.HolProg 64 :=
.seq AllocBody840_172 AllocBody840_177

def AllocBody840_179 : StackLang.HolProg 64 :=
.seq AllocBody840_171 AllocBody840_178

def AllocBody840_180 : StackLang.HolProg 64 :=
.seq AllocBody840_170 AllocBody840_179

def AllocBody840_181 : StackLang.HolProg 64 :=
.seq AllocBody840_169 AllocBody840_180

def AllocBody840_182 : StackLang.HolProg 64 :=
.seq AllocBody840_118 AllocBody840_181

def AllocBody840_183 : StackLang.HolProg 64 :=
.seq AllocBody840_115 AllocBody840_182

def AllocBody840_184 : StackLang.HolProg 64 :=
.seq AllocBody840_114 AllocBody840_183

def AllocBody840_185 : StackLang.HolProg 64 :=
.seq AllocBody840_67 AllocBody840_184

def AllocBody840_186 : StackLang.HolProg 64 :=
.seq AllocBody840_62 AllocBody840_185

def AllocBody840_187 : StackLang.HolProg 64 :=
.seq AllocBody840_61 AllocBody840_186

def AllocBody840_188 : StackLang.HolProg 64 :=
.seq AllocBody840_60 AllocBody840_187

def AllocBody840_189 : StackLang.HolProg 64 :=
.seq AllocBody840_59 AllocBody840_188

def AllocBody840_190 : StackLang.HolProg 64 :=
.seq AllocBody840_58 AllocBody840_189

def AllocBody840_191 : StackLang.HolProg 64 :=
.seq AllocBody840_57 AllocBody840_190

def AllocBody840_192 : StackLang.HolProg 64 :=
.seq AllocBody840_8 AllocBody840_191

def AllocBody840_193 : StackLang.HolProg 64 :=
.seq AllocBody840_3 AllocBody840_192

def AllocBody840_194 : StackLang.HolProg 64 :=
.seq AllocBody840_2 AllocBody840_193

def AllocBody840_195 : StackLang.HolProg 64 :=
.seq AllocBody840_1 AllocBody840_194

def AllocBody840_196 : StackLang.HolProg 64 :=
.seq AllocBody840_0 AllocBody840_195

def Alloc840 : Nat × StackLang.HolProg 64 := (840, AllocBody840_196)
theorem Alloc840_eq : StackAlloc.progComp (840, raw840) = Alloc840 := by
  kernel_rfl
#print axioms Alloc840_eq
end InitECandidate.Proofs.BackendStages
