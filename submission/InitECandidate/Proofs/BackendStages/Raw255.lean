import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function255
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody255_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def rawBody255_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody255_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody255_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody255_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody255_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody255_6 : StackLang.HolProg 64 :=
.seq rawBody255_4 rawBody255_5

def rawBody255_7 : StackLang.HolProg 64 :=
.seq rawBody255_3 rawBody255_6

def rawBody255_8 : StackLang.HolProg 64 :=
.seq rawBody255_2 rawBody255_7

def rawBody255_9 : StackLang.HolProg 64 :=
.seq rawBody255_1 rawBody255_8

def rawBody255_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 533#64)

def rawBody255_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody255_13 : StackLang.HolProg 64 :=
.seq rawBody255_11 rawBody255_12

def rawBody255_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody255_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody255_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody255_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 255 3

def rawBody255_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody255_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody255_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody255_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody255_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody255_24 : StackLang.HolProg 64 :=
.seq rawBody255_22 rawBody255_23

def rawBody255_25 : StackLang.HolProg 64 :=
.seq rawBody255_21 rawBody255_24

def rawBody255_26 : StackLang.HolProg 64 :=
.seq rawBody255_20 rawBody255_25

def rawBody255_27 : StackLang.HolProg 64 :=
.seq rawBody255_19 rawBody255_26

def rawBody255_28 : StackLang.HolProg 64 :=
.seq rawBody255_18 rawBody255_27

def rawBody255_29 : StackLang.HolProg 64 :=
.seq rawBody255_17 rawBody255_28

def rawBody255_30 : StackLang.HolProg 64 :=
.seq rawBody255_16 rawBody255_29

def rawBody255_31 : StackLang.HolProg 64 :=
.seq rawBody255_15 rawBody255_30

def rawBody255_32 : StackLang.HolProg 64 :=
.seq rawBody255_14 rawBody255_31

def rawBody255_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody255_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody255_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody255_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody255_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody255_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody255_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody255_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody255_43 : StackLang.HolProg 64 :=
.seq rawBody255_41 rawBody255_42

def rawBody255_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody255_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody255_46 : StackLang.HolProg 64 :=
.seq rawBody255_44 rawBody255_45

def rawBody255_47 : StackLang.HolProg 64 :=
.seq rawBody255_43 rawBody255_46

def rawBody255_48 : StackLang.HolProg 64 :=
.seq rawBody255_40 rawBody255_47

def rawBody255_49 : StackLang.HolProg 64 :=
.seq rawBody255_39 rawBody255_48

def rawBody255_50 : StackLang.HolProg 64 :=
.seq rawBody255_38 rawBody255_49

def rawBody255_51 : StackLang.HolProg 64 :=
.seq rawBody255_37 rawBody255_50

def rawBody255_52 : StackLang.HolProg 64 :=
.seq rawBody255_36 rawBody255_51

def rawBody255_53 : StackLang.HolProg 64 :=
.seq rawBody255_35 rawBody255_52

def rawBody255_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody255_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody255_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody255_57 : StackLang.HolProg 64 :=
.seq rawBody255_55 rawBody255_56

def rawBody255_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody255_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody255_60 : StackLang.HolProg 64 :=
.seq rawBody255_58 rawBody255_59

def rawBody255_61 : StackLang.HolProg 64 :=
.seq rawBody255_57 rawBody255_60

def rawBody255_62 : StackLang.HolProg 64 :=
.seq rawBody255_54 rawBody255_61

def rawBody255_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody255_64 : StackLang.HolProg 64 :=
.seq rawBody255_62 rawBody255_63

def rawBody255_65 : StackLang.HolProg 64 :=
.call (some (rawBody255_53, 0, 255, 2)) (Sum.inl 251) (some (rawBody255_64, 255, 3))

def rawBody255_66 : StackLang.HolProg 64 :=
.seq rawBody255_34 rawBody255_65

def rawBody255_67 : StackLang.HolProg 64 :=
.seq rawBody255_33 rawBody255_66

def rawBody255_68 : StackLang.HolProg 64 :=
.seq rawBody255_32 rawBody255_67

def rawBody255_69 : StackLang.HolProg 64 :=
.seq rawBody255_13 rawBody255_68

def rawBody255_70 : StackLang.HolProg 64 :=
.seq rawBody255_10 rawBody255_69

def rawBody255_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody255_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody255_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody255_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody255_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody255_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody255_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody255_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody255_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 70#64)

def rawBody255_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody255_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody255_86 : StackLang.HolProg 64 :=
.seq rawBody255_84 rawBody255_85

def rawBody255_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody255_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody255_89 : StackLang.HolProg 64 :=
.seq rawBody255_87 rawBody255_88

def rawBody255_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody255_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody255_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody255_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody255_94 : StackLang.HolProg 64 :=
.seq rawBody255_92 rawBody255_93

def rawBody255_95 : StackLang.HolProg 64 :=
.seq rawBody255_91 rawBody255_94

def rawBody255_96 : StackLang.HolProg 64 :=
.seq rawBody255_90 rawBody255_95

def rawBody255_97 : StackLang.HolProg 64 :=
.seq rawBody255_89 rawBody255_96

def rawBody255_98 : StackLang.HolProg 64 :=
.seq rawBody255_86 rawBody255_97

def rawBody255_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 534#64)

def rawBody255_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody255_102 : StackLang.HolProg 64 :=
.seq rawBody255_100 rawBody255_101

def rawBody255_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody255_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody255_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody255_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 255 5

def rawBody255_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody255_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody255_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody255_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody255_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody255_113 : StackLang.HolProg 64 :=
.seq rawBody255_111 rawBody255_112

def rawBody255_114 : StackLang.HolProg 64 :=
.seq rawBody255_110 rawBody255_113

def rawBody255_115 : StackLang.HolProg 64 :=
.seq rawBody255_109 rawBody255_114

def rawBody255_116 : StackLang.HolProg 64 :=
.seq rawBody255_108 rawBody255_115

def rawBody255_117 : StackLang.HolProg 64 :=
.seq rawBody255_107 rawBody255_116

def rawBody255_118 : StackLang.HolProg 64 :=
.seq rawBody255_106 rawBody255_117

def rawBody255_119 : StackLang.HolProg 64 :=
.seq rawBody255_105 rawBody255_118

def rawBody255_120 : StackLang.HolProg 64 :=
.seq rawBody255_104 rawBody255_119

def rawBody255_121 : StackLang.HolProg 64 :=
.seq rawBody255_103 rawBody255_120

def rawBody255_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody255_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody255_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody255_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody255_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody255_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody255_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody255_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody255_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody255_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody255_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody255_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody255_136 : StackLang.HolProg 64 :=
.seq rawBody255_134 rawBody255_135

def rawBody255_137 : StackLang.HolProg 64 :=
.seq rawBody255_133 rawBody255_136

def rawBody255_138 : StackLang.HolProg 64 :=
.seq rawBody255_132 rawBody255_137

def rawBody255_139 : StackLang.HolProg 64 :=
.seq rawBody255_131 rawBody255_138

def rawBody255_140 : StackLang.HolProg 64 :=
.seq rawBody255_130 rawBody255_139

def rawBody255_141 : StackLang.HolProg 64 :=
.seq rawBody255_129 rawBody255_140

def rawBody255_142 : StackLang.HolProg 64 :=
.seq rawBody255_128 rawBody255_141

def rawBody255_143 : StackLang.HolProg 64 :=
.seq rawBody255_127 rawBody255_142

def rawBody255_144 : StackLang.HolProg 64 :=
.seq rawBody255_126 rawBody255_143

def rawBody255_145 : StackLang.HolProg 64 :=
.seq rawBody255_125 rawBody255_144

def rawBody255_146 : StackLang.HolProg 64 :=
.seq rawBody255_124 rawBody255_145

def rawBody255_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody255_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody255_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody255_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody255_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody255_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody255_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody255_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody255_155 : StackLang.HolProg 64 :=
.seq rawBody255_153 rawBody255_154

def rawBody255_156 : StackLang.HolProg 64 :=
.seq rawBody255_152 rawBody255_155

def rawBody255_157 : StackLang.HolProg 64 :=
.seq rawBody255_151 rawBody255_156

def rawBody255_158 : StackLang.HolProg 64 :=
.seq rawBody255_150 rawBody255_157

def rawBody255_159 : StackLang.HolProg 64 :=
.seq rawBody255_149 rawBody255_158

def rawBody255_160 : StackLang.HolProg 64 :=
.seq rawBody255_148 rawBody255_159

def rawBody255_161 : StackLang.HolProg 64 :=
.seq rawBody255_147 rawBody255_160

def rawBody255_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody255_163 : StackLang.HolProg 64 :=
.seq rawBody255_161 rawBody255_162

def rawBody255_164 : StackLang.HolProg 64 :=
.call (some (rawBody255_146, 0, 255, 4)) (Sum.inl 245) (some (rawBody255_163, 255, 5))

def rawBody255_165 : StackLang.HolProg 64 :=
.seq rawBody255_123 rawBody255_164

def rawBody255_166 : StackLang.HolProg 64 :=
.seq rawBody255_122 rawBody255_165

def rawBody255_167 : StackLang.HolProg 64 :=
.seq rawBody255_121 rawBody255_166

def rawBody255_168 : StackLang.HolProg 64 :=
.seq rawBody255_102 rawBody255_167

def rawBody255_169 : StackLang.HolProg 64 :=
.seq rawBody255_99 rawBody255_168

def rawBody255_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody255_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_172 : StackLang.HolProg 64 :=
.seq rawBody255_170 rawBody255_171

def rawBody255_173 : StackLang.HolProg 64 :=
.seq rawBody255_169 rawBody255_172

def rawBody255_174 : StackLang.HolProg 64 :=
.seq rawBody255_98 rawBody255_173

def rawBody255_175 : StackLang.HolProg 64 :=
.seq rawBody255_83 rawBody255_174

def rawBody255_176 : StackLang.HolProg 64 :=
.seq rawBody255_82 rawBody255_175

def rawBody255_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody255_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody255_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody255_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def rawBody255_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def rawBody255_182 : StackLang.HolProg 64 :=
.seq rawBody255_180 rawBody255_181

def rawBody255_183 : StackLang.HolProg 64 :=
.seq rawBody255_179 rawBody255_182

def rawBody255_184 : StackLang.HolProg 64 :=
.seq rawBody255_178 rawBody255_183

def rawBody255_185 : StackLang.HolProg 64 :=
.seq rawBody255_177 rawBody255_184

def rawBody255_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody255_176 rawBody255_185

def rawBody255_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody255_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody255_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 8

def rawBody255_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody255_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def rawBody255_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 6

def rawBody255_194 : StackLang.HolProg 64 :=
.seq rawBody255_192 rawBody255_193

def rawBody255_195 : StackLang.HolProg 64 :=
.seq rawBody255_191 rawBody255_194

def rawBody255_196 : StackLang.HolProg 64 :=
.seq rawBody255_190 rawBody255_195

def rawBody255_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody255_198 : StackLang.HolProg 64 :=
.seq rawBody255_196 rawBody255_197

def rawBody255_199 : StackLang.HolProg 64 :=
.seq rawBody255_189 rawBody255_198

def rawBody255_200 : StackLang.HolProg 64 :=
.seq rawBody255_188 rawBody255_199

def rawBody255_201 : StackLang.HolProg 64 :=
.seq rawBody255_187 rawBody255_200

def rawBody255_202 : StackLang.HolProg 64 :=
.seq rawBody255_186 rawBody255_201

def rawBody255_203 : StackLang.HolProg 64 :=
.seq rawBody255_81 rawBody255_202

def rawBody255_204 : StackLang.HolProg 64 :=
.seq rawBody255_80 rawBody255_203

def rawBody255_205 : StackLang.HolProg 64 :=
.seq rawBody255_79 rawBody255_204

def rawBody255_206 : StackLang.HolProg 64 :=
.seq rawBody255_78 rawBody255_205

def rawBody255_207 : StackLang.HolProg 64 :=
.seq rawBody255_77 rawBody255_206

def rawBody255_208 : StackLang.HolProg 64 :=
.seq rawBody255_76 rawBody255_207

def rawBody255_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody255_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody255_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody255_212 : StackLang.HolProg 64 :=
.seq rawBody255_210 rawBody255_211

def rawBody255_213 : StackLang.HolProg 64 :=
.seq rawBody255_209 rawBody255_212

def rawBody255_214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody255_208 rawBody255_213

def rawBody255_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody255_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 8

def rawBody255_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody255_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def rawBody255_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 6

def rawBody255_220 : StackLang.HolProg 64 :=
.seq rawBody255_218 rawBody255_219

def rawBody255_221 : StackLang.HolProg 64 :=
.seq rawBody255_217 rawBody255_220

def rawBody255_222 : StackLang.HolProg 64 :=
.seq rawBody255_216 rawBody255_221

def rawBody255_223 : StackLang.HolProg 64 :=
.seq rawBody255_215 rawBody255_222

def rawBody255_224 : StackLang.HolProg 64 :=
.seq rawBody255_214 rawBody255_223

def rawBody255_225 : StackLang.HolProg 64 :=
.seq rawBody255_75 rawBody255_224

def rawBody255_226 : StackLang.HolProg 64 :=
.loop rawBody255_225

def rawBody255_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody255_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody255_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody255_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def rawBody255_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody255_232 : StackLang.HolProg 64 :=
.seq rawBody255_230 rawBody255_231

def rawBody255_233 : StackLang.HolProg 64 :=
.seq rawBody255_229 rawBody255_232

def rawBody255_234 : StackLang.HolProg 64 :=
.seq rawBody255_228 rawBody255_233

def rawBody255_235 : StackLang.HolProg 64 :=
.seq rawBody255_227 rawBody255_234

def rawBody255_236 : StackLang.HolProg 64 :=
.seq rawBody255_226 rawBody255_235

def rawBody255_237 : StackLang.HolProg 64 :=
.seq rawBody255_74 rawBody255_236

def rawBody255_238 : StackLang.HolProg 64 :=
.seq rawBody255_73 rawBody255_237

def rawBody255_239 : StackLang.HolProg 64 :=
.seq rawBody255_72 rawBody255_238

def rawBody255_240 : StackLang.HolProg 64 :=
.seq rawBody255_71 rawBody255_239

def rawBody255_241 : StackLang.HolProg 64 :=
.seq rawBody255_70 rawBody255_240

def rawBody255_242 : StackLang.HolProg 64 :=
.seq rawBody255_9 rawBody255_241

def rawBody255_243 : StackLang.HolProg 64 :=
.seq rawBody255_0 rawBody255_242

def raw255 : StackLang.HolProg 64 := rawBody255_243
theorem raw255_eq : StackRawCall.compTop RawInfo.rawInfo (function255 (.list [])).1 = raw255 := by
  kernel_rfl
#print axioms raw255_eq
end InitECandidate.Proofs.BackendStages
