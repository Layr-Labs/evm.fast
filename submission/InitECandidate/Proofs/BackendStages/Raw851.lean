import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function851
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody851_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody851_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody851_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody851_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody851_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody851_5 : StackLang.HolProg 64 :=
.seq rawBody851_3 rawBody851_4

def rawBody851_6 : StackLang.HolProg 64 :=
.seq rawBody851_2 rawBody851_5

def rawBody851_7 : StackLang.HolProg 64 :=
.seq rawBody851_1 rawBody851_6

def rawBody851_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4307#64)

def rawBody851_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody851_11 : StackLang.HolProg 64 :=
.seq rawBody851_9 rawBody851_10

def rawBody851_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody851_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody851_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody851_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 851 3

def rawBody851_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody851_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody851_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody851_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody851_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody851_22 : StackLang.HolProg 64 :=
.seq rawBody851_20 rawBody851_21

def rawBody851_23 : StackLang.HolProg 64 :=
.seq rawBody851_19 rawBody851_22

def rawBody851_24 : StackLang.HolProg 64 :=
.seq rawBody851_18 rawBody851_23

def rawBody851_25 : StackLang.HolProg 64 :=
.seq rawBody851_17 rawBody851_24

def rawBody851_26 : StackLang.HolProg 64 :=
.seq rawBody851_16 rawBody851_25

def rawBody851_27 : StackLang.HolProg 64 :=
.seq rawBody851_15 rawBody851_26

def rawBody851_28 : StackLang.HolProg 64 :=
.seq rawBody851_14 rawBody851_27

def rawBody851_29 : StackLang.HolProg 64 :=
.seq rawBody851_13 rawBody851_28

def rawBody851_30 : StackLang.HolProg 64 :=
.seq rawBody851_12 rawBody851_29

def rawBody851_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody851_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody851_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody851_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody851_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody851_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody851_39 : StackLang.HolProg 64 :=
.seq rawBody851_37 rawBody851_38

def rawBody851_40 : StackLang.HolProg 64 :=
.seq rawBody851_36 rawBody851_39

def rawBody851_41 : StackLang.HolProg 64 :=
.seq rawBody851_35 rawBody851_40

def rawBody851_42 : StackLang.HolProg 64 :=
.seq rawBody851_34 rawBody851_41

def rawBody851_43 : StackLang.HolProg 64 :=
.seq rawBody851_33 rawBody851_42

def rawBody851_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody851_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody851_46 : StackLang.HolProg 64 :=
.seq rawBody851_44 rawBody851_45

def rawBody851_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody851_48 : StackLang.HolProg 64 :=
.seq rawBody851_46 rawBody851_47

def rawBody851_49 : StackLang.HolProg 64 :=
.call (some (rawBody851_43, 0, 851, 2)) (Sum.inl 88) (some (rawBody851_48, 851, 3))

def rawBody851_50 : StackLang.HolProg 64 :=
.seq rawBody851_32 rawBody851_49

def rawBody851_51 : StackLang.HolProg 64 :=
.seq rawBody851_31 rawBody851_50

def rawBody851_52 : StackLang.HolProg 64 :=
.seq rawBody851_30 rawBody851_51

def rawBody851_53 : StackLang.HolProg 64 :=
.seq rawBody851_11 rawBody851_52

def rawBody851_54 : StackLang.HolProg 64 :=
.seq rawBody851_8 rawBody851_53

def rawBody851_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody851_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody851_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody851_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4308#64)

def rawBody851_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody851_62 : StackLang.HolProg 64 :=
.seq rawBody851_60 rawBody851_61

def rawBody851_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody851_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody851_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody851_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 851 5

def rawBody851_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody851_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody851_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody851_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody851_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody851_73 : StackLang.HolProg 64 :=
.seq rawBody851_71 rawBody851_72

def rawBody851_74 : StackLang.HolProg 64 :=
.seq rawBody851_70 rawBody851_73

def rawBody851_75 : StackLang.HolProg 64 :=
.seq rawBody851_69 rawBody851_74

def rawBody851_76 : StackLang.HolProg 64 :=
.seq rawBody851_68 rawBody851_75

def rawBody851_77 : StackLang.HolProg 64 :=
.seq rawBody851_67 rawBody851_76

def rawBody851_78 : StackLang.HolProg 64 :=
.seq rawBody851_66 rawBody851_77

def rawBody851_79 : StackLang.HolProg 64 :=
.seq rawBody851_65 rawBody851_78

def rawBody851_80 : StackLang.HolProg 64 :=
.seq rawBody851_64 rawBody851_79

def rawBody851_81 : StackLang.HolProg 64 :=
.seq rawBody851_63 rawBody851_80

def rawBody851_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody851_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody851_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody851_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody851_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody851_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody851_90 : StackLang.HolProg 64 :=
.seq rawBody851_88 rawBody851_89

def rawBody851_91 : StackLang.HolProg 64 :=
.seq rawBody851_87 rawBody851_90

def rawBody851_92 : StackLang.HolProg 64 :=
.seq rawBody851_86 rawBody851_91

def rawBody851_93 : StackLang.HolProg 64 :=
.seq rawBody851_85 rawBody851_92

def rawBody851_94 : StackLang.HolProg 64 :=
.seq rawBody851_84 rawBody851_93

def rawBody851_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody851_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody851_97 : StackLang.HolProg 64 :=
.seq rawBody851_95 rawBody851_96

def rawBody851_98 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody851_99 : StackLang.HolProg 64 :=
.seq rawBody851_97 rawBody851_98

def rawBody851_100 : StackLang.HolProg 64 :=
.call (some (rawBody851_94, 0, 851, 4)) (Sum.inl 89) (some (rawBody851_99, 851, 5))

def rawBody851_101 : StackLang.HolProg 64 :=
.seq rawBody851_83 rawBody851_100

def rawBody851_102 : StackLang.HolProg 64 :=
.seq rawBody851_82 rawBody851_101

def rawBody851_103 : StackLang.HolProg 64 :=
.seq rawBody851_81 rawBody851_102

def rawBody851_104 : StackLang.HolProg 64 :=
.seq rawBody851_62 rawBody851_103

def rawBody851_105 : StackLang.HolProg 64 :=
.seq rawBody851_59 rawBody851_104

def rawBody851_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody851_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def rawBody851_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4309#64)

def rawBody851_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody851_113 : StackLang.HolProg 64 :=
.seq rawBody851_111 rawBody851_112

def rawBody851_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody851_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody851_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody851_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 851 7

def rawBody851_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody851_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody851_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody851_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody851_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody851_124 : StackLang.HolProg 64 :=
.seq rawBody851_122 rawBody851_123

def rawBody851_125 : StackLang.HolProg 64 :=
.seq rawBody851_121 rawBody851_124

def rawBody851_126 : StackLang.HolProg 64 :=
.seq rawBody851_120 rawBody851_125

def rawBody851_127 : StackLang.HolProg 64 :=
.seq rawBody851_119 rawBody851_126

def rawBody851_128 : StackLang.HolProg 64 :=
.seq rawBody851_118 rawBody851_127

def rawBody851_129 : StackLang.HolProg 64 :=
.seq rawBody851_117 rawBody851_128

def rawBody851_130 : StackLang.HolProg 64 :=
.seq rawBody851_116 rawBody851_129

def rawBody851_131 : StackLang.HolProg 64 :=
.seq rawBody851_115 rawBody851_130

def rawBody851_132 : StackLang.HolProg 64 :=
.seq rawBody851_114 rawBody851_131

def rawBody851_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody851_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody851_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody851_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody851_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody851_140 : StackLang.HolProg 64 :=
.seq rawBody851_138 rawBody851_139

def rawBody851_141 : StackLang.HolProg 64 :=
.seq rawBody851_137 rawBody851_140

def rawBody851_142 : StackLang.HolProg 64 :=
.seq rawBody851_136 rawBody851_141

def rawBody851_143 : StackLang.HolProg 64 :=
.seq rawBody851_135 rawBody851_142

def rawBody851_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody851_145 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody851_146 : StackLang.HolProg 64 :=
.seq rawBody851_144 rawBody851_145

def rawBody851_147 : StackLang.HolProg 64 :=
.call (some (rawBody851_143, 0, 851, 6)) (Sum.inl 89) (some (rawBody851_146, 851, 7))

def rawBody851_148 : StackLang.HolProg 64 :=
.seq rawBody851_134 rawBody851_147

def rawBody851_149 : StackLang.HolProg 64 :=
.seq rawBody851_133 rawBody851_148

def rawBody851_150 : StackLang.HolProg 64 :=
.seq rawBody851_132 rawBody851_149

def rawBody851_151 : StackLang.HolProg 64 :=
.seq rawBody851_113 rawBody851_150

def rawBody851_152 : StackLang.HolProg 64 :=
.seq rawBody851_110 rawBody851_151

def rawBody851_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody851_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody851_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody851_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody851_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody851_158 : StackLang.HolProg 64 :=
.seq rawBody851_156 rawBody851_157

def rawBody851_159 : StackLang.HolProg 64 :=
.seq rawBody851_155 rawBody851_158

def rawBody851_160 : StackLang.HolProg 64 :=
.seq rawBody851_154 rawBody851_159

def rawBody851_161 : StackLang.HolProg 64 :=
.seq rawBody851_153 rawBody851_160

def rawBody851_162 : StackLang.HolProg 64 :=
.seq rawBody851_152 rawBody851_161

def rawBody851_163 : StackLang.HolProg 64 :=
.seq rawBody851_109 rawBody851_162

def rawBody851_164 : StackLang.HolProg 64 :=
.seq rawBody851_108 rawBody851_163

def rawBody851_165 : StackLang.HolProg 64 :=
.seq rawBody851_107 rawBody851_164

def rawBody851_166 : StackLang.HolProg 64 :=
.seq rawBody851_106 rawBody851_165

def rawBody851_167 : StackLang.HolProg 64 :=
.seq rawBody851_105 rawBody851_166

def rawBody851_168 : StackLang.HolProg 64 :=
.seq rawBody851_58 rawBody851_167

def rawBody851_169 : StackLang.HolProg 64 :=
.seq rawBody851_57 rawBody851_168

def rawBody851_170 : StackLang.HolProg 64 :=
.seq rawBody851_56 rawBody851_169

def rawBody851_171 : StackLang.HolProg 64 :=
.seq rawBody851_55 rawBody851_170

def rawBody851_172 : StackLang.HolProg 64 :=
.seq rawBody851_54 rawBody851_171

def rawBody851_173 : StackLang.HolProg 64 :=
.seq rawBody851_7 rawBody851_172

def rawBody851_174 : StackLang.HolProg 64 :=
.seq rawBody851_0 rawBody851_173

def raw851 : StackLang.HolProg 64 := rawBody851_174
theorem raw851_eq : StackRawCall.compTop RawInfo.rawInfo (function851 (.list [])).1 = raw851 := by
  kernel_rfl
#print axioms raw851_eq
end InitECandidate.Proofs.BackendStages
