import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function526
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody526_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody526_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody526_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1721#64)

def rawBody526_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody526_5 : StackLang.HolProg 64 :=
.seq rawBody526_3 rawBody526_4

def rawBody526_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody526_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody526_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody526_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 3

def rawBody526_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody526_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody526_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody526_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody526_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody526_16 : StackLang.HolProg 64 :=
.seq rawBody526_14 rawBody526_15

def rawBody526_17 : StackLang.HolProg 64 :=
.seq rawBody526_13 rawBody526_16

def rawBody526_18 : StackLang.HolProg 64 :=
.seq rawBody526_12 rawBody526_17

def rawBody526_19 : StackLang.HolProg 64 :=
.seq rawBody526_11 rawBody526_18

def rawBody526_20 : StackLang.HolProg 64 :=
.seq rawBody526_10 rawBody526_19

def rawBody526_21 : StackLang.HolProg 64 :=
.seq rawBody526_9 rawBody526_20

def rawBody526_22 : StackLang.HolProg 64 :=
.seq rawBody526_8 rawBody526_21

def rawBody526_23 : StackLang.HolProg 64 :=
.seq rawBody526_7 rawBody526_22

def rawBody526_24 : StackLang.HolProg 64 :=
.seq rawBody526_6 rawBody526_23

def rawBody526_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody526_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody526_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody526_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody526_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody526_32 : StackLang.HolProg 64 :=
.seq rawBody526_30 rawBody526_31

def rawBody526_33 : StackLang.HolProg 64 :=
.seq rawBody526_29 rawBody526_32

def rawBody526_34 : StackLang.HolProg 64 :=
.seq rawBody526_28 rawBody526_33

def rawBody526_35 : StackLang.HolProg 64 :=
.seq rawBody526_27 rawBody526_34

def rawBody526_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody526_38 : StackLang.HolProg 64 :=
.seq rawBody526_36 rawBody526_37

def rawBody526_39 : StackLang.HolProg 64 :=
.call (some (rawBody526_35, 0, 526, 2)) (Sum.inl 475) (some (rawBody526_38, 526, 3))

def rawBody526_40 : StackLang.HolProg 64 :=
.seq rawBody526_26 rawBody526_39

def rawBody526_41 : StackLang.HolProg 64 :=
.seq rawBody526_25 rawBody526_40

def rawBody526_42 : StackLang.HolProg 64 :=
.seq rawBody526_24 rawBody526_41

def rawBody526_43 : StackLang.HolProg 64 :=
.seq rawBody526_5 rawBody526_42

def rawBody526_44 : StackLang.HolProg 64 :=
.seq rawBody526_2 rawBody526_43

def rawBody526_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody526_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody526_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody526_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody526_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody526_50 : StackLang.HolProg 64 :=
.seq rawBody526_48 rawBody526_49

def rawBody526_51 : StackLang.HolProg 64 :=
.seq rawBody526_47 rawBody526_50

def rawBody526_52 : StackLang.HolProg 64 :=
.seq rawBody526_46 rawBody526_51

def rawBody526_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1722#64)

def rawBody526_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody526_56 : StackLang.HolProg 64 :=
.seq rawBody526_54 rawBody526_55

def rawBody526_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody526_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody526_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody526_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 5

def rawBody526_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody526_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody526_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody526_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody526_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody526_67 : StackLang.HolProg 64 :=
.seq rawBody526_65 rawBody526_66

def rawBody526_68 : StackLang.HolProg 64 :=
.seq rawBody526_64 rawBody526_67

def rawBody526_69 : StackLang.HolProg 64 :=
.seq rawBody526_63 rawBody526_68

def rawBody526_70 : StackLang.HolProg 64 :=
.seq rawBody526_62 rawBody526_69

def rawBody526_71 : StackLang.HolProg 64 :=
.seq rawBody526_61 rawBody526_70

def rawBody526_72 : StackLang.HolProg 64 :=
.seq rawBody526_60 rawBody526_71

def rawBody526_73 : StackLang.HolProg 64 :=
.seq rawBody526_59 rawBody526_72

def rawBody526_74 : StackLang.HolProg 64 :=
.seq rawBody526_58 rawBody526_73

def rawBody526_75 : StackLang.HolProg 64 :=
.seq rawBody526_57 rawBody526_74

def rawBody526_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody526_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody526_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody526_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody526_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody526_83 : StackLang.HolProg 64 :=
.seq rawBody526_81 rawBody526_82

def rawBody526_84 : StackLang.HolProg 64 :=
.seq rawBody526_80 rawBody526_83

def rawBody526_85 : StackLang.HolProg 64 :=
.seq rawBody526_79 rawBody526_84

def rawBody526_86 : StackLang.HolProg 64 :=
.seq rawBody526_78 rawBody526_85

def rawBody526_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody526_89 : StackLang.HolProg 64 :=
.seq rawBody526_87 rawBody526_88

def rawBody526_90 : StackLang.HolProg 64 :=
.call (some (rawBody526_86, 0, 526, 4)) (Sum.inl 475) (some (rawBody526_89, 526, 5))

def rawBody526_91 : StackLang.HolProg 64 :=
.seq rawBody526_77 rawBody526_90

def rawBody526_92 : StackLang.HolProg 64 :=
.seq rawBody526_76 rawBody526_91

def rawBody526_93 : StackLang.HolProg 64 :=
.seq rawBody526_75 rawBody526_92

def rawBody526_94 : StackLang.HolProg 64 :=
.seq rawBody526_56 rawBody526_93

def rawBody526_95 : StackLang.HolProg 64 :=
.seq rawBody526_53 rawBody526_94

def rawBody526_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody526_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def rawBody526_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def rawBody526_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody526_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody526_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody526_102 : StackLang.HolProg 64 :=
.seq rawBody526_100 rawBody526_101

def rawBody526_103 : StackLang.HolProg 64 :=
.seq rawBody526_99 rawBody526_102

def rawBody526_104 : StackLang.HolProg 64 :=
.seq rawBody526_98 rawBody526_103

def rawBody526_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1723#64)

def rawBody526_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody526_108 : StackLang.HolProg 64 :=
.seq rawBody526_106 rawBody526_107

def rawBody526_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody526_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody526_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody526_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 7

def rawBody526_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody526_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody526_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody526_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody526_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody526_119 : StackLang.HolProg 64 :=
.seq rawBody526_117 rawBody526_118

def rawBody526_120 : StackLang.HolProg 64 :=
.seq rawBody526_116 rawBody526_119

def rawBody526_121 : StackLang.HolProg 64 :=
.seq rawBody526_115 rawBody526_120

def rawBody526_122 : StackLang.HolProg 64 :=
.seq rawBody526_114 rawBody526_121

def rawBody526_123 : StackLang.HolProg 64 :=
.seq rawBody526_113 rawBody526_122

def rawBody526_124 : StackLang.HolProg 64 :=
.seq rawBody526_112 rawBody526_123

def rawBody526_125 : StackLang.HolProg 64 :=
.seq rawBody526_111 rawBody526_124

def rawBody526_126 : StackLang.HolProg 64 :=
.seq rawBody526_110 rawBody526_125

def rawBody526_127 : StackLang.HolProg 64 :=
.seq rawBody526_109 rawBody526_126

def rawBody526_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody526_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody526_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody526_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody526_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody526_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody526_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody526_137 : StackLang.HolProg 64 :=
.seq rawBody526_135 rawBody526_136

def rawBody526_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody526_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody526_140 : StackLang.HolProg 64 :=
.seq rawBody526_138 rawBody526_139

def rawBody526_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody526_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody526_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody526_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody526_145 : StackLang.HolProg 64 :=
.seq rawBody526_143 rawBody526_144

def rawBody526_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody526_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody526_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody526_149 : StackLang.HolProg 64 :=
.seq rawBody526_147 rawBody526_148

def rawBody526_150 : StackLang.HolProg 64 :=
.seq rawBody526_146 rawBody526_149

def rawBody526_151 : StackLang.HolProg 64 :=
.seq rawBody526_145 rawBody526_150

def rawBody526_152 : StackLang.HolProg 64 :=
.seq rawBody526_142 rawBody526_151

def rawBody526_153 : StackLang.HolProg 64 :=
.seq rawBody526_141 rawBody526_152

def rawBody526_154 : StackLang.HolProg 64 :=
.seq rawBody526_140 rawBody526_153

def rawBody526_155 : StackLang.HolProg 64 :=
.seq rawBody526_137 rawBody526_154

def rawBody526_156 : StackLang.HolProg 64 :=
.seq rawBody526_134 rawBody526_155

def rawBody526_157 : StackLang.HolProg 64 :=
.seq rawBody526_133 rawBody526_156

def rawBody526_158 : StackLang.HolProg 64 :=
.seq rawBody526_132 rawBody526_157

def rawBody526_159 : StackLang.HolProg 64 :=
.seq rawBody526_131 rawBody526_158

def rawBody526_160 : StackLang.HolProg 64 :=
.seq rawBody526_130 rawBody526_159

def rawBody526_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody526_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody526_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody526_164 : StackLang.HolProg 64 :=
.seq rawBody526_162 rawBody526_163

def rawBody526_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody526_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody526_167 : StackLang.HolProg 64 :=
.seq rawBody526_165 rawBody526_166

def rawBody526_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody526_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody526_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody526_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody526_172 : StackLang.HolProg 64 :=
.seq rawBody526_170 rawBody526_171

def rawBody526_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody526_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody526_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody526_176 : StackLang.HolProg 64 :=
.seq rawBody526_174 rawBody526_175

def rawBody526_177 : StackLang.HolProg 64 :=
.seq rawBody526_173 rawBody526_176

def rawBody526_178 : StackLang.HolProg 64 :=
.seq rawBody526_172 rawBody526_177

def rawBody526_179 : StackLang.HolProg 64 :=
.seq rawBody526_169 rawBody526_178

def rawBody526_180 : StackLang.HolProg 64 :=
.seq rawBody526_168 rawBody526_179

def rawBody526_181 : StackLang.HolProg 64 :=
.seq rawBody526_167 rawBody526_180

def rawBody526_182 : StackLang.HolProg 64 :=
.seq rawBody526_164 rawBody526_181

def rawBody526_183 : StackLang.HolProg 64 :=
.seq rawBody526_161 rawBody526_182

def rawBody526_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody526_185 : StackLang.HolProg 64 :=
.seq rawBody526_183 rawBody526_184

def rawBody526_186 : StackLang.HolProg 64 :=
.call (some (rawBody526_160, 0, 526, 6)) (Sum.inl 470) (some (rawBody526_185, 526, 7))

def rawBody526_187 : StackLang.HolProg 64 :=
.seq rawBody526_129 rawBody526_186

def rawBody526_188 : StackLang.HolProg 64 :=
.seq rawBody526_128 rawBody526_187

def rawBody526_189 : StackLang.HolProg 64 :=
.seq rawBody526_127 rawBody526_188

def rawBody526_190 : StackLang.HolProg 64 :=
.seq rawBody526_108 rawBody526_189

def rawBody526_191 : StackLang.HolProg 64 :=
.seq rawBody526_105 rawBody526_190

def rawBody526_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody526_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody526_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1724#64)

def rawBody526_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody526_197 : StackLang.HolProg 64 :=
.seq rawBody526_195 rawBody526_196

def rawBody526_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody526_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody526_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody526_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 9

def rawBody526_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody526_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody526_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody526_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody526_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody526_208 : StackLang.HolProg 64 :=
.seq rawBody526_206 rawBody526_207

def rawBody526_209 : StackLang.HolProg 64 :=
.seq rawBody526_205 rawBody526_208

def rawBody526_210 : StackLang.HolProg 64 :=
.seq rawBody526_204 rawBody526_209

def rawBody526_211 : StackLang.HolProg 64 :=
.seq rawBody526_203 rawBody526_210

def rawBody526_212 : StackLang.HolProg 64 :=
.seq rawBody526_202 rawBody526_211

def rawBody526_213 : StackLang.HolProg 64 :=
.seq rawBody526_201 rawBody526_212

def rawBody526_214 : StackLang.HolProg 64 :=
.seq rawBody526_200 rawBody526_213

def rawBody526_215 : StackLang.HolProg 64 :=
.seq rawBody526_199 rawBody526_214

def rawBody526_216 : StackLang.HolProg 64 :=
.seq rawBody526_198 rawBody526_215

def rawBody526_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody526_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody526_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody526_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody526_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody526_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody526_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def rawBody526_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody526_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody526_228 : StackLang.HolProg 64 :=
.seq rawBody526_226 rawBody526_227

def rawBody526_229 : StackLang.HolProg 64 :=
.seq rawBody526_225 rawBody526_228

def rawBody526_230 : StackLang.HolProg 64 :=
.seq rawBody526_224 rawBody526_229

def rawBody526_231 : StackLang.HolProg 64 :=
.seq rawBody526_223 rawBody526_230

def rawBody526_232 : StackLang.HolProg 64 :=
.seq rawBody526_222 rawBody526_231

def rawBody526_233 : StackLang.HolProg 64 :=
.seq rawBody526_221 rawBody526_232

def rawBody526_234 : StackLang.HolProg 64 :=
.seq rawBody526_220 rawBody526_233

def rawBody526_235 : StackLang.HolProg 64 :=
.seq rawBody526_219 rawBody526_234

def rawBody526_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody526_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def rawBody526_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody526_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody526_240 : StackLang.HolProg 64 :=
.seq rawBody526_238 rawBody526_239

def rawBody526_241 : StackLang.HolProg 64 :=
.seq rawBody526_237 rawBody526_240

def rawBody526_242 : StackLang.HolProg 64 :=
.seq rawBody526_236 rawBody526_241

def rawBody526_243 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody526_244 : StackLang.HolProg 64 :=
.seq rawBody526_242 rawBody526_243

def rawBody526_245 : StackLang.HolProg 64 :=
.call (some (rawBody526_235, 0, 526, 8)) (Sum.inl 102) (some (rawBody526_244, 526, 9))

def rawBody526_246 : StackLang.HolProg 64 :=
.seq rawBody526_218 rawBody526_245

def rawBody526_247 : StackLang.HolProg 64 :=
.seq rawBody526_217 rawBody526_246

def rawBody526_248 : StackLang.HolProg 64 :=
.seq rawBody526_216 rawBody526_247

def rawBody526_249 : StackLang.HolProg 64 :=
.seq rawBody526_197 rawBody526_248

def rawBody526_250 : StackLang.HolProg 64 :=
.seq rawBody526_194 rawBody526_249

def rawBody526_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody526_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody526_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody526_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody526_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody526_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody526_258 : StackLang.HolProg 64 :=
.seq rawBody526_256 rawBody526_257

def rawBody526_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1725#64)

def rawBody526_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody526_262 : StackLang.HolProg 64 :=
.seq rawBody526_260 rawBody526_261

def rawBody526_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody526_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody526_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody526_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 11

def rawBody526_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody526_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody526_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody526_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody526_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody526_273 : StackLang.HolProg 64 :=
.seq rawBody526_271 rawBody526_272

def rawBody526_274 : StackLang.HolProg 64 :=
.seq rawBody526_270 rawBody526_273

def rawBody526_275 : StackLang.HolProg 64 :=
.seq rawBody526_269 rawBody526_274

def rawBody526_276 : StackLang.HolProg 64 :=
.seq rawBody526_268 rawBody526_275

def rawBody526_277 : StackLang.HolProg 64 :=
.seq rawBody526_267 rawBody526_276

def rawBody526_278 : StackLang.HolProg 64 :=
.seq rawBody526_266 rawBody526_277

def rawBody526_279 : StackLang.HolProg 64 :=
.seq rawBody526_265 rawBody526_278

def rawBody526_280 : StackLang.HolProg 64 :=
.seq rawBody526_264 rawBody526_279

def rawBody526_281 : StackLang.HolProg 64 :=
.seq rawBody526_263 rawBody526_280

def rawBody526_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody526_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody526_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody526_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody526_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody526_289 : StackLang.HolProg 64 :=
.seq rawBody526_287 rawBody526_288

def rawBody526_290 : StackLang.HolProg 64 :=
.seq rawBody526_286 rawBody526_289

def rawBody526_291 : StackLang.HolProg 64 :=
.seq rawBody526_285 rawBody526_290

def rawBody526_292 : StackLang.HolProg 64 :=
.seq rawBody526_284 rawBody526_291

def rawBody526_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody526_294 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody526_295 : StackLang.HolProg 64 :=
.seq rawBody526_293 rawBody526_294

def rawBody526_296 : StackLang.HolProg 64 :=
.call (some (rawBody526_292, 0, 526, 10)) (Sum.inl 490) (some (rawBody526_295, 526, 11))

def rawBody526_297 : StackLang.HolProg 64 :=
.seq rawBody526_283 rawBody526_296

def rawBody526_298 : StackLang.HolProg 64 :=
.seq rawBody526_282 rawBody526_297

def rawBody526_299 : StackLang.HolProg 64 :=
.seq rawBody526_281 rawBody526_298

def rawBody526_300 : StackLang.HolProg 64 :=
.seq rawBody526_262 rawBody526_299

def rawBody526_301 : StackLang.HolProg 64 :=
.seq rawBody526_259 rawBody526_300

def rawBody526_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody526_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody526_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody526_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody526_307 : StackLang.HolProg 64 :=
.seq rawBody526_305 rawBody526_306

def rawBody526_308 : StackLang.HolProg 64 :=
.seq rawBody526_304 rawBody526_307

def rawBody526_309 : StackLang.HolProg 64 :=
.seq rawBody526_303 rawBody526_308

def rawBody526_310 : StackLang.HolProg 64 :=
.seq rawBody526_302 rawBody526_309

def rawBody526_311 : StackLang.HolProg 64 :=
.seq rawBody526_301 rawBody526_310

def rawBody526_312 : StackLang.HolProg 64 :=
.seq rawBody526_258 rawBody526_311

def rawBody526_313 : StackLang.HolProg 64 :=
.seq rawBody526_255 rawBody526_312

def rawBody526_314 : StackLang.HolProg 64 :=
.seq rawBody526_254 rawBody526_313

def rawBody526_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_316 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody526_314 rawBody526_315

def rawBody526_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody526_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody526_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody526_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody526_321 : StackLang.HolProg 64 :=
.seq rawBody526_319 rawBody526_320

def rawBody526_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1726#64)

def rawBody526_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody526_325 : StackLang.HolProg 64 :=
.seq rawBody526_323 rawBody526_324

def rawBody526_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody526_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody526_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody526_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 13

def rawBody526_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody526_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody526_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody526_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody526_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody526_336 : StackLang.HolProg 64 :=
.seq rawBody526_334 rawBody526_335

def rawBody526_337 : StackLang.HolProg 64 :=
.seq rawBody526_333 rawBody526_336

def rawBody526_338 : StackLang.HolProg 64 :=
.seq rawBody526_332 rawBody526_337

def rawBody526_339 : StackLang.HolProg 64 :=
.seq rawBody526_331 rawBody526_338

def rawBody526_340 : StackLang.HolProg 64 :=
.seq rawBody526_330 rawBody526_339

def rawBody526_341 : StackLang.HolProg 64 :=
.seq rawBody526_329 rawBody526_340

def rawBody526_342 : StackLang.HolProg 64 :=
.seq rawBody526_328 rawBody526_341

def rawBody526_343 : StackLang.HolProg 64 :=
.seq rawBody526_327 rawBody526_342

def rawBody526_344 : StackLang.HolProg 64 :=
.seq rawBody526_326 rawBody526_343

def rawBody526_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody526_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody526_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody526_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody526_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody526_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def rawBody526_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody526_354 : StackLang.HolProg 64 :=
.seq rawBody526_352 rawBody526_353

def rawBody526_355 : StackLang.HolProg 64 :=
.seq rawBody526_351 rawBody526_354

def rawBody526_356 : StackLang.HolProg 64 :=
.seq rawBody526_350 rawBody526_355

def rawBody526_357 : StackLang.HolProg 64 :=
.seq rawBody526_349 rawBody526_356

def rawBody526_358 : StackLang.HolProg 64 :=
.seq rawBody526_348 rawBody526_357

def rawBody526_359 : StackLang.HolProg 64 :=
.seq rawBody526_347 rawBody526_358

def rawBody526_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def rawBody526_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody526_362 : StackLang.HolProg 64 :=
.seq rawBody526_360 rawBody526_361

def rawBody526_363 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody526_364 : StackLang.HolProg 64 :=
.seq rawBody526_362 rawBody526_363

def rawBody526_365 : StackLang.HolProg 64 :=
.call (some (rawBody526_359, 0, 526, 12)) (Sum.inl 486) (some (rawBody526_364, 526, 13))

def rawBody526_366 : StackLang.HolProg 64 :=
.seq rawBody526_346 rawBody526_365

def rawBody526_367 : StackLang.HolProg 64 :=
.seq rawBody526_345 rawBody526_366

def rawBody526_368 : StackLang.HolProg 64 :=
.seq rawBody526_344 rawBody526_367

def rawBody526_369 : StackLang.HolProg 64 :=
.seq rawBody526_325 rawBody526_368

def rawBody526_370 : StackLang.HolProg 64 :=
.seq rawBody526_322 rawBody526_369

def rawBody526_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody526_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody526_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody526_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody526_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody526_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody526_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_380 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody526_381 : StackLang.HolProg 64 :=
.seq rawBody526_379 rawBody526_380

def rawBody526_382 : StackLang.HolProg 64 :=
.seq rawBody526_378 rawBody526_381

def rawBody526_383 : StackLang.HolProg 64 :=
.seq rawBody526_377 rawBody526_382

def rawBody526_384 : StackLang.HolProg 64 :=
.seq rawBody526_376 rawBody526_383

def rawBody526_385 : StackLang.HolProg 64 :=
.seq rawBody526_375 rawBody526_384

def rawBody526_386 : StackLang.HolProg 64 :=
.seq rawBody526_374 rawBody526_385

def rawBody526_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_388 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody526_386 rawBody526_387

def rawBody526_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody526_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody526_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody526_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody526_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody526_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody526_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody526_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody526_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody526_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody526_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody526_401 : StackLang.HolProg 64 :=
.seq rawBody526_399 rawBody526_400

def rawBody526_402 : StackLang.HolProg 64 :=
.seq rawBody526_398 rawBody526_401

def rawBody526_403 : StackLang.HolProg 64 :=
.seq rawBody526_397 rawBody526_402

def rawBody526_404 : StackLang.HolProg 64 :=
.seq rawBody526_396 rawBody526_403

def rawBody526_405 : StackLang.HolProg 64 :=
.seq rawBody526_395 rawBody526_404

def rawBody526_406 : StackLang.HolProg 64 :=
.seq rawBody526_394 rawBody526_405

def rawBody526_407 : StackLang.HolProg 64 :=
.seq rawBody526_393 rawBody526_406

def rawBody526_408 : StackLang.HolProg 64 :=
.seq rawBody526_392 rawBody526_407

def rawBody526_409 : StackLang.HolProg 64 :=
.seq rawBody526_391 rawBody526_408

def rawBody526_410 : StackLang.HolProg 64 :=
.seq rawBody526_390 rawBody526_409

def rawBody526_411 : StackLang.HolProg 64 :=
.seq rawBody526_389 rawBody526_410

def rawBody526_412 : StackLang.HolProg 64 :=
.seq rawBody526_388 rawBody526_411

def rawBody526_413 : StackLang.HolProg 64 :=
.seq rawBody526_373 rawBody526_412

def rawBody526_414 : StackLang.HolProg 64 :=
.seq rawBody526_372 rawBody526_413

def rawBody526_415 : StackLang.HolProg 64 :=
.seq rawBody526_371 rawBody526_414

def rawBody526_416 : StackLang.HolProg 64 :=
.seq rawBody526_370 rawBody526_415

def rawBody526_417 : StackLang.HolProg 64 :=
.seq rawBody526_321 rawBody526_416

def rawBody526_418 : StackLang.HolProg 64 :=
.seq rawBody526_318 rawBody526_417

def rawBody526_419 : StackLang.HolProg 64 :=
.seq rawBody526_317 rawBody526_418

def rawBody526_420 : StackLang.HolProg 64 :=
.seq rawBody526_316 rawBody526_419

def rawBody526_421 : StackLang.HolProg 64 :=
.seq rawBody526_253 rawBody526_420

def rawBody526_422 : StackLang.HolProg 64 :=
.seq rawBody526_252 rawBody526_421

def rawBody526_423 : StackLang.HolProg 64 :=
.seq rawBody526_251 rawBody526_422

def rawBody526_424 : StackLang.HolProg 64 :=
.seq rawBody526_250 rawBody526_423

def rawBody526_425 : StackLang.HolProg 64 :=
.seq rawBody526_193 rawBody526_424

def rawBody526_426 : StackLang.HolProg 64 :=
.seq rawBody526_192 rawBody526_425

def rawBody526_427 : StackLang.HolProg 64 :=
.seq rawBody526_191 rawBody526_426

def rawBody526_428 : StackLang.HolProg 64 :=
.seq rawBody526_104 rawBody526_427

def rawBody526_429 : StackLang.HolProg 64 :=
.seq rawBody526_97 rawBody526_428

def rawBody526_430 : StackLang.HolProg 64 :=
.seq rawBody526_96 rawBody526_429

def rawBody526_431 : StackLang.HolProg 64 :=
.seq rawBody526_95 rawBody526_430

def rawBody526_432 : StackLang.HolProg 64 :=
.seq rawBody526_52 rawBody526_431

def rawBody526_433 : StackLang.HolProg 64 :=
.seq rawBody526_45 rawBody526_432

def rawBody526_434 : StackLang.HolProg 64 :=
.seq rawBody526_44 rawBody526_433

def rawBody526_435 : StackLang.HolProg 64 :=
.seq rawBody526_1 rawBody526_434

def rawBody526_436 : StackLang.HolProg 64 :=
.seq rawBody526_0 rawBody526_435

def raw526 : StackLang.HolProg 64 := rawBody526_436
theorem raw526_eq : StackRawCall.compTop RawInfo.rawInfo (function526 (.list [])).1 = raw526 := by
  kernel_rfl
#print axioms raw526_eq
end InitECandidate.Proofs.BackendStages
