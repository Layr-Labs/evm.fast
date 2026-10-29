import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw429
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody429_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody429_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody429_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody429_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody429_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody429_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody429_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody429_7 : StackLang.HolProg 64 :=
.seq AllocBody429_5 AllocBody429_6

def AllocBody429_8 : StackLang.HolProg 64 :=
.seq AllocBody429_4 AllocBody429_7

def AllocBody429_9 : StackLang.HolProg 64 :=
.seq AllocBody429_3 AllocBody429_8

def AllocBody429_10 : StackLang.HolProg 64 :=
.seq AllocBody429_2 AllocBody429_9

def AllocBody429_11 : StackLang.HolProg 64 :=
.seq AllocBody429_1 AllocBody429_10

def AllocBody429_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1287#64)

def AllocBody429_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody429_15 : StackLang.HolProg 64 :=
.seq AllocBody429_13 AllocBody429_14

def AllocBody429_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody429_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody429_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody429_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 429 3

def AllocBody429_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody429_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody429_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody429_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody429_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody429_26 : StackLang.HolProg 64 :=
.seq AllocBody429_24 AllocBody429_25

def AllocBody429_27 : StackLang.HolProg 64 :=
.seq AllocBody429_23 AllocBody429_26

def AllocBody429_28 : StackLang.HolProg 64 :=
.seq AllocBody429_22 AllocBody429_27

def AllocBody429_29 : StackLang.HolProg 64 :=
.seq AllocBody429_21 AllocBody429_28

def AllocBody429_30 : StackLang.HolProg 64 :=
.seq AllocBody429_20 AllocBody429_29

def AllocBody429_31 : StackLang.HolProg 64 :=
.seq AllocBody429_19 AllocBody429_30

def AllocBody429_32 : StackLang.HolProg 64 :=
.seq AllocBody429_18 AllocBody429_31

def AllocBody429_33 : StackLang.HolProg 64 :=
.seq AllocBody429_17 AllocBody429_32

def AllocBody429_34 : StackLang.HolProg 64 :=
.seq AllocBody429_16 AllocBody429_33

def AllocBody429_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody429_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody429_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody429_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody429_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody429_42 : StackLang.HolProg 64 :=
.seq AllocBody429_40 AllocBody429_41

def AllocBody429_43 : StackLang.HolProg 64 :=
.seq AllocBody429_39 AllocBody429_42

def AllocBody429_44 : StackLang.HolProg 64 :=
.seq AllocBody429_38 AllocBody429_43

def AllocBody429_45 : StackLang.HolProg 64 :=
.seq AllocBody429_37 AllocBody429_44

def AllocBody429_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody429_48 : StackLang.HolProg 64 :=
.seq AllocBody429_46 AllocBody429_47

def AllocBody429_49 : StackLang.HolProg 64 :=
.call (some (AllocBody429_45, 0, 429, 2)) (Sum.inl 407) (some (AllocBody429_48, 429, 3))

def AllocBody429_50 : StackLang.HolProg 64 :=
.seq AllocBody429_36 AllocBody429_49

def AllocBody429_51 : StackLang.HolProg 64 :=
.seq AllocBody429_35 AllocBody429_50

def AllocBody429_52 : StackLang.HolProg 64 :=
.seq AllocBody429_34 AllocBody429_51

def AllocBody429_53 : StackLang.HolProg 64 :=
.seq AllocBody429_15 AllocBody429_52

def AllocBody429_54 : StackLang.HolProg 64 :=
.seq AllocBody429_12 AllocBody429_53

def AllocBody429_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody429_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody429_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1288#64)

def AllocBody429_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody429_60 : StackLang.HolProg 64 :=
.seq AllocBody429_58 AllocBody429_59

def AllocBody429_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody429_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody429_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody429_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 429 5

def AllocBody429_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody429_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody429_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody429_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody429_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody429_71 : StackLang.HolProg 64 :=
.seq AllocBody429_69 AllocBody429_70

def AllocBody429_72 : StackLang.HolProg 64 :=
.seq AllocBody429_68 AllocBody429_71

def AllocBody429_73 : StackLang.HolProg 64 :=
.seq AllocBody429_67 AllocBody429_72

def AllocBody429_74 : StackLang.HolProg 64 :=
.seq AllocBody429_66 AllocBody429_73

def AllocBody429_75 : StackLang.HolProg 64 :=
.seq AllocBody429_65 AllocBody429_74

def AllocBody429_76 : StackLang.HolProg 64 :=
.seq AllocBody429_64 AllocBody429_75

def AllocBody429_77 : StackLang.HolProg 64 :=
.seq AllocBody429_63 AllocBody429_76

def AllocBody429_78 : StackLang.HolProg 64 :=
.seq AllocBody429_62 AllocBody429_77

def AllocBody429_79 : StackLang.HolProg 64 :=
.seq AllocBody429_61 AllocBody429_78

def AllocBody429_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody429_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody429_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody429_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody429_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody429_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody429_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody429_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody429_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody429_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody429_92 : StackLang.HolProg 64 :=
.seq AllocBody429_90 AllocBody429_91

def AllocBody429_93 : StackLang.HolProg 64 :=
.seq AllocBody429_89 AllocBody429_92

def AllocBody429_94 : StackLang.HolProg 64 :=
.seq AllocBody429_88 AllocBody429_93

def AllocBody429_95 : StackLang.HolProg 64 :=
.seq AllocBody429_87 AllocBody429_94

def AllocBody429_96 : StackLang.HolProg 64 :=
.seq AllocBody429_86 AllocBody429_95

def AllocBody429_97 : StackLang.HolProg 64 :=
.seq AllocBody429_85 AllocBody429_96

def AllocBody429_98 : StackLang.HolProg 64 :=
.seq AllocBody429_84 AllocBody429_97

def AllocBody429_99 : StackLang.HolProg 64 :=
.seq AllocBody429_83 AllocBody429_98

def AllocBody429_100 : StackLang.HolProg 64 :=
.seq AllocBody429_82 AllocBody429_99

def AllocBody429_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody429_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody429_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody429_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody429_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody429_106 : StackLang.HolProg 64 :=
.seq AllocBody429_104 AllocBody429_105

def AllocBody429_107 : StackLang.HolProg 64 :=
.seq AllocBody429_103 AllocBody429_106

def AllocBody429_108 : StackLang.HolProg 64 :=
.seq AllocBody429_102 AllocBody429_107

def AllocBody429_109 : StackLang.HolProg 64 :=
.seq AllocBody429_101 AllocBody429_108

def AllocBody429_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody429_111 : StackLang.HolProg 64 :=
.seq AllocBody429_109 AllocBody429_110

def AllocBody429_112 : StackLang.HolProg 64 :=
.call (some (AllocBody429_100, 0, 429, 4)) (Sum.inl 395) (some (AllocBody429_111, 429, 5))

def AllocBody429_113 : StackLang.HolProg 64 :=
.seq AllocBody429_81 AllocBody429_112

def AllocBody429_114 : StackLang.HolProg 64 :=
.seq AllocBody429_80 AllocBody429_113

def AllocBody429_115 : StackLang.HolProg 64 :=
.seq AllocBody429_79 AllocBody429_114

def AllocBody429_116 : StackLang.HolProg 64 :=
.seq AllocBody429_60 AllocBody429_115

def AllocBody429_117 : StackLang.HolProg 64 :=
.seq AllocBody429_57 AllocBody429_116

def AllocBody429_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody429_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody429_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody429_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody429_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody429_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody429_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody429_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1289#64)

def AllocBody429_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody429_133 : StackLang.HolProg 64 :=
.seq AllocBody429_131 AllocBody429_132

def AllocBody429_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody429_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody429_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody429_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 429 7

def AllocBody429_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody429_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody429_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody429_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody429_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody429_144 : StackLang.HolProg 64 :=
.seq AllocBody429_142 AllocBody429_143

def AllocBody429_145 : StackLang.HolProg 64 :=
.seq AllocBody429_141 AllocBody429_144

def AllocBody429_146 : StackLang.HolProg 64 :=
.seq AllocBody429_140 AllocBody429_145

def AllocBody429_147 : StackLang.HolProg 64 :=
.seq AllocBody429_139 AllocBody429_146

def AllocBody429_148 : StackLang.HolProg 64 :=
.seq AllocBody429_138 AllocBody429_147

def AllocBody429_149 : StackLang.HolProg 64 :=
.seq AllocBody429_137 AllocBody429_148

def AllocBody429_150 : StackLang.HolProg 64 :=
.seq AllocBody429_136 AllocBody429_149

def AllocBody429_151 : StackLang.HolProg 64 :=
.seq AllocBody429_135 AllocBody429_150

def AllocBody429_152 : StackLang.HolProg 64 :=
.seq AllocBody429_134 AllocBody429_151

def AllocBody429_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody429_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody429_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody429_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody429_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody429_160 : StackLang.HolProg 64 :=
.seq AllocBody429_158 AllocBody429_159

def AllocBody429_161 : StackLang.HolProg 64 :=
.seq AllocBody429_157 AllocBody429_160

def AllocBody429_162 : StackLang.HolProg 64 :=
.seq AllocBody429_156 AllocBody429_161

def AllocBody429_163 : StackLang.HolProg 64 :=
.seq AllocBody429_155 AllocBody429_162

def AllocBody429_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody429_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody429_166 : StackLang.HolProg 64 :=
.seq AllocBody429_164 AllocBody429_165

def AllocBody429_167 : StackLang.HolProg 64 :=
.call (some (AllocBody429_163, 0, 429, 6)) (Sum.inl 423) (some (AllocBody429_166, 429, 7))

def AllocBody429_168 : StackLang.HolProg 64 :=
.seq AllocBody429_154 AllocBody429_167

def AllocBody429_169 : StackLang.HolProg 64 :=
.seq AllocBody429_153 AllocBody429_168

def AllocBody429_170 : StackLang.HolProg 64 :=
.seq AllocBody429_152 AllocBody429_169

def AllocBody429_171 : StackLang.HolProg 64 :=
.seq AllocBody429_133 AllocBody429_170

def AllocBody429_172 : StackLang.HolProg 64 :=
.seq AllocBody429_130 AllocBody429_171

def AllocBody429_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody429_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody429_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody429_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody429_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody429_178 : StackLang.HolProg 64 :=
.seq AllocBody429_176 AllocBody429_177

def AllocBody429_179 : StackLang.HolProg 64 :=
.seq AllocBody429_175 AllocBody429_178

def AllocBody429_180 : StackLang.HolProg 64 :=
.seq AllocBody429_174 AllocBody429_179

def AllocBody429_181 : StackLang.HolProg 64 :=
.seq AllocBody429_173 AllocBody429_180

def AllocBody429_182 : StackLang.HolProg 64 :=
.seq AllocBody429_172 AllocBody429_181

def AllocBody429_183 : StackLang.HolProg 64 :=
.seq AllocBody429_129 AllocBody429_182

def AllocBody429_184 : StackLang.HolProg 64 :=
.seq AllocBody429_128 AllocBody429_183

def AllocBody429_185 : StackLang.HolProg 64 :=
.seq AllocBody429_127 AllocBody429_184

def AllocBody429_186 : StackLang.HolProg 64 :=
.seq AllocBody429_126 AllocBody429_185

def AllocBody429_187 : StackLang.HolProg 64 :=
.seq AllocBody429_125 AllocBody429_186

def AllocBody429_188 : StackLang.HolProg 64 :=
.seq AllocBody429_124 AllocBody429_187

def AllocBody429_189 : StackLang.HolProg 64 :=
.seq AllocBody429_123 AllocBody429_188

def AllocBody429_190 : StackLang.HolProg 64 :=
.seq AllocBody429_122 AllocBody429_189

def AllocBody429_191 : StackLang.HolProg 64 :=
.seq AllocBody429_121 AllocBody429_190

def AllocBody429_192 : StackLang.HolProg 64 :=
.seq AllocBody429_120 AllocBody429_191

def AllocBody429_193 : StackLang.HolProg 64 :=
.seq AllocBody429_119 AllocBody429_192

def AllocBody429_194 : StackLang.HolProg 64 :=
.seq AllocBody429_118 AllocBody429_193

def AllocBody429_195 : StackLang.HolProg 64 :=
.seq AllocBody429_117 AllocBody429_194

def AllocBody429_196 : StackLang.HolProg 64 :=
.seq AllocBody429_56 AllocBody429_195

def AllocBody429_197 : StackLang.HolProg 64 :=
.seq AllocBody429_55 AllocBody429_196

def AllocBody429_198 : StackLang.HolProg 64 :=
.seq AllocBody429_54 AllocBody429_197

def AllocBody429_199 : StackLang.HolProg 64 :=
.seq AllocBody429_11 AllocBody429_198

def AllocBody429_200 : StackLang.HolProg 64 :=
.seq AllocBody429_0 AllocBody429_199

def Alloc429 : Nat × StackLang.HolProg 64 := (429, AllocBody429_200)
theorem Alloc429_eq : StackAlloc.progComp (429, raw429) = Alloc429 := by
  kernel_rfl
#print axioms Alloc429_eq
end InitECandidate.Proofs.BackendStages
