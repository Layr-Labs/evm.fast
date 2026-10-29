import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function243
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody243_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody243_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody243_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody243_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody243_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody243_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody243_6 : StackLang.HolProg 64 :=
.seq rawBody243_4 rawBody243_5

def rawBody243_7 : StackLang.HolProg 64 :=
.seq rawBody243_3 rawBody243_6

def rawBody243_8 : StackLang.HolProg 64 :=
.seq rawBody243_2 rawBody243_7

def rawBody243_9 : StackLang.HolProg 64 :=
.seq rawBody243_1 rawBody243_8

def rawBody243_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 476#64)

def rawBody243_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody243_13 : StackLang.HolProg 64 :=
.seq rawBody243_11 rawBody243_12

def rawBody243_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody243_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody243_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody243_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 3

def rawBody243_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody243_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody243_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody243_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody243_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody243_24 : StackLang.HolProg 64 :=
.seq rawBody243_22 rawBody243_23

def rawBody243_25 : StackLang.HolProg 64 :=
.seq rawBody243_21 rawBody243_24

def rawBody243_26 : StackLang.HolProg 64 :=
.seq rawBody243_20 rawBody243_25

def rawBody243_27 : StackLang.HolProg 64 :=
.seq rawBody243_19 rawBody243_26

def rawBody243_28 : StackLang.HolProg 64 :=
.seq rawBody243_18 rawBody243_27

def rawBody243_29 : StackLang.HolProg 64 :=
.seq rawBody243_17 rawBody243_28

def rawBody243_30 : StackLang.HolProg 64 :=
.seq rawBody243_16 rawBody243_29

def rawBody243_31 : StackLang.HolProg 64 :=
.seq rawBody243_15 rawBody243_30

def rawBody243_32 : StackLang.HolProg 64 :=
.seq rawBody243_14 rawBody243_31

def rawBody243_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody243_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody243_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody243_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody243_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody243_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody243_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody243_42 : StackLang.HolProg 64 :=
.seq rawBody243_40 rawBody243_41

def rawBody243_43 : StackLang.HolProg 64 :=
.seq rawBody243_39 rawBody243_42

def rawBody243_44 : StackLang.HolProg 64 :=
.seq rawBody243_38 rawBody243_43

def rawBody243_45 : StackLang.HolProg 64 :=
.seq rawBody243_37 rawBody243_44

def rawBody243_46 : StackLang.HolProg 64 :=
.seq rawBody243_36 rawBody243_45

def rawBody243_47 : StackLang.HolProg 64 :=
.seq rawBody243_35 rawBody243_46

def rawBody243_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody243_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody243_50 : StackLang.HolProg 64 :=
.seq rawBody243_48 rawBody243_49

def rawBody243_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody243_52 : StackLang.HolProg 64 :=
.seq rawBody243_50 rawBody243_51

def rawBody243_53 : StackLang.HolProg 64 :=
.call (some (rawBody243_47, 0, 243, 2)) (Sum.inl 69) (some (rawBody243_52, 243, 3))

def rawBody243_54 : StackLang.HolProg 64 :=
.seq rawBody243_34 rawBody243_53

def rawBody243_55 : StackLang.HolProg 64 :=
.seq rawBody243_33 rawBody243_54

def rawBody243_56 : StackLang.HolProg 64 :=
.seq rawBody243_32 rawBody243_55

def rawBody243_57 : StackLang.HolProg 64 :=
.seq rawBody243_13 rawBody243_56

def rawBody243_58 : StackLang.HolProg 64 :=
.seq rawBody243_10 rawBody243_57

def rawBody243_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody243_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody243_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody243_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody243_63 : StackLang.HolProg 64 :=
.seq rawBody243_61 rawBody243_62

def rawBody243_64 : StackLang.HolProg 64 :=
.seq rawBody243_60 rawBody243_63

def rawBody243_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 477#64)

def rawBody243_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody243_68 : StackLang.HolProg 64 :=
.seq rawBody243_66 rawBody243_67

def rawBody243_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody243_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody243_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody243_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 5

def rawBody243_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody243_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody243_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody243_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody243_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody243_79 : StackLang.HolProg 64 :=
.seq rawBody243_77 rawBody243_78

def rawBody243_80 : StackLang.HolProg 64 :=
.seq rawBody243_76 rawBody243_79

def rawBody243_81 : StackLang.HolProg 64 :=
.seq rawBody243_75 rawBody243_80

def rawBody243_82 : StackLang.HolProg 64 :=
.seq rawBody243_74 rawBody243_81

def rawBody243_83 : StackLang.HolProg 64 :=
.seq rawBody243_73 rawBody243_82

def rawBody243_84 : StackLang.HolProg 64 :=
.seq rawBody243_72 rawBody243_83

def rawBody243_85 : StackLang.HolProg 64 :=
.seq rawBody243_71 rawBody243_84

def rawBody243_86 : StackLang.HolProg 64 :=
.seq rawBody243_70 rawBody243_85

def rawBody243_87 : StackLang.HolProg 64 :=
.seq rawBody243_69 rawBody243_86

def rawBody243_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody243_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody243_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody243_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody243_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody243_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody243_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody243_97 : StackLang.HolProg 64 :=
.seq rawBody243_95 rawBody243_96

def rawBody243_98 : StackLang.HolProg 64 :=
.seq rawBody243_94 rawBody243_97

def rawBody243_99 : StackLang.HolProg 64 :=
.seq rawBody243_93 rawBody243_98

def rawBody243_100 : StackLang.HolProg 64 :=
.seq rawBody243_92 rawBody243_99

def rawBody243_101 : StackLang.HolProg 64 :=
.seq rawBody243_91 rawBody243_100

def rawBody243_102 : StackLang.HolProg 64 :=
.seq rawBody243_90 rawBody243_101

def rawBody243_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody243_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody243_105 : StackLang.HolProg 64 :=
.seq rawBody243_103 rawBody243_104

def rawBody243_106 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody243_107 : StackLang.HolProg 64 :=
.seq rawBody243_105 rawBody243_106

def rawBody243_108 : StackLang.HolProg 64 :=
.call (some (rawBody243_102, 0, 243, 4)) (Sum.inl 241) (some (rawBody243_107, 243, 5))

def rawBody243_109 : StackLang.HolProg 64 :=
.seq rawBody243_89 rawBody243_108

def rawBody243_110 : StackLang.HolProg 64 :=
.seq rawBody243_88 rawBody243_109

def rawBody243_111 : StackLang.HolProg 64 :=
.seq rawBody243_87 rawBody243_110

def rawBody243_112 : StackLang.HolProg 64 :=
.seq rawBody243_68 rawBody243_111

def rawBody243_113 : StackLang.HolProg 64 :=
.seq rawBody243_65 rawBody243_112

def rawBody243_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody243_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody243_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody243_117 : StackLang.HolProg 64 :=
.seq rawBody243_115 rawBody243_116

def rawBody243_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 478#64)

def rawBody243_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody243_121 : StackLang.HolProg 64 :=
.seq rawBody243_119 rawBody243_120

def rawBody243_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody243_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody243_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody243_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 7

def rawBody243_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody243_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody243_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody243_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody243_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody243_132 : StackLang.HolProg 64 :=
.seq rawBody243_130 rawBody243_131

def rawBody243_133 : StackLang.HolProg 64 :=
.seq rawBody243_129 rawBody243_132

def rawBody243_134 : StackLang.HolProg 64 :=
.seq rawBody243_128 rawBody243_133

def rawBody243_135 : StackLang.HolProg 64 :=
.seq rawBody243_127 rawBody243_134

def rawBody243_136 : StackLang.HolProg 64 :=
.seq rawBody243_126 rawBody243_135

def rawBody243_137 : StackLang.HolProg 64 :=
.seq rawBody243_125 rawBody243_136

def rawBody243_138 : StackLang.HolProg 64 :=
.seq rawBody243_124 rawBody243_137

def rawBody243_139 : StackLang.HolProg 64 :=
.seq rawBody243_123 rawBody243_138

def rawBody243_140 : StackLang.HolProg 64 :=
.seq rawBody243_122 rawBody243_139

def rawBody243_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody243_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody243_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody243_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody243_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody243_148 : StackLang.HolProg 64 :=
.seq rawBody243_146 rawBody243_147

def rawBody243_149 : StackLang.HolProg 64 :=
.seq rawBody243_145 rawBody243_148

def rawBody243_150 : StackLang.HolProg 64 :=
.seq rawBody243_144 rawBody243_149

def rawBody243_151 : StackLang.HolProg 64 :=
.seq rawBody243_143 rawBody243_150

def rawBody243_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody243_153 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody243_154 : StackLang.HolProg 64 :=
.seq rawBody243_152 rawBody243_153

def rawBody243_155 : StackLang.HolProg 64 :=
.call (some (rawBody243_151, 0, 243, 6)) (Sum.inl 235) (some (rawBody243_154, 243, 7))

def rawBody243_156 : StackLang.HolProg 64 :=
.seq rawBody243_142 rawBody243_155

def rawBody243_157 : StackLang.HolProg 64 :=
.seq rawBody243_141 rawBody243_156

def rawBody243_158 : StackLang.HolProg 64 :=
.seq rawBody243_140 rawBody243_157

def rawBody243_159 : StackLang.HolProg 64 :=
.seq rawBody243_121 rawBody243_158

def rawBody243_160 : StackLang.HolProg 64 :=
.seq rawBody243_118 rawBody243_159

def rawBody243_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody243_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody243_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 479#64)

def rawBody243_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody243_166 : StackLang.HolProg 64 :=
.seq rawBody243_164 rawBody243_165

def rawBody243_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody243_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody243_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody243_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 9

def rawBody243_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody243_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody243_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody243_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody243_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody243_177 : StackLang.HolProg 64 :=
.seq rawBody243_175 rawBody243_176

def rawBody243_178 : StackLang.HolProg 64 :=
.seq rawBody243_174 rawBody243_177

def rawBody243_179 : StackLang.HolProg 64 :=
.seq rawBody243_173 rawBody243_178

def rawBody243_180 : StackLang.HolProg 64 :=
.seq rawBody243_172 rawBody243_179

def rawBody243_181 : StackLang.HolProg 64 :=
.seq rawBody243_171 rawBody243_180

def rawBody243_182 : StackLang.HolProg 64 :=
.seq rawBody243_170 rawBody243_181

def rawBody243_183 : StackLang.HolProg 64 :=
.seq rawBody243_169 rawBody243_182

def rawBody243_184 : StackLang.HolProg 64 :=
.seq rawBody243_168 rawBody243_183

def rawBody243_185 : StackLang.HolProg 64 :=
.seq rawBody243_167 rawBody243_184

def rawBody243_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody243_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody243_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody243_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody243_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody243_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody243_194 : StackLang.HolProg 64 :=
.seq rawBody243_192 rawBody243_193

def rawBody243_195 : StackLang.HolProg 64 :=
.seq rawBody243_191 rawBody243_194

def rawBody243_196 : StackLang.HolProg 64 :=
.seq rawBody243_190 rawBody243_195

def rawBody243_197 : StackLang.HolProg 64 :=
.seq rawBody243_189 rawBody243_196

def rawBody243_198 : StackLang.HolProg 64 :=
.seq rawBody243_188 rawBody243_197

def rawBody243_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody243_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody243_201 : StackLang.HolProg 64 :=
.seq rawBody243_199 rawBody243_200

def rawBody243_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody243_203 : StackLang.HolProg 64 :=
.seq rawBody243_201 rawBody243_202

def rawBody243_204 : StackLang.HolProg 64 :=
.call (some (rawBody243_198, 0, 243, 8)) (Sum.inl 70) (some (rawBody243_203, 243, 9))

def rawBody243_205 : StackLang.HolProg 64 :=
.seq rawBody243_187 rawBody243_204

def rawBody243_206 : StackLang.HolProg 64 :=
.seq rawBody243_186 rawBody243_205

def rawBody243_207 : StackLang.HolProg 64 :=
.seq rawBody243_185 rawBody243_206

def rawBody243_208 : StackLang.HolProg 64 :=
.seq rawBody243_166 rawBody243_207

def rawBody243_209 : StackLang.HolProg 64 :=
.seq rawBody243_163 rawBody243_208

def rawBody243_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody243_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody243_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 480#64)

def rawBody243_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody243_215 : StackLang.HolProg 64 :=
.seq rawBody243_213 rawBody243_214

def rawBody243_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody243_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody243_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody243_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 11

def rawBody243_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody243_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody243_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody243_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody243_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody243_226 : StackLang.HolProg 64 :=
.seq rawBody243_224 rawBody243_225

def rawBody243_227 : StackLang.HolProg 64 :=
.seq rawBody243_223 rawBody243_226

def rawBody243_228 : StackLang.HolProg 64 :=
.seq rawBody243_222 rawBody243_227

def rawBody243_229 : StackLang.HolProg 64 :=
.seq rawBody243_221 rawBody243_228

def rawBody243_230 : StackLang.HolProg 64 :=
.seq rawBody243_220 rawBody243_229

def rawBody243_231 : StackLang.HolProg 64 :=
.seq rawBody243_219 rawBody243_230

def rawBody243_232 : StackLang.HolProg 64 :=
.seq rawBody243_218 rawBody243_231

def rawBody243_233 : StackLang.HolProg 64 :=
.seq rawBody243_217 rawBody243_232

def rawBody243_234 : StackLang.HolProg 64 :=
.seq rawBody243_216 rawBody243_233

def rawBody243_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody243_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody243_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody243_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody243_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody243_242 : StackLang.HolProg 64 :=
.seq rawBody243_240 rawBody243_241

def rawBody243_243 : StackLang.HolProg 64 :=
.seq rawBody243_239 rawBody243_242

def rawBody243_244 : StackLang.HolProg 64 :=
.seq rawBody243_238 rawBody243_243

def rawBody243_245 : StackLang.HolProg 64 :=
.seq rawBody243_237 rawBody243_244

def rawBody243_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody243_247 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody243_248 : StackLang.HolProg 64 :=
.seq rawBody243_246 rawBody243_247

def rawBody243_249 : StackLang.HolProg 64 :=
.call (some (rawBody243_245, 0, 243, 10)) (Sum.inl 236) (some (rawBody243_248, 243, 11))

def rawBody243_250 : StackLang.HolProg 64 :=
.seq rawBody243_236 rawBody243_249

def rawBody243_251 : StackLang.HolProg 64 :=
.seq rawBody243_235 rawBody243_250

def rawBody243_252 : StackLang.HolProg 64 :=
.seq rawBody243_234 rawBody243_251

def rawBody243_253 : StackLang.HolProg 64 :=
.seq rawBody243_215 rawBody243_252

def rawBody243_254 : StackLang.HolProg 64 :=
.seq rawBody243_212 rawBody243_253

def rawBody243_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody243_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody243_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody243_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody243_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody243_260 : StackLang.HolProg 64 :=
.seq rawBody243_258 rawBody243_259

def rawBody243_261 : StackLang.HolProg 64 :=
.seq rawBody243_257 rawBody243_260

def rawBody243_262 : StackLang.HolProg 64 :=
.seq rawBody243_256 rawBody243_261

def rawBody243_263 : StackLang.HolProg 64 :=
.seq rawBody243_255 rawBody243_262

def rawBody243_264 : StackLang.HolProg 64 :=
.seq rawBody243_254 rawBody243_263

def rawBody243_265 : StackLang.HolProg 64 :=
.seq rawBody243_211 rawBody243_264

def rawBody243_266 : StackLang.HolProg 64 :=
.seq rawBody243_210 rawBody243_265

def rawBody243_267 : StackLang.HolProg 64 :=
.seq rawBody243_209 rawBody243_266

def rawBody243_268 : StackLang.HolProg 64 :=
.seq rawBody243_162 rawBody243_267

def rawBody243_269 : StackLang.HolProg 64 :=
.seq rawBody243_161 rawBody243_268

def rawBody243_270 : StackLang.HolProg 64 :=
.seq rawBody243_160 rawBody243_269

def rawBody243_271 : StackLang.HolProg 64 :=
.seq rawBody243_117 rawBody243_270

def rawBody243_272 : StackLang.HolProg 64 :=
.seq rawBody243_114 rawBody243_271

def rawBody243_273 : StackLang.HolProg 64 :=
.seq rawBody243_113 rawBody243_272

def rawBody243_274 : StackLang.HolProg 64 :=
.seq rawBody243_64 rawBody243_273

def rawBody243_275 : StackLang.HolProg 64 :=
.seq rawBody243_59 rawBody243_274

def rawBody243_276 : StackLang.HolProg 64 :=
.seq rawBody243_58 rawBody243_275

def rawBody243_277 : StackLang.HolProg 64 :=
.seq rawBody243_9 rawBody243_276

def rawBody243_278 : StackLang.HolProg 64 :=
.seq rawBody243_0 rawBody243_277

def raw243 : StackLang.HolProg 64 := rawBody243_278
theorem raw243_eq : StackRawCall.compTop RawInfo.rawInfo (function243 (.list [])).1 = raw243 := by
  kernel_rfl
#print axioms raw243_eq
end InitECandidate.Proofs.BackendStages
