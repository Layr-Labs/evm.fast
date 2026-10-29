import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw502
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody502_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody502_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody502_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1574#64)

def AllocBody502_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody502_5 : StackLang.HolProg 64 :=
.seq AllocBody502_3 AllocBody502_4

def AllocBody502_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody502_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody502_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody502_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 3

def AllocBody502_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody502_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody502_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody502_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody502_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody502_16 : StackLang.HolProg 64 :=
.seq AllocBody502_14 AllocBody502_15

def AllocBody502_17 : StackLang.HolProg 64 :=
.seq AllocBody502_13 AllocBody502_16

def AllocBody502_18 : StackLang.HolProg 64 :=
.seq AllocBody502_12 AllocBody502_17

def AllocBody502_19 : StackLang.HolProg 64 :=
.seq AllocBody502_11 AllocBody502_18

def AllocBody502_20 : StackLang.HolProg 64 :=
.seq AllocBody502_10 AllocBody502_19

def AllocBody502_21 : StackLang.HolProg 64 :=
.seq AllocBody502_9 AllocBody502_20

def AllocBody502_22 : StackLang.HolProg 64 :=
.seq AllocBody502_8 AllocBody502_21

def AllocBody502_23 : StackLang.HolProg 64 :=
.seq AllocBody502_7 AllocBody502_22

def AllocBody502_24 : StackLang.HolProg 64 :=
.seq AllocBody502_6 AllocBody502_23

def AllocBody502_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody502_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody502_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody502_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody502_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody502_32 : StackLang.HolProg 64 :=
.seq AllocBody502_30 AllocBody502_31

def AllocBody502_33 : StackLang.HolProg 64 :=
.seq AllocBody502_29 AllocBody502_32

def AllocBody502_34 : StackLang.HolProg 64 :=
.seq AllocBody502_28 AllocBody502_33

def AllocBody502_35 : StackLang.HolProg 64 :=
.seq AllocBody502_27 AllocBody502_34

def AllocBody502_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody502_38 : StackLang.HolProg 64 :=
.seq AllocBody502_36 AllocBody502_37

def AllocBody502_39 : StackLang.HolProg 64 :=
.call (some (AllocBody502_35, 0, 502, 2)) (Sum.inl 475) (some (AllocBody502_38, 502, 3))

def AllocBody502_40 : StackLang.HolProg 64 :=
.seq AllocBody502_26 AllocBody502_39

def AllocBody502_41 : StackLang.HolProg 64 :=
.seq AllocBody502_25 AllocBody502_40

def AllocBody502_42 : StackLang.HolProg 64 :=
.seq AllocBody502_24 AllocBody502_41

def AllocBody502_43 : StackLang.HolProg 64 :=
.seq AllocBody502_5 AllocBody502_42

def AllocBody502_44 : StackLang.HolProg 64 :=
.seq AllocBody502_2 AllocBody502_43

def AllocBody502_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody502_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody502_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody502_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody502_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody502_50 : StackLang.HolProg 64 :=
.seq AllocBody502_48 AllocBody502_49

def AllocBody502_51 : StackLang.HolProg 64 :=
.seq AllocBody502_47 AllocBody502_50

def AllocBody502_52 : StackLang.HolProg 64 :=
.seq AllocBody502_46 AllocBody502_51

def AllocBody502_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1575#64)

def AllocBody502_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody502_56 : StackLang.HolProg 64 :=
.seq AllocBody502_54 AllocBody502_55

def AllocBody502_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody502_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody502_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody502_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 5

def AllocBody502_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody502_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody502_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody502_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody502_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody502_67 : StackLang.HolProg 64 :=
.seq AllocBody502_65 AllocBody502_66

def AllocBody502_68 : StackLang.HolProg 64 :=
.seq AllocBody502_64 AllocBody502_67

def AllocBody502_69 : StackLang.HolProg 64 :=
.seq AllocBody502_63 AllocBody502_68

def AllocBody502_70 : StackLang.HolProg 64 :=
.seq AllocBody502_62 AllocBody502_69

def AllocBody502_71 : StackLang.HolProg 64 :=
.seq AllocBody502_61 AllocBody502_70

def AllocBody502_72 : StackLang.HolProg 64 :=
.seq AllocBody502_60 AllocBody502_71

def AllocBody502_73 : StackLang.HolProg 64 :=
.seq AllocBody502_59 AllocBody502_72

def AllocBody502_74 : StackLang.HolProg 64 :=
.seq AllocBody502_58 AllocBody502_73

def AllocBody502_75 : StackLang.HolProg 64 :=
.seq AllocBody502_57 AllocBody502_74

def AllocBody502_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody502_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody502_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody502_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody502_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody502_83 : StackLang.HolProg 64 :=
.seq AllocBody502_81 AllocBody502_82

def AllocBody502_84 : StackLang.HolProg 64 :=
.seq AllocBody502_80 AllocBody502_83

def AllocBody502_85 : StackLang.HolProg 64 :=
.seq AllocBody502_79 AllocBody502_84

def AllocBody502_86 : StackLang.HolProg 64 :=
.seq AllocBody502_78 AllocBody502_85

def AllocBody502_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody502_89 : StackLang.HolProg 64 :=
.seq AllocBody502_87 AllocBody502_88

def AllocBody502_90 : StackLang.HolProg 64 :=
.call (some (AllocBody502_86, 0, 502, 4)) (Sum.inl 475) (some (AllocBody502_89, 502, 5))

def AllocBody502_91 : StackLang.HolProg 64 :=
.seq AllocBody502_77 AllocBody502_90

def AllocBody502_92 : StackLang.HolProg 64 :=
.seq AllocBody502_76 AllocBody502_91

def AllocBody502_93 : StackLang.HolProg 64 :=
.seq AllocBody502_75 AllocBody502_92

def AllocBody502_94 : StackLang.HolProg 64 :=
.seq AllocBody502_56 AllocBody502_93

def AllocBody502_95 : StackLang.HolProg 64 :=
.seq AllocBody502_53 AllocBody502_94

def AllocBody502_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody502_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def AllocBody502_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody502_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody502_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody502_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody502_102 : StackLang.HolProg 64 :=
.seq AllocBody502_100 AllocBody502_101

def AllocBody502_103 : StackLang.HolProg 64 :=
.seq AllocBody502_99 AllocBody502_102

def AllocBody502_104 : StackLang.HolProg 64 :=
.seq AllocBody502_98 AllocBody502_103

def AllocBody502_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1576#64)

def AllocBody502_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody502_108 : StackLang.HolProg 64 :=
.seq AllocBody502_106 AllocBody502_107

def AllocBody502_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody502_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody502_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody502_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 7

def AllocBody502_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody502_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody502_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody502_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody502_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody502_119 : StackLang.HolProg 64 :=
.seq AllocBody502_117 AllocBody502_118

def AllocBody502_120 : StackLang.HolProg 64 :=
.seq AllocBody502_116 AllocBody502_119

def AllocBody502_121 : StackLang.HolProg 64 :=
.seq AllocBody502_115 AllocBody502_120

def AllocBody502_122 : StackLang.HolProg 64 :=
.seq AllocBody502_114 AllocBody502_121

def AllocBody502_123 : StackLang.HolProg 64 :=
.seq AllocBody502_113 AllocBody502_122

def AllocBody502_124 : StackLang.HolProg 64 :=
.seq AllocBody502_112 AllocBody502_123

def AllocBody502_125 : StackLang.HolProg 64 :=
.seq AllocBody502_111 AllocBody502_124

def AllocBody502_126 : StackLang.HolProg 64 :=
.seq AllocBody502_110 AllocBody502_125

def AllocBody502_127 : StackLang.HolProg 64 :=
.seq AllocBody502_109 AllocBody502_126

def AllocBody502_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody502_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody502_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody502_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody502_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody502_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody502_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody502_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody502_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody502_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody502_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody502_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody502_142 : StackLang.HolProg 64 :=
.seq AllocBody502_140 AllocBody502_141

def AllocBody502_143 : StackLang.HolProg 64 :=
.seq AllocBody502_139 AllocBody502_142

def AllocBody502_144 : StackLang.HolProg 64 :=
.seq AllocBody502_138 AllocBody502_143

def AllocBody502_145 : StackLang.HolProg 64 :=
.seq AllocBody502_137 AllocBody502_144

def AllocBody502_146 : StackLang.HolProg 64 :=
.seq AllocBody502_136 AllocBody502_145

def AllocBody502_147 : StackLang.HolProg 64 :=
.seq AllocBody502_135 AllocBody502_146

def AllocBody502_148 : StackLang.HolProg 64 :=
.seq AllocBody502_134 AllocBody502_147

def AllocBody502_149 : StackLang.HolProg 64 :=
.seq AllocBody502_133 AllocBody502_148

def AllocBody502_150 : StackLang.HolProg 64 :=
.seq AllocBody502_132 AllocBody502_149

def AllocBody502_151 : StackLang.HolProg 64 :=
.seq AllocBody502_131 AllocBody502_150

def AllocBody502_152 : StackLang.HolProg 64 :=
.seq AllocBody502_130 AllocBody502_151

def AllocBody502_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody502_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody502_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody502_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody502_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody502_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody502_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody502_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody502_161 : StackLang.HolProg 64 :=
.seq AllocBody502_159 AllocBody502_160

def AllocBody502_162 : StackLang.HolProg 64 :=
.seq AllocBody502_158 AllocBody502_161

def AllocBody502_163 : StackLang.HolProg 64 :=
.seq AllocBody502_157 AllocBody502_162

def AllocBody502_164 : StackLang.HolProg 64 :=
.seq AllocBody502_156 AllocBody502_163

def AllocBody502_165 : StackLang.HolProg 64 :=
.seq AllocBody502_155 AllocBody502_164

def AllocBody502_166 : StackLang.HolProg 64 :=
.seq AllocBody502_154 AllocBody502_165

def AllocBody502_167 : StackLang.HolProg 64 :=
.seq AllocBody502_153 AllocBody502_166

def AllocBody502_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody502_169 : StackLang.HolProg 64 :=
.seq AllocBody502_167 AllocBody502_168

def AllocBody502_170 : StackLang.HolProg 64 :=
.call (some (AllocBody502_152, 0, 502, 6)) (Sum.inl 470) (some (AllocBody502_169, 502, 7))

def AllocBody502_171 : StackLang.HolProg 64 :=
.seq AllocBody502_129 AllocBody502_170

def AllocBody502_172 : StackLang.HolProg 64 :=
.seq AllocBody502_128 AllocBody502_171

def AllocBody502_173 : StackLang.HolProg 64 :=
.seq AllocBody502_127 AllocBody502_172

def AllocBody502_174 : StackLang.HolProg 64 :=
.seq AllocBody502_108 AllocBody502_173

def AllocBody502_175 : StackLang.HolProg 64 :=
.seq AllocBody502_105 AllocBody502_174

def AllocBody502_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody502_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody502_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1577#64)

def AllocBody502_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody502_181 : StackLang.HolProg 64 :=
.seq AllocBody502_179 AllocBody502_180

def AllocBody502_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody502_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody502_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody502_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 9

def AllocBody502_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody502_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody502_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody502_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody502_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody502_192 : StackLang.HolProg 64 :=
.seq AllocBody502_190 AllocBody502_191

def AllocBody502_193 : StackLang.HolProg 64 :=
.seq AllocBody502_189 AllocBody502_192

def AllocBody502_194 : StackLang.HolProg 64 :=
.seq AllocBody502_188 AllocBody502_193

def AllocBody502_195 : StackLang.HolProg 64 :=
.seq AllocBody502_187 AllocBody502_194

def AllocBody502_196 : StackLang.HolProg 64 :=
.seq AllocBody502_186 AllocBody502_195

def AllocBody502_197 : StackLang.HolProg 64 :=
.seq AllocBody502_185 AllocBody502_196

def AllocBody502_198 : StackLang.HolProg 64 :=
.seq AllocBody502_184 AllocBody502_197

def AllocBody502_199 : StackLang.HolProg 64 :=
.seq AllocBody502_183 AllocBody502_198

def AllocBody502_200 : StackLang.HolProg 64 :=
.seq AllocBody502_182 AllocBody502_199

def AllocBody502_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody502_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody502_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody502_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody502_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody502_208 : StackLang.HolProg 64 :=
.seq AllocBody502_206 AllocBody502_207

def AllocBody502_209 : StackLang.HolProg 64 :=
.seq AllocBody502_205 AllocBody502_208

def AllocBody502_210 : StackLang.HolProg 64 :=
.seq AllocBody502_204 AllocBody502_209

def AllocBody502_211 : StackLang.HolProg 64 :=
.seq AllocBody502_203 AllocBody502_210

def AllocBody502_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody502_214 : StackLang.HolProg 64 :=
.seq AllocBody502_212 AllocBody502_213

def AllocBody502_215 : StackLang.HolProg 64 :=
.call (some (AllocBody502_211, 0, 502, 8)) (Sum.inl 131) (some (AllocBody502_214, 502, 9))

def AllocBody502_216 : StackLang.HolProg 64 :=
.seq AllocBody502_202 AllocBody502_215

def AllocBody502_217 : StackLang.HolProg 64 :=
.seq AllocBody502_201 AllocBody502_216

def AllocBody502_218 : StackLang.HolProg 64 :=
.seq AllocBody502_200 AllocBody502_217

def AllocBody502_219 : StackLang.HolProg 64 :=
.seq AllocBody502_181 AllocBody502_218

def AllocBody502_220 : StackLang.HolProg 64 :=
.seq AllocBody502_178 AllocBody502_219

def AllocBody502_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody502_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody502_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1578#64)

def AllocBody502_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody502_226 : StackLang.HolProg 64 :=
.seq AllocBody502_224 AllocBody502_225

def AllocBody502_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody502_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody502_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody502_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 11

def AllocBody502_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody502_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody502_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody502_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody502_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody502_237 : StackLang.HolProg 64 :=
.seq AllocBody502_235 AllocBody502_236

def AllocBody502_238 : StackLang.HolProg 64 :=
.seq AllocBody502_234 AllocBody502_237

def AllocBody502_239 : StackLang.HolProg 64 :=
.seq AllocBody502_233 AllocBody502_238

def AllocBody502_240 : StackLang.HolProg 64 :=
.seq AllocBody502_232 AllocBody502_239

def AllocBody502_241 : StackLang.HolProg 64 :=
.seq AllocBody502_231 AllocBody502_240

def AllocBody502_242 : StackLang.HolProg 64 :=
.seq AllocBody502_230 AllocBody502_241

def AllocBody502_243 : StackLang.HolProg 64 :=
.seq AllocBody502_229 AllocBody502_242

def AllocBody502_244 : StackLang.HolProg 64 :=
.seq AllocBody502_228 AllocBody502_243

def AllocBody502_245 : StackLang.HolProg 64 :=
.seq AllocBody502_227 AllocBody502_244

def AllocBody502_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody502_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody502_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody502_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody502_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_253 : StackLang.HolProg 64 :=
.seq AllocBody502_251 AllocBody502_252

def AllocBody502_254 : StackLang.HolProg 64 :=
.seq AllocBody502_250 AllocBody502_253

def AllocBody502_255 : StackLang.HolProg 64 :=
.seq AllocBody502_249 AllocBody502_254

def AllocBody502_256 : StackLang.HolProg 64 :=
.seq AllocBody502_248 AllocBody502_255

def AllocBody502_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody502_259 : StackLang.HolProg 64 :=
.seq AllocBody502_257 AllocBody502_258

def AllocBody502_260 : StackLang.HolProg 64 :=
.call (some (AllocBody502_256, 0, 502, 10)) (Sum.inl 476) (some (AllocBody502_259, 502, 11))

def AllocBody502_261 : StackLang.HolProg 64 :=
.seq AllocBody502_247 AllocBody502_260

def AllocBody502_262 : StackLang.HolProg 64 :=
.seq AllocBody502_246 AllocBody502_261

def AllocBody502_263 : StackLang.HolProg 64 :=
.seq AllocBody502_245 AllocBody502_262

def AllocBody502_264 : StackLang.HolProg 64 :=
.seq AllocBody502_226 AllocBody502_263

def AllocBody502_265 : StackLang.HolProg 64 :=
.seq AllocBody502_223 AllocBody502_264

def AllocBody502_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody502_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody502_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1579#64)

def AllocBody502_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody502_272 : StackLang.HolProg 64 :=
.seq AllocBody502_270 AllocBody502_271

def AllocBody502_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody502_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody502_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody502_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 502 13

def AllocBody502_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody502_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody502_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody502_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody502_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody502_283 : StackLang.HolProg 64 :=
.seq AllocBody502_281 AllocBody502_282

def AllocBody502_284 : StackLang.HolProg 64 :=
.seq AllocBody502_280 AllocBody502_283

def AllocBody502_285 : StackLang.HolProg 64 :=
.seq AllocBody502_279 AllocBody502_284

def AllocBody502_286 : StackLang.HolProg 64 :=
.seq AllocBody502_278 AllocBody502_285

def AllocBody502_287 : StackLang.HolProg 64 :=
.seq AllocBody502_277 AllocBody502_286

def AllocBody502_288 : StackLang.HolProg 64 :=
.seq AllocBody502_276 AllocBody502_287

def AllocBody502_289 : StackLang.HolProg 64 :=
.seq AllocBody502_275 AllocBody502_288

def AllocBody502_290 : StackLang.HolProg 64 :=
.seq AllocBody502_274 AllocBody502_289

def AllocBody502_291 : StackLang.HolProg 64 :=
.seq AllocBody502_273 AllocBody502_290

def AllocBody502_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody502_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody502_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody502_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody502_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody502_299 : StackLang.HolProg 64 :=
.seq AllocBody502_297 AllocBody502_298

def AllocBody502_300 : StackLang.HolProg 64 :=
.seq AllocBody502_296 AllocBody502_299

def AllocBody502_301 : StackLang.HolProg 64 :=
.seq AllocBody502_295 AllocBody502_300

def AllocBody502_302 : StackLang.HolProg 64 :=
.seq AllocBody502_294 AllocBody502_301

def AllocBody502_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody502_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody502_305 : StackLang.HolProg 64 :=
.seq AllocBody502_303 AllocBody502_304

def AllocBody502_306 : StackLang.HolProg 64 :=
.call (some (AllocBody502_302, 0, 502, 12)) (Sum.inl 490) (some (AllocBody502_305, 502, 13))

def AllocBody502_307 : StackLang.HolProg 64 :=
.seq AllocBody502_293 AllocBody502_306

def AllocBody502_308 : StackLang.HolProg 64 :=
.seq AllocBody502_292 AllocBody502_307

def AllocBody502_309 : StackLang.HolProg 64 :=
.seq AllocBody502_291 AllocBody502_308

def AllocBody502_310 : StackLang.HolProg 64 :=
.seq AllocBody502_272 AllocBody502_309

def AllocBody502_311 : StackLang.HolProg 64 :=
.seq AllocBody502_269 AllocBody502_310

def AllocBody502_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody502_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody502_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody502_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody502_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody502_317 : StackLang.HolProg 64 :=
.seq AllocBody502_315 AllocBody502_316

def AllocBody502_318 : StackLang.HolProg 64 :=
.seq AllocBody502_314 AllocBody502_317

def AllocBody502_319 : StackLang.HolProg 64 :=
.seq AllocBody502_313 AllocBody502_318

def AllocBody502_320 : StackLang.HolProg 64 :=
.seq AllocBody502_312 AllocBody502_319

def AllocBody502_321 : StackLang.HolProg 64 :=
.seq AllocBody502_311 AllocBody502_320

def AllocBody502_322 : StackLang.HolProg 64 :=
.seq AllocBody502_268 AllocBody502_321

def AllocBody502_323 : StackLang.HolProg 64 :=
.seq AllocBody502_267 AllocBody502_322

def AllocBody502_324 : StackLang.HolProg 64 :=
.seq AllocBody502_266 AllocBody502_323

def AllocBody502_325 : StackLang.HolProg 64 :=
.seq AllocBody502_265 AllocBody502_324

def AllocBody502_326 : StackLang.HolProg 64 :=
.seq AllocBody502_222 AllocBody502_325

def AllocBody502_327 : StackLang.HolProg 64 :=
.seq AllocBody502_221 AllocBody502_326

def AllocBody502_328 : StackLang.HolProg 64 :=
.seq AllocBody502_220 AllocBody502_327

def AllocBody502_329 : StackLang.HolProg 64 :=
.seq AllocBody502_177 AllocBody502_328

def AllocBody502_330 : StackLang.HolProg 64 :=
.seq AllocBody502_176 AllocBody502_329

def AllocBody502_331 : StackLang.HolProg 64 :=
.seq AllocBody502_175 AllocBody502_330

def AllocBody502_332 : StackLang.HolProg 64 :=
.seq AllocBody502_104 AllocBody502_331

def AllocBody502_333 : StackLang.HolProg 64 :=
.seq AllocBody502_97 AllocBody502_332

def AllocBody502_334 : StackLang.HolProg 64 :=
.seq AllocBody502_96 AllocBody502_333

def AllocBody502_335 : StackLang.HolProg 64 :=
.seq AllocBody502_95 AllocBody502_334

def AllocBody502_336 : StackLang.HolProg 64 :=
.seq AllocBody502_52 AllocBody502_335

def AllocBody502_337 : StackLang.HolProg 64 :=
.seq AllocBody502_45 AllocBody502_336

def AllocBody502_338 : StackLang.HolProg 64 :=
.seq AllocBody502_44 AllocBody502_337

def AllocBody502_339 : StackLang.HolProg 64 :=
.seq AllocBody502_1 AllocBody502_338

def AllocBody502_340 : StackLang.HolProg 64 :=
.seq AllocBody502_0 AllocBody502_339

def Alloc502 : Nat × StackLang.HolProg 64 := (502, AllocBody502_340)
theorem Alloc502_eq : StackAlloc.progComp (502, raw502) = Alloc502 := by
  kernel_rfl
#print axioms Alloc502_eq
end InitECandidate.Proofs.BackendStages
