import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw243
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody243_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody243_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody243_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody243_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody243_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody243_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody243_6 : StackLang.HolProg 64 :=
.seq AllocBody243_4 AllocBody243_5

def AllocBody243_7 : StackLang.HolProg 64 :=
.seq AllocBody243_3 AllocBody243_6

def AllocBody243_8 : StackLang.HolProg 64 :=
.seq AllocBody243_2 AllocBody243_7

def AllocBody243_9 : StackLang.HolProg 64 :=
.seq AllocBody243_1 AllocBody243_8

def AllocBody243_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 476#64)

def AllocBody243_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody243_13 : StackLang.HolProg 64 :=
.seq AllocBody243_11 AllocBody243_12

def AllocBody243_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody243_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody243_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody243_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 3

def AllocBody243_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody243_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody243_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody243_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody243_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody243_24 : StackLang.HolProg 64 :=
.seq AllocBody243_22 AllocBody243_23

def AllocBody243_25 : StackLang.HolProg 64 :=
.seq AllocBody243_21 AllocBody243_24

def AllocBody243_26 : StackLang.HolProg 64 :=
.seq AllocBody243_20 AllocBody243_25

def AllocBody243_27 : StackLang.HolProg 64 :=
.seq AllocBody243_19 AllocBody243_26

def AllocBody243_28 : StackLang.HolProg 64 :=
.seq AllocBody243_18 AllocBody243_27

def AllocBody243_29 : StackLang.HolProg 64 :=
.seq AllocBody243_17 AllocBody243_28

def AllocBody243_30 : StackLang.HolProg 64 :=
.seq AllocBody243_16 AllocBody243_29

def AllocBody243_31 : StackLang.HolProg 64 :=
.seq AllocBody243_15 AllocBody243_30

def AllocBody243_32 : StackLang.HolProg 64 :=
.seq AllocBody243_14 AllocBody243_31

def AllocBody243_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody243_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody243_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody243_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody243_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody243_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody243_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody243_42 : StackLang.HolProg 64 :=
.seq AllocBody243_40 AllocBody243_41

def AllocBody243_43 : StackLang.HolProg 64 :=
.seq AllocBody243_39 AllocBody243_42

def AllocBody243_44 : StackLang.HolProg 64 :=
.seq AllocBody243_38 AllocBody243_43

def AllocBody243_45 : StackLang.HolProg 64 :=
.seq AllocBody243_37 AllocBody243_44

def AllocBody243_46 : StackLang.HolProg 64 :=
.seq AllocBody243_36 AllocBody243_45

def AllocBody243_47 : StackLang.HolProg 64 :=
.seq AllocBody243_35 AllocBody243_46

def AllocBody243_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody243_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody243_50 : StackLang.HolProg 64 :=
.seq AllocBody243_48 AllocBody243_49

def AllocBody243_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody243_52 : StackLang.HolProg 64 :=
.seq AllocBody243_50 AllocBody243_51

def AllocBody243_53 : StackLang.HolProg 64 :=
.call (some (AllocBody243_47, 0, 243, 2)) (Sum.inl 69) (some (AllocBody243_52, 243, 3))

def AllocBody243_54 : StackLang.HolProg 64 :=
.seq AllocBody243_34 AllocBody243_53

def AllocBody243_55 : StackLang.HolProg 64 :=
.seq AllocBody243_33 AllocBody243_54

def AllocBody243_56 : StackLang.HolProg 64 :=
.seq AllocBody243_32 AllocBody243_55

def AllocBody243_57 : StackLang.HolProg 64 :=
.seq AllocBody243_13 AllocBody243_56

def AllocBody243_58 : StackLang.HolProg 64 :=
.seq AllocBody243_10 AllocBody243_57

def AllocBody243_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody243_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody243_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody243_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody243_63 : StackLang.HolProg 64 :=
.seq AllocBody243_61 AllocBody243_62

def AllocBody243_64 : StackLang.HolProg 64 :=
.seq AllocBody243_60 AllocBody243_63

def AllocBody243_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 477#64)

def AllocBody243_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody243_68 : StackLang.HolProg 64 :=
.seq AllocBody243_66 AllocBody243_67

def AllocBody243_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody243_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody243_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody243_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 5

def AllocBody243_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody243_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody243_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody243_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody243_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody243_79 : StackLang.HolProg 64 :=
.seq AllocBody243_77 AllocBody243_78

def AllocBody243_80 : StackLang.HolProg 64 :=
.seq AllocBody243_76 AllocBody243_79

def AllocBody243_81 : StackLang.HolProg 64 :=
.seq AllocBody243_75 AllocBody243_80

def AllocBody243_82 : StackLang.HolProg 64 :=
.seq AllocBody243_74 AllocBody243_81

def AllocBody243_83 : StackLang.HolProg 64 :=
.seq AllocBody243_73 AllocBody243_82

def AllocBody243_84 : StackLang.HolProg 64 :=
.seq AllocBody243_72 AllocBody243_83

def AllocBody243_85 : StackLang.HolProg 64 :=
.seq AllocBody243_71 AllocBody243_84

def AllocBody243_86 : StackLang.HolProg 64 :=
.seq AllocBody243_70 AllocBody243_85

def AllocBody243_87 : StackLang.HolProg 64 :=
.seq AllocBody243_69 AllocBody243_86

def AllocBody243_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody243_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody243_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody243_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody243_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody243_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody243_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody243_97 : StackLang.HolProg 64 :=
.seq AllocBody243_95 AllocBody243_96

def AllocBody243_98 : StackLang.HolProg 64 :=
.seq AllocBody243_94 AllocBody243_97

def AllocBody243_99 : StackLang.HolProg 64 :=
.seq AllocBody243_93 AllocBody243_98

def AllocBody243_100 : StackLang.HolProg 64 :=
.seq AllocBody243_92 AllocBody243_99

def AllocBody243_101 : StackLang.HolProg 64 :=
.seq AllocBody243_91 AllocBody243_100

def AllocBody243_102 : StackLang.HolProg 64 :=
.seq AllocBody243_90 AllocBody243_101

def AllocBody243_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody243_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody243_105 : StackLang.HolProg 64 :=
.seq AllocBody243_103 AllocBody243_104

def AllocBody243_106 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody243_107 : StackLang.HolProg 64 :=
.seq AllocBody243_105 AllocBody243_106

def AllocBody243_108 : StackLang.HolProg 64 :=
.call (some (AllocBody243_102, 0, 243, 4)) (Sum.inl 241) (some (AllocBody243_107, 243, 5))

def AllocBody243_109 : StackLang.HolProg 64 :=
.seq AllocBody243_89 AllocBody243_108

def AllocBody243_110 : StackLang.HolProg 64 :=
.seq AllocBody243_88 AllocBody243_109

def AllocBody243_111 : StackLang.HolProg 64 :=
.seq AllocBody243_87 AllocBody243_110

def AllocBody243_112 : StackLang.HolProg 64 :=
.seq AllocBody243_68 AllocBody243_111

def AllocBody243_113 : StackLang.HolProg 64 :=
.seq AllocBody243_65 AllocBody243_112

def AllocBody243_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody243_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody243_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody243_117 : StackLang.HolProg 64 :=
.seq AllocBody243_115 AllocBody243_116

def AllocBody243_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 478#64)

def AllocBody243_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody243_121 : StackLang.HolProg 64 :=
.seq AllocBody243_119 AllocBody243_120

def AllocBody243_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody243_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody243_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody243_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 7

def AllocBody243_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody243_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody243_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody243_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody243_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody243_132 : StackLang.HolProg 64 :=
.seq AllocBody243_130 AllocBody243_131

def AllocBody243_133 : StackLang.HolProg 64 :=
.seq AllocBody243_129 AllocBody243_132

def AllocBody243_134 : StackLang.HolProg 64 :=
.seq AllocBody243_128 AllocBody243_133

def AllocBody243_135 : StackLang.HolProg 64 :=
.seq AllocBody243_127 AllocBody243_134

def AllocBody243_136 : StackLang.HolProg 64 :=
.seq AllocBody243_126 AllocBody243_135

def AllocBody243_137 : StackLang.HolProg 64 :=
.seq AllocBody243_125 AllocBody243_136

def AllocBody243_138 : StackLang.HolProg 64 :=
.seq AllocBody243_124 AllocBody243_137

def AllocBody243_139 : StackLang.HolProg 64 :=
.seq AllocBody243_123 AllocBody243_138

def AllocBody243_140 : StackLang.HolProg 64 :=
.seq AllocBody243_122 AllocBody243_139

def AllocBody243_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody243_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody243_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody243_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody243_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody243_148 : StackLang.HolProg 64 :=
.seq AllocBody243_146 AllocBody243_147

def AllocBody243_149 : StackLang.HolProg 64 :=
.seq AllocBody243_145 AllocBody243_148

def AllocBody243_150 : StackLang.HolProg 64 :=
.seq AllocBody243_144 AllocBody243_149

def AllocBody243_151 : StackLang.HolProg 64 :=
.seq AllocBody243_143 AllocBody243_150

def AllocBody243_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody243_153 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody243_154 : StackLang.HolProg 64 :=
.seq AllocBody243_152 AllocBody243_153

def AllocBody243_155 : StackLang.HolProg 64 :=
.call (some (AllocBody243_151, 0, 243, 6)) (Sum.inl 235) (some (AllocBody243_154, 243, 7))

def AllocBody243_156 : StackLang.HolProg 64 :=
.seq AllocBody243_142 AllocBody243_155

def AllocBody243_157 : StackLang.HolProg 64 :=
.seq AllocBody243_141 AllocBody243_156

def AllocBody243_158 : StackLang.HolProg 64 :=
.seq AllocBody243_140 AllocBody243_157

def AllocBody243_159 : StackLang.HolProg 64 :=
.seq AllocBody243_121 AllocBody243_158

def AllocBody243_160 : StackLang.HolProg 64 :=
.seq AllocBody243_118 AllocBody243_159

def AllocBody243_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody243_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody243_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 479#64)

def AllocBody243_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody243_166 : StackLang.HolProg 64 :=
.seq AllocBody243_164 AllocBody243_165

def AllocBody243_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody243_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody243_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody243_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 9

def AllocBody243_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody243_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody243_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody243_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody243_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody243_177 : StackLang.HolProg 64 :=
.seq AllocBody243_175 AllocBody243_176

def AllocBody243_178 : StackLang.HolProg 64 :=
.seq AllocBody243_174 AllocBody243_177

def AllocBody243_179 : StackLang.HolProg 64 :=
.seq AllocBody243_173 AllocBody243_178

def AllocBody243_180 : StackLang.HolProg 64 :=
.seq AllocBody243_172 AllocBody243_179

def AllocBody243_181 : StackLang.HolProg 64 :=
.seq AllocBody243_171 AllocBody243_180

def AllocBody243_182 : StackLang.HolProg 64 :=
.seq AllocBody243_170 AllocBody243_181

def AllocBody243_183 : StackLang.HolProg 64 :=
.seq AllocBody243_169 AllocBody243_182

def AllocBody243_184 : StackLang.HolProg 64 :=
.seq AllocBody243_168 AllocBody243_183

def AllocBody243_185 : StackLang.HolProg 64 :=
.seq AllocBody243_167 AllocBody243_184

def AllocBody243_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody243_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody243_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody243_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody243_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody243_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody243_194 : StackLang.HolProg 64 :=
.seq AllocBody243_192 AllocBody243_193

def AllocBody243_195 : StackLang.HolProg 64 :=
.seq AllocBody243_191 AllocBody243_194

def AllocBody243_196 : StackLang.HolProg 64 :=
.seq AllocBody243_190 AllocBody243_195

def AllocBody243_197 : StackLang.HolProg 64 :=
.seq AllocBody243_189 AllocBody243_196

def AllocBody243_198 : StackLang.HolProg 64 :=
.seq AllocBody243_188 AllocBody243_197

def AllocBody243_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody243_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody243_201 : StackLang.HolProg 64 :=
.seq AllocBody243_199 AllocBody243_200

def AllocBody243_202 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody243_203 : StackLang.HolProg 64 :=
.seq AllocBody243_201 AllocBody243_202

def AllocBody243_204 : StackLang.HolProg 64 :=
.call (some (AllocBody243_198, 0, 243, 8)) (Sum.inl 70) (some (AllocBody243_203, 243, 9))

def AllocBody243_205 : StackLang.HolProg 64 :=
.seq AllocBody243_187 AllocBody243_204

def AllocBody243_206 : StackLang.HolProg 64 :=
.seq AllocBody243_186 AllocBody243_205

def AllocBody243_207 : StackLang.HolProg 64 :=
.seq AllocBody243_185 AllocBody243_206

def AllocBody243_208 : StackLang.HolProg 64 :=
.seq AllocBody243_166 AllocBody243_207

def AllocBody243_209 : StackLang.HolProg 64 :=
.seq AllocBody243_163 AllocBody243_208

def AllocBody243_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody243_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody243_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 480#64)

def AllocBody243_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody243_215 : StackLang.HolProg 64 :=
.seq AllocBody243_213 AllocBody243_214

def AllocBody243_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody243_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody243_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody243_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 11

def AllocBody243_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody243_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody243_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody243_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody243_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody243_226 : StackLang.HolProg 64 :=
.seq AllocBody243_224 AllocBody243_225

def AllocBody243_227 : StackLang.HolProg 64 :=
.seq AllocBody243_223 AllocBody243_226

def AllocBody243_228 : StackLang.HolProg 64 :=
.seq AllocBody243_222 AllocBody243_227

def AllocBody243_229 : StackLang.HolProg 64 :=
.seq AllocBody243_221 AllocBody243_228

def AllocBody243_230 : StackLang.HolProg 64 :=
.seq AllocBody243_220 AllocBody243_229

def AllocBody243_231 : StackLang.HolProg 64 :=
.seq AllocBody243_219 AllocBody243_230

def AllocBody243_232 : StackLang.HolProg 64 :=
.seq AllocBody243_218 AllocBody243_231

def AllocBody243_233 : StackLang.HolProg 64 :=
.seq AllocBody243_217 AllocBody243_232

def AllocBody243_234 : StackLang.HolProg 64 :=
.seq AllocBody243_216 AllocBody243_233

def AllocBody243_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody243_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody243_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody243_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody243_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody243_242 : StackLang.HolProg 64 :=
.seq AllocBody243_240 AllocBody243_241

def AllocBody243_243 : StackLang.HolProg 64 :=
.seq AllocBody243_239 AllocBody243_242

def AllocBody243_244 : StackLang.HolProg 64 :=
.seq AllocBody243_238 AllocBody243_243

def AllocBody243_245 : StackLang.HolProg 64 :=
.seq AllocBody243_237 AllocBody243_244

def AllocBody243_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody243_247 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody243_248 : StackLang.HolProg 64 :=
.seq AllocBody243_246 AllocBody243_247

def AllocBody243_249 : StackLang.HolProg 64 :=
.call (some (AllocBody243_245, 0, 243, 10)) (Sum.inl 236) (some (AllocBody243_248, 243, 11))

def AllocBody243_250 : StackLang.HolProg 64 :=
.seq AllocBody243_236 AllocBody243_249

def AllocBody243_251 : StackLang.HolProg 64 :=
.seq AllocBody243_235 AllocBody243_250

def AllocBody243_252 : StackLang.HolProg 64 :=
.seq AllocBody243_234 AllocBody243_251

def AllocBody243_253 : StackLang.HolProg 64 :=
.seq AllocBody243_215 AllocBody243_252

def AllocBody243_254 : StackLang.HolProg 64 :=
.seq AllocBody243_212 AllocBody243_253

def AllocBody243_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody243_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody243_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody243_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody243_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody243_260 : StackLang.HolProg 64 :=
.seq AllocBody243_258 AllocBody243_259

def AllocBody243_261 : StackLang.HolProg 64 :=
.seq AllocBody243_257 AllocBody243_260

def AllocBody243_262 : StackLang.HolProg 64 :=
.seq AllocBody243_256 AllocBody243_261

def AllocBody243_263 : StackLang.HolProg 64 :=
.seq AllocBody243_255 AllocBody243_262

def AllocBody243_264 : StackLang.HolProg 64 :=
.seq AllocBody243_254 AllocBody243_263

def AllocBody243_265 : StackLang.HolProg 64 :=
.seq AllocBody243_211 AllocBody243_264

def AllocBody243_266 : StackLang.HolProg 64 :=
.seq AllocBody243_210 AllocBody243_265

def AllocBody243_267 : StackLang.HolProg 64 :=
.seq AllocBody243_209 AllocBody243_266

def AllocBody243_268 : StackLang.HolProg 64 :=
.seq AllocBody243_162 AllocBody243_267

def AllocBody243_269 : StackLang.HolProg 64 :=
.seq AllocBody243_161 AllocBody243_268

def AllocBody243_270 : StackLang.HolProg 64 :=
.seq AllocBody243_160 AllocBody243_269

def AllocBody243_271 : StackLang.HolProg 64 :=
.seq AllocBody243_117 AllocBody243_270

def AllocBody243_272 : StackLang.HolProg 64 :=
.seq AllocBody243_114 AllocBody243_271

def AllocBody243_273 : StackLang.HolProg 64 :=
.seq AllocBody243_113 AllocBody243_272

def AllocBody243_274 : StackLang.HolProg 64 :=
.seq AllocBody243_64 AllocBody243_273

def AllocBody243_275 : StackLang.HolProg 64 :=
.seq AllocBody243_59 AllocBody243_274

def AllocBody243_276 : StackLang.HolProg 64 :=
.seq AllocBody243_58 AllocBody243_275

def AllocBody243_277 : StackLang.HolProg 64 :=
.seq AllocBody243_9 AllocBody243_276

def AllocBody243_278 : StackLang.HolProg 64 :=
.seq AllocBody243_0 AllocBody243_277

def Alloc243 : Nat × StackLang.HolProg 64 := (243, AllocBody243_278)
theorem Alloc243_eq : StackAlloc.progComp (243, raw243) = Alloc243 := by
  kernel_rfl
#print axioms Alloc243_eq
end InitECandidate.Proofs.BackendStages
