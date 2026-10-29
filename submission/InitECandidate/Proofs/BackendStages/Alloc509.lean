import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw509
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody509_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody509_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody509_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1620#64)

def AllocBody509_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody509_5 : StackLang.HolProg 64 :=
.seq AllocBody509_3 AllocBody509_4

def AllocBody509_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody509_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody509_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody509_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 509 3

def AllocBody509_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody509_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody509_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody509_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody509_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody509_16 : StackLang.HolProg 64 :=
.seq AllocBody509_14 AllocBody509_15

def AllocBody509_17 : StackLang.HolProg 64 :=
.seq AllocBody509_13 AllocBody509_16

def AllocBody509_18 : StackLang.HolProg 64 :=
.seq AllocBody509_12 AllocBody509_17

def AllocBody509_19 : StackLang.HolProg 64 :=
.seq AllocBody509_11 AllocBody509_18

def AllocBody509_20 : StackLang.HolProg 64 :=
.seq AllocBody509_10 AllocBody509_19

def AllocBody509_21 : StackLang.HolProg 64 :=
.seq AllocBody509_9 AllocBody509_20

def AllocBody509_22 : StackLang.HolProg 64 :=
.seq AllocBody509_8 AllocBody509_21

def AllocBody509_23 : StackLang.HolProg 64 :=
.seq AllocBody509_7 AllocBody509_22

def AllocBody509_24 : StackLang.HolProg 64 :=
.seq AllocBody509_6 AllocBody509_23

def AllocBody509_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody509_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody509_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody509_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody509_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody509_32 : StackLang.HolProg 64 :=
.seq AllocBody509_30 AllocBody509_31

def AllocBody509_33 : StackLang.HolProg 64 :=
.seq AllocBody509_29 AllocBody509_32

def AllocBody509_34 : StackLang.HolProg 64 :=
.seq AllocBody509_28 AllocBody509_33

def AllocBody509_35 : StackLang.HolProg 64 :=
.seq AllocBody509_27 AllocBody509_34

def AllocBody509_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody509_38 : StackLang.HolProg 64 :=
.seq AllocBody509_36 AllocBody509_37

def AllocBody509_39 : StackLang.HolProg 64 :=
.call (some (AllocBody509_35, 0, 509, 2)) (Sum.inl 475) (some (AllocBody509_38, 509, 3))

def AllocBody509_40 : StackLang.HolProg 64 :=
.seq AllocBody509_26 AllocBody509_39

def AllocBody509_41 : StackLang.HolProg 64 :=
.seq AllocBody509_25 AllocBody509_40

def AllocBody509_42 : StackLang.HolProg 64 :=
.seq AllocBody509_24 AllocBody509_41

def AllocBody509_43 : StackLang.HolProg 64 :=
.seq AllocBody509_5 AllocBody509_42

def AllocBody509_44 : StackLang.HolProg 64 :=
.seq AllocBody509_2 AllocBody509_43

def AllocBody509_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody509_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody509_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody509_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody509_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody509_50 : StackLang.HolProg 64 :=
.seq AllocBody509_48 AllocBody509_49

def AllocBody509_51 : StackLang.HolProg 64 :=
.seq AllocBody509_47 AllocBody509_50

def AllocBody509_52 : StackLang.HolProg 64 :=
.seq AllocBody509_46 AllocBody509_51

def AllocBody509_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1621#64)

def AllocBody509_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody509_56 : StackLang.HolProg 64 :=
.seq AllocBody509_54 AllocBody509_55

def AllocBody509_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody509_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody509_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody509_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 509 5

def AllocBody509_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody509_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody509_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody509_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody509_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody509_67 : StackLang.HolProg 64 :=
.seq AllocBody509_65 AllocBody509_66

def AllocBody509_68 : StackLang.HolProg 64 :=
.seq AllocBody509_64 AllocBody509_67

def AllocBody509_69 : StackLang.HolProg 64 :=
.seq AllocBody509_63 AllocBody509_68

def AllocBody509_70 : StackLang.HolProg 64 :=
.seq AllocBody509_62 AllocBody509_69

def AllocBody509_71 : StackLang.HolProg 64 :=
.seq AllocBody509_61 AllocBody509_70

def AllocBody509_72 : StackLang.HolProg 64 :=
.seq AllocBody509_60 AllocBody509_71

def AllocBody509_73 : StackLang.HolProg 64 :=
.seq AllocBody509_59 AllocBody509_72

def AllocBody509_74 : StackLang.HolProg 64 :=
.seq AllocBody509_58 AllocBody509_73

def AllocBody509_75 : StackLang.HolProg 64 :=
.seq AllocBody509_57 AllocBody509_74

def AllocBody509_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody509_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody509_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody509_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody509_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody509_83 : StackLang.HolProg 64 :=
.seq AllocBody509_81 AllocBody509_82

def AllocBody509_84 : StackLang.HolProg 64 :=
.seq AllocBody509_80 AllocBody509_83

def AllocBody509_85 : StackLang.HolProg 64 :=
.seq AllocBody509_79 AllocBody509_84

def AllocBody509_86 : StackLang.HolProg 64 :=
.seq AllocBody509_78 AllocBody509_85

def AllocBody509_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody509_89 : StackLang.HolProg 64 :=
.seq AllocBody509_87 AllocBody509_88

def AllocBody509_90 : StackLang.HolProg 64 :=
.call (some (AllocBody509_86, 0, 509, 4)) (Sum.inl 475) (some (AllocBody509_89, 509, 5))

def AllocBody509_91 : StackLang.HolProg 64 :=
.seq AllocBody509_77 AllocBody509_90

def AllocBody509_92 : StackLang.HolProg 64 :=
.seq AllocBody509_76 AllocBody509_91

def AllocBody509_93 : StackLang.HolProg 64 :=
.seq AllocBody509_75 AllocBody509_92

def AllocBody509_94 : StackLang.HolProg 64 :=
.seq AllocBody509_56 AllocBody509_93

def AllocBody509_95 : StackLang.HolProg 64 :=
.seq AllocBody509_53 AllocBody509_94

def AllocBody509_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody509_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody509_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody509_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody509_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody509_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody509_102 : StackLang.HolProg 64 :=
.seq AllocBody509_100 AllocBody509_101

def AllocBody509_103 : StackLang.HolProg 64 :=
.seq AllocBody509_99 AllocBody509_102

def AllocBody509_104 : StackLang.HolProg 64 :=
.seq AllocBody509_98 AllocBody509_103

def AllocBody509_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1622#64)

def AllocBody509_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody509_108 : StackLang.HolProg 64 :=
.seq AllocBody509_106 AllocBody509_107

def AllocBody509_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody509_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody509_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody509_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 509 7

def AllocBody509_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody509_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody509_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody509_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody509_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody509_119 : StackLang.HolProg 64 :=
.seq AllocBody509_117 AllocBody509_118

def AllocBody509_120 : StackLang.HolProg 64 :=
.seq AllocBody509_116 AllocBody509_119

def AllocBody509_121 : StackLang.HolProg 64 :=
.seq AllocBody509_115 AllocBody509_120

def AllocBody509_122 : StackLang.HolProg 64 :=
.seq AllocBody509_114 AllocBody509_121

def AllocBody509_123 : StackLang.HolProg 64 :=
.seq AllocBody509_113 AllocBody509_122

def AllocBody509_124 : StackLang.HolProg 64 :=
.seq AllocBody509_112 AllocBody509_123

def AllocBody509_125 : StackLang.HolProg 64 :=
.seq AllocBody509_111 AllocBody509_124

def AllocBody509_126 : StackLang.HolProg 64 :=
.seq AllocBody509_110 AllocBody509_125

def AllocBody509_127 : StackLang.HolProg 64 :=
.seq AllocBody509_109 AllocBody509_126

def AllocBody509_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody509_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody509_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody509_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody509_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody509_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody509_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody509_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody509_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody509_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody509_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody509_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody509_142 : StackLang.HolProg 64 :=
.seq AllocBody509_140 AllocBody509_141

def AllocBody509_143 : StackLang.HolProg 64 :=
.seq AllocBody509_139 AllocBody509_142

def AllocBody509_144 : StackLang.HolProg 64 :=
.seq AllocBody509_138 AllocBody509_143

def AllocBody509_145 : StackLang.HolProg 64 :=
.seq AllocBody509_137 AllocBody509_144

def AllocBody509_146 : StackLang.HolProg 64 :=
.seq AllocBody509_136 AllocBody509_145

def AllocBody509_147 : StackLang.HolProg 64 :=
.seq AllocBody509_135 AllocBody509_146

def AllocBody509_148 : StackLang.HolProg 64 :=
.seq AllocBody509_134 AllocBody509_147

def AllocBody509_149 : StackLang.HolProg 64 :=
.seq AllocBody509_133 AllocBody509_148

def AllocBody509_150 : StackLang.HolProg 64 :=
.seq AllocBody509_132 AllocBody509_149

def AllocBody509_151 : StackLang.HolProg 64 :=
.seq AllocBody509_131 AllocBody509_150

def AllocBody509_152 : StackLang.HolProg 64 :=
.seq AllocBody509_130 AllocBody509_151

def AllocBody509_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody509_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody509_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody509_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody509_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody509_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody509_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody509_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody509_161 : StackLang.HolProg 64 :=
.seq AllocBody509_159 AllocBody509_160

def AllocBody509_162 : StackLang.HolProg 64 :=
.seq AllocBody509_158 AllocBody509_161

def AllocBody509_163 : StackLang.HolProg 64 :=
.seq AllocBody509_157 AllocBody509_162

def AllocBody509_164 : StackLang.HolProg 64 :=
.seq AllocBody509_156 AllocBody509_163

def AllocBody509_165 : StackLang.HolProg 64 :=
.seq AllocBody509_155 AllocBody509_164

def AllocBody509_166 : StackLang.HolProg 64 :=
.seq AllocBody509_154 AllocBody509_165

def AllocBody509_167 : StackLang.HolProg 64 :=
.seq AllocBody509_153 AllocBody509_166

def AllocBody509_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody509_169 : StackLang.HolProg 64 :=
.seq AllocBody509_167 AllocBody509_168

def AllocBody509_170 : StackLang.HolProg 64 :=
.call (some (AllocBody509_152, 0, 509, 6)) (Sum.inl 470) (some (AllocBody509_169, 509, 7))

def AllocBody509_171 : StackLang.HolProg 64 :=
.seq AllocBody509_129 AllocBody509_170

def AllocBody509_172 : StackLang.HolProg 64 :=
.seq AllocBody509_128 AllocBody509_171

def AllocBody509_173 : StackLang.HolProg 64 :=
.seq AllocBody509_127 AllocBody509_172

def AllocBody509_174 : StackLang.HolProg 64 :=
.seq AllocBody509_108 AllocBody509_173

def AllocBody509_175 : StackLang.HolProg 64 :=
.seq AllocBody509_105 AllocBody509_174

def AllocBody509_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody509_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody509_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1623#64)

def AllocBody509_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody509_181 : StackLang.HolProg 64 :=
.seq AllocBody509_179 AllocBody509_180

def AllocBody509_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody509_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody509_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody509_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 509 9

def AllocBody509_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody509_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody509_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody509_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody509_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody509_192 : StackLang.HolProg 64 :=
.seq AllocBody509_190 AllocBody509_191

def AllocBody509_193 : StackLang.HolProg 64 :=
.seq AllocBody509_189 AllocBody509_192

def AllocBody509_194 : StackLang.HolProg 64 :=
.seq AllocBody509_188 AllocBody509_193

def AllocBody509_195 : StackLang.HolProg 64 :=
.seq AllocBody509_187 AllocBody509_194

def AllocBody509_196 : StackLang.HolProg 64 :=
.seq AllocBody509_186 AllocBody509_195

def AllocBody509_197 : StackLang.HolProg 64 :=
.seq AllocBody509_185 AllocBody509_196

def AllocBody509_198 : StackLang.HolProg 64 :=
.seq AllocBody509_184 AllocBody509_197

def AllocBody509_199 : StackLang.HolProg 64 :=
.seq AllocBody509_183 AllocBody509_198

def AllocBody509_200 : StackLang.HolProg 64 :=
.seq AllocBody509_182 AllocBody509_199

def AllocBody509_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody509_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody509_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody509_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody509_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody509_208 : StackLang.HolProg 64 :=
.seq AllocBody509_206 AllocBody509_207

def AllocBody509_209 : StackLang.HolProg 64 :=
.seq AllocBody509_205 AllocBody509_208

def AllocBody509_210 : StackLang.HolProg 64 :=
.seq AllocBody509_204 AllocBody509_209

def AllocBody509_211 : StackLang.HolProg 64 :=
.seq AllocBody509_203 AllocBody509_210

def AllocBody509_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody509_214 : StackLang.HolProg 64 :=
.seq AllocBody509_212 AllocBody509_213

def AllocBody509_215 : StackLang.HolProg 64 :=
.call (some (AllocBody509_211, 0, 509, 8)) (Sum.inl 107) (some (AllocBody509_214, 509, 9))

def AllocBody509_216 : StackLang.HolProg 64 :=
.seq AllocBody509_202 AllocBody509_215

def AllocBody509_217 : StackLang.HolProg 64 :=
.seq AllocBody509_201 AllocBody509_216

def AllocBody509_218 : StackLang.HolProg 64 :=
.seq AllocBody509_200 AllocBody509_217

def AllocBody509_219 : StackLang.HolProg 64 :=
.seq AllocBody509_181 AllocBody509_218

def AllocBody509_220 : StackLang.HolProg 64 :=
.seq AllocBody509_178 AllocBody509_219

def AllocBody509_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody509_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody509_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1624#64)

def AllocBody509_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody509_226 : StackLang.HolProg 64 :=
.seq AllocBody509_224 AllocBody509_225

def AllocBody509_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody509_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody509_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody509_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 509 11

def AllocBody509_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody509_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody509_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody509_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody509_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody509_237 : StackLang.HolProg 64 :=
.seq AllocBody509_235 AllocBody509_236

def AllocBody509_238 : StackLang.HolProg 64 :=
.seq AllocBody509_234 AllocBody509_237

def AllocBody509_239 : StackLang.HolProg 64 :=
.seq AllocBody509_233 AllocBody509_238

def AllocBody509_240 : StackLang.HolProg 64 :=
.seq AllocBody509_232 AllocBody509_239

def AllocBody509_241 : StackLang.HolProg 64 :=
.seq AllocBody509_231 AllocBody509_240

def AllocBody509_242 : StackLang.HolProg 64 :=
.seq AllocBody509_230 AllocBody509_241

def AllocBody509_243 : StackLang.HolProg 64 :=
.seq AllocBody509_229 AllocBody509_242

def AllocBody509_244 : StackLang.HolProg 64 :=
.seq AllocBody509_228 AllocBody509_243

def AllocBody509_245 : StackLang.HolProg 64 :=
.seq AllocBody509_227 AllocBody509_244

def AllocBody509_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody509_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody509_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody509_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody509_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_253 : StackLang.HolProg 64 :=
.seq AllocBody509_251 AllocBody509_252

def AllocBody509_254 : StackLang.HolProg 64 :=
.seq AllocBody509_250 AllocBody509_253

def AllocBody509_255 : StackLang.HolProg 64 :=
.seq AllocBody509_249 AllocBody509_254

def AllocBody509_256 : StackLang.HolProg 64 :=
.seq AllocBody509_248 AllocBody509_255

def AllocBody509_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody509_259 : StackLang.HolProg 64 :=
.seq AllocBody509_257 AllocBody509_258

def AllocBody509_260 : StackLang.HolProg 64 :=
.call (some (AllocBody509_256, 0, 509, 10)) (Sum.inl 478) (some (AllocBody509_259, 509, 11))

def AllocBody509_261 : StackLang.HolProg 64 :=
.seq AllocBody509_247 AllocBody509_260

def AllocBody509_262 : StackLang.HolProg 64 :=
.seq AllocBody509_246 AllocBody509_261

def AllocBody509_263 : StackLang.HolProg 64 :=
.seq AllocBody509_245 AllocBody509_262

def AllocBody509_264 : StackLang.HolProg 64 :=
.seq AllocBody509_226 AllocBody509_263

def AllocBody509_265 : StackLang.HolProg 64 :=
.seq AllocBody509_223 AllocBody509_264

def AllocBody509_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody509_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody509_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1625#64)

def AllocBody509_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody509_272 : StackLang.HolProg 64 :=
.seq AllocBody509_270 AllocBody509_271

def AllocBody509_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody509_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody509_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody509_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 509 13

def AllocBody509_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody509_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody509_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody509_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody509_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody509_283 : StackLang.HolProg 64 :=
.seq AllocBody509_281 AllocBody509_282

def AllocBody509_284 : StackLang.HolProg 64 :=
.seq AllocBody509_280 AllocBody509_283

def AllocBody509_285 : StackLang.HolProg 64 :=
.seq AllocBody509_279 AllocBody509_284

def AllocBody509_286 : StackLang.HolProg 64 :=
.seq AllocBody509_278 AllocBody509_285

def AllocBody509_287 : StackLang.HolProg 64 :=
.seq AllocBody509_277 AllocBody509_286

def AllocBody509_288 : StackLang.HolProg 64 :=
.seq AllocBody509_276 AllocBody509_287

def AllocBody509_289 : StackLang.HolProg 64 :=
.seq AllocBody509_275 AllocBody509_288

def AllocBody509_290 : StackLang.HolProg 64 :=
.seq AllocBody509_274 AllocBody509_289

def AllocBody509_291 : StackLang.HolProg 64 :=
.seq AllocBody509_273 AllocBody509_290

def AllocBody509_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody509_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody509_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody509_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody509_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody509_299 : StackLang.HolProg 64 :=
.seq AllocBody509_297 AllocBody509_298

def AllocBody509_300 : StackLang.HolProg 64 :=
.seq AllocBody509_296 AllocBody509_299

def AllocBody509_301 : StackLang.HolProg 64 :=
.seq AllocBody509_295 AllocBody509_300

def AllocBody509_302 : StackLang.HolProg 64 :=
.seq AllocBody509_294 AllocBody509_301

def AllocBody509_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody509_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody509_305 : StackLang.HolProg 64 :=
.seq AllocBody509_303 AllocBody509_304

def AllocBody509_306 : StackLang.HolProg 64 :=
.call (some (AllocBody509_302, 0, 509, 12)) (Sum.inl 490) (some (AllocBody509_305, 509, 13))

def AllocBody509_307 : StackLang.HolProg 64 :=
.seq AllocBody509_293 AllocBody509_306

def AllocBody509_308 : StackLang.HolProg 64 :=
.seq AllocBody509_292 AllocBody509_307

def AllocBody509_309 : StackLang.HolProg 64 :=
.seq AllocBody509_291 AllocBody509_308

def AllocBody509_310 : StackLang.HolProg 64 :=
.seq AllocBody509_272 AllocBody509_309

def AllocBody509_311 : StackLang.HolProg 64 :=
.seq AllocBody509_269 AllocBody509_310

def AllocBody509_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody509_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody509_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody509_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody509_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody509_317 : StackLang.HolProg 64 :=
.seq AllocBody509_315 AllocBody509_316

def AllocBody509_318 : StackLang.HolProg 64 :=
.seq AllocBody509_314 AllocBody509_317

def AllocBody509_319 : StackLang.HolProg 64 :=
.seq AllocBody509_313 AllocBody509_318

def AllocBody509_320 : StackLang.HolProg 64 :=
.seq AllocBody509_312 AllocBody509_319

def AllocBody509_321 : StackLang.HolProg 64 :=
.seq AllocBody509_311 AllocBody509_320

def AllocBody509_322 : StackLang.HolProg 64 :=
.seq AllocBody509_268 AllocBody509_321

def AllocBody509_323 : StackLang.HolProg 64 :=
.seq AllocBody509_267 AllocBody509_322

def AllocBody509_324 : StackLang.HolProg 64 :=
.seq AllocBody509_266 AllocBody509_323

def AllocBody509_325 : StackLang.HolProg 64 :=
.seq AllocBody509_265 AllocBody509_324

def AllocBody509_326 : StackLang.HolProg 64 :=
.seq AllocBody509_222 AllocBody509_325

def AllocBody509_327 : StackLang.HolProg 64 :=
.seq AllocBody509_221 AllocBody509_326

def AllocBody509_328 : StackLang.HolProg 64 :=
.seq AllocBody509_220 AllocBody509_327

def AllocBody509_329 : StackLang.HolProg 64 :=
.seq AllocBody509_177 AllocBody509_328

def AllocBody509_330 : StackLang.HolProg 64 :=
.seq AllocBody509_176 AllocBody509_329

def AllocBody509_331 : StackLang.HolProg 64 :=
.seq AllocBody509_175 AllocBody509_330

def AllocBody509_332 : StackLang.HolProg 64 :=
.seq AllocBody509_104 AllocBody509_331

def AllocBody509_333 : StackLang.HolProg 64 :=
.seq AllocBody509_97 AllocBody509_332

def AllocBody509_334 : StackLang.HolProg 64 :=
.seq AllocBody509_96 AllocBody509_333

def AllocBody509_335 : StackLang.HolProg 64 :=
.seq AllocBody509_95 AllocBody509_334

def AllocBody509_336 : StackLang.HolProg 64 :=
.seq AllocBody509_52 AllocBody509_335

def AllocBody509_337 : StackLang.HolProg 64 :=
.seq AllocBody509_45 AllocBody509_336

def AllocBody509_338 : StackLang.HolProg 64 :=
.seq AllocBody509_44 AllocBody509_337

def AllocBody509_339 : StackLang.HolProg 64 :=
.seq AllocBody509_1 AllocBody509_338

def AllocBody509_340 : StackLang.HolProg 64 :=
.seq AllocBody509_0 AllocBody509_339

def Alloc509 : Nat × StackLang.HolProg 64 := (509, AllocBody509_340)
theorem Alloc509_eq : StackAlloc.progComp (509, raw509) = Alloc509 := by
  kernel_rfl
#print axioms Alloc509_eq
end InitECandidate.Proofs.BackendStages
