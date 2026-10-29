import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw432
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody432_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody432_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody432_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody432_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody432_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody432_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody432_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody432_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody432_9 : StackLang.HolProg 64 :=
.seq AllocBody432_7 AllocBody432_8

def AllocBody432_10 : StackLang.HolProg 64 :=
.seq AllocBody432_6 AllocBody432_9

def AllocBody432_11 : StackLang.HolProg 64 :=
.seq AllocBody432_5 AllocBody432_10

def AllocBody432_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody432_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody432_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody432_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody432_17 : StackLang.HolProg 64 :=
.seq AllocBody432_15 AllocBody432_16

def AllocBody432_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody432_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody432_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody432_21 : StackLang.HolProg 64 :=
.seq AllocBody432_19 AllocBody432_20

def AllocBody432_22 : StackLang.HolProg 64 :=
.seq AllocBody432_18 AllocBody432_21

def AllocBody432_23 : StackLang.HolProg 64 :=
.seq AllocBody432_17 AllocBody432_22

def AllocBody432_24 : StackLang.HolProg 64 :=
.seq AllocBody432_14 AllocBody432_23

def AllocBody432_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1301#64)

def AllocBody432_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody432_28 : StackLang.HolProg 64 :=
.seq AllocBody432_26 AllocBody432_27

def AllocBody432_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody432_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody432_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody432_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 432 3

def AllocBody432_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody432_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody432_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody432_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody432_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody432_39 : StackLang.HolProg 64 :=
.seq AllocBody432_37 AllocBody432_38

def AllocBody432_40 : StackLang.HolProg 64 :=
.seq AllocBody432_36 AllocBody432_39

def AllocBody432_41 : StackLang.HolProg 64 :=
.seq AllocBody432_35 AllocBody432_40

def AllocBody432_42 : StackLang.HolProg 64 :=
.seq AllocBody432_34 AllocBody432_41

def AllocBody432_43 : StackLang.HolProg 64 :=
.seq AllocBody432_33 AllocBody432_42

def AllocBody432_44 : StackLang.HolProg 64 :=
.seq AllocBody432_32 AllocBody432_43

def AllocBody432_45 : StackLang.HolProg 64 :=
.seq AllocBody432_31 AllocBody432_44

def AllocBody432_46 : StackLang.HolProg 64 :=
.seq AllocBody432_30 AllocBody432_45

def AllocBody432_47 : StackLang.HolProg 64 :=
.seq AllocBody432_29 AllocBody432_46

def AllocBody432_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody432_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody432_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody432_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody432_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody432_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody432_56 : StackLang.HolProg 64 :=
.seq AllocBody432_54 AllocBody432_55

def AllocBody432_57 : StackLang.HolProg 64 :=
.seq AllocBody432_53 AllocBody432_56

def AllocBody432_58 : StackLang.HolProg 64 :=
.seq AllocBody432_52 AllocBody432_57

def AllocBody432_59 : StackLang.HolProg 64 :=
.seq AllocBody432_51 AllocBody432_58

def AllocBody432_60 : StackLang.HolProg 64 :=
.seq AllocBody432_50 AllocBody432_59

def AllocBody432_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody432_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody432_63 : StackLang.HolProg 64 :=
.seq AllocBody432_61 AllocBody432_62

def AllocBody432_64 : StackLang.HolProg 64 :=
.call (some (AllocBody432_60, 0, 432, 2)) (Sum.inl 197) (some (AllocBody432_63, 432, 3))

def AllocBody432_65 : StackLang.HolProg 64 :=
.seq AllocBody432_49 AllocBody432_64

def AllocBody432_66 : StackLang.HolProg 64 :=
.seq AllocBody432_48 AllocBody432_65

def AllocBody432_67 : StackLang.HolProg 64 :=
.seq AllocBody432_47 AllocBody432_66

def AllocBody432_68 : StackLang.HolProg 64 :=
.seq AllocBody432_28 AllocBody432_67

def AllocBody432_69 : StackLang.HolProg 64 :=
.seq AllocBody432_25 AllocBody432_68

def AllocBody432_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody432_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody432_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody432_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody432_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody432_76 : StackLang.HolProg 64 :=
.seq AllocBody432_74 AllocBody432_75

def AllocBody432_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1302#64)

def AllocBody432_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody432_80 : StackLang.HolProg 64 :=
.seq AllocBody432_78 AllocBody432_79

def AllocBody432_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody432_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody432_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody432_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 432 5

def AllocBody432_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody432_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody432_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody432_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody432_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody432_91 : StackLang.HolProg 64 :=
.seq AllocBody432_89 AllocBody432_90

def AllocBody432_92 : StackLang.HolProg 64 :=
.seq AllocBody432_88 AllocBody432_91

def AllocBody432_93 : StackLang.HolProg 64 :=
.seq AllocBody432_87 AllocBody432_92

def AllocBody432_94 : StackLang.HolProg 64 :=
.seq AllocBody432_86 AllocBody432_93

def AllocBody432_95 : StackLang.HolProg 64 :=
.seq AllocBody432_85 AllocBody432_94

def AllocBody432_96 : StackLang.HolProg 64 :=
.seq AllocBody432_84 AllocBody432_95

def AllocBody432_97 : StackLang.HolProg 64 :=
.seq AllocBody432_83 AllocBody432_96

def AllocBody432_98 : StackLang.HolProg 64 :=
.seq AllocBody432_82 AllocBody432_97

def AllocBody432_99 : StackLang.HolProg 64 :=
.seq AllocBody432_81 AllocBody432_98

def AllocBody432_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody432_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody432_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody432_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody432_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody432_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody432_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody432_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody432_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody432_111 : StackLang.HolProg 64 :=
.seq AllocBody432_109 AllocBody432_110

def AllocBody432_112 : StackLang.HolProg 64 :=
.seq AllocBody432_108 AllocBody432_111

def AllocBody432_113 : StackLang.HolProg 64 :=
.seq AllocBody432_107 AllocBody432_112

def AllocBody432_114 : StackLang.HolProg 64 :=
.seq AllocBody432_106 AllocBody432_113

def AllocBody432_115 : StackLang.HolProg 64 :=
.seq AllocBody432_105 AllocBody432_114

def AllocBody432_116 : StackLang.HolProg 64 :=
.seq AllocBody432_104 AllocBody432_115

def AllocBody432_117 : StackLang.HolProg 64 :=
.seq AllocBody432_103 AllocBody432_116

def AllocBody432_118 : StackLang.HolProg 64 :=
.seq AllocBody432_102 AllocBody432_117

def AllocBody432_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody432_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody432_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody432_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody432_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody432_124 : StackLang.HolProg 64 :=
.seq AllocBody432_122 AllocBody432_123

def AllocBody432_125 : StackLang.HolProg 64 :=
.seq AllocBody432_121 AllocBody432_124

def AllocBody432_126 : StackLang.HolProg 64 :=
.seq AllocBody432_120 AllocBody432_125

def AllocBody432_127 : StackLang.HolProg 64 :=
.seq AllocBody432_119 AllocBody432_126

def AllocBody432_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody432_129 : StackLang.HolProg 64 :=
.seq AllocBody432_127 AllocBody432_128

def AllocBody432_130 : StackLang.HolProg 64 :=
.call (some (AllocBody432_118, 0, 432, 4)) (Sum.inl 192) (some (AllocBody432_129, 432, 5))

def AllocBody432_131 : StackLang.HolProg 64 :=
.seq AllocBody432_101 AllocBody432_130

def AllocBody432_132 : StackLang.HolProg 64 :=
.seq AllocBody432_100 AllocBody432_131

def AllocBody432_133 : StackLang.HolProg 64 :=
.seq AllocBody432_99 AllocBody432_132

def AllocBody432_134 : StackLang.HolProg 64 :=
.seq AllocBody432_80 AllocBody432_133

def AllocBody432_135 : StackLang.HolProg 64 :=
.seq AllocBody432_77 AllocBody432_134

def AllocBody432_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody432_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_138 : StackLang.HolProg 64 :=
.seq AllocBody432_136 AllocBody432_137

def AllocBody432_139 : StackLang.HolProg 64 :=
.seq AllocBody432_135 AllocBody432_138

def AllocBody432_140 : StackLang.HolProg 64 :=
.seq AllocBody432_76 AllocBody432_139

def AllocBody432_141 : StackLang.HolProg 64 :=
.seq AllocBody432_73 AllocBody432_140

def AllocBody432_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody432_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody432_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody432_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody432_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody432_147 : StackLang.HolProg 64 :=
.seq AllocBody432_145 AllocBody432_146

def AllocBody432_148 : StackLang.HolProg 64 :=
.seq AllocBody432_144 AllocBody432_147

def AllocBody432_149 : StackLang.HolProg 64 :=
.seq AllocBody432_143 AllocBody432_148

def AllocBody432_150 : StackLang.HolProg 64 :=
.seq AllocBody432_142 AllocBody432_149

def AllocBody432_151 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody432_141 AllocBody432_150

def AllocBody432_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody432_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody432_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody432_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody432_157 : StackLang.HolProg 64 :=
.seq AllocBody432_155 AllocBody432_156

def AllocBody432_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody432_159 : StackLang.HolProg 64 :=
.seq AllocBody432_157 AllocBody432_158

def AllocBody432_160 : StackLang.HolProg 64 :=
.seq AllocBody432_154 AllocBody432_159

def AllocBody432_161 : StackLang.HolProg 64 :=
.seq AllocBody432_153 AllocBody432_160

def AllocBody432_162 : StackLang.HolProg 64 :=
.seq AllocBody432_152 AllocBody432_161

def AllocBody432_163 : StackLang.HolProg 64 :=
.seq AllocBody432_151 AllocBody432_162

def AllocBody432_164 : StackLang.HolProg 64 :=
.seq AllocBody432_72 AllocBody432_163

def AllocBody432_165 : StackLang.HolProg 64 :=
.seq AllocBody432_71 AllocBody432_164

def AllocBody432_166 : StackLang.HolProg 64 :=
.seq AllocBody432_70 AllocBody432_165

def AllocBody432_167 : StackLang.HolProg 64 :=
.seq AllocBody432_69 AllocBody432_166

def AllocBody432_168 : StackLang.HolProg 64 :=
.seq AllocBody432_24 AllocBody432_167

def AllocBody432_169 : StackLang.HolProg 64 :=
.seq AllocBody432_13 AllocBody432_168

def AllocBody432_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody432_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody432_172 : StackLang.HolProg 64 :=
.seq AllocBody432_170 AllocBody432_171

def AllocBody432_173 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody432_169 AllocBody432_172

def AllocBody432_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody432_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody432_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody432_177 : StackLang.HolProg 64 :=
.seq AllocBody432_175 AllocBody432_176

def AllocBody432_178 : StackLang.HolProg 64 :=
.seq AllocBody432_174 AllocBody432_177

def AllocBody432_179 : StackLang.HolProg 64 :=
.seq AllocBody432_173 AllocBody432_178

def AllocBody432_180 : StackLang.HolProg 64 :=
.seq AllocBody432_12 AllocBody432_179

def AllocBody432_181 : StackLang.HolProg 64 :=
.loop AllocBody432_180

def AllocBody432_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody432_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody432_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody432_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody432_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody432_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody432_188 : StackLang.HolProg 64 :=
.seq AllocBody432_186 AllocBody432_187

def AllocBody432_189 : StackLang.HolProg 64 :=
.seq AllocBody432_185 AllocBody432_188

def AllocBody432_190 : StackLang.HolProg 64 :=
.seq AllocBody432_184 AllocBody432_189

def AllocBody432_191 : StackLang.HolProg 64 :=
.seq AllocBody432_183 AllocBody432_190

def AllocBody432_192 : StackLang.HolProg 64 :=
.seq AllocBody432_182 AllocBody432_191

def AllocBody432_193 : StackLang.HolProg 64 :=
.seq AllocBody432_181 AllocBody432_192

def AllocBody432_194 : StackLang.HolProg 64 :=
.seq AllocBody432_11 AllocBody432_193

def AllocBody432_195 : StackLang.HolProg 64 :=
.seq AllocBody432_4 AllocBody432_194

def AllocBody432_196 : StackLang.HolProg 64 :=
.seq AllocBody432_3 AllocBody432_195

def AllocBody432_197 : StackLang.HolProg 64 :=
.seq AllocBody432_2 AllocBody432_196

def AllocBody432_198 : StackLang.HolProg 64 :=
.seq AllocBody432_1 AllocBody432_197

def AllocBody432_199 : StackLang.HolProg 64 :=
.seq AllocBody432_0 AllocBody432_198

def Alloc432 : Nat × StackLang.HolProg 64 := (432, AllocBody432_199)
theorem Alloc432_eq : StackAlloc.progComp (432, raw432) = Alloc432 := by
  kernel_rfl
#print axioms Alloc432_eq
end InitECandidate.Proofs.BackendStages
