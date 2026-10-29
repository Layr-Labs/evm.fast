import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function781
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody781_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody781_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody781_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody781_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody781_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody781_6 : StackLang.HolProg 64 :=
.seq rawBody781_4 rawBody781_5

def rawBody781_7 : StackLang.HolProg 64 :=
.seq rawBody781_3 rawBody781_6

def rawBody781_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3547#64)

def rawBody781_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody781_11 : StackLang.HolProg 64 :=
.seq rawBody781_9 rawBody781_10

def rawBody781_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody781_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody781_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody781_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 781 3

def rawBody781_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody781_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody781_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody781_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody781_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody781_22 : StackLang.HolProg 64 :=
.seq rawBody781_20 rawBody781_21

def rawBody781_23 : StackLang.HolProg 64 :=
.seq rawBody781_19 rawBody781_22

def rawBody781_24 : StackLang.HolProg 64 :=
.seq rawBody781_18 rawBody781_23

def rawBody781_25 : StackLang.HolProg 64 :=
.seq rawBody781_17 rawBody781_24

def rawBody781_26 : StackLang.HolProg 64 :=
.seq rawBody781_16 rawBody781_25

def rawBody781_27 : StackLang.HolProg 64 :=
.seq rawBody781_15 rawBody781_26

def rawBody781_28 : StackLang.HolProg 64 :=
.seq rawBody781_14 rawBody781_27

def rawBody781_29 : StackLang.HolProg 64 :=
.seq rawBody781_13 rawBody781_28

def rawBody781_30 : StackLang.HolProg 64 :=
.seq rawBody781_12 rawBody781_29

def rawBody781_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody781_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody781_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody781_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody781_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody781_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody781_39 : StackLang.HolProg 64 :=
.seq rawBody781_37 rawBody781_38

def rawBody781_40 : StackLang.HolProg 64 :=
.seq rawBody781_36 rawBody781_39

def rawBody781_41 : StackLang.HolProg 64 :=
.seq rawBody781_35 rawBody781_40

def rawBody781_42 : StackLang.HolProg 64 :=
.seq rawBody781_34 rawBody781_41

def rawBody781_43 : StackLang.HolProg 64 :=
.seq rawBody781_33 rawBody781_42

def rawBody781_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody781_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody781_46 : StackLang.HolProg 64 :=
.seq rawBody781_44 rawBody781_45

def rawBody781_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody781_48 : StackLang.HolProg 64 :=
.seq rawBody781_46 rawBody781_47

def rawBody781_49 : StackLang.HolProg 64 :=
.call (some (rawBody781_43, 0, 781, 2)) (Sum.inl 729) (some (rawBody781_48, 781, 3))

def rawBody781_50 : StackLang.HolProg 64 :=
.seq rawBody781_32 rawBody781_49

def rawBody781_51 : StackLang.HolProg 64 :=
.seq rawBody781_31 rawBody781_50

def rawBody781_52 : StackLang.HolProg 64 :=
.seq rawBody781_30 rawBody781_51

def rawBody781_53 : StackLang.HolProg 64 :=
.seq rawBody781_11 rawBody781_52

def rawBody781_54 : StackLang.HolProg 64 :=
.seq rawBody781_8 rawBody781_53

def rawBody781_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody781_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody781_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody781_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody781_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody781_62 : StackLang.HolProg 64 :=
.seq rawBody781_60 rawBody781_61

def rawBody781_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3548#64)

def rawBody781_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody781_66 : StackLang.HolProg 64 :=
.seq rawBody781_64 rawBody781_65

def rawBody781_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody781_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody781_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody781_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 781 5

def rawBody781_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody781_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody781_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody781_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody781_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody781_77 : StackLang.HolProg 64 :=
.seq rawBody781_75 rawBody781_76

def rawBody781_78 : StackLang.HolProg 64 :=
.seq rawBody781_74 rawBody781_77

def rawBody781_79 : StackLang.HolProg 64 :=
.seq rawBody781_73 rawBody781_78

def rawBody781_80 : StackLang.HolProg 64 :=
.seq rawBody781_72 rawBody781_79

def rawBody781_81 : StackLang.HolProg 64 :=
.seq rawBody781_71 rawBody781_80

def rawBody781_82 : StackLang.HolProg 64 :=
.seq rawBody781_70 rawBody781_81

def rawBody781_83 : StackLang.HolProg 64 :=
.seq rawBody781_69 rawBody781_82

def rawBody781_84 : StackLang.HolProg 64 :=
.seq rawBody781_68 rawBody781_83

def rawBody781_85 : StackLang.HolProg 64 :=
.seq rawBody781_67 rawBody781_84

def rawBody781_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody781_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody781_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody781_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody781_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody781_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody781_94 : StackLang.HolProg 64 :=
.seq rawBody781_92 rawBody781_93

def rawBody781_95 : StackLang.HolProg 64 :=
.seq rawBody781_91 rawBody781_94

def rawBody781_96 : StackLang.HolProg 64 :=
.seq rawBody781_90 rawBody781_95

def rawBody781_97 : StackLang.HolProg 64 :=
.seq rawBody781_89 rawBody781_96

def rawBody781_98 : StackLang.HolProg 64 :=
.seq rawBody781_88 rawBody781_97

def rawBody781_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody781_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody781_101 : StackLang.HolProg 64 :=
.seq rawBody781_99 rawBody781_100

def rawBody781_102 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody781_103 : StackLang.HolProg 64 :=
.seq rawBody781_101 rawBody781_102

def rawBody781_104 : StackLang.HolProg 64 :=
.call (some (rawBody781_98, 0, 781, 4)) (Sum.inl 729) (some (rawBody781_103, 781, 5))

def rawBody781_105 : StackLang.HolProg 64 :=
.seq rawBody781_87 rawBody781_104

def rawBody781_106 : StackLang.HolProg 64 :=
.seq rawBody781_86 rawBody781_105

def rawBody781_107 : StackLang.HolProg 64 :=
.seq rawBody781_85 rawBody781_106

def rawBody781_108 : StackLang.HolProg 64 :=
.seq rawBody781_66 rawBody781_107

def rawBody781_109 : StackLang.HolProg 64 :=
.seq rawBody781_63 rawBody781_108

def rawBody781_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody781_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_112 : StackLang.HolProg 64 :=
.seq rawBody781_110 rawBody781_111

def rawBody781_113 : StackLang.HolProg 64 :=
.seq rawBody781_109 rawBody781_112

def rawBody781_114 : StackLang.HolProg 64 :=
.seq rawBody781_62 rawBody781_113

def rawBody781_115 : StackLang.HolProg 64 :=
.seq rawBody781_59 rawBody781_114

def rawBody781_116 : StackLang.HolProg 64 :=
.seq rawBody781_58 rawBody781_115

def rawBody781_117 : StackLang.HolProg 64 :=
.seq rawBody781_57 rawBody781_116

def rawBody781_118 : StackLang.HolProg 64 :=
.seq rawBody781_56 rawBody781_117

def rawBody781_119 : StackLang.HolProg 64 :=
.seq rawBody781_55 rawBody781_118

def rawBody781_120 : StackLang.HolProg 64 :=
.seq rawBody781_54 rawBody781_119

def rawBody781_121 : StackLang.HolProg 64 :=
.seq rawBody781_7 rawBody781_120

def rawBody781_122 : StackLang.HolProg 64 :=
.seq rawBody781_2 rawBody781_121

def rawBody781_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody781_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody781_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody781_126 : StackLang.HolProg 64 :=
.seq rawBody781_124 rawBody781_125

def rawBody781_127 : StackLang.HolProg 64 :=
.seq rawBody781_123 rawBody781_126

def rawBody781_128 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody781_122 rawBody781_127

def rawBody781_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody781_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody781_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody781_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3549#64)

def rawBody781_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody781_138 : StackLang.HolProg 64 :=
.seq rawBody781_136 rawBody781_137

def rawBody781_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody781_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody781_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody781_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 781 7

def rawBody781_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody781_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody781_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody781_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody781_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody781_149 : StackLang.HolProg 64 :=
.seq rawBody781_147 rawBody781_148

def rawBody781_150 : StackLang.HolProg 64 :=
.seq rawBody781_146 rawBody781_149

def rawBody781_151 : StackLang.HolProg 64 :=
.seq rawBody781_145 rawBody781_150

def rawBody781_152 : StackLang.HolProg 64 :=
.seq rawBody781_144 rawBody781_151

def rawBody781_153 : StackLang.HolProg 64 :=
.seq rawBody781_143 rawBody781_152

def rawBody781_154 : StackLang.HolProg 64 :=
.seq rawBody781_142 rawBody781_153

def rawBody781_155 : StackLang.HolProg 64 :=
.seq rawBody781_141 rawBody781_154

def rawBody781_156 : StackLang.HolProg 64 :=
.seq rawBody781_140 rawBody781_155

def rawBody781_157 : StackLang.HolProg 64 :=
.seq rawBody781_139 rawBody781_156

def rawBody781_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody781_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody781_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody781_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody781_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody781_165 : StackLang.HolProg 64 :=
.seq rawBody781_163 rawBody781_164

def rawBody781_166 : StackLang.HolProg 64 :=
.seq rawBody781_162 rawBody781_165

def rawBody781_167 : StackLang.HolProg 64 :=
.seq rawBody781_161 rawBody781_166

def rawBody781_168 : StackLang.HolProg 64 :=
.seq rawBody781_160 rawBody781_167

def rawBody781_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody781_170 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody781_171 : StackLang.HolProg 64 :=
.seq rawBody781_169 rawBody781_170

def rawBody781_172 : StackLang.HolProg 64 :=
.call (some (rawBody781_168, 0, 781, 6)) (Sum.inl 736) (some (rawBody781_171, 781, 7))

def rawBody781_173 : StackLang.HolProg 64 :=
.seq rawBody781_159 rawBody781_172

def rawBody781_174 : StackLang.HolProg 64 :=
.seq rawBody781_158 rawBody781_173

def rawBody781_175 : StackLang.HolProg 64 :=
.seq rawBody781_157 rawBody781_174

def rawBody781_176 : StackLang.HolProg 64 :=
.seq rawBody781_138 rawBody781_175

def rawBody781_177 : StackLang.HolProg 64 :=
.seq rawBody781_135 rawBody781_176

def rawBody781_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody781_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody781_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody781_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody781_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody781_183 : StackLang.HolProg 64 :=
.seq rawBody781_181 rawBody781_182

def rawBody781_184 : StackLang.HolProg 64 :=
.seq rawBody781_180 rawBody781_183

def rawBody781_185 : StackLang.HolProg 64 :=
.seq rawBody781_179 rawBody781_184

def rawBody781_186 : StackLang.HolProg 64 :=
.seq rawBody781_178 rawBody781_185

def rawBody781_187 : StackLang.HolProg 64 :=
.seq rawBody781_177 rawBody781_186

def rawBody781_188 : StackLang.HolProg 64 :=
.seq rawBody781_134 rawBody781_187

def rawBody781_189 : StackLang.HolProg 64 :=
.seq rawBody781_133 rawBody781_188

def rawBody781_190 : StackLang.HolProg 64 :=
.seq rawBody781_132 rawBody781_189

def rawBody781_191 : StackLang.HolProg 64 :=
.seq rawBody781_131 rawBody781_190

def rawBody781_192 : StackLang.HolProg 64 :=
.seq rawBody781_130 rawBody781_191

def rawBody781_193 : StackLang.HolProg 64 :=
.seq rawBody781_129 rawBody781_192

def rawBody781_194 : StackLang.HolProg 64 :=
.seq rawBody781_128 rawBody781_193

def rawBody781_195 : StackLang.HolProg 64 :=
.seq rawBody781_1 rawBody781_194

def rawBody781_196 : StackLang.HolProg 64 :=
.seq rawBody781_0 rawBody781_195

def raw781 : StackLang.HolProg 64 := rawBody781_196
theorem raw781_eq : StackRawCall.compTop RawInfo.rawInfo (function781 (.list [])).1 = raw781 := by
  kernel_rfl
#print axioms raw781_eq
end InitECandidate.Proofs.BackendStages
