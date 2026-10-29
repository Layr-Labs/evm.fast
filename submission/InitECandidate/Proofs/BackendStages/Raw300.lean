import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function300
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody300_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody300_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody300_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody300_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody300_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def rawBody300_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody300_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody300_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody300_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody300_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody300_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody300_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody300_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody300_14 : StackLang.HolProg 64 :=
.seq rawBody300_12 rawBody300_13

def rawBody300_15 : StackLang.HolProg 64 :=
.seq rawBody300_11 rawBody300_14

def rawBody300_16 : StackLang.HolProg 64 :=
.seq rawBody300_10 rawBody300_15

def rawBody300_17 : StackLang.HolProg 64 :=
.seq rawBody300_9 rawBody300_16

def rawBody300_18 : StackLang.HolProg 64 :=
.seq rawBody300_8 rawBody300_17

def rawBody300_19 : StackLang.HolProg 64 :=
.seq rawBody300_7 rawBody300_18

def rawBody300_20 : StackLang.HolProg 64 :=
.seq rawBody300_6 rawBody300_19

def rawBody300_21 : StackLang.HolProg 64 :=
.seq rawBody300_5 rawBody300_20

def rawBody300_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 806#64)

def rawBody300_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody300_25 : StackLang.HolProg 64 :=
.seq rawBody300_23 rawBody300_24

def rawBody300_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody300_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody300_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody300_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 5

def rawBody300_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody300_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody300_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody300_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody300_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody300_36 : StackLang.HolProg 64 :=
.seq rawBody300_34 rawBody300_35

def rawBody300_37 : StackLang.HolProg 64 :=
.seq rawBody300_33 rawBody300_36

def rawBody300_38 : StackLang.HolProg 64 :=
.seq rawBody300_32 rawBody300_37

def rawBody300_39 : StackLang.HolProg 64 :=
.seq rawBody300_31 rawBody300_38

def rawBody300_40 : StackLang.HolProg 64 :=
.seq rawBody300_30 rawBody300_39

def rawBody300_41 : StackLang.HolProg 64 :=
.seq rawBody300_29 rawBody300_40

def rawBody300_42 : StackLang.HolProg 64 :=
.seq rawBody300_28 rawBody300_41

def rawBody300_43 : StackLang.HolProg 64 :=
.seq rawBody300_27 rawBody300_42

def rawBody300_44 : StackLang.HolProg 64 :=
.seq rawBody300_26 rawBody300_43

def rawBody300_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody300_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody300_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody300_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody300_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 9

def rawBody300_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody300_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody300_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody300_55 : StackLang.HolProg 64 :=
.seq rawBody300_53 rawBody300_54

def rawBody300_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody300_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody300_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody300_59 : StackLang.HolProg 64 :=
.seq rawBody300_57 rawBody300_58

def rawBody300_60 : StackLang.HolProg 64 :=
.seq rawBody300_56 rawBody300_59

def rawBody300_61 : StackLang.HolProg 64 :=
.seq rawBody300_55 rawBody300_60

def rawBody300_62 : StackLang.HolProg 64 :=
.seq rawBody300_52 rawBody300_61

def rawBody300_63 : StackLang.HolProg 64 :=
.seq rawBody300_51 rawBody300_62

def rawBody300_64 : StackLang.HolProg 64 :=
.seq rawBody300_50 rawBody300_63

def rawBody300_65 : StackLang.HolProg 64 :=
.seq rawBody300_49 rawBody300_64

def rawBody300_66 : StackLang.HolProg 64 :=
.seq rawBody300_48 rawBody300_65

def rawBody300_67 : StackLang.HolProg 64 :=
.seq rawBody300_47 rawBody300_66

def rawBody300_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 23 3

def rawBody300_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody300_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody300_71 : StackLang.HolProg 64 :=
.seq rawBody300_69 rawBody300_70

def rawBody300_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody300_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody300_74 : StackLang.HolProg 64 :=
.seq rawBody300_72 rawBody300_73

def rawBody300_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody300_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody300_77 : StackLang.HolProg 64 :=
.seq rawBody300_75 rawBody300_76

def rawBody300_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody300_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody300_80 : StackLang.HolProg 64 :=
.seq rawBody300_78 rawBody300_79

def rawBody300_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 23 8

def rawBody300_82 : StackLang.HolProg 64 :=
.seq rawBody300_80 rawBody300_81

def rawBody300_83 : StackLang.HolProg 64 :=
.seq rawBody300_77 rawBody300_82

def rawBody300_84 : StackLang.HolProg 64 :=
.seq rawBody300_74 rawBody300_83

def rawBody300_85 : StackLang.HolProg 64 :=
.seq rawBody300_71 rawBody300_84

def rawBody300_86 : StackLang.HolProg 64 :=
.seq rawBody300_68 rawBody300_85

def rawBody300_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody300_89 : StackLang.HolProg 64 :=
.seq rawBody300_87 rawBody300_88

def rawBody300_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody300_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody300_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody300_94 : StackLang.HolProg 64 :=
.seq rawBody300_92 rawBody300_93

def rawBody300_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody300_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody300_97 : StackLang.HolProg 64 :=
.seq rawBody300_95 rawBody300_96

def rawBody300_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody300_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody300_100 : StackLang.HolProg 64 :=
.seq rawBody300_98 rawBody300_99

def rawBody300_101 : StackLang.HolProg 64 :=
.seq rawBody300_97 rawBody300_100

def rawBody300_102 : StackLang.HolProg 64 :=
.seq rawBody300_94 rawBody300_101

def rawBody300_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 807#64)

def rawBody300_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody300_106 : StackLang.HolProg 64 :=
.seq rawBody300_104 rawBody300_105

def rawBody300_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody300_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody300_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody300_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 4

def rawBody300_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody300_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody300_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody300_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody300_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody300_117 : StackLang.HolProg 64 :=
.seq rawBody300_115 rawBody300_116

def rawBody300_118 : StackLang.HolProg 64 :=
.seq rawBody300_114 rawBody300_117

def rawBody300_119 : StackLang.HolProg 64 :=
.seq rawBody300_113 rawBody300_118

def rawBody300_120 : StackLang.HolProg 64 :=
.seq rawBody300_112 rawBody300_119

def rawBody300_121 : StackLang.HolProg 64 :=
.seq rawBody300_111 rawBody300_120

def rawBody300_122 : StackLang.HolProg 64 :=
.seq rawBody300_110 rawBody300_121

def rawBody300_123 : StackLang.HolProg 64 :=
.seq rawBody300_109 rawBody300_122

def rawBody300_124 : StackLang.HolProg 64 :=
.seq rawBody300_108 rawBody300_123

def rawBody300_125 : StackLang.HolProg 64 :=
.seq rawBody300_107 rawBody300_124

def rawBody300_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody300_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody300_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody300_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody300_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 9

def rawBody300_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def rawBody300_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody300_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody300_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody300_137 : StackLang.HolProg 64 :=
.seq rawBody300_135 rawBody300_136

def rawBody300_138 : StackLang.HolProg 64 :=
.seq rawBody300_134 rawBody300_137

def rawBody300_139 : StackLang.HolProg 64 :=
.seq rawBody300_133 rawBody300_138

def rawBody300_140 : StackLang.HolProg 64 :=
.seq rawBody300_132 rawBody300_139

def rawBody300_141 : StackLang.HolProg 64 :=
.seq rawBody300_131 rawBody300_140

def rawBody300_142 : StackLang.HolProg 64 :=
.seq rawBody300_130 rawBody300_141

def rawBody300_143 : StackLang.HolProg 64 :=
.seq rawBody300_129 rawBody300_142

def rawBody300_144 : StackLang.HolProg 64 :=
.seq rawBody300_128 rawBody300_143

def rawBody300_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 9

def rawBody300_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def rawBody300_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody300_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody300_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody300_150 : StackLang.HolProg 64 :=
.seq rawBody300_148 rawBody300_149

def rawBody300_151 : StackLang.HolProg 64 :=
.seq rawBody300_147 rawBody300_150

def rawBody300_152 : StackLang.HolProg 64 :=
.seq rawBody300_146 rawBody300_151

def rawBody300_153 : StackLang.HolProg 64 :=
.seq rawBody300_145 rawBody300_152

def rawBody300_154 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody300_155 : StackLang.HolProg 64 :=
.seq rawBody300_153 rawBody300_154

def rawBody300_156 : StackLang.HolProg 64 :=
.call (some (rawBody300_144, 0, 300, 3)) (Sum.inl 286) (some (rawBody300_155, 300, 4))

def rawBody300_157 : StackLang.HolProg 64 :=
.seq rawBody300_127 rawBody300_156

def rawBody300_158 : StackLang.HolProg 64 :=
.seq rawBody300_126 rawBody300_157

def rawBody300_159 : StackLang.HolProg 64 :=
.seq rawBody300_125 rawBody300_158

def rawBody300_160 : StackLang.HolProg 64 :=
.seq rawBody300_106 rawBody300_159

def rawBody300_161 : StackLang.HolProg 64 :=
.seq rawBody300_103 rawBody300_160

def rawBody300_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_164 : StackLang.HolProg 64 :=
.seq rawBody300_162 rawBody300_163

def rawBody300_165 : StackLang.HolProg 64 :=
.seq rawBody300_161 rawBody300_164

def rawBody300_166 : StackLang.HolProg 64 :=
.seq rawBody300_102 rawBody300_165

def rawBody300_167 : StackLang.HolProg 64 :=
.seq rawBody300_91 rawBody300_166

def rawBody300_168 : StackLang.HolProg 64 :=
.seq rawBody300_90 rawBody300_167

def rawBody300_169 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) rawBody300_89 rawBody300_168

def rawBody300_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody300_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody300_173 : StackLang.HolProg 64 :=
.seq rawBody300_171 rawBody300_172

def rawBody300_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody300_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody300_176 : StackLang.HolProg 64 :=
.seq rawBody300_174 rawBody300_175

def rawBody300_177 : StackLang.HolProg 64 :=
.seq rawBody300_173 rawBody300_176

def rawBody300_178 : StackLang.HolProg 64 :=
.seq rawBody300_170 rawBody300_177

def rawBody300_179 : StackLang.HolProg 64 :=
.seq rawBody300_169 rawBody300_178

def rawBody300_180 : StackLang.HolProg 64 :=
.seq rawBody300_86 rawBody300_179

def rawBody300_181 : StackLang.HolProg 64 :=
.call (some (rawBody300_67, 0, 300, 2)) (Sum.inl 161) (some (rawBody300_180, 300, 5))

def rawBody300_182 : StackLang.HolProg 64 :=
.seq rawBody300_46 rawBody300_181

def rawBody300_183 : StackLang.HolProg 64 :=
.seq rawBody300_45 rawBody300_182

def rawBody300_184 : StackLang.HolProg 64 :=
.seq rawBody300_44 rawBody300_183

def rawBody300_185 : StackLang.HolProg 64 :=
.seq rawBody300_25 rawBody300_184

def rawBody300_186 : StackLang.HolProg 64 :=
.seq rawBody300_22 rawBody300_185

def rawBody300_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody300_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody300_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody300_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody300_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody300_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody300_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody300_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody300_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def rawBody300_201 : StackLang.HolProg 64 :=
.seq rawBody300_199 rawBody300_200

def rawBody300_202 : StackLang.HolProg 64 :=
.seq rawBody300_198 rawBody300_201

def rawBody300_203 : StackLang.HolProg 64 :=
.seq rawBody300_197 rawBody300_202

def rawBody300_204 : StackLang.HolProg 64 :=
.seq rawBody300_196 rawBody300_203

def rawBody300_205 : StackLang.HolProg 64 :=
.seq rawBody300_195 rawBody300_204

def rawBody300_206 : StackLang.HolProg 64 :=
.seq rawBody300_194 rawBody300_205

def rawBody300_207 : StackLang.HolProg 64 :=
.seq rawBody300_193 rawBody300_206

def rawBody300_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_209 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody300_207 rawBody300_208

def rawBody300_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody300_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def rawBody300_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 9

def rawBody300_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 808#64)

def rawBody300_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody300_220 : StackLang.HolProg 64 :=
.seq rawBody300_218 rawBody300_219

def rawBody300_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody300_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody300_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody300_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 7

def rawBody300_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody300_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody300_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody300_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody300_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody300_231 : StackLang.HolProg 64 :=
.seq rawBody300_229 rawBody300_230

def rawBody300_232 : StackLang.HolProg 64 :=
.seq rawBody300_228 rawBody300_231

def rawBody300_233 : StackLang.HolProg 64 :=
.seq rawBody300_227 rawBody300_232

def rawBody300_234 : StackLang.HolProg 64 :=
.seq rawBody300_226 rawBody300_233

def rawBody300_235 : StackLang.HolProg 64 :=
.seq rawBody300_225 rawBody300_234

def rawBody300_236 : StackLang.HolProg 64 :=
.seq rawBody300_224 rawBody300_235

def rawBody300_237 : StackLang.HolProg 64 :=
.seq rawBody300_223 rawBody300_236

def rawBody300_238 : StackLang.HolProg 64 :=
.seq rawBody300_222 rawBody300_237

def rawBody300_239 : StackLang.HolProg 64 :=
.seq rawBody300_221 rawBody300_238

def rawBody300_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody300_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody300_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody300_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody300_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody300_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody300_248 : StackLang.HolProg 64 :=
.seq rawBody300_246 rawBody300_247

def rawBody300_249 : StackLang.HolProg 64 :=
.seq rawBody300_245 rawBody300_248

def rawBody300_250 : StackLang.HolProg 64 :=
.seq rawBody300_244 rawBody300_249

def rawBody300_251 : StackLang.HolProg 64 :=
.seq rawBody300_243 rawBody300_250

def rawBody300_252 : StackLang.HolProg 64 :=
.seq rawBody300_242 rawBody300_251

def rawBody300_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody300_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody300_255 : StackLang.HolProg 64 :=
.seq rawBody300_253 rawBody300_254

def rawBody300_256 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody300_257 : StackLang.HolProg 64 :=
.seq rawBody300_255 rawBody300_256

def rawBody300_258 : StackLang.HolProg 64 :=
.call (some (rawBody300_252, 0, 300, 6)) (Sum.inl 286) (some (rawBody300_257, 300, 7))

def rawBody300_259 : StackLang.HolProg 64 :=
.seq rawBody300_241 rawBody300_258

def rawBody300_260 : StackLang.HolProg 64 :=
.seq rawBody300_240 rawBody300_259

def rawBody300_261 : StackLang.HolProg 64 :=
.seq rawBody300_239 rawBody300_260

def rawBody300_262 : StackLang.HolProg 64 :=
.seq rawBody300_220 rawBody300_261

def rawBody300_263 : StackLang.HolProg 64 :=
.seq rawBody300_217 rawBody300_262

def rawBody300_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_266 : StackLang.HolProg 64 :=
.seq rawBody300_264 rawBody300_265

def rawBody300_267 : StackLang.HolProg 64 :=
.seq rawBody300_263 rawBody300_266

def rawBody300_268 : StackLang.HolProg 64 :=
.seq rawBody300_216 rawBody300_267

def rawBody300_269 : StackLang.HolProg 64 :=
.seq rawBody300_215 rawBody300_268

def rawBody300_270 : StackLang.HolProg 64 :=
.seq rawBody300_214 rawBody300_269

def rawBody300_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 9

def rawBody300_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody300_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody300_275 : StackLang.HolProg 64 :=
.seq rawBody300_273 rawBody300_274

def rawBody300_276 : StackLang.HolProg 64 :=
.seq rawBody300_272 rawBody300_275

def rawBody300_277 : StackLang.HolProg 64 :=
.seq rawBody300_271 rawBody300_276

def rawBody300_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody300_270 rawBody300_277

def rawBody300_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody300_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody300_282 : StackLang.HolProg 64 :=
.seq rawBody300_280 rawBody300_281

def rawBody300_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 809#64)

def rawBody300_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody300_286 : StackLang.HolProg 64 :=
.seq rawBody300_284 rawBody300_285

def rawBody300_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody300_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody300_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody300_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 9

def rawBody300_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody300_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody300_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody300_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody300_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody300_297 : StackLang.HolProg 64 :=
.seq rawBody300_295 rawBody300_296

def rawBody300_298 : StackLang.HolProg 64 :=
.seq rawBody300_294 rawBody300_297

def rawBody300_299 : StackLang.HolProg 64 :=
.seq rawBody300_293 rawBody300_298

def rawBody300_300 : StackLang.HolProg 64 :=
.seq rawBody300_292 rawBody300_299

def rawBody300_301 : StackLang.HolProg 64 :=
.seq rawBody300_291 rawBody300_300

def rawBody300_302 : StackLang.HolProg 64 :=
.seq rawBody300_290 rawBody300_301

def rawBody300_303 : StackLang.HolProg 64 :=
.seq rawBody300_289 rawBody300_302

def rawBody300_304 : StackLang.HolProg 64 :=
.seq rawBody300_288 rawBody300_303

def rawBody300_305 : StackLang.HolProg 64 :=
.seq rawBody300_287 rawBody300_304

def rawBody300_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody300_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody300_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody300_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody300_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody300_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody300_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody300_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody300_316 : StackLang.HolProg 64 :=
.seq rawBody300_314 rawBody300_315

def rawBody300_317 : StackLang.HolProg 64 :=
.seq rawBody300_313 rawBody300_316

def rawBody300_318 : StackLang.HolProg 64 :=
.seq rawBody300_312 rawBody300_317

def rawBody300_319 : StackLang.HolProg 64 :=
.seq rawBody300_311 rawBody300_318

def rawBody300_320 : StackLang.HolProg 64 :=
.seq rawBody300_310 rawBody300_319

def rawBody300_321 : StackLang.HolProg 64 :=
.seq rawBody300_309 rawBody300_320

def rawBody300_322 : StackLang.HolProg 64 :=
.seq rawBody300_308 rawBody300_321

def rawBody300_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody300_324 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody300_325 : StackLang.HolProg 64 :=
.seq rawBody300_323 rawBody300_324

def rawBody300_326 : StackLang.HolProg 64 :=
.call (some (rawBody300_322, 0, 300, 8)) (Sum.inl 294) (some (rawBody300_325, 300, 9))

def rawBody300_327 : StackLang.HolProg 64 :=
.seq rawBody300_307 rawBody300_326

def rawBody300_328 : StackLang.HolProg 64 :=
.seq rawBody300_306 rawBody300_327

def rawBody300_329 : StackLang.HolProg 64 :=
.seq rawBody300_305 rawBody300_328

def rawBody300_330 : StackLang.HolProg 64 :=
.seq rawBody300_286 rawBody300_329

def rawBody300_331 : StackLang.HolProg 64 :=
.seq rawBody300_283 rawBody300_330

def rawBody300_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody300_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody300_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 810#64)

def rawBody300_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody300_340 : StackLang.HolProg 64 :=
.seq rawBody300_338 rawBody300_339

def rawBody300_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody300_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody300_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody300_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 11

def rawBody300_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody300_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody300_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody300_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody300_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody300_351 : StackLang.HolProg 64 :=
.seq rawBody300_349 rawBody300_350

def rawBody300_352 : StackLang.HolProg 64 :=
.seq rawBody300_348 rawBody300_351

def rawBody300_353 : StackLang.HolProg 64 :=
.seq rawBody300_347 rawBody300_352

def rawBody300_354 : StackLang.HolProg 64 :=
.seq rawBody300_346 rawBody300_353

def rawBody300_355 : StackLang.HolProg 64 :=
.seq rawBody300_345 rawBody300_354

def rawBody300_356 : StackLang.HolProg 64 :=
.seq rawBody300_344 rawBody300_355

def rawBody300_357 : StackLang.HolProg 64 :=
.seq rawBody300_343 rawBody300_356

def rawBody300_358 : StackLang.HolProg 64 :=
.seq rawBody300_342 rawBody300_357

def rawBody300_359 : StackLang.HolProg 64 :=
.seq rawBody300_341 rawBody300_358

def rawBody300_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody300_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody300_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody300_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody300_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody300_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 9

def rawBody300_368 : StackLang.HolProg 64 :=
.seq rawBody300_366 rawBody300_367

def rawBody300_369 : StackLang.HolProg 64 :=
.seq rawBody300_365 rawBody300_368

def rawBody300_370 : StackLang.HolProg 64 :=
.seq rawBody300_364 rawBody300_369

def rawBody300_371 : StackLang.HolProg 64 :=
.seq rawBody300_363 rawBody300_370

def rawBody300_372 : StackLang.HolProg 64 :=
.seq rawBody300_362 rawBody300_371

def rawBody300_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 9

def rawBody300_374 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody300_375 : StackLang.HolProg 64 :=
.seq rawBody300_373 rawBody300_374

def rawBody300_376 : StackLang.HolProg 64 :=
.call (some (rawBody300_372, 0, 300, 10)) (Sum.inl 295) (some (rawBody300_375, 300, 11))

def rawBody300_377 : StackLang.HolProg 64 :=
.seq rawBody300_361 rawBody300_376

def rawBody300_378 : StackLang.HolProg 64 :=
.seq rawBody300_360 rawBody300_377

def rawBody300_379 : StackLang.HolProg 64 :=
.seq rawBody300_359 rawBody300_378

def rawBody300_380 : StackLang.HolProg 64 :=
.seq rawBody300_340 rawBody300_379

def rawBody300_381 : StackLang.HolProg 64 :=
.seq rawBody300_337 rawBody300_380

def rawBody300_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody300_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody300_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody300_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody300_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def rawBody300_390 : StackLang.HolProg 64 :=
.seq rawBody300_388 rawBody300_389

def rawBody300_391 : StackLang.HolProg 64 :=
.seq rawBody300_387 rawBody300_390

def rawBody300_392 : StackLang.HolProg 64 :=
.seq rawBody300_386 rawBody300_391

def rawBody300_393 : StackLang.HolProg 64 :=
.seq rawBody300_385 rawBody300_392

def rawBody300_394 : StackLang.HolProg 64 :=
.seq rawBody300_384 rawBody300_393

def rawBody300_395 : StackLang.HolProg 64 :=
.seq rawBody300_383 rawBody300_394

def rawBody300_396 : StackLang.HolProg 64 :=
.seq rawBody300_382 rawBody300_395

def rawBody300_397 : StackLang.HolProg 64 :=
.seq rawBody300_381 rawBody300_396

def rawBody300_398 : StackLang.HolProg 64 :=
.seq rawBody300_336 rawBody300_397

def rawBody300_399 : StackLang.HolProg 64 :=
.seq rawBody300_335 rawBody300_398

def rawBody300_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 9

def rawBody300_401 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody300_399 rawBody300_400

def rawBody300_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody300_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody300_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody300_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody300_408 : StackLang.HolProg 64 :=
.seq rawBody300_406 rawBody300_407

def rawBody300_409 : StackLang.HolProg 64 :=
.seq rawBody300_405 rawBody300_408

def rawBody300_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody300_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def rawBody300_412 : StackLang.HolProg 64 :=
.seq rawBody300_410 rawBody300_411

def rawBody300_413 : StackLang.HolProg 64 :=
.seq rawBody300_409 rawBody300_412

def rawBody300_414 : StackLang.HolProg 64 :=
.seq rawBody300_404 rawBody300_413

def rawBody300_415 : StackLang.HolProg 64 :=
.seq rawBody300_403 rawBody300_414

def rawBody300_416 : StackLang.HolProg 64 :=
.seq rawBody300_402 rawBody300_415

def rawBody300_417 : StackLang.HolProg 64 :=
.seq rawBody300_401 rawBody300_416

def rawBody300_418 : StackLang.HolProg 64 :=
.seq rawBody300_334 rawBody300_417

def rawBody300_419 : StackLang.HolProg 64 :=
.seq rawBody300_333 rawBody300_418

def rawBody300_420 : StackLang.HolProg 64 :=
.seq rawBody300_332 rawBody300_419

def rawBody300_421 : StackLang.HolProg 64 :=
.seq rawBody300_331 rawBody300_420

def rawBody300_422 : StackLang.HolProg 64 :=
.seq rawBody300_282 rawBody300_421

def rawBody300_423 : StackLang.HolProg 64 :=
.seq rawBody300_279 rawBody300_422

def rawBody300_424 : StackLang.HolProg 64 :=
.seq rawBody300_278 rawBody300_423

def rawBody300_425 : StackLang.HolProg 64 :=
.seq rawBody300_213 rawBody300_424

def rawBody300_426 : StackLang.HolProg 64 :=
.seq rawBody300_212 rawBody300_425

def rawBody300_427 : StackLang.HolProg 64 :=
.seq rawBody300_211 rawBody300_426

def rawBody300_428 : StackLang.HolProg 64 :=
.seq rawBody300_210 rawBody300_427

def rawBody300_429 : StackLang.HolProg 64 :=
.seq rawBody300_209 rawBody300_428

def rawBody300_430 : StackLang.HolProg 64 :=
.seq rawBody300_192 rawBody300_429

def rawBody300_431 : StackLang.HolProg 64 :=
.seq rawBody300_191 rawBody300_430

def rawBody300_432 : StackLang.HolProg 64 :=
.seq rawBody300_190 rawBody300_431

def rawBody300_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_434 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody300_432 rawBody300_433

def rawBody300_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody300_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody300_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody300_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody300_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody300_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody300_442 : StackLang.HolProg 64 :=
.seq rawBody300_440 rawBody300_441

def rawBody300_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody300_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def rawBody300_445 : StackLang.HolProg 64 :=
.seq rawBody300_443 rawBody300_444

def rawBody300_446 : StackLang.HolProg 64 :=
.seq rawBody300_442 rawBody300_445

def rawBody300_447 : StackLang.HolProg 64 :=
.seq rawBody300_439 rawBody300_446

def rawBody300_448 : StackLang.HolProg 64 :=
.seq rawBody300_438 rawBody300_447

def rawBody300_449 : StackLang.HolProg 64 :=
.seq rawBody300_437 rawBody300_448

def rawBody300_450 : StackLang.HolProg 64 :=
.seq rawBody300_436 rawBody300_449

def rawBody300_451 : StackLang.HolProg 64 :=
.seq rawBody300_435 rawBody300_450

def rawBody300_452 : StackLang.HolProg 64 :=
.seq rawBody300_434 rawBody300_451

def rawBody300_453 : StackLang.HolProg 64 :=
.seq rawBody300_189 rawBody300_452

def rawBody300_454 : StackLang.HolProg 64 :=
.seq rawBody300_188 rawBody300_453

def rawBody300_455 : StackLang.HolProg 64 :=
.seq rawBody300_187 rawBody300_454

def rawBody300_456 : StackLang.HolProg 64 :=
.seq rawBody300_186 rawBody300_455

def rawBody300_457 : StackLang.HolProg 64 :=
.seq rawBody300_21 rawBody300_456

def rawBody300_458 : StackLang.HolProg 64 :=
.seq rawBody300_4 rawBody300_457

def rawBody300_459 : StackLang.HolProg 64 :=
.seq rawBody300_3 rawBody300_458

def rawBody300_460 : StackLang.HolProg 64 :=
.seq rawBody300_2 rawBody300_459

def rawBody300_461 : StackLang.HolProg 64 :=
.seq rawBody300_1 rawBody300_460

def rawBody300_462 : StackLang.HolProg 64 :=
.seq rawBody300_0 rawBody300_461

def raw300 : StackLang.HolProg 64 := rawBody300_462
theorem raw300_eq : StackRawCall.compTop RawInfo.rawInfo (function300 (.list [])).1 = raw300 := by
  kernel_rfl
#print axioms raw300_eq
end InitECandidate.Proofs.BackendStages
