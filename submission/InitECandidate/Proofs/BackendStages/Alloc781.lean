import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw781
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody781_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody781_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody781_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody781_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody781_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody781_6 : StackLang.HolProg 64 :=
.seq AllocBody781_4 AllocBody781_5

def AllocBody781_7 : StackLang.HolProg 64 :=
.seq AllocBody781_3 AllocBody781_6

def AllocBody781_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3547#64)

def AllocBody781_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody781_11 : StackLang.HolProg 64 :=
.seq AllocBody781_9 AllocBody781_10

def AllocBody781_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody781_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody781_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody781_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 781 3

def AllocBody781_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody781_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody781_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody781_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody781_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody781_22 : StackLang.HolProg 64 :=
.seq AllocBody781_20 AllocBody781_21

def AllocBody781_23 : StackLang.HolProg 64 :=
.seq AllocBody781_19 AllocBody781_22

def AllocBody781_24 : StackLang.HolProg 64 :=
.seq AllocBody781_18 AllocBody781_23

def AllocBody781_25 : StackLang.HolProg 64 :=
.seq AllocBody781_17 AllocBody781_24

def AllocBody781_26 : StackLang.HolProg 64 :=
.seq AllocBody781_16 AllocBody781_25

def AllocBody781_27 : StackLang.HolProg 64 :=
.seq AllocBody781_15 AllocBody781_26

def AllocBody781_28 : StackLang.HolProg 64 :=
.seq AllocBody781_14 AllocBody781_27

def AllocBody781_29 : StackLang.HolProg 64 :=
.seq AllocBody781_13 AllocBody781_28

def AllocBody781_30 : StackLang.HolProg 64 :=
.seq AllocBody781_12 AllocBody781_29

def AllocBody781_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody781_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody781_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody781_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody781_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody781_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody781_39 : StackLang.HolProg 64 :=
.seq AllocBody781_37 AllocBody781_38

def AllocBody781_40 : StackLang.HolProg 64 :=
.seq AllocBody781_36 AllocBody781_39

def AllocBody781_41 : StackLang.HolProg 64 :=
.seq AllocBody781_35 AllocBody781_40

def AllocBody781_42 : StackLang.HolProg 64 :=
.seq AllocBody781_34 AllocBody781_41

def AllocBody781_43 : StackLang.HolProg 64 :=
.seq AllocBody781_33 AllocBody781_42

def AllocBody781_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody781_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody781_46 : StackLang.HolProg 64 :=
.seq AllocBody781_44 AllocBody781_45

def AllocBody781_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody781_48 : StackLang.HolProg 64 :=
.seq AllocBody781_46 AllocBody781_47

def AllocBody781_49 : StackLang.HolProg 64 :=
.call (some (AllocBody781_43, 0, 781, 2)) (Sum.inl 729) (some (AllocBody781_48, 781, 3))

def AllocBody781_50 : StackLang.HolProg 64 :=
.seq AllocBody781_32 AllocBody781_49

def AllocBody781_51 : StackLang.HolProg 64 :=
.seq AllocBody781_31 AllocBody781_50

def AllocBody781_52 : StackLang.HolProg 64 :=
.seq AllocBody781_30 AllocBody781_51

def AllocBody781_53 : StackLang.HolProg 64 :=
.seq AllocBody781_11 AllocBody781_52

def AllocBody781_54 : StackLang.HolProg 64 :=
.seq AllocBody781_8 AllocBody781_53

def AllocBody781_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody781_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody781_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody781_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody781_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody781_62 : StackLang.HolProg 64 :=
.seq AllocBody781_60 AllocBody781_61

def AllocBody781_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3548#64)

def AllocBody781_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody781_66 : StackLang.HolProg 64 :=
.seq AllocBody781_64 AllocBody781_65

def AllocBody781_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody781_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody781_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody781_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 781 5

def AllocBody781_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody781_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody781_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody781_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody781_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody781_77 : StackLang.HolProg 64 :=
.seq AllocBody781_75 AllocBody781_76

def AllocBody781_78 : StackLang.HolProg 64 :=
.seq AllocBody781_74 AllocBody781_77

def AllocBody781_79 : StackLang.HolProg 64 :=
.seq AllocBody781_73 AllocBody781_78

def AllocBody781_80 : StackLang.HolProg 64 :=
.seq AllocBody781_72 AllocBody781_79

def AllocBody781_81 : StackLang.HolProg 64 :=
.seq AllocBody781_71 AllocBody781_80

def AllocBody781_82 : StackLang.HolProg 64 :=
.seq AllocBody781_70 AllocBody781_81

def AllocBody781_83 : StackLang.HolProg 64 :=
.seq AllocBody781_69 AllocBody781_82

def AllocBody781_84 : StackLang.HolProg 64 :=
.seq AllocBody781_68 AllocBody781_83

def AllocBody781_85 : StackLang.HolProg 64 :=
.seq AllocBody781_67 AllocBody781_84

def AllocBody781_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody781_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody781_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody781_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody781_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody781_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody781_94 : StackLang.HolProg 64 :=
.seq AllocBody781_92 AllocBody781_93

def AllocBody781_95 : StackLang.HolProg 64 :=
.seq AllocBody781_91 AllocBody781_94

def AllocBody781_96 : StackLang.HolProg 64 :=
.seq AllocBody781_90 AllocBody781_95

def AllocBody781_97 : StackLang.HolProg 64 :=
.seq AllocBody781_89 AllocBody781_96

def AllocBody781_98 : StackLang.HolProg 64 :=
.seq AllocBody781_88 AllocBody781_97

def AllocBody781_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody781_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody781_101 : StackLang.HolProg 64 :=
.seq AllocBody781_99 AllocBody781_100

def AllocBody781_102 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody781_103 : StackLang.HolProg 64 :=
.seq AllocBody781_101 AllocBody781_102

def AllocBody781_104 : StackLang.HolProg 64 :=
.call (some (AllocBody781_98, 0, 781, 4)) (Sum.inl 729) (some (AllocBody781_103, 781, 5))

def AllocBody781_105 : StackLang.HolProg 64 :=
.seq AllocBody781_87 AllocBody781_104

def AllocBody781_106 : StackLang.HolProg 64 :=
.seq AllocBody781_86 AllocBody781_105

def AllocBody781_107 : StackLang.HolProg 64 :=
.seq AllocBody781_85 AllocBody781_106

def AllocBody781_108 : StackLang.HolProg 64 :=
.seq AllocBody781_66 AllocBody781_107

def AllocBody781_109 : StackLang.HolProg 64 :=
.seq AllocBody781_63 AllocBody781_108

def AllocBody781_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody781_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_112 : StackLang.HolProg 64 :=
.seq AllocBody781_110 AllocBody781_111

def AllocBody781_113 : StackLang.HolProg 64 :=
.seq AllocBody781_109 AllocBody781_112

def AllocBody781_114 : StackLang.HolProg 64 :=
.seq AllocBody781_62 AllocBody781_113

def AllocBody781_115 : StackLang.HolProg 64 :=
.seq AllocBody781_59 AllocBody781_114

def AllocBody781_116 : StackLang.HolProg 64 :=
.seq AllocBody781_58 AllocBody781_115

def AllocBody781_117 : StackLang.HolProg 64 :=
.seq AllocBody781_57 AllocBody781_116

def AllocBody781_118 : StackLang.HolProg 64 :=
.seq AllocBody781_56 AllocBody781_117

def AllocBody781_119 : StackLang.HolProg 64 :=
.seq AllocBody781_55 AllocBody781_118

def AllocBody781_120 : StackLang.HolProg 64 :=
.seq AllocBody781_54 AllocBody781_119

def AllocBody781_121 : StackLang.HolProg 64 :=
.seq AllocBody781_7 AllocBody781_120

def AllocBody781_122 : StackLang.HolProg 64 :=
.seq AllocBody781_2 AllocBody781_121

def AllocBody781_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody781_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody781_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody781_126 : StackLang.HolProg 64 :=
.seq AllocBody781_124 AllocBody781_125

def AllocBody781_127 : StackLang.HolProg 64 :=
.seq AllocBody781_123 AllocBody781_126

def AllocBody781_128 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody781_122 AllocBody781_127

def AllocBody781_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody781_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody781_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody781_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3549#64)

def AllocBody781_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody781_138 : StackLang.HolProg 64 :=
.seq AllocBody781_136 AllocBody781_137

def AllocBody781_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody781_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody781_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody781_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 781 7

def AllocBody781_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody781_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody781_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody781_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody781_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody781_149 : StackLang.HolProg 64 :=
.seq AllocBody781_147 AllocBody781_148

def AllocBody781_150 : StackLang.HolProg 64 :=
.seq AllocBody781_146 AllocBody781_149

def AllocBody781_151 : StackLang.HolProg 64 :=
.seq AllocBody781_145 AllocBody781_150

def AllocBody781_152 : StackLang.HolProg 64 :=
.seq AllocBody781_144 AllocBody781_151

def AllocBody781_153 : StackLang.HolProg 64 :=
.seq AllocBody781_143 AllocBody781_152

def AllocBody781_154 : StackLang.HolProg 64 :=
.seq AllocBody781_142 AllocBody781_153

def AllocBody781_155 : StackLang.HolProg 64 :=
.seq AllocBody781_141 AllocBody781_154

def AllocBody781_156 : StackLang.HolProg 64 :=
.seq AllocBody781_140 AllocBody781_155

def AllocBody781_157 : StackLang.HolProg 64 :=
.seq AllocBody781_139 AllocBody781_156

def AllocBody781_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody781_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody781_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody781_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody781_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody781_165 : StackLang.HolProg 64 :=
.seq AllocBody781_163 AllocBody781_164

def AllocBody781_166 : StackLang.HolProg 64 :=
.seq AllocBody781_162 AllocBody781_165

def AllocBody781_167 : StackLang.HolProg 64 :=
.seq AllocBody781_161 AllocBody781_166

def AllocBody781_168 : StackLang.HolProg 64 :=
.seq AllocBody781_160 AllocBody781_167

def AllocBody781_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody781_170 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody781_171 : StackLang.HolProg 64 :=
.seq AllocBody781_169 AllocBody781_170

def AllocBody781_172 : StackLang.HolProg 64 :=
.call (some (AllocBody781_168, 0, 781, 6)) (Sum.inl 736) (some (AllocBody781_171, 781, 7))

def AllocBody781_173 : StackLang.HolProg 64 :=
.seq AllocBody781_159 AllocBody781_172

def AllocBody781_174 : StackLang.HolProg 64 :=
.seq AllocBody781_158 AllocBody781_173

def AllocBody781_175 : StackLang.HolProg 64 :=
.seq AllocBody781_157 AllocBody781_174

def AllocBody781_176 : StackLang.HolProg 64 :=
.seq AllocBody781_138 AllocBody781_175

def AllocBody781_177 : StackLang.HolProg 64 :=
.seq AllocBody781_135 AllocBody781_176

def AllocBody781_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody781_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody781_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody781_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody781_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody781_183 : StackLang.HolProg 64 :=
.seq AllocBody781_181 AllocBody781_182

def AllocBody781_184 : StackLang.HolProg 64 :=
.seq AllocBody781_180 AllocBody781_183

def AllocBody781_185 : StackLang.HolProg 64 :=
.seq AllocBody781_179 AllocBody781_184

def AllocBody781_186 : StackLang.HolProg 64 :=
.seq AllocBody781_178 AllocBody781_185

def AllocBody781_187 : StackLang.HolProg 64 :=
.seq AllocBody781_177 AllocBody781_186

def AllocBody781_188 : StackLang.HolProg 64 :=
.seq AllocBody781_134 AllocBody781_187

def AllocBody781_189 : StackLang.HolProg 64 :=
.seq AllocBody781_133 AllocBody781_188

def AllocBody781_190 : StackLang.HolProg 64 :=
.seq AllocBody781_132 AllocBody781_189

def AllocBody781_191 : StackLang.HolProg 64 :=
.seq AllocBody781_131 AllocBody781_190

def AllocBody781_192 : StackLang.HolProg 64 :=
.seq AllocBody781_130 AllocBody781_191

def AllocBody781_193 : StackLang.HolProg 64 :=
.seq AllocBody781_129 AllocBody781_192

def AllocBody781_194 : StackLang.HolProg 64 :=
.seq AllocBody781_128 AllocBody781_193

def AllocBody781_195 : StackLang.HolProg 64 :=
.seq AllocBody781_1 AllocBody781_194

def AllocBody781_196 : StackLang.HolProg 64 :=
.seq AllocBody781_0 AllocBody781_195

def Alloc781 : Nat × StackLang.HolProg 64 := (781, AllocBody781_196)
theorem Alloc781_eq : StackAlloc.progComp (781, raw781) = Alloc781 := by
  kernel_rfl
#print axioms Alloc781_eq
end InitECandidate.Proofs.BackendStages
