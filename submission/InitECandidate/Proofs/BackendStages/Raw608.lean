import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function608
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody608_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody608_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody608_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody608_3 : StackLang.HolProg 64 :=
.seq rawBody608_1 rawBody608_2

def rawBody608_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2335#64)

def rawBody608_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_7 : StackLang.HolProg 64 :=
.seq rawBody608_5 rawBody608_6

def rawBody608_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody608_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody608_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 3

def rawBody608_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody608_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody608_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody608_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody608_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_18 : StackLang.HolProg 64 :=
.seq rawBody608_16 rawBody608_17

def rawBody608_19 : StackLang.HolProg 64 :=
.seq rawBody608_15 rawBody608_18

def rawBody608_20 : StackLang.HolProg 64 :=
.seq rawBody608_14 rawBody608_19

def rawBody608_21 : StackLang.HolProg 64 :=
.seq rawBody608_13 rawBody608_20

def rawBody608_22 : StackLang.HolProg 64 :=
.seq rawBody608_12 rawBody608_21

def rawBody608_23 : StackLang.HolProg 64 :=
.seq rawBody608_11 rawBody608_22

def rawBody608_24 : StackLang.HolProg 64 :=
.seq rawBody608_10 rawBody608_23

def rawBody608_25 : StackLang.HolProg 64 :=
.seq rawBody608_9 rawBody608_24

def rawBody608_26 : StackLang.HolProg 64 :=
.seq rawBody608_8 rawBody608_25

def rawBody608_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody608_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody608_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody608_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody608_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody608_35 : StackLang.HolProg 64 :=
.seq rawBody608_33 rawBody608_34

def rawBody608_36 : StackLang.HolProg 64 :=
.seq rawBody608_32 rawBody608_35

def rawBody608_37 : StackLang.HolProg 64 :=
.seq rawBody608_31 rawBody608_36

def rawBody608_38 : StackLang.HolProg 64 :=
.seq rawBody608_30 rawBody608_37

def rawBody608_39 : StackLang.HolProg 64 :=
.seq rawBody608_29 rawBody608_38

def rawBody608_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody608_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody608_42 : StackLang.HolProg 64 :=
.seq rawBody608_40 rawBody608_41

def rawBody608_43 : StackLang.HolProg 64 :=
.call (some (rawBody608_39, 0, 608, 2)) (Sum.inl 390) (some (rawBody608_42, 608, 3))

def rawBody608_44 : StackLang.HolProg 64 :=
.seq rawBody608_28 rawBody608_43

def rawBody608_45 : StackLang.HolProg 64 :=
.seq rawBody608_27 rawBody608_44

def rawBody608_46 : StackLang.HolProg 64 :=
.seq rawBody608_26 rawBody608_45

def rawBody608_47 : StackLang.HolProg 64 :=
.seq rawBody608_7 rawBody608_46

def rawBody608_48 : StackLang.HolProg 64 :=
.seq rawBody608_4 rawBody608_47

def rawBody608_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody608_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody608_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody608_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody608_55 : StackLang.HolProg 64 :=
.seq rawBody608_53 rawBody608_54

def rawBody608_56 : StackLang.HolProg 64 :=
.seq rawBody608_52 rawBody608_55

def rawBody608_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2336#64)

def rawBody608_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_60 : StackLang.HolProg 64 :=
.seq rawBody608_58 rawBody608_59

def rawBody608_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody608_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody608_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 5

def rawBody608_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody608_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody608_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody608_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody608_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_71 : StackLang.HolProg 64 :=
.seq rawBody608_69 rawBody608_70

def rawBody608_72 : StackLang.HolProg 64 :=
.seq rawBody608_68 rawBody608_71

def rawBody608_73 : StackLang.HolProg 64 :=
.seq rawBody608_67 rawBody608_72

def rawBody608_74 : StackLang.HolProg 64 :=
.seq rawBody608_66 rawBody608_73

def rawBody608_75 : StackLang.HolProg 64 :=
.seq rawBody608_65 rawBody608_74

def rawBody608_76 : StackLang.HolProg 64 :=
.seq rawBody608_64 rawBody608_75

def rawBody608_77 : StackLang.HolProg 64 :=
.seq rawBody608_63 rawBody608_76

def rawBody608_78 : StackLang.HolProg 64 :=
.seq rawBody608_62 rawBody608_77

def rawBody608_79 : StackLang.HolProg 64 :=
.seq rawBody608_61 rawBody608_78

def rawBody608_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody608_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody608_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody608_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody608_87 : StackLang.HolProg 64 :=
.seq rawBody608_85 rawBody608_86

def rawBody608_88 : StackLang.HolProg 64 :=
.seq rawBody608_84 rawBody608_87

def rawBody608_89 : StackLang.HolProg 64 :=
.seq rawBody608_83 rawBody608_88

def rawBody608_90 : StackLang.HolProg 64 :=
.seq rawBody608_82 rawBody608_89

def rawBody608_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody608_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody608_93 : StackLang.HolProg 64 :=
.seq rawBody608_91 rawBody608_92

def rawBody608_94 : StackLang.HolProg 64 :=
.call (some (rawBody608_90, 0, 608, 4)) (Sum.inl 421) (some (rawBody608_93, 608, 5))

def rawBody608_95 : StackLang.HolProg 64 :=
.seq rawBody608_81 rawBody608_94

def rawBody608_96 : StackLang.HolProg 64 :=
.seq rawBody608_80 rawBody608_95

def rawBody608_97 : StackLang.HolProg 64 :=
.seq rawBody608_79 rawBody608_96

def rawBody608_98 : StackLang.HolProg 64 :=
.seq rawBody608_60 rawBody608_97

def rawBody608_99 : StackLang.HolProg 64 :=
.seq rawBody608_57 rawBody608_98

def rawBody608_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody608_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody608_103 : StackLang.HolProg 64 :=
.seq rawBody608_101 rawBody608_102

def rawBody608_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2337#64)

def rawBody608_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_107 : StackLang.HolProg 64 :=
.seq rawBody608_105 rawBody608_106

def rawBody608_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody608_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody608_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 7

def rawBody608_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody608_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody608_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody608_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody608_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_118 : StackLang.HolProg 64 :=
.seq rawBody608_116 rawBody608_117

def rawBody608_119 : StackLang.HolProg 64 :=
.seq rawBody608_115 rawBody608_118

def rawBody608_120 : StackLang.HolProg 64 :=
.seq rawBody608_114 rawBody608_119

def rawBody608_121 : StackLang.HolProg 64 :=
.seq rawBody608_113 rawBody608_120

def rawBody608_122 : StackLang.HolProg 64 :=
.seq rawBody608_112 rawBody608_121

def rawBody608_123 : StackLang.HolProg 64 :=
.seq rawBody608_111 rawBody608_122

def rawBody608_124 : StackLang.HolProg 64 :=
.seq rawBody608_110 rawBody608_123

def rawBody608_125 : StackLang.HolProg 64 :=
.seq rawBody608_109 rawBody608_124

def rawBody608_126 : StackLang.HolProg 64 :=
.seq rawBody608_108 rawBody608_125

def rawBody608_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody608_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody608_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody608_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody608_134 : StackLang.HolProg 64 :=
.seq rawBody608_132 rawBody608_133

def rawBody608_135 : StackLang.HolProg 64 :=
.seq rawBody608_131 rawBody608_134

def rawBody608_136 : StackLang.HolProg 64 :=
.seq rawBody608_130 rawBody608_135

def rawBody608_137 : StackLang.HolProg 64 :=
.seq rawBody608_129 rawBody608_136

def rawBody608_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody608_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody608_140 : StackLang.HolProg 64 :=
.seq rawBody608_138 rawBody608_139

def rawBody608_141 : StackLang.HolProg 64 :=
.call (some (rawBody608_137, 0, 608, 6)) (Sum.inl 425) (some (rawBody608_140, 608, 7))

def rawBody608_142 : StackLang.HolProg 64 :=
.seq rawBody608_128 rawBody608_141

def rawBody608_143 : StackLang.HolProg 64 :=
.seq rawBody608_127 rawBody608_142

def rawBody608_144 : StackLang.HolProg 64 :=
.seq rawBody608_126 rawBody608_143

def rawBody608_145 : StackLang.HolProg 64 :=
.seq rawBody608_107 rawBody608_144

def rawBody608_146 : StackLang.HolProg 64 :=
.seq rawBody608_104 rawBody608_145

def rawBody608_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody608_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2338#64)

def rawBody608_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_152 : StackLang.HolProg 64 :=
.seq rawBody608_150 rawBody608_151

def rawBody608_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody608_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody608_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 9

def rawBody608_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody608_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody608_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody608_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody608_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_163 : StackLang.HolProg 64 :=
.seq rawBody608_161 rawBody608_162

def rawBody608_164 : StackLang.HolProg 64 :=
.seq rawBody608_160 rawBody608_163

def rawBody608_165 : StackLang.HolProg 64 :=
.seq rawBody608_159 rawBody608_164

def rawBody608_166 : StackLang.HolProg 64 :=
.seq rawBody608_158 rawBody608_165

def rawBody608_167 : StackLang.HolProg 64 :=
.seq rawBody608_157 rawBody608_166

def rawBody608_168 : StackLang.HolProg 64 :=
.seq rawBody608_156 rawBody608_167

def rawBody608_169 : StackLang.HolProg 64 :=
.seq rawBody608_155 rawBody608_168

def rawBody608_170 : StackLang.HolProg 64 :=
.seq rawBody608_154 rawBody608_169

def rawBody608_171 : StackLang.HolProg 64 :=
.seq rawBody608_153 rawBody608_170

def rawBody608_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody608_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody608_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody608_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody608_179 : StackLang.HolProg 64 :=
.seq rawBody608_177 rawBody608_178

def rawBody608_180 : StackLang.HolProg 64 :=
.seq rawBody608_176 rawBody608_179

def rawBody608_181 : StackLang.HolProg 64 :=
.seq rawBody608_175 rawBody608_180

def rawBody608_182 : StackLang.HolProg 64 :=
.seq rawBody608_174 rawBody608_181

def rawBody608_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody608_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody608_185 : StackLang.HolProg 64 :=
.seq rawBody608_183 rawBody608_184

def rawBody608_186 : StackLang.HolProg 64 :=
.call (some (rawBody608_182, 0, 608, 8)) (Sum.inl 430) (some (rawBody608_185, 608, 9))

def rawBody608_187 : StackLang.HolProg 64 :=
.seq rawBody608_173 rawBody608_186

def rawBody608_188 : StackLang.HolProg 64 :=
.seq rawBody608_172 rawBody608_187

def rawBody608_189 : StackLang.HolProg 64 :=
.seq rawBody608_171 rawBody608_188

def rawBody608_190 : StackLang.HolProg 64 :=
.seq rawBody608_152 rawBody608_189

def rawBody608_191 : StackLang.HolProg 64 :=
.seq rawBody608_149 rawBody608_190

def rawBody608_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody608_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody608_195 : StackLang.HolProg 64 :=
.seq rawBody608_193 rawBody608_194

def rawBody608_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2339#64)

def rawBody608_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_199 : StackLang.HolProg 64 :=
.seq rawBody608_197 rawBody608_198

def rawBody608_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody608_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody608_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 11

def rawBody608_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody608_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody608_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody608_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody608_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_210 : StackLang.HolProg 64 :=
.seq rawBody608_208 rawBody608_209

def rawBody608_211 : StackLang.HolProg 64 :=
.seq rawBody608_207 rawBody608_210

def rawBody608_212 : StackLang.HolProg 64 :=
.seq rawBody608_206 rawBody608_211

def rawBody608_213 : StackLang.HolProg 64 :=
.seq rawBody608_205 rawBody608_212

def rawBody608_214 : StackLang.HolProg 64 :=
.seq rawBody608_204 rawBody608_213

def rawBody608_215 : StackLang.HolProg 64 :=
.seq rawBody608_203 rawBody608_214

def rawBody608_216 : StackLang.HolProg 64 :=
.seq rawBody608_202 rawBody608_215

def rawBody608_217 : StackLang.HolProg 64 :=
.seq rawBody608_201 rawBody608_216

def rawBody608_218 : StackLang.HolProg 64 :=
.seq rawBody608_200 rawBody608_217

def rawBody608_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody608_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody608_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody608_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody608_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody608_227 : StackLang.HolProg 64 :=
.seq rawBody608_225 rawBody608_226

def rawBody608_228 : StackLang.HolProg 64 :=
.seq rawBody608_224 rawBody608_227

def rawBody608_229 : StackLang.HolProg 64 :=
.seq rawBody608_223 rawBody608_228

def rawBody608_230 : StackLang.HolProg 64 :=
.seq rawBody608_222 rawBody608_229

def rawBody608_231 : StackLang.HolProg 64 :=
.seq rawBody608_221 rawBody608_230

def rawBody608_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody608_233 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody608_234 : StackLang.HolProg 64 :=
.seq rawBody608_232 rawBody608_233

def rawBody608_235 : StackLang.HolProg 64 :=
.call (some (rawBody608_231, 0, 608, 10)) (Sum.inl 606) (some (rawBody608_234, 608, 11))

def rawBody608_236 : StackLang.HolProg 64 :=
.seq rawBody608_220 rawBody608_235

def rawBody608_237 : StackLang.HolProg 64 :=
.seq rawBody608_219 rawBody608_236

def rawBody608_238 : StackLang.HolProg 64 :=
.seq rawBody608_218 rawBody608_237

def rawBody608_239 : StackLang.HolProg 64 :=
.seq rawBody608_199 rawBody608_238

def rawBody608_240 : StackLang.HolProg 64 :=
.seq rawBody608_196 rawBody608_239

def rawBody608_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 160#64))

def rawBody608_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody608_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody608_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody608_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody608_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody608_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def rawBody608_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody608_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody608_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody608_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody608_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody608_258 : StackLang.HolProg 64 :=
.seq rawBody608_256 rawBody608_257

def rawBody608_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody608_260 : StackLang.HolProg 64 :=
.seq rawBody608_258 rawBody608_259

def rawBody608_261 : StackLang.HolProg 64 :=
.seq rawBody608_255 rawBody608_260

def rawBody608_262 : StackLang.HolProg 64 :=
.seq rawBody608_254 rawBody608_261

def rawBody608_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2340#64)

def rawBody608_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_266 : StackLang.HolProg 64 :=
.seq rawBody608_264 rawBody608_265

def rawBody608_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody608_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody608_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 19

def rawBody608_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody608_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody608_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody608_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody608_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_277 : StackLang.HolProg 64 :=
.seq rawBody608_275 rawBody608_276

def rawBody608_278 : StackLang.HolProg 64 :=
.seq rawBody608_274 rawBody608_277

def rawBody608_279 : StackLang.HolProg 64 :=
.seq rawBody608_273 rawBody608_278

def rawBody608_280 : StackLang.HolProg 64 :=
.seq rawBody608_272 rawBody608_279

def rawBody608_281 : StackLang.HolProg 64 :=
.seq rawBody608_271 rawBody608_280

def rawBody608_282 : StackLang.HolProg 64 :=
.seq rawBody608_270 rawBody608_281

def rawBody608_283 : StackLang.HolProg 64 :=
.seq rawBody608_269 rawBody608_282

def rawBody608_284 : StackLang.HolProg 64 :=
.seq rawBody608_268 rawBody608_283

def rawBody608_285 : StackLang.HolProg 64 :=
.seq rawBody608_267 rawBody608_284

def rawBody608_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody608_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody608_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody608_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody608_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody608_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody608_295 : StackLang.HolProg 64 :=
.seq rawBody608_293 rawBody608_294

def rawBody608_296 : StackLang.HolProg 64 :=
.seq rawBody608_292 rawBody608_295

def rawBody608_297 : StackLang.HolProg 64 :=
.seq rawBody608_291 rawBody608_296

def rawBody608_298 : StackLang.HolProg 64 :=
.seq rawBody608_290 rawBody608_297

def rawBody608_299 : StackLang.HolProg 64 :=
.seq rawBody608_289 rawBody608_298

def rawBody608_300 : StackLang.HolProg 64 :=
.seq rawBody608_288 rawBody608_299

def rawBody608_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody608_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_303 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody608_304 : StackLang.HolProg 64 :=
.seq rawBody608_302 rawBody608_303

def rawBody608_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody608_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody608_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody608_309 : StackLang.HolProg 64 :=
.seq rawBody608_307 rawBody608_308

def rawBody608_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2341#64)

def rawBody608_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_313 : StackLang.HolProg 64 :=
.seq rawBody608_311 rawBody608_312

def rawBody608_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody608_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody608_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 14

def rawBody608_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody608_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody608_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody608_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody608_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_324 : StackLang.HolProg 64 :=
.seq rawBody608_322 rawBody608_323

def rawBody608_325 : StackLang.HolProg 64 :=
.seq rawBody608_321 rawBody608_324

def rawBody608_326 : StackLang.HolProg 64 :=
.seq rawBody608_320 rawBody608_325

def rawBody608_327 : StackLang.HolProg 64 :=
.seq rawBody608_319 rawBody608_326

def rawBody608_328 : StackLang.HolProg 64 :=
.seq rawBody608_318 rawBody608_327

def rawBody608_329 : StackLang.HolProg 64 :=
.seq rawBody608_317 rawBody608_328

def rawBody608_330 : StackLang.HolProg 64 :=
.seq rawBody608_316 rawBody608_329

def rawBody608_331 : StackLang.HolProg 64 :=
.seq rawBody608_315 rawBody608_330

def rawBody608_332 : StackLang.HolProg 64 :=
.seq rawBody608_314 rawBody608_331

def rawBody608_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody608_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody608_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody608_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_340 : StackLang.HolProg 64 :=
.seq rawBody608_338 rawBody608_339

def rawBody608_341 : StackLang.HolProg 64 :=
.seq rawBody608_337 rawBody608_340

def rawBody608_342 : StackLang.HolProg 64 :=
.seq rawBody608_336 rawBody608_341

def rawBody608_343 : StackLang.HolProg 64 :=
.seq rawBody608_335 rawBody608_342

def rawBody608_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_345 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody608_346 : StackLang.HolProg 64 :=
.seq rawBody608_344 rawBody608_345

def rawBody608_347 : StackLang.HolProg 64 :=
.call (some (rawBody608_343, 0, 608, 13)) (Sum.inl 391) (some (rawBody608_346, 608, 14))

def rawBody608_348 : StackLang.HolProg 64 :=
.seq rawBody608_334 rawBody608_347

def rawBody608_349 : StackLang.HolProg 64 :=
.seq rawBody608_333 rawBody608_348

def rawBody608_350 : StackLang.HolProg 64 :=
.seq rawBody608_332 rawBody608_349

def rawBody608_351 : StackLang.HolProg 64 :=
.seq rawBody608_313 rawBody608_350

def rawBody608_352 : StackLang.HolProg 64 :=
.seq rawBody608_310 rawBody608_351

def rawBody608_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2342#64)

def rawBody608_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_358 : StackLang.HolProg 64 :=
.seq rawBody608_356 rawBody608_357

def rawBody608_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody608_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody608_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 16

def rawBody608_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody608_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody608_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody608_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody608_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_369 : StackLang.HolProg 64 :=
.seq rawBody608_367 rawBody608_368

def rawBody608_370 : StackLang.HolProg 64 :=
.seq rawBody608_366 rawBody608_369

def rawBody608_371 : StackLang.HolProg 64 :=
.seq rawBody608_365 rawBody608_370

def rawBody608_372 : StackLang.HolProg 64 :=
.seq rawBody608_364 rawBody608_371

def rawBody608_373 : StackLang.HolProg 64 :=
.seq rawBody608_363 rawBody608_372

def rawBody608_374 : StackLang.HolProg 64 :=
.seq rawBody608_362 rawBody608_373

def rawBody608_375 : StackLang.HolProg 64 :=
.seq rawBody608_361 rawBody608_374

def rawBody608_376 : StackLang.HolProg 64 :=
.seq rawBody608_360 rawBody608_375

def rawBody608_377 : StackLang.HolProg 64 :=
.seq rawBody608_359 rawBody608_376

def rawBody608_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody608_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody608_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody608_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody608_385 : StackLang.HolProg 64 :=
.seq rawBody608_383 rawBody608_384

def rawBody608_386 : StackLang.HolProg 64 :=
.seq rawBody608_382 rawBody608_385

def rawBody608_387 : StackLang.HolProg 64 :=
.seq rawBody608_381 rawBody608_386

def rawBody608_388 : StackLang.HolProg 64 :=
.seq rawBody608_380 rawBody608_387

def rawBody608_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody608_390 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody608_391 : StackLang.HolProg 64 :=
.seq rawBody608_389 rawBody608_390

def rawBody608_392 : StackLang.HolProg 64 :=
.call (some (rawBody608_388, 0, 608, 15)) (Sum.inl 474) (some (rawBody608_391, 608, 16))

def rawBody608_393 : StackLang.HolProg 64 :=
.seq rawBody608_379 rawBody608_392

def rawBody608_394 : StackLang.HolProg 64 :=
.seq rawBody608_378 rawBody608_393

def rawBody608_395 : StackLang.HolProg 64 :=
.seq rawBody608_377 rawBody608_394

def rawBody608_396 : StackLang.HolProg 64 :=
.seq rawBody608_358 rawBody608_395

def rawBody608_397 : StackLang.HolProg 64 :=
.seq rawBody608_355 rawBody608_396

def rawBody608_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody608_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2343#64)

def rawBody608_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_403 : StackLang.HolProg 64 :=
.seq rawBody608_401 rawBody608_402

def rawBody608_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody608_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody608_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 18

def rawBody608_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody608_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody608_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody608_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody608_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_414 : StackLang.HolProg 64 :=
.seq rawBody608_412 rawBody608_413

def rawBody608_415 : StackLang.HolProg 64 :=
.seq rawBody608_411 rawBody608_414

def rawBody608_416 : StackLang.HolProg 64 :=
.seq rawBody608_410 rawBody608_415

def rawBody608_417 : StackLang.HolProg 64 :=
.seq rawBody608_409 rawBody608_416

def rawBody608_418 : StackLang.HolProg 64 :=
.seq rawBody608_408 rawBody608_417

def rawBody608_419 : StackLang.HolProg 64 :=
.seq rawBody608_407 rawBody608_418

def rawBody608_420 : StackLang.HolProg 64 :=
.seq rawBody608_406 rawBody608_419

def rawBody608_421 : StackLang.HolProg 64 :=
.seq rawBody608_405 rawBody608_420

def rawBody608_422 : StackLang.HolProg 64 :=
.seq rawBody608_404 rawBody608_421

def rawBody608_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody608_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody608_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody608_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody608_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody608_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody608_432 : StackLang.HolProg 64 :=
.seq rawBody608_430 rawBody608_431

def rawBody608_433 : StackLang.HolProg 64 :=
.seq rawBody608_429 rawBody608_432

def rawBody608_434 : StackLang.HolProg 64 :=
.seq rawBody608_428 rawBody608_433

def rawBody608_435 : StackLang.HolProg 64 :=
.seq rawBody608_427 rawBody608_434

def rawBody608_436 : StackLang.HolProg 64 :=
.seq rawBody608_426 rawBody608_435

def rawBody608_437 : StackLang.HolProg 64 :=
.seq rawBody608_425 rawBody608_436

def rawBody608_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody608_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody608_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody608_441 : StackLang.HolProg 64 :=
.seq rawBody608_439 rawBody608_440

def rawBody608_442 : StackLang.HolProg 64 :=
.seq rawBody608_438 rawBody608_441

def rawBody608_443 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody608_444 : StackLang.HolProg 64 :=
.seq rawBody608_442 rawBody608_443

def rawBody608_445 : StackLang.HolProg 64 :=
.call (some (rawBody608_437, 0, 608, 17)) (Sum.inl 604) (some (rawBody608_444, 608, 18))

def rawBody608_446 : StackLang.HolProg 64 :=
.seq rawBody608_424 rawBody608_445

def rawBody608_447 : StackLang.HolProg 64 :=
.seq rawBody608_423 rawBody608_446

def rawBody608_448 : StackLang.HolProg 64 :=
.seq rawBody608_422 rawBody608_447

def rawBody608_449 : StackLang.HolProg 64 :=
.seq rawBody608_403 rawBody608_448

def rawBody608_450 : StackLang.HolProg 64 :=
.seq rawBody608_400 rawBody608_449

def rawBody608_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody608_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody608_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody608_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody608_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def rawBody608_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody608_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody608_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody608_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551352#64))

def rawBody608_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody608_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody608_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody608_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody608_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody608_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody608_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody608_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody608_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_472 : StackLang.HolProg 64 :=
.seq rawBody608_470 rawBody608_471

def rawBody608_473 : StackLang.HolProg 64 :=
.seq rawBody608_469 rawBody608_472

def rawBody608_474 : StackLang.HolProg 64 :=
.seq rawBody608_468 rawBody608_473

def rawBody608_475 : StackLang.HolProg 64 :=
.seq rawBody608_467 rawBody608_474

def rawBody608_476 : StackLang.HolProg 64 :=
.seq rawBody608_466 rawBody608_475

def rawBody608_477 : StackLang.HolProg 64 :=
.seq rawBody608_465 rawBody608_476

def rawBody608_478 : StackLang.HolProg 64 :=
.seq rawBody608_464 rawBody608_477

def rawBody608_479 : StackLang.HolProg 64 :=
.seq rawBody608_463 rawBody608_478

def rawBody608_480 : StackLang.HolProg 64 :=
.seq rawBody608_462 rawBody608_479

def rawBody608_481 : StackLang.HolProg 64 :=
.seq rawBody608_461 rawBody608_480

def rawBody608_482 : StackLang.HolProg 64 :=
.seq rawBody608_460 rawBody608_481

def rawBody608_483 : StackLang.HolProg 64 :=
.seq rawBody608_459 rawBody608_482

def rawBody608_484 : StackLang.HolProg 64 :=
.seq rawBody608_458 rawBody608_483

def rawBody608_485 : StackLang.HolProg 64 :=
.seq rawBody608_457 rawBody608_484

def rawBody608_486 : StackLang.HolProg 64 :=
.seq rawBody608_456 rawBody608_485

def rawBody608_487 : StackLang.HolProg 64 :=
.seq rawBody608_455 rawBody608_486

def rawBody608_488 : StackLang.HolProg 64 :=
.seq rawBody608_454 rawBody608_487

def rawBody608_489 : StackLang.HolProg 64 :=
.seq rawBody608_453 rawBody608_488

def rawBody608_490 : StackLang.HolProg 64 :=
.seq rawBody608_452 rawBody608_489

def rawBody608_491 : StackLang.HolProg 64 :=
.seq rawBody608_451 rawBody608_490

def rawBody608_492 : StackLang.HolProg 64 :=
.seq rawBody608_450 rawBody608_491

def rawBody608_493 : StackLang.HolProg 64 :=
.seq rawBody608_399 rawBody608_492

def rawBody608_494 : StackLang.HolProg 64 :=
.seq rawBody608_398 rawBody608_493

def rawBody608_495 : StackLang.HolProg 64 :=
.seq rawBody608_397 rawBody608_494

def rawBody608_496 : StackLang.HolProg 64 :=
.seq rawBody608_354 rawBody608_495

def rawBody608_497 : StackLang.HolProg 64 :=
.seq rawBody608_353 rawBody608_496

def rawBody608_498 : StackLang.HolProg 64 :=
.seq rawBody608_352 rawBody608_497

def rawBody608_499 : StackLang.HolProg 64 :=
.seq rawBody608_309 rawBody608_498

def rawBody608_500 : StackLang.HolProg 64 :=
.seq rawBody608_306 rawBody608_499

def rawBody608_501 : StackLang.HolProg 64 :=
.seq rawBody608_305 rawBody608_500

def rawBody608_502 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) rawBody608_304 rawBody608_501

def rawBody608_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_505 : StackLang.HolProg 64 :=
.seq rawBody608_503 rawBody608_504

def rawBody608_506 : StackLang.HolProg 64 :=
.seq rawBody608_502 rawBody608_505

def rawBody608_507 : StackLang.HolProg 64 :=
.seq rawBody608_301 rawBody608_506

def rawBody608_508 : StackLang.HolProg 64 :=
.call (some (rawBody608_300, 0, 608, 12)) (Sum.inl 607) (some (rawBody608_507, 608, 19))

def rawBody608_509 : StackLang.HolProg 64 :=
.seq rawBody608_287 rawBody608_508

def rawBody608_510 : StackLang.HolProg 64 :=
.seq rawBody608_286 rawBody608_509

def rawBody608_511 : StackLang.HolProg 64 :=
.seq rawBody608_285 rawBody608_510

def rawBody608_512 : StackLang.HolProg 64 :=
.seq rawBody608_266 rawBody608_511

def rawBody608_513 : StackLang.HolProg 64 :=
.seq rawBody608_263 rawBody608_512

def rawBody608_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody608_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody608_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody608_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def rawBody608_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody608_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody608_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody608_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody608_524 : StackLang.HolProg 64 :=
.seq rawBody608_522 rawBody608_523

def rawBody608_525 : StackLang.HolProg 64 :=
.seq rawBody608_521 rawBody608_524

def rawBody608_526 : StackLang.HolProg 64 :=
.seq rawBody608_520 rawBody608_525

def rawBody608_527 : StackLang.HolProg 64 :=
.seq rawBody608_519 rawBody608_526

def rawBody608_528 : StackLang.HolProg 64 :=
.seq rawBody608_518 rawBody608_527

def rawBody608_529 : StackLang.HolProg 64 :=
.seq rawBody608_517 rawBody608_528

def rawBody608_530 : StackLang.HolProg 64 :=
.seq rawBody608_516 rawBody608_529

def rawBody608_531 : StackLang.HolProg 64 :=
.seq rawBody608_515 rawBody608_530

def rawBody608_532 : StackLang.HolProg 64 :=
.seq rawBody608_514 rawBody608_531

def rawBody608_533 : StackLang.HolProg 64 :=
.seq rawBody608_513 rawBody608_532

def rawBody608_534 : StackLang.HolProg 64 :=
.seq rawBody608_262 rawBody608_533

def rawBody608_535 : StackLang.HolProg 64 :=
.seq rawBody608_253 rawBody608_534

def rawBody608_536 : StackLang.HolProg 64 :=
.seq rawBody608_252 rawBody608_535

def rawBody608_537 : StackLang.HolProg 64 :=
.seq rawBody608_251 rawBody608_536

def rawBody608_538 : StackLang.HolProg 64 :=
.seq rawBody608_250 rawBody608_537

def rawBody608_539 : StackLang.HolProg 64 :=
.seq rawBody608_249 rawBody608_538

def rawBody608_540 : StackLang.HolProg 64 :=
.seq rawBody608_248 rawBody608_539

def rawBody608_541 : StackLang.HolProg 64 :=
.seq rawBody608_247 rawBody608_540

def rawBody608_542 : StackLang.HolProg 64 :=
.seq rawBody608_246 rawBody608_541

def rawBody608_543 : StackLang.HolProg 64 :=
.seq rawBody608_245 rawBody608_542

def rawBody608_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody608_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody608_546 : StackLang.HolProg 64 :=
.seq rawBody608_544 rawBody608_545

def rawBody608_547 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody608_543 rawBody608_546

def rawBody608_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody608_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2344#64)

def rawBody608_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_554 : StackLang.HolProg 64 :=
.seq rawBody608_552 rawBody608_553

def rawBody608_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody608_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody608_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody608_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 21

def rawBody608_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody608_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody608_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody608_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody608_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_565 : StackLang.HolProg 64 :=
.seq rawBody608_563 rawBody608_564

def rawBody608_566 : StackLang.HolProg 64 :=
.seq rawBody608_562 rawBody608_565

def rawBody608_567 : StackLang.HolProg 64 :=
.seq rawBody608_561 rawBody608_566

def rawBody608_568 : StackLang.HolProg 64 :=
.seq rawBody608_560 rawBody608_567

def rawBody608_569 : StackLang.HolProg 64 :=
.seq rawBody608_559 rawBody608_568

def rawBody608_570 : StackLang.HolProg 64 :=
.seq rawBody608_558 rawBody608_569

def rawBody608_571 : StackLang.HolProg 64 :=
.seq rawBody608_557 rawBody608_570

def rawBody608_572 : StackLang.HolProg 64 :=
.seq rawBody608_556 rawBody608_571

def rawBody608_573 : StackLang.HolProg 64 :=
.seq rawBody608_555 rawBody608_572

def rawBody608_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody608_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody608_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody608_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody608_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody608_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody608_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody608_582 : StackLang.HolProg 64 :=
.seq rawBody608_580 rawBody608_581

def rawBody608_583 : StackLang.HolProg 64 :=
.seq rawBody608_579 rawBody608_582

def rawBody608_584 : StackLang.HolProg 64 :=
.seq rawBody608_578 rawBody608_583

def rawBody608_585 : StackLang.HolProg 64 :=
.seq rawBody608_577 rawBody608_584

def rawBody608_586 : StackLang.HolProg 64 :=
.seq rawBody608_576 rawBody608_585

def rawBody608_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody608_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody608_589 : StackLang.HolProg 64 :=
.seq rawBody608_587 rawBody608_588

def rawBody608_590 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody608_591 : StackLang.HolProg 64 :=
.seq rawBody608_589 rawBody608_590

def rawBody608_592 : StackLang.HolProg 64 :=
.call (some (rawBody608_586, 0, 608, 20)) (Sum.inl 391) (some (rawBody608_591, 608, 21))

def rawBody608_593 : StackLang.HolProg 64 :=
.seq rawBody608_575 rawBody608_592

def rawBody608_594 : StackLang.HolProg 64 :=
.seq rawBody608_574 rawBody608_593

def rawBody608_595 : StackLang.HolProg 64 :=
.seq rawBody608_573 rawBody608_594

def rawBody608_596 : StackLang.HolProg 64 :=
.seq rawBody608_554 rawBody608_595

def rawBody608_597 : StackLang.HolProg 64 :=
.seq rawBody608_551 rawBody608_596

def rawBody608_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody608_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody608_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody608_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody608_602 : StackLang.HolProg 64 :=
.seq rawBody608_600 rawBody608_601

def rawBody608_603 : StackLang.HolProg 64 :=
.seq rawBody608_599 rawBody608_602

def rawBody608_604 : StackLang.HolProg 64 :=
.seq rawBody608_598 rawBody608_603

def rawBody608_605 : StackLang.HolProg 64 :=
.seq rawBody608_597 rawBody608_604

def rawBody608_606 : StackLang.HolProg 64 :=
.seq rawBody608_550 rawBody608_605

def rawBody608_607 : StackLang.HolProg 64 :=
.seq rawBody608_549 rawBody608_606

def rawBody608_608 : StackLang.HolProg 64 :=
.seq rawBody608_548 rawBody608_607

def rawBody608_609 : StackLang.HolProg 64 :=
.seq rawBody608_547 rawBody608_608

def rawBody608_610 : StackLang.HolProg 64 :=
.seq rawBody608_244 rawBody608_609

def rawBody608_611 : StackLang.HolProg 64 :=
.seq rawBody608_243 rawBody608_610

def rawBody608_612 : StackLang.HolProg 64 :=
.seq rawBody608_242 rawBody608_611

def rawBody608_613 : StackLang.HolProg 64 :=
.seq rawBody608_241 rawBody608_612

def rawBody608_614 : StackLang.HolProg 64 :=
.seq rawBody608_240 rawBody608_613

def rawBody608_615 : StackLang.HolProg 64 :=
.seq rawBody608_195 rawBody608_614

def rawBody608_616 : StackLang.HolProg 64 :=
.seq rawBody608_192 rawBody608_615

def rawBody608_617 : StackLang.HolProg 64 :=
.seq rawBody608_191 rawBody608_616

def rawBody608_618 : StackLang.HolProg 64 :=
.seq rawBody608_148 rawBody608_617

def rawBody608_619 : StackLang.HolProg 64 :=
.seq rawBody608_147 rawBody608_618

def rawBody608_620 : StackLang.HolProg 64 :=
.seq rawBody608_146 rawBody608_619

def rawBody608_621 : StackLang.HolProg 64 :=
.seq rawBody608_103 rawBody608_620

def rawBody608_622 : StackLang.HolProg 64 :=
.seq rawBody608_100 rawBody608_621

def rawBody608_623 : StackLang.HolProg 64 :=
.seq rawBody608_99 rawBody608_622

def rawBody608_624 : StackLang.HolProg 64 :=
.seq rawBody608_56 rawBody608_623

def rawBody608_625 : StackLang.HolProg 64 :=
.seq rawBody608_51 rawBody608_624

def rawBody608_626 : StackLang.HolProg 64 :=
.seq rawBody608_50 rawBody608_625

def rawBody608_627 : StackLang.HolProg 64 :=
.seq rawBody608_49 rawBody608_626

def rawBody608_628 : StackLang.HolProg 64 :=
.seq rawBody608_48 rawBody608_627

def rawBody608_629 : StackLang.HolProg 64 :=
.seq rawBody608_3 rawBody608_628

def rawBody608_630 : StackLang.HolProg 64 :=
.seq rawBody608_0 rawBody608_629

def raw608 : StackLang.HolProg 64 := rawBody608_630
theorem raw608_eq : StackRawCall.compTop RawInfo.rawInfo (function608 (.list [])).1 = raw608 := by
  kernel_rfl
#print axioms raw608_eq
end InitECandidate.Proofs.BackendStages
