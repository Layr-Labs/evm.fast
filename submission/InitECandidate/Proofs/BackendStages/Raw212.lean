import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function212
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody212_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 14

def rawBody212_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 13

def rawBody212_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 12

def rawBody212_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 11

def rawBody212_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 10

def rawBody212_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def rawBody212_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 8

def rawBody212_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def rawBody212_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody212_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def rawBody212_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody212_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody212_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 2

def rawBody212_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def rawBody212_14 : StackLang.HolProg 64 :=
.seq rawBody212_12 rawBody212_13

def rawBody212_15 : StackLang.HolProg 64 :=
.seq rawBody212_11 rawBody212_14

def rawBody212_16 : StackLang.HolProg 64 :=
.seq rawBody212_10 rawBody212_15

def rawBody212_17 : StackLang.HolProg 64 :=
.seq rawBody212_9 rawBody212_16

def rawBody212_18 : StackLang.HolProg 64 :=
.seq rawBody212_8 rawBody212_17

def rawBody212_19 : StackLang.HolProg 64 :=
.seq rawBody212_7 rawBody212_18

def rawBody212_20 : StackLang.HolProg 64 :=
.seq rawBody212_6 rawBody212_19

def rawBody212_21 : StackLang.HolProg 64 :=
.seq rawBody212_5 rawBody212_20

def rawBody212_22 : StackLang.HolProg 64 :=
.seq rawBody212_4 rawBody212_21

def rawBody212_23 : StackLang.HolProg 64 :=
.seq rawBody212_3 rawBody212_22

def rawBody212_24 : StackLang.HolProg 64 :=
.seq rawBody212_2 rawBody212_23

def rawBody212_25 : StackLang.HolProg 64 :=
.seq rawBody212_1 rawBody212_24

def rawBody212_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 271#64)

def rawBody212_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody212_29 : StackLang.HolProg 64 :=
.seq rawBody212_27 rawBody212_28

def rawBody212_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody212_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody212_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody212_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 212 3

def rawBody212_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody212_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody212_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody212_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody212_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody212_40 : StackLang.HolProg 64 :=
.seq rawBody212_38 rawBody212_39

def rawBody212_41 : StackLang.HolProg 64 :=
.seq rawBody212_37 rawBody212_40

def rawBody212_42 : StackLang.HolProg 64 :=
.seq rawBody212_36 rawBody212_41

def rawBody212_43 : StackLang.HolProg 64 :=
.seq rawBody212_35 rawBody212_42

def rawBody212_44 : StackLang.HolProg 64 :=
.seq rawBody212_34 rawBody212_43

def rawBody212_45 : StackLang.HolProg 64 :=
.seq rawBody212_33 rawBody212_44

def rawBody212_46 : StackLang.HolProg 64 :=
.seq rawBody212_32 rawBody212_45

def rawBody212_47 : StackLang.HolProg 64 :=
.seq rawBody212_31 rawBody212_46

def rawBody212_48 : StackLang.HolProg 64 :=
.seq rawBody212_30 rawBody212_47

def rawBody212_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody212_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody212_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody212_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody212_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody212_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def rawBody212_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 11

def rawBody212_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody212_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def rawBody212_60 : StackLang.HolProg 64 :=
.seq rawBody212_58 rawBody212_59

def rawBody212_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody212_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody212_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody212_64 : StackLang.HolProg 64 :=
.seq rawBody212_62 rawBody212_63

def rawBody212_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def rawBody212_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody212_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody212_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody212_69 : StackLang.HolProg 64 :=
.seq rawBody212_67 rawBody212_68

def rawBody212_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody212_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody212_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody212_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody212_74 : StackLang.HolProg 64 :=
.seq rawBody212_72 rawBody212_73

def rawBody212_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody212_76 : StackLang.HolProg 64 :=
.seq rawBody212_74 rawBody212_75

def rawBody212_77 : StackLang.HolProg 64 :=
.seq rawBody212_71 rawBody212_76

def rawBody212_78 : StackLang.HolProg 64 :=
.seq rawBody212_70 rawBody212_77

def rawBody212_79 : StackLang.HolProg 64 :=
.seq rawBody212_69 rawBody212_78

def rawBody212_80 : StackLang.HolProg 64 :=
.seq rawBody212_66 rawBody212_79

def rawBody212_81 : StackLang.HolProg 64 :=
.seq rawBody212_65 rawBody212_80

def rawBody212_82 : StackLang.HolProg 64 :=
.seq rawBody212_64 rawBody212_81

def rawBody212_83 : StackLang.HolProg 64 :=
.seq rawBody212_61 rawBody212_82

def rawBody212_84 : StackLang.HolProg 64 :=
.seq rawBody212_60 rawBody212_83

def rawBody212_85 : StackLang.HolProg 64 :=
.seq rawBody212_57 rawBody212_84

def rawBody212_86 : StackLang.HolProg 64 :=
.seq rawBody212_56 rawBody212_85

def rawBody212_87 : StackLang.HolProg 64 :=
.seq rawBody212_55 rawBody212_86

def rawBody212_88 : StackLang.HolProg 64 :=
.seq rawBody212_54 rawBody212_87

def rawBody212_89 : StackLang.HolProg 64 :=
.seq rawBody212_53 rawBody212_88

def rawBody212_90 : StackLang.HolProg 64 :=
.seq rawBody212_52 rawBody212_89

def rawBody212_91 : StackLang.HolProg 64 :=
.seq rawBody212_51 rawBody212_90

def rawBody212_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def rawBody212_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 11

def rawBody212_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody212_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def rawBody212_96 : StackLang.HolProg 64 :=
.seq rawBody212_94 rawBody212_95

def rawBody212_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody212_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody212_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody212_100 : StackLang.HolProg 64 :=
.seq rawBody212_98 rawBody212_99

def rawBody212_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def rawBody212_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody212_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody212_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody212_105 : StackLang.HolProg 64 :=
.seq rawBody212_103 rawBody212_104

def rawBody212_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody212_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody212_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody212_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody212_110 : StackLang.HolProg 64 :=
.seq rawBody212_108 rawBody212_109

def rawBody212_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody212_112 : StackLang.HolProg 64 :=
.seq rawBody212_110 rawBody212_111

def rawBody212_113 : StackLang.HolProg 64 :=
.seq rawBody212_107 rawBody212_112

def rawBody212_114 : StackLang.HolProg 64 :=
.seq rawBody212_106 rawBody212_113

def rawBody212_115 : StackLang.HolProg 64 :=
.seq rawBody212_105 rawBody212_114

def rawBody212_116 : StackLang.HolProg 64 :=
.seq rawBody212_102 rawBody212_115

def rawBody212_117 : StackLang.HolProg 64 :=
.seq rawBody212_101 rawBody212_116

def rawBody212_118 : StackLang.HolProg 64 :=
.seq rawBody212_100 rawBody212_117

def rawBody212_119 : StackLang.HolProg 64 :=
.seq rawBody212_97 rawBody212_118

def rawBody212_120 : StackLang.HolProg 64 :=
.seq rawBody212_96 rawBody212_119

def rawBody212_121 : StackLang.HolProg 64 :=
.seq rawBody212_93 rawBody212_120

def rawBody212_122 : StackLang.HolProg 64 :=
.seq rawBody212_92 rawBody212_121

def rawBody212_123 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody212_124 : StackLang.HolProg 64 :=
.seq rawBody212_122 rawBody212_123

def rawBody212_125 : StackLang.HolProg 64 :=
.call (some (rawBody212_91, 0, 212, 2)) (Sum.inl 106) (some (rawBody212_124, 212, 3))

def rawBody212_126 : StackLang.HolProg 64 :=
.seq rawBody212_50 rawBody212_125

def rawBody212_127 : StackLang.HolProg 64 :=
.seq rawBody212_49 rawBody212_126

def rawBody212_128 : StackLang.HolProg 64 :=
.seq rawBody212_48 rawBody212_127

def rawBody212_129 : StackLang.HolProg 64 :=
.seq rawBody212_29 rawBody212_128

def rawBody212_130 : StackLang.HolProg 64 :=
.seq rawBody212_26 rawBody212_129

def rawBody212_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody212_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody212_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 10

def rawBody212_134 : StackLang.HolProg 64 :=
.seq rawBody212_132 rawBody212_133

def rawBody212_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 272#64)

def rawBody212_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody212_138 : StackLang.HolProg 64 :=
.seq rawBody212_136 rawBody212_137

def rawBody212_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody212_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody212_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody212_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 212 5

def rawBody212_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody212_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody212_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody212_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody212_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody212_149 : StackLang.HolProg 64 :=
.seq rawBody212_147 rawBody212_148

def rawBody212_150 : StackLang.HolProg 64 :=
.seq rawBody212_146 rawBody212_149

def rawBody212_151 : StackLang.HolProg 64 :=
.seq rawBody212_145 rawBody212_150

def rawBody212_152 : StackLang.HolProg 64 :=
.seq rawBody212_144 rawBody212_151

def rawBody212_153 : StackLang.HolProg 64 :=
.seq rawBody212_143 rawBody212_152

def rawBody212_154 : StackLang.HolProg 64 :=
.seq rawBody212_142 rawBody212_153

def rawBody212_155 : StackLang.HolProg 64 :=
.seq rawBody212_141 rawBody212_154

def rawBody212_156 : StackLang.HolProg 64 :=
.seq rawBody212_140 rawBody212_155

def rawBody212_157 : StackLang.HolProg 64 :=
.seq rawBody212_139 rawBody212_156

def rawBody212_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody212_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody212_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody212_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody212_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody212_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def rawBody212_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 11

def rawBody212_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def rawBody212_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def rawBody212_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def rawBody212_170 : StackLang.HolProg 64 :=
.seq rawBody212_168 rawBody212_169

def rawBody212_171 : StackLang.HolProg 64 :=
.seq rawBody212_167 rawBody212_170

def rawBody212_172 : StackLang.HolProg 64 :=
.seq rawBody212_166 rawBody212_171

def rawBody212_173 : StackLang.HolProg 64 :=
.seq rawBody212_165 rawBody212_172

def rawBody212_174 : StackLang.HolProg 64 :=
.seq rawBody212_164 rawBody212_173

def rawBody212_175 : StackLang.HolProg 64 :=
.seq rawBody212_163 rawBody212_174

def rawBody212_176 : StackLang.HolProg 64 :=
.seq rawBody212_162 rawBody212_175

def rawBody212_177 : StackLang.HolProg 64 :=
.seq rawBody212_161 rawBody212_176

def rawBody212_178 : StackLang.HolProg 64 :=
.seq rawBody212_160 rawBody212_177

def rawBody212_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def rawBody212_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 11

def rawBody212_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def rawBody212_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def rawBody212_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def rawBody212_184 : StackLang.HolProg 64 :=
.seq rawBody212_182 rawBody212_183

def rawBody212_185 : StackLang.HolProg 64 :=
.seq rawBody212_181 rawBody212_184

def rawBody212_186 : StackLang.HolProg 64 :=
.seq rawBody212_180 rawBody212_185

def rawBody212_187 : StackLang.HolProg 64 :=
.seq rawBody212_179 rawBody212_186

def rawBody212_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody212_189 : StackLang.HolProg 64 :=
.seq rawBody212_187 rawBody212_188

def rawBody212_190 : StackLang.HolProg 64 :=
.call (some (rawBody212_178, 0, 212, 4)) (Sum.inl 117) (some (rawBody212_189, 212, 5))

def rawBody212_191 : StackLang.HolProg 64 :=
.seq rawBody212_159 rawBody212_190

def rawBody212_192 : StackLang.HolProg 64 :=
.seq rawBody212_158 rawBody212_191

def rawBody212_193 : StackLang.HolProg 64 :=
.seq rawBody212_157 rawBody212_192

def rawBody212_194 : StackLang.HolProg 64 :=
.seq rawBody212_138 rawBody212_193

def rawBody212_195 : StackLang.HolProg 64 :=
.seq rawBody212_135 rawBody212_194

def rawBody212_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody212_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody212_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody212_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody212_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 273#64)

def rawBody212_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody212_204 : StackLang.HolProg 64 :=
.seq rawBody212_202 rawBody212_203

def rawBody212_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody212_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody212_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody212_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 212 7

def rawBody212_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody212_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody212_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody212_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody212_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody212_215 : StackLang.HolProg 64 :=
.seq rawBody212_213 rawBody212_214

def rawBody212_216 : StackLang.HolProg 64 :=
.seq rawBody212_212 rawBody212_215

def rawBody212_217 : StackLang.HolProg 64 :=
.seq rawBody212_211 rawBody212_216

def rawBody212_218 : StackLang.HolProg 64 :=
.seq rawBody212_210 rawBody212_217

def rawBody212_219 : StackLang.HolProg 64 :=
.seq rawBody212_209 rawBody212_218

def rawBody212_220 : StackLang.HolProg 64 :=
.seq rawBody212_208 rawBody212_219

def rawBody212_221 : StackLang.HolProg 64 :=
.seq rawBody212_207 rawBody212_220

def rawBody212_222 : StackLang.HolProg 64 :=
.seq rawBody212_206 rawBody212_221

def rawBody212_223 : StackLang.HolProg 64 :=
.seq rawBody212_205 rawBody212_222

def rawBody212_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody212_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody212_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody212_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody212_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody212_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody212_232 : StackLang.HolProg 64 :=
.seq rawBody212_230 rawBody212_231

def rawBody212_233 : StackLang.HolProg 64 :=
.seq rawBody212_229 rawBody212_232

def rawBody212_234 : StackLang.HolProg 64 :=
.seq rawBody212_228 rawBody212_233

def rawBody212_235 : StackLang.HolProg 64 :=
.seq rawBody212_227 rawBody212_234

def rawBody212_236 : StackLang.HolProg 64 :=
.seq rawBody212_226 rawBody212_235

def rawBody212_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody212_238 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody212_239 : StackLang.HolProg 64 :=
.seq rawBody212_237 rawBody212_238

def rawBody212_240 : StackLang.HolProg 64 :=
.call (some (rawBody212_236, 0, 212, 6)) (Sum.inl 116) (some (rawBody212_239, 212, 7))

def rawBody212_241 : StackLang.HolProg 64 :=
.seq rawBody212_225 rawBody212_240

def rawBody212_242 : StackLang.HolProg 64 :=
.seq rawBody212_224 rawBody212_241

def rawBody212_243 : StackLang.HolProg 64 :=
.seq rawBody212_223 rawBody212_242

def rawBody212_244 : StackLang.HolProg 64 :=
.seq rawBody212_204 rawBody212_243

def rawBody212_245 : StackLang.HolProg 64 :=
.seq rawBody212_201 rawBody212_244

def rawBody212_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody212_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody212_248 : StackLang.HolProg 64 :=
.seq rawBody212_246 rawBody212_247

def rawBody212_249 : StackLang.HolProg 64 :=
.seq rawBody212_245 rawBody212_248

def rawBody212_250 : StackLang.HolProg 64 :=
.seq rawBody212_200 rawBody212_249

def rawBody212_251 : StackLang.HolProg 64 :=
.seq rawBody212_199 rawBody212_250

def rawBody212_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody212_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody212_254 : StackLang.HolProg 64 :=
.seq rawBody212_252 rawBody212_253

def rawBody212_255 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody212_251 rawBody212_254

def rawBody212_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody212_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody212_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 14

def rawBody212_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody212_260 : StackLang.HolProg 64 :=
.seq rawBody212_258 rawBody212_259

def rawBody212_261 : StackLang.HolProg 64 :=
.seq rawBody212_257 rawBody212_260

def rawBody212_262 : StackLang.HolProg 64 :=
.seq rawBody212_256 rawBody212_261

def rawBody212_263 : StackLang.HolProg 64 :=
.seq rawBody212_255 rawBody212_262

def rawBody212_264 : StackLang.HolProg 64 :=
.seq rawBody212_198 rawBody212_263

def rawBody212_265 : StackLang.HolProg 64 :=
.seq rawBody212_197 rawBody212_264

def rawBody212_266 : StackLang.HolProg 64 :=
.seq rawBody212_196 rawBody212_265

def rawBody212_267 : StackLang.HolProg 64 :=
.seq rawBody212_195 rawBody212_266

def rawBody212_268 : StackLang.HolProg 64 :=
.seq rawBody212_134 rawBody212_267

def rawBody212_269 : StackLang.HolProg 64 :=
.seq rawBody212_131 rawBody212_268

def rawBody212_270 : StackLang.HolProg 64 :=
.seq rawBody212_130 rawBody212_269

def rawBody212_271 : StackLang.HolProg 64 :=
.seq rawBody212_25 rawBody212_270

def rawBody212_272 : StackLang.HolProg 64 :=
.seq rawBody212_0 rawBody212_271

def raw212 : StackLang.HolProg 64 := rawBody212_272
theorem raw212_eq : StackRawCall.compTop RawInfo.rawInfo (function212 (.list [])).1 = raw212 := by
  kernel_rfl
#print axioms raw212_eq
end InitECandidate.Proofs.BackendStages
