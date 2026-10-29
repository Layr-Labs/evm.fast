import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function242
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody242_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody242_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody242_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody242_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody242_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody242_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody242_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody242_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody242_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def rawBody242_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody242_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody242_11 : StackLang.HolProg 64 :=
.seq rawBody242_9 rawBody242_10

def rawBody242_12 : StackLang.HolProg 64 :=
.seq rawBody242_8 rawBody242_11

def rawBody242_13 : StackLang.HolProg 64 :=
.seq rawBody242_7 rawBody242_12

def rawBody242_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 470#64)

def rawBody242_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody242_17 : StackLang.HolProg 64 :=
.seq rawBody242_15 rawBody242_16

def rawBody242_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody242_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody242_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody242_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 3

def rawBody242_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody242_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody242_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody242_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody242_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody242_28 : StackLang.HolProg 64 :=
.seq rawBody242_26 rawBody242_27

def rawBody242_29 : StackLang.HolProg 64 :=
.seq rawBody242_25 rawBody242_28

def rawBody242_30 : StackLang.HolProg 64 :=
.seq rawBody242_24 rawBody242_29

def rawBody242_31 : StackLang.HolProg 64 :=
.seq rawBody242_23 rawBody242_30

def rawBody242_32 : StackLang.HolProg 64 :=
.seq rawBody242_22 rawBody242_31

def rawBody242_33 : StackLang.HolProg 64 :=
.seq rawBody242_21 rawBody242_32

def rawBody242_34 : StackLang.HolProg 64 :=
.seq rawBody242_20 rawBody242_33

def rawBody242_35 : StackLang.HolProg 64 :=
.seq rawBody242_19 rawBody242_34

def rawBody242_36 : StackLang.HolProg 64 :=
.seq rawBody242_18 rawBody242_35

def rawBody242_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody242_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody242_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody242_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody242_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody242_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody242_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody242_46 : StackLang.HolProg 64 :=
.seq rawBody242_44 rawBody242_45

def rawBody242_47 : StackLang.HolProg 64 :=
.seq rawBody242_43 rawBody242_46

def rawBody242_48 : StackLang.HolProg 64 :=
.seq rawBody242_42 rawBody242_47

def rawBody242_49 : StackLang.HolProg 64 :=
.seq rawBody242_41 rawBody242_48

def rawBody242_50 : StackLang.HolProg 64 :=
.seq rawBody242_40 rawBody242_49

def rawBody242_51 : StackLang.HolProg 64 :=
.seq rawBody242_39 rawBody242_50

def rawBody242_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody242_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody242_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody242_55 : StackLang.HolProg 64 :=
.seq rawBody242_53 rawBody242_54

def rawBody242_56 : StackLang.HolProg 64 :=
.seq rawBody242_52 rawBody242_55

def rawBody242_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody242_58 : StackLang.HolProg 64 :=
.seq rawBody242_56 rawBody242_57

def rawBody242_59 : StackLang.HolProg 64 :=
.call (some (rawBody242_51, 0, 242, 2)) (Sum.inl 78) (some (rawBody242_58, 242, 3))

def rawBody242_60 : StackLang.HolProg 64 :=
.seq rawBody242_38 rawBody242_59

def rawBody242_61 : StackLang.HolProg 64 :=
.seq rawBody242_37 rawBody242_60

def rawBody242_62 : StackLang.HolProg 64 :=
.seq rawBody242_36 rawBody242_61

def rawBody242_63 : StackLang.HolProg 64 :=
.seq rawBody242_17 rawBody242_62

def rawBody242_64 : StackLang.HolProg 64 :=
.seq rawBody242_14 rawBody242_63

def rawBody242_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody242_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody242_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 471#64)

def rawBody242_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody242_70 : StackLang.HolProg 64 :=
.seq rawBody242_68 rawBody242_69

def rawBody242_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody242_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody242_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody242_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 5

def rawBody242_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody242_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody242_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody242_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody242_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody242_81 : StackLang.HolProg 64 :=
.seq rawBody242_79 rawBody242_80

def rawBody242_82 : StackLang.HolProg 64 :=
.seq rawBody242_78 rawBody242_81

def rawBody242_83 : StackLang.HolProg 64 :=
.seq rawBody242_77 rawBody242_82

def rawBody242_84 : StackLang.HolProg 64 :=
.seq rawBody242_76 rawBody242_83

def rawBody242_85 : StackLang.HolProg 64 :=
.seq rawBody242_75 rawBody242_84

def rawBody242_86 : StackLang.HolProg 64 :=
.seq rawBody242_74 rawBody242_85

def rawBody242_87 : StackLang.HolProg 64 :=
.seq rawBody242_73 rawBody242_86

def rawBody242_88 : StackLang.HolProg 64 :=
.seq rawBody242_72 rawBody242_87

def rawBody242_89 : StackLang.HolProg 64 :=
.seq rawBody242_71 rawBody242_88

def rawBody242_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody242_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody242_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody242_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody242_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody242_97 : StackLang.HolProg 64 :=
.seq rawBody242_95 rawBody242_96

def rawBody242_98 : StackLang.HolProg 64 :=
.seq rawBody242_94 rawBody242_97

def rawBody242_99 : StackLang.HolProg 64 :=
.seq rawBody242_93 rawBody242_98

def rawBody242_100 : StackLang.HolProg 64 :=
.seq rawBody242_92 rawBody242_99

def rawBody242_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody242_102 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody242_103 : StackLang.HolProg 64 :=
.seq rawBody242_101 rawBody242_102

def rawBody242_104 : StackLang.HolProg 64 :=
.call (some (rawBody242_100, 0, 242, 4)) (Sum.inl 77) (some (rawBody242_103, 242, 5))

def rawBody242_105 : StackLang.HolProg 64 :=
.seq rawBody242_91 rawBody242_104

def rawBody242_106 : StackLang.HolProg 64 :=
.seq rawBody242_90 rawBody242_105

def rawBody242_107 : StackLang.HolProg 64 :=
.seq rawBody242_89 rawBody242_106

def rawBody242_108 : StackLang.HolProg 64 :=
.seq rawBody242_70 rawBody242_107

def rawBody242_109 : StackLang.HolProg 64 :=
.seq rawBody242_67 rawBody242_108

def rawBody242_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody242_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody242_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody242_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody242_115 : StackLang.HolProg 64 :=
.seq rawBody242_113 rawBody242_114

def rawBody242_116 : StackLang.HolProg 64 :=
.seq rawBody242_112 rawBody242_115

def rawBody242_117 : StackLang.HolProg 64 :=
.seq rawBody242_111 rawBody242_116

def rawBody242_118 : StackLang.HolProg 64 :=
.seq rawBody242_110 rawBody242_117

def rawBody242_119 : StackLang.HolProg 64 :=
.seq rawBody242_109 rawBody242_118

def rawBody242_120 : StackLang.HolProg 64 :=
.seq rawBody242_66 rawBody242_119

def rawBody242_121 : StackLang.HolProg 64 :=
.seq rawBody242_65 rawBody242_120

def rawBody242_122 : StackLang.HolProg 64 :=
.seq rawBody242_64 rawBody242_121

def rawBody242_123 : StackLang.HolProg 64 :=
.seq rawBody242_13 rawBody242_122

def rawBody242_124 : StackLang.HolProg 64 :=
.seq rawBody242_6 rawBody242_123

def rawBody242_125 : StackLang.HolProg 64 :=
.seq rawBody242_5 rawBody242_124

def rawBody242_126 : StackLang.HolProg 64 :=
.seq rawBody242_4 rawBody242_125

def rawBody242_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody242_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody242_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody242_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody242_131 : StackLang.HolProg 64 :=
.seq rawBody242_129 rawBody242_130

def rawBody242_132 : StackLang.HolProg 64 :=
.seq rawBody242_128 rawBody242_131

def rawBody242_133 : StackLang.HolProg 64 :=
.seq rawBody242_127 rawBody242_132

def rawBody242_134 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody242_126 rawBody242_133

def rawBody242_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody242_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody242_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 472#64)

def rawBody242_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody242_141 : StackLang.HolProg 64 :=
.seq rawBody242_139 rawBody242_140

def rawBody242_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody242_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody242_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody242_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 7

def rawBody242_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody242_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody242_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody242_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody242_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody242_152 : StackLang.HolProg 64 :=
.seq rawBody242_150 rawBody242_151

def rawBody242_153 : StackLang.HolProg 64 :=
.seq rawBody242_149 rawBody242_152

def rawBody242_154 : StackLang.HolProg 64 :=
.seq rawBody242_148 rawBody242_153

def rawBody242_155 : StackLang.HolProg 64 :=
.seq rawBody242_147 rawBody242_154

def rawBody242_156 : StackLang.HolProg 64 :=
.seq rawBody242_146 rawBody242_155

def rawBody242_157 : StackLang.HolProg 64 :=
.seq rawBody242_145 rawBody242_156

def rawBody242_158 : StackLang.HolProg 64 :=
.seq rawBody242_144 rawBody242_157

def rawBody242_159 : StackLang.HolProg 64 :=
.seq rawBody242_143 rawBody242_158

def rawBody242_160 : StackLang.HolProg 64 :=
.seq rawBody242_142 rawBody242_159

def rawBody242_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody242_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody242_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody242_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody242_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody242_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody242_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody242_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody242_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody242_172 : StackLang.HolProg 64 :=
.seq rawBody242_170 rawBody242_171

def rawBody242_173 : StackLang.HolProg 64 :=
.seq rawBody242_169 rawBody242_172

def rawBody242_174 : StackLang.HolProg 64 :=
.seq rawBody242_168 rawBody242_173

def rawBody242_175 : StackLang.HolProg 64 :=
.seq rawBody242_167 rawBody242_174

def rawBody242_176 : StackLang.HolProg 64 :=
.seq rawBody242_166 rawBody242_175

def rawBody242_177 : StackLang.HolProg 64 :=
.seq rawBody242_165 rawBody242_176

def rawBody242_178 : StackLang.HolProg 64 :=
.seq rawBody242_164 rawBody242_177

def rawBody242_179 : StackLang.HolProg 64 :=
.seq rawBody242_163 rawBody242_178

def rawBody242_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody242_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody242_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody242_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody242_184 : StackLang.HolProg 64 :=
.seq rawBody242_182 rawBody242_183

def rawBody242_185 : StackLang.HolProg 64 :=
.seq rawBody242_181 rawBody242_184

def rawBody242_186 : StackLang.HolProg 64 :=
.seq rawBody242_180 rawBody242_185

def rawBody242_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody242_188 : StackLang.HolProg 64 :=
.seq rawBody242_186 rawBody242_187

def rawBody242_189 : StackLang.HolProg 64 :=
.call (some (rawBody242_179, 0, 242, 6)) (Sum.inl 69) (some (rawBody242_188, 242, 7))

def rawBody242_190 : StackLang.HolProg 64 :=
.seq rawBody242_162 rawBody242_189

def rawBody242_191 : StackLang.HolProg 64 :=
.seq rawBody242_161 rawBody242_190

def rawBody242_192 : StackLang.HolProg 64 :=
.seq rawBody242_160 rawBody242_191

def rawBody242_193 : StackLang.HolProg 64 :=
.seq rawBody242_141 rawBody242_192

def rawBody242_194 : StackLang.HolProg 64 :=
.seq rawBody242_138 rawBody242_193

def rawBody242_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody242_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody242_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody242_198 : StackLang.HolProg 64 :=
.seq rawBody242_196 rawBody242_197

def rawBody242_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 473#64)

def rawBody242_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody242_202 : StackLang.HolProg 64 :=
.seq rawBody242_200 rawBody242_201

def rawBody242_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody242_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody242_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody242_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 9

def rawBody242_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody242_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody242_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody242_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody242_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody242_213 : StackLang.HolProg 64 :=
.seq rawBody242_211 rawBody242_212

def rawBody242_214 : StackLang.HolProg 64 :=
.seq rawBody242_210 rawBody242_213

def rawBody242_215 : StackLang.HolProg 64 :=
.seq rawBody242_209 rawBody242_214

def rawBody242_216 : StackLang.HolProg 64 :=
.seq rawBody242_208 rawBody242_215

def rawBody242_217 : StackLang.HolProg 64 :=
.seq rawBody242_207 rawBody242_216

def rawBody242_218 : StackLang.HolProg 64 :=
.seq rawBody242_206 rawBody242_217

def rawBody242_219 : StackLang.HolProg 64 :=
.seq rawBody242_205 rawBody242_218

def rawBody242_220 : StackLang.HolProg 64 :=
.seq rawBody242_204 rawBody242_219

def rawBody242_221 : StackLang.HolProg 64 :=
.seq rawBody242_203 rawBody242_220

def rawBody242_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody242_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody242_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody242_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody242_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody242_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody242_230 : StackLang.HolProg 64 :=
.seq rawBody242_228 rawBody242_229

def rawBody242_231 : StackLang.HolProg 64 :=
.seq rawBody242_227 rawBody242_230

def rawBody242_232 : StackLang.HolProg 64 :=
.seq rawBody242_226 rawBody242_231

def rawBody242_233 : StackLang.HolProg 64 :=
.seq rawBody242_225 rawBody242_232

def rawBody242_234 : StackLang.HolProg 64 :=
.seq rawBody242_224 rawBody242_233

def rawBody242_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody242_236 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody242_237 : StackLang.HolProg 64 :=
.seq rawBody242_235 rawBody242_236

def rawBody242_238 : StackLang.HolProg 64 :=
.call (some (rawBody242_234, 0, 242, 8)) (Sum.inl 241) (some (rawBody242_237, 242, 9))

def rawBody242_239 : StackLang.HolProg 64 :=
.seq rawBody242_223 rawBody242_238

def rawBody242_240 : StackLang.HolProg 64 :=
.seq rawBody242_222 rawBody242_239

def rawBody242_241 : StackLang.HolProg 64 :=
.seq rawBody242_221 rawBody242_240

def rawBody242_242 : StackLang.HolProg 64 :=
.seq rawBody242_202 rawBody242_241

def rawBody242_243 : StackLang.HolProg 64 :=
.seq rawBody242_199 rawBody242_242

def rawBody242_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody242_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody242_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody242_247 : StackLang.HolProg 64 :=
.seq rawBody242_245 rawBody242_246

def rawBody242_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 474#64)

def rawBody242_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody242_251 : StackLang.HolProg 64 :=
.seq rawBody242_249 rawBody242_250

def rawBody242_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody242_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody242_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody242_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 11

def rawBody242_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody242_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody242_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody242_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody242_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody242_262 : StackLang.HolProg 64 :=
.seq rawBody242_260 rawBody242_261

def rawBody242_263 : StackLang.HolProg 64 :=
.seq rawBody242_259 rawBody242_262

def rawBody242_264 : StackLang.HolProg 64 :=
.seq rawBody242_258 rawBody242_263

def rawBody242_265 : StackLang.HolProg 64 :=
.seq rawBody242_257 rawBody242_264

def rawBody242_266 : StackLang.HolProg 64 :=
.seq rawBody242_256 rawBody242_265

def rawBody242_267 : StackLang.HolProg 64 :=
.seq rawBody242_255 rawBody242_266

def rawBody242_268 : StackLang.HolProg 64 :=
.seq rawBody242_254 rawBody242_267

def rawBody242_269 : StackLang.HolProg 64 :=
.seq rawBody242_253 rawBody242_268

def rawBody242_270 : StackLang.HolProg 64 :=
.seq rawBody242_252 rawBody242_269

def rawBody242_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody242_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody242_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody242_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody242_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody242_278 : StackLang.HolProg 64 :=
.seq rawBody242_276 rawBody242_277

def rawBody242_279 : StackLang.HolProg 64 :=
.seq rawBody242_275 rawBody242_278

def rawBody242_280 : StackLang.HolProg 64 :=
.seq rawBody242_274 rawBody242_279

def rawBody242_281 : StackLang.HolProg 64 :=
.seq rawBody242_273 rawBody242_280

def rawBody242_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody242_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody242_284 : StackLang.HolProg 64 :=
.seq rawBody242_282 rawBody242_283

def rawBody242_285 : StackLang.HolProg 64 :=
.call (some (rawBody242_281, 0, 242, 10)) (Sum.inl 235) (some (rawBody242_284, 242, 11))

def rawBody242_286 : StackLang.HolProg 64 :=
.seq rawBody242_272 rawBody242_285

def rawBody242_287 : StackLang.HolProg 64 :=
.seq rawBody242_271 rawBody242_286

def rawBody242_288 : StackLang.HolProg 64 :=
.seq rawBody242_270 rawBody242_287

def rawBody242_289 : StackLang.HolProg 64 :=
.seq rawBody242_251 rawBody242_288

def rawBody242_290 : StackLang.HolProg 64 :=
.seq rawBody242_248 rawBody242_289

def rawBody242_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody242_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody242_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 475#64)

def rawBody242_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody242_296 : StackLang.HolProg 64 :=
.seq rawBody242_294 rawBody242_295

def rawBody242_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody242_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody242_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody242_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 13

def rawBody242_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody242_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody242_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody242_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody242_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody242_307 : StackLang.HolProg 64 :=
.seq rawBody242_305 rawBody242_306

def rawBody242_308 : StackLang.HolProg 64 :=
.seq rawBody242_304 rawBody242_307

def rawBody242_309 : StackLang.HolProg 64 :=
.seq rawBody242_303 rawBody242_308

def rawBody242_310 : StackLang.HolProg 64 :=
.seq rawBody242_302 rawBody242_309

def rawBody242_311 : StackLang.HolProg 64 :=
.seq rawBody242_301 rawBody242_310

def rawBody242_312 : StackLang.HolProg 64 :=
.seq rawBody242_300 rawBody242_311

def rawBody242_313 : StackLang.HolProg 64 :=
.seq rawBody242_299 rawBody242_312

def rawBody242_314 : StackLang.HolProg 64 :=
.seq rawBody242_298 rawBody242_313

def rawBody242_315 : StackLang.HolProg 64 :=
.seq rawBody242_297 rawBody242_314

def rawBody242_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody242_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody242_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody242_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody242_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody242_323 : StackLang.HolProg 64 :=
.seq rawBody242_321 rawBody242_322

def rawBody242_324 : StackLang.HolProg 64 :=
.seq rawBody242_320 rawBody242_323

def rawBody242_325 : StackLang.HolProg 64 :=
.seq rawBody242_319 rawBody242_324

def rawBody242_326 : StackLang.HolProg 64 :=
.seq rawBody242_318 rawBody242_325

def rawBody242_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody242_328 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody242_329 : StackLang.HolProg 64 :=
.seq rawBody242_327 rawBody242_328

def rawBody242_330 : StackLang.HolProg 64 :=
.call (some (rawBody242_326, 0, 242, 12)) (Sum.inl 70) (some (rawBody242_329, 242, 13))

def rawBody242_331 : StackLang.HolProg 64 :=
.seq rawBody242_317 rawBody242_330

def rawBody242_332 : StackLang.HolProg 64 :=
.seq rawBody242_316 rawBody242_331

def rawBody242_333 : StackLang.HolProg 64 :=
.seq rawBody242_315 rawBody242_332

def rawBody242_334 : StackLang.HolProg 64 :=
.seq rawBody242_296 rawBody242_333

def rawBody242_335 : StackLang.HolProg 64 :=
.seq rawBody242_293 rawBody242_334

def rawBody242_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody242_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody242_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody242_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody242_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody242_341 : StackLang.HolProg 64 :=
.seq rawBody242_339 rawBody242_340

def rawBody242_342 : StackLang.HolProg 64 :=
.seq rawBody242_338 rawBody242_341

def rawBody242_343 : StackLang.HolProg 64 :=
.seq rawBody242_337 rawBody242_342

def rawBody242_344 : StackLang.HolProg 64 :=
.seq rawBody242_336 rawBody242_343

def rawBody242_345 : StackLang.HolProg 64 :=
.seq rawBody242_335 rawBody242_344

def rawBody242_346 : StackLang.HolProg 64 :=
.seq rawBody242_292 rawBody242_345

def rawBody242_347 : StackLang.HolProg 64 :=
.seq rawBody242_291 rawBody242_346

def rawBody242_348 : StackLang.HolProg 64 :=
.seq rawBody242_290 rawBody242_347

def rawBody242_349 : StackLang.HolProg 64 :=
.seq rawBody242_247 rawBody242_348

def rawBody242_350 : StackLang.HolProg 64 :=
.seq rawBody242_244 rawBody242_349

def rawBody242_351 : StackLang.HolProg 64 :=
.seq rawBody242_243 rawBody242_350

def rawBody242_352 : StackLang.HolProg 64 :=
.seq rawBody242_198 rawBody242_351

def rawBody242_353 : StackLang.HolProg 64 :=
.seq rawBody242_195 rawBody242_352

def rawBody242_354 : StackLang.HolProg 64 :=
.seq rawBody242_194 rawBody242_353

def rawBody242_355 : StackLang.HolProg 64 :=
.seq rawBody242_137 rawBody242_354

def rawBody242_356 : StackLang.HolProg 64 :=
.seq rawBody242_136 rawBody242_355

def rawBody242_357 : StackLang.HolProg 64 :=
.seq rawBody242_135 rawBody242_356

def rawBody242_358 : StackLang.HolProg 64 :=
.seq rawBody242_134 rawBody242_357

def rawBody242_359 : StackLang.HolProg 64 :=
.seq rawBody242_3 rawBody242_358

def rawBody242_360 : StackLang.HolProg 64 :=
.seq rawBody242_2 rawBody242_359

def rawBody242_361 : StackLang.HolProg 64 :=
.seq rawBody242_1 rawBody242_360

def rawBody242_362 : StackLang.HolProg 64 :=
.seq rawBody242_0 rawBody242_361

def raw242 : StackLang.HolProg 64 := rawBody242_362
theorem raw242_eq : StackRawCall.compTop RawInfo.rawInfo (function242 (.list [])).1 = raw242 := by
  kernel_rfl
#print axioms raw242_eq
end InitECandidate.Proofs.BackendStages
