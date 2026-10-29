import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw526
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody526_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody526_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody526_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1721#64)

def AllocBody526_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody526_5 : StackLang.HolProg 64 :=
.seq AllocBody526_3 AllocBody526_4

def AllocBody526_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody526_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody526_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody526_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 3

def AllocBody526_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody526_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody526_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody526_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody526_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody526_16 : StackLang.HolProg 64 :=
.seq AllocBody526_14 AllocBody526_15

def AllocBody526_17 : StackLang.HolProg 64 :=
.seq AllocBody526_13 AllocBody526_16

def AllocBody526_18 : StackLang.HolProg 64 :=
.seq AllocBody526_12 AllocBody526_17

def AllocBody526_19 : StackLang.HolProg 64 :=
.seq AllocBody526_11 AllocBody526_18

def AllocBody526_20 : StackLang.HolProg 64 :=
.seq AllocBody526_10 AllocBody526_19

def AllocBody526_21 : StackLang.HolProg 64 :=
.seq AllocBody526_9 AllocBody526_20

def AllocBody526_22 : StackLang.HolProg 64 :=
.seq AllocBody526_8 AllocBody526_21

def AllocBody526_23 : StackLang.HolProg 64 :=
.seq AllocBody526_7 AllocBody526_22

def AllocBody526_24 : StackLang.HolProg 64 :=
.seq AllocBody526_6 AllocBody526_23

def AllocBody526_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody526_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody526_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody526_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody526_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody526_32 : StackLang.HolProg 64 :=
.seq AllocBody526_30 AllocBody526_31

def AllocBody526_33 : StackLang.HolProg 64 :=
.seq AllocBody526_29 AllocBody526_32

def AllocBody526_34 : StackLang.HolProg 64 :=
.seq AllocBody526_28 AllocBody526_33

def AllocBody526_35 : StackLang.HolProg 64 :=
.seq AllocBody526_27 AllocBody526_34

def AllocBody526_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody526_38 : StackLang.HolProg 64 :=
.seq AllocBody526_36 AllocBody526_37

def AllocBody526_39 : StackLang.HolProg 64 :=
.call (some (AllocBody526_35, 0, 526, 2)) (Sum.inl 475) (some (AllocBody526_38, 526, 3))

def AllocBody526_40 : StackLang.HolProg 64 :=
.seq AllocBody526_26 AllocBody526_39

def AllocBody526_41 : StackLang.HolProg 64 :=
.seq AllocBody526_25 AllocBody526_40

def AllocBody526_42 : StackLang.HolProg 64 :=
.seq AllocBody526_24 AllocBody526_41

def AllocBody526_43 : StackLang.HolProg 64 :=
.seq AllocBody526_5 AllocBody526_42

def AllocBody526_44 : StackLang.HolProg 64 :=
.seq AllocBody526_2 AllocBody526_43

def AllocBody526_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody526_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody526_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody526_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody526_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody526_50 : StackLang.HolProg 64 :=
.seq AllocBody526_48 AllocBody526_49

def AllocBody526_51 : StackLang.HolProg 64 :=
.seq AllocBody526_47 AllocBody526_50

def AllocBody526_52 : StackLang.HolProg 64 :=
.seq AllocBody526_46 AllocBody526_51

def AllocBody526_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1722#64)

def AllocBody526_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody526_56 : StackLang.HolProg 64 :=
.seq AllocBody526_54 AllocBody526_55

def AllocBody526_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody526_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody526_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody526_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 5

def AllocBody526_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody526_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody526_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody526_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody526_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody526_67 : StackLang.HolProg 64 :=
.seq AllocBody526_65 AllocBody526_66

def AllocBody526_68 : StackLang.HolProg 64 :=
.seq AllocBody526_64 AllocBody526_67

def AllocBody526_69 : StackLang.HolProg 64 :=
.seq AllocBody526_63 AllocBody526_68

def AllocBody526_70 : StackLang.HolProg 64 :=
.seq AllocBody526_62 AllocBody526_69

def AllocBody526_71 : StackLang.HolProg 64 :=
.seq AllocBody526_61 AllocBody526_70

def AllocBody526_72 : StackLang.HolProg 64 :=
.seq AllocBody526_60 AllocBody526_71

def AllocBody526_73 : StackLang.HolProg 64 :=
.seq AllocBody526_59 AllocBody526_72

def AllocBody526_74 : StackLang.HolProg 64 :=
.seq AllocBody526_58 AllocBody526_73

def AllocBody526_75 : StackLang.HolProg 64 :=
.seq AllocBody526_57 AllocBody526_74

def AllocBody526_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody526_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody526_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody526_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody526_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody526_83 : StackLang.HolProg 64 :=
.seq AllocBody526_81 AllocBody526_82

def AllocBody526_84 : StackLang.HolProg 64 :=
.seq AllocBody526_80 AllocBody526_83

def AllocBody526_85 : StackLang.HolProg 64 :=
.seq AllocBody526_79 AllocBody526_84

def AllocBody526_86 : StackLang.HolProg 64 :=
.seq AllocBody526_78 AllocBody526_85

def AllocBody526_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody526_89 : StackLang.HolProg 64 :=
.seq AllocBody526_87 AllocBody526_88

def AllocBody526_90 : StackLang.HolProg 64 :=
.call (some (AllocBody526_86, 0, 526, 4)) (Sum.inl 475) (some (AllocBody526_89, 526, 5))

def AllocBody526_91 : StackLang.HolProg 64 :=
.seq AllocBody526_77 AllocBody526_90

def AllocBody526_92 : StackLang.HolProg 64 :=
.seq AllocBody526_76 AllocBody526_91

def AllocBody526_93 : StackLang.HolProg 64 :=
.seq AllocBody526_75 AllocBody526_92

def AllocBody526_94 : StackLang.HolProg 64 :=
.seq AllocBody526_56 AllocBody526_93

def AllocBody526_95 : StackLang.HolProg 64 :=
.seq AllocBody526_53 AllocBody526_94

def AllocBody526_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody526_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def AllocBody526_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody526_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody526_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody526_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody526_102 : StackLang.HolProg 64 :=
.seq AllocBody526_100 AllocBody526_101

def AllocBody526_103 : StackLang.HolProg 64 :=
.seq AllocBody526_99 AllocBody526_102

def AllocBody526_104 : StackLang.HolProg 64 :=
.seq AllocBody526_98 AllocBody526_103

def AllocBody526_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1723#64)

def AllocBody526_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody526_108 : StackLang.HolProg 64 :=
.seq AllocBody526_106 AllocBody526_107

def AllocBody526_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody526_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody526_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody526_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 7

def AllocBody526_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody526_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody526_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody526_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody526_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody526_119 : StackLang.HolProg 64 :=
.seq AllocBody526_117 AllocBody526_118

def AllocBody526_120 : StackLang.HolProg 64 :=
.seq AllocBody526_116 AllocBody526_119

def AllocBody526_121 : StackLang.HolProg 64 :=
.seq AllocBody526_115 AllocBody526_120

def AllocBody526_122 : StackLang.HolProg 64 :=
.seq AllocBody526_114 AllocBody526_121

def AllocBody526_123 : StackLang.HolProg 64 :=
.seq AllocBody526_113 AllocBody526_122

def AllocBody526_124 : StackLang.HolProg 64 :=
.seq AllocBody526_112 AllocBody526_123

def AllocBody526_125 : StackLang.HolProg 64 :=
.seq AllocBody526_111 AllocBody526_124

def AllocBody526_126 : StackLang.HolProg 64 :=
.seq AllocBody526_110 AllocBody526_125

def AllocBody526_127 : StackLang.HolProg 64 :=
.seq AllocBody526_109 AllocBody526_126

def AllocBody526_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody526_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody526_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody526_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody526_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody526_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody526_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody526_137 : StackLang.HolProg 64 :=
.seq AllocBody526_135 AllocBody526_136

def AllocBody526_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody526_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody526_140 : StackLang.HolProg 64 :=
.seq AllocBody526_138 AllocBody526_139

def AllocBody526_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody526_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody526_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody526_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody526_145 : StackLang.HolProg 64 :=
.seq AllocBody526_143 AllocBody526_144

def AllocBody526_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody526_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody526_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody526_149 : StackLang.HolProg 64 :=
.seq AllocBody526_147 AllocBody526_148

def AllocBody526_150 : StackLang.HolProg 64 :=
.seq AllocBody526_146 AllocBody526_149

def AllocBody526_151 : StackLang.HolProg 64 :=
.seq AllocBody526_145 AllocBody526_150

def AllocBody526_152 : StackLang.HolProg 64 :=
.seq AllocBody526_142 AllocBody526_151

def AllocBody526_153 : StackLang.HolProg 64 :=
.seq AllocBody526_141 AllocBody526_152

def AllocBody526_154 : StackLang.HolProg 64 :=
.seq AllocBody526_140 AllocBody526_153

def AllocBody526_155 : StackLang.HolProg 64 :=
.seq AllocBody526_137 AllocBody526_154

def AllocBody526_156 : StackLang.HolProg 64 :=
.seq AllocBody526_134 AllocBody526_155

def AllocBody526_157 : StackLang.HolProg 64 :=
.seq AllocBody526_133 AllocBody526_156

def AllocBody526_158 : StackLang.HolProg 64 :=
.seq AllocBody526_132 AllocBody526_157

def AllocBody526_159 : StackLang.HolProg 64 :=
.seq AllocBody526_131 AllocBody526_158

def AllocBody526_160 : StackLang.HolProg 64 :=
.seq AllocBody526_130 AllocBody526_159

def AllocBody526_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody526_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody526_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody526_164 : StackLang.HolProg 64 :=
.seq AllocBody526_162 AllocBody526_163

def AllocBody526_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody526_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody526_167 : StackLang.HolProg 64 :=
.seq AllocBody526_165 AllocBody526_166

def AllocBody526_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody526_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody526_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody526_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody526_172 : StackLang.HolProg 64 :=
.seq AllocBody526_170 AllocBody526_171

def AllocBody526_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody526_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody526_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody526_176 : StackLang.HolProg 64 :=
.seq AllocBody526_174 AllocBody526_175

def AllocBody526_177 : StackLang.HolProg 64 :=
.seq AllocBody526_173 AllocBody526_176

def AllocBody526_178 : StackLang.HolProg 64 :=
.seq AllocBody526_172 AllocBody526_177

def AllocBody526_179 : StackLang.HolProg 64 :=
.seq AllocBody526_169 AllocBody526_178

def AllocBody526_180 : StackLang.HolProg 64 :=
.seq AllocBody526_168 AllocBody526_179

def AllocBody526_181 : StackLang.HolProg 64 :=
.seq AllocBody526_167 AllocBody526_180

def AllocBody526_182 : StackLang.HolProg 64 :=
.seq AllocBody526_164 AllocBody526_181

def AllocBody526_183 : StackLang.HolProg 64 :=
.seq AllocBody526_161 AllocBody526_182

def AllocBody526_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody526_185 : StackLang.HolProg 64 :=
.seq AllocBody526_183 AllocBody526_184

def AllocBody526_186 : StackLang.HolProg 64 :=
.call (some (AllocBody526_160, 0, 526, 6)) (Sum.inl 470) (some (AllocBody526_185, 526, 7))

def AllocBody526_187 : StackLang.HolProg 64 :=
.seq AllocBody526_129 AllocBody526_186

def AllocBody526_188 : StackLang.HolProg 64 :=
.seq AllocBody526_128 AllocBody526_187

def AllocBody526_189 : StackLang.HolProg 64 :=
.seq AllocBody526_127 AllocBody526_188

def AllocBody526_190 : StackLang.HolProg 64 :=
.seq AllocBody526_108 AllocBody526_189

def AllocBody526_191 : StackLang.HolProg 64 :=
.seq AllocBody526_105 AllocBody526_190

def AllocBody526_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody526_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody526_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1724#64)

def AllocBody526_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody526_197 : StackLang.HolProg 64 :=
.seq AllocBody526_195 AllocBody526_196

def AllocBody526_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody526_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody526_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody526_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 9

def AllocBody526_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody526_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody526_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody526_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody526_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody526_208 : StackLang.HolProg 64 :=
.seq AllocBody526_206 AllocBody526_207

def AllocBody526_209 : StackLang.HolProg 64 :=
.seq AllocBody526_205 AllocBody526_208

def AllocBody526_210 : StackLang.HolProg 64 :=
.seq AllocBody526_204 AllocBody526_209

def AllocBody526_211 : StackLang.HolProg 64 :=
.seq AllocBody526_203 AllocBody526_210

def AllocBody526_212 : StackLang.HolProg 64 :=
.seq AllocBody526_202 AllocBody526_211

def AllocBody526_213 : StackLang.HolProg 64 :=
.seq AllocBody526_201 AllocBody526_212

def AllocBody526_214 : StackLang.HolProg 64 :=
.seq AllocBody526_200 AllocBody526_213

def AllocBody526_215 : StackLang.HolProg 64 :=
.seq AllocBody526_199 AllocBody526_214

def AllocBody526_216 : StackLang.HolProg 64 :=
.seq AllocBody526_198 AllocBody526_215

def AllocBody526_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody526_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody526_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody526_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody526_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody526_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody526_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def AllocBody526_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody526_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody526_228 : StackLang.HolProg 64 :=
.seq AllocBody526_226 AllocBody526_227

def AllocBody526_229 : StackLang.HolProg 64 :=
.seq AllocBody526_225 AllocBody526_228

def AllocBody526_230 : StackLang.HolProg 64 :=
.seq AllocBody526_224 AllocBody526_229

def AllocBody526_231 : StackLang.HolProg 64 :=
.seq AllocBody526_223 AllocBody526_230

def AllocBody526_232 : StackLang.HolProg 64 :=
.seq AllocBody526_222 AllocBody526_231

def AllocBody526_233 : StackLang.HolProg 64 :=
.seq AllocBody526_221 AllocBody526_232

def AllocBody526_234 : StackLang.HolProg 64 :=
.seq AllocBody526_220 AllocBody526_233

def AllocBody526_235 : StackLang.HolProg 64 :=
.seq AllocBody526_219 AllocBody526_234

def AllocBody526_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody526_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def AllocBody526_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody526_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody526_240 : StackLang.HolProg 64 :=
.seq AllocBody526_238 AllocBody526_239

def AllocBody526_241 : StackLang.HolProg 64 :=
.seq AllocBody526_237 AllocBody526_240

def AllocBody526_242 : StackLang.HolProg 64 :=
.seq AllocBody526_236 AllocBody526_241

def AllocBody526_243 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody526_244 : StackLang.HolProg 64 :=
.seq AllocBody526_242 AllocBody526_243

def AllocBody526_245 : StackLang.HolProg 64 :=
.call (some (AllocBody526_235, 0, 526, 8)) (Sum.inl 102) (some (AllocBody526_244, 526, 9))

def AllocBody526_246 : StackLang.HolProg 64 :=
.seq AllocBody526_218 AllocBody526_245

def AllocBody526_247 : StackLang.HolProg 64 :=
.seq AllocBody526_217 AllocBody526_246

def AllocBody526_248 : StackLang.HolProg 64 :=
.seq AllocBody526_216 AllocBody526_247

def AllocBody526_249 : StackLang.HolProg 64 :=
.seq AllocBody526_197 AllocBody526_248

def AllocBody526_250 : StackLang.HolProg 64 :=
.seq AllocBody526_194 AllocBody526_249

def AllocBody526_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody526_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody526_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody526_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody526_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody526_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody526_258 : StackLang.HolProg 64 :=
.seq AllocBody526_256 AllocBody526_257

def AllocBody526_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1725#64)

def AllocBody526_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody526_262 : StackLang.HolProg 64 :=
.seq AllocBody526_260 AllocBody526_261

def AllocBody526_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody526_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody526_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody526_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 11

def AllocBody526_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody526_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody526_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody526_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody526_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody526_273 : StackLang.HolProg 64 :=
.seq AllocBody526_271 AllocBody526_272

def AllocBody526_274 : StackLang.HolProg 64 :=
.seq AllocBody526_270 AllocBody526_273

def AllocBody526_275 : StackLang.HolProg 64 :=
.seq AllocBody526_269 AllocBody526_274

def AllocBody526_276 : StackLang.HolProg 64 :=
.seq AllocBody526_268 AllocBody526_275

def AllocBody526_277 : StackLang.HolProg 64 :=
.seq AllocBody526_267 AllocBody526_276

def AllocBody526_278 : StackLang.HolProg 64 :=
.seq AllocBody526_266 AllocBody526_277

def AllocBody526_279 : StackLang.HolProg 64 :=
.seq AllocBody526_265 AllocBody526_278

def AllocBody526_280 : StackLang.HolProg 64 :=
.seq AllocBody526_264 AllocBody526_279

def AllocBody526_281 : StackLang.HolProg 64 :=
.seq AllocBody526_263 AllocBody526_280

def AllocBody526_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody526_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody526_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody526_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody526_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody526_289 : StackLang.HolProg 64 :=
.seq AllocBody526_287 AllocBody526_288

def AllocBody526_290 : StackLang.HolProg 64 :=
.seq AllocBody526_286 AllocBody526_289

def AllocBody526_291 : StackLang.HolProg 64 :=
.seq AllocBody526_285 AllocBody526_290

def AllocBody526_292 : StackLang.HolProg 64 :=
.seq AllocBody526_284 AllocBody526_291

def AllocBody526_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody526_294 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody526_295 : StackLang.HolProg 64 :=
.seq AllocBody526_293 AllocBody526_294

def AllocBody526_296 : StackLang.HolProg 64 :=
.call (some (AllocBody526_292, 0, 526, 10)) (Sum.inl 490) (some (AllocBody526_295, 526, 11))

def AllocBody526_297 : StackLang.HolProg 64 :=
.seq AllocBody526_283 AllocBody526_296

def AllocBody526_298 : StackLang.HolProg 64 :=
.seq AllocBody526_282 AllocBody526_297

def AllocBody526_299 : StackLang.HolProg 64 :=
.seq AllocBody526_281 AllocBody526_298

def AllocBody526_300 : StackLang.HolProg 64 :=
.seq AllocBody526_262 AllocBody526_299

def AllocBody526_301 : StackLang.HolProg 64 :=
.seq AllocBody526_259 AllocBody526_300

def AllocBody526_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody526_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody526_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody526_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody526_307 : StackLang.HolProg 64 :=
.seq AllocBody526_305 AllocBody526_306

def AllocBody526_308 : StackLang.HolProg 64 :=
.seq AllocBody526_304 AllocBody526_307

def AllocBody526_309 : StackLang.HolProg 64 :=
.seq AllocBody526_303 AllocBody526_308

def AllocBody526_310 : StackLang.HolProg 64 :=
.seq AllocBody526_302 AllocBody526_309

def AllocBody526_311 : StackLang.HolProg 64 :=
.seq AllocBody526_301 AllocBody526_310

def AllocBody526_312 : StackLang.HolProg 64 :=
.seq AllocBody526_258 AllocBody526_311

def AllocBody526_313 : StackLang.HolProg 64 :=
.seq AllocBody526_255 AllocBody526_312

def AllocBody526_314 : StackLang.HolProg 64 :=
.seq AllocBody526_254 AllocBody526_313

def AllocBody526_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_316 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody526_314 AllocBody526_315

def AllocBody526_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody526_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody526_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody526_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody526_321 : StackLang.HolProg 64 :=
.seq AllocBody526_319 AllocBody526_320

def AllocBody526_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1726#64)

def AllocBody526_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody526_325 : StackLang.HolProg 64 :=
.seq AllocBody526_323 AllocBody526_324

def AllocBody526_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody526_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody526_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody526_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 13

def AllocBody526_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody526_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody526_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody526_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody526_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody526_336 : StackLang.HolProg 64 :=
.seq AllocBody526_334 AllocBody526_335

def AllocBody526_337 : StackLang.HolProg 64 :=
.seq AllocBody526_333 AllocBody526_336

def AllocBody526_338 : StackLang.HolProg 64 :=
.seq AllocBody526_332 AllocBody526_337

def AllocBody526_339 : StackLang.HolProg 64 :=
.seq AllocBody526_331 AllocBody526_338

def AllocBody526_340 : StackLang.HolProg 64 :=
.seq AllocBody526_330 AllocBody526_339

def AllocBody526_341 : StackLang.HolProg 64 :=
.seq AllocBody526_329 AllocBody526_340

def AllocBody526_342 : StackLang.HolProg 64 :=
.seq AllocBody526_328 AllocBody526_341

def AllocBody526_343 : StackLang.HolProg 64 :=
.seq AllocBody526_327 AllocBody526_342

def AllocBody526_344 : StackLang.HolProg 64 :=
.seq AllocBody526_326 AllocBody526_343

def AllocBody526_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody526_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody526_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody526_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody526_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody526_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody526_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody526_354 : StackLang.HolProg 64 :=
.seq AllocBody526_352 AllocBody526_353

def AllocBody526_355 : StackLang.HolProg 64 :=
.seq AllocBody526_351 AllocBody526_354

def AllocBody526_356 : StackLang.HolProg 64 :=
.seq AllocBody526_350 AllocBody526_355

def AllocBody526_357 : StackLang.HolProg 64 :=
.seq AllocBody526_349 AllocBody526_356

def AllocBody526_358 : StackLang.HolProg 64 :=
.seq AllocBody526_348 AllocBody526_357

def AllocBody526_359 : StackLang.HolProg 64 :=
.seq AllocBody526_347 AllocBody526_358

def AllocBody526_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody526_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody526_362 : StackLang.HolProg 64 :=
.seq AllocBody526_360 AllocBody526_361

def AllocBody526_363 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody526_364 : StackLang.HolProg 64 :=
.seq AllocBody526_362 AllocBody526_363

def AllocBody526_365 : StackLang.HolProg 64 :=
.call (some (AllocBody526_359, 0, 526, 12)) (Sum.inl 486) (some (AllocBody526_364, 526, 13))

def AllocBody526_366 : StackLang.HolProg 64 :=
.seq AllocBody526_346 AllocBody526_365

def AllocBody526_367 : StackLang.HolProg 64 :=
.seq AllocBody526_345 AllocBody526_366

def AllocBody526_368 : StackLang.HolProg 64 :=
.seq AllocBody526_344 AllocBody526_367

def AllocBody526_369 : StackLang.HolProg 64 :=
.seq AllocBody526_325 AllocBody526_368

def AllocBody526_370 : StackLang.HolProg 64 :=
.seq AllocBody526_322 AllocBody526_369

def AllocBody526_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody526_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody526_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody526_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody526_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody526_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody526_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_380 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody526_381 : StackLang.HolProg 64 :=
.seq AllocBody526_379 AllocBody526_380

def AllocBody526_382 : StackLang.HolProg 64 :=
.seq AllocBody526_378 AllocBody526_381

def AllocBody526_383 : StackLang.HolProg 64 :=
.seq AllocBody526_377 AllocBody526_382

def AllocBody526_384 : StackLang.HolProg 64 :=
.seq AllocBody526_376 AllocBody526_383

def AllocBody526_385 : StackLang.HolProg 64 :=
.seq AllocBody526_375 AllocBody526_384

def AllocBody526_386 : StackLang.HolProg 64 :=
.seq AllocBody526_374 AllocBody526_385

def AllocBody526_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_388 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody526_386 AllocBody526_387

def AllocBody526_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody526_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody526_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody526_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody526_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody526_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody526_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody526_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody526_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody526_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody526_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody526_401 : StackLang.HolProg 64 :=
.seq AllocBody526_399 AllocBody526_400

def AllocBody526_402 : StackLang.HolProg 64 :=
.seq AllocBody526_398 AllocBody526_401

def AllocBody526_403 : StackLang.HolProg 64 :=
.seq AllocBody526_397 AllocBody526_402

def AllocBody526_404 : StackLang.HolProg 64 :=
.seq AllocBody526_396 AllocBody526_403

def AllocBody526_405 : StackLang.HolProg 64 :=
.seq AllocBody526_395 AllocBody526_404

def AllocBody526_406 : StackLang.HolProg 64 :=
.seq AllocBody526_394 AllocBody526_405

def AllocBody526_407 : StackLang.HolProg 64 :=
.seq AllocBody526_393 AllocBody526_406

def AllocBody526_408 : StackLang.HolProg 64 :=
.seq AllocBody526_392 AllocBody526_407

def AllocBody526_409 : StackLang.HolProg 64 :=
.seq AllocBody526_391 AllocBody526_408

def AllocBody526_410 : StackLang.HolProg 64 :=
.seq AllocBody526_390 AllocBody526_409

def AllocBody526_411 : StackLang.HolProg 64 :=
.seq AllocBody526_389 AllocBody526_410

def AllocBody526_412 : StackLang.HolProg 64 :=
.seq AllocBody526_388 AllocBody526_411

def AllocBody526_413 : StackLang.HolProg 64 :=
.seq AllocBody526_373 AllocBody526_412

def AllocBody526_414 : StackLang.HolProg 64 :=
.seq AllocBody526_372 AllocBody526_413

def AllocBody526_415 : StackLang.HolProg 64 :=
.seq AllocBody526_371 AllocBody526_414

def AllocBody526_416 : StackLang.HolProg 64 :=
.seq AllocBody526_370 AllocBody526_415

def AllocBody526_417 : StackLang.HolProg 64 :=
.seq AllocBody526_321 AllocBody526_416

def AllocBody526_418 : StackLang.HolProg 64 :=
.seq AllocBody526_318 AllocBody526_417

def AllocBody526_419 : StackLang.HolProg 64 :=
.seq AllocBody526_317 AllocBody526_418

def AllocBody526_420 : StackLang.HolProg 64 :=
.seq AllocBody526_316 AllocBody526_419

def AllocBody526_421 : StackLang.HolProg 64 :=
.seq AllocBody526_253 AllocBody526_420

def AllocBody526_422 : StackLang.HolProg 64 :=
.seq AllocBody526_252 AllocBody526_421

def AllocBody526_423 : StackLang.HolProg 64 :=
.seq AllocBody526_251 AllocBody526_422

def AllocBody526_424 : StackLang.HolProg 64 :=
.seq AllocBody526_250 AllocBody526_423

def AllocBody526_425 : StackLang.HolProg 64 :=
.seq AllocBody526_193 AllocBody526_424

def AllocBody526_426 : StackLang.HolProg 64 :=
.seq AllocBody526_192 AllocBody526_425

def AllocBody526_427 : StackLang.HolProg 64 :=
.seq AllocBody526_191 AllocBody526_426

def AllocBody526_428 : StackLang.HolProg 64 :=
.seq AllocBody526_104 AllocBody526_427

def AllocBody526_429 : StackLang.HolProg 64 :=
.seq AllocBody526_97 AllocBody526_428

def AllocBody526_430 : StackLang.HolProg 64 :=
.seq AllocBody526_96 AllocBody526_429

def AllocBody526_431 : StackLang.HolProg 64 :=
.seq AllocBody526_95 AllocBody526_430

def AllocBody526_432 : StackLang.HolProg 64 :=
.seq AllocBody526_52 AllocBody526_431

def AllocBody526_433 : StackLang.HolProg 64 :=
.seq AllocBody526_45 AllocBody526_432

def AllocBody526_434 : StackLang.HolProg 64 :=
.seq AllocBody526_44 AllocBody526_433

def AllocBody526_435 : StackLang.HolProg 64 :=
.seq AllocBody526_1 AllocBody526_434

def AllocBody526_436 : StackLang.HolProg 64 :=
.seq AllocBody526_0 AllocBody526_435

def Alloc526 : Nat × StackLang.HolProg 64 := (526, AllocBody526_436)
theorem Alloc526_eq : StackAlloc.progComp (526, raw526) = Alloc526 := by
  kernel_rfl
#print axioms Alloc526_eq
end InitECandidate.Proofs.BackendStages
