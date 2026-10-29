import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw536
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody536_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody536_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody536_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody536_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody536_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody536_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody536_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody536_7 : StackLang.HolProg 64 :=
.seq AllocBody536_5 AllocBody536_6

def AllocBody536_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1775#64)

def AllocBody536_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_11 : StackLang.HolProg 64 :=
.seq AllocBody536_9 AllocBody536_10

def AllocBody536_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody536_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody536_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 3

def AllocBody536_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody536_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody536_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody536_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody536_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_22 : StackLang.HolProg 64 :=
.seq AllocBody536_20 AllocBody536_21

def AllocBody536_23 : StackLang.HolProg 64 :=
.seq AllocBody536_19 AllocBody536_22

def AllocBody536_24 : StackLang.HolProg 64 :=
.seq AllocBody536_18 AllocBody536_23

def AllocBody536_25 : StackLang.HolProg 64 :=
.seq AllocBody536_17 AllocBody536_24

def AllocBody536_26 : StackLang.HolProg 64 :=
.seq AllocBody536_16 AllocBody536_25

def AllocBody536_27 : StackLang.HolProg 64 :=
.seq AllocBody536_15 AllocBody536_26

def AllocBody536_28 : StackLang.HolProg 64 :=
.seq AllocBody536_14 AllocBody536_27

def AllocBody536_29 : StackLang.HolProg 64 :=
.seq AllocBody536_13 AllocBody536_28

def AllocBody536_30 : StackLang.HolProg 64 :=
.seq AllocBody536_12 AllocBody536_29

def AllocBody536_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody536_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody536_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody536_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_38 : StackLang.HolProg 64 :=
.seq AllocBody536_36 AllocBody536_37

def AllocBody536_39 : StackLang.HolProg 64 :=
.seq AllocBody536_35 AllocBody536_38

def AllocBody536_40 : StackLang.HolProg 64 :=
.seq AllocBody536_34 AllocBody536_39

def AllocBody536_41 : StackLang.HolProg 64 :=
.seq AllocBody536_33 AllocBody536_40

def AllocBody536_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody536_44 : StackLang.HolProg 64 :=
.seq AllocBody536_42 AllocBody536_43

def AllocBody536_45 : StackLang.HolProg 64 :=
.call (some (AllocBody536_41, 0, 536, 2)) (Sum.inl 470) (some (AllocBody536_44, 536, 3))

def AllocBody536_46 : StackLang.HolProg 64 :=
.seq AllocBody536_32 AllocBody536_45

def AllocBody536_47 : StackLang.HolProg 64 :=
.seq AllocBody536_31 AllocBody536_46

def AllocBody536_48 : StackLang.HolProg 64 :=
.seq AllocBody536_30 AllocBody536_47

def AllocBody536_49 : StackLang.HolProg 64 :=
.seq AllocBody536_11 AllocBody536_48

def AllocBody536_50 : StackLang.HolProg 64 :=
.seq AllocBody536_8 AllocBody536_49

def AllocBody536_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody536_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_53 : StackLang.HolProg 64 :=
.seq AllocBody536_51 AllocBody536_52

def AllocBody536_54 : StackLang.HolProg 64 :=
.seq AllocBody536_50 AllocBody536_53

def AllocBody536_55 : StackLang.HolProg 64 :=
.seq AllocBody536_7 AllocBody536_54

def AllocBody536_56 : StackLang.HolProg 64 :=
.seq AllocBody536_4 AllocBody536_55

def AllocBody536_57 : StackLang.HolProg 64 :=
.seq AllocBody536_3 AllocBody536_56

def AllocBody536_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody536_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody536_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody536_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody536_62 : StackLang.HolProg 64 :=
.seq AllocBody536_60 AllocBody536_61

def AllocBody536_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1776#64)

def AllocBody536_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_66 : StackLang.HolProg 64 :=
.seq AllocBody536_64 AllocBody536_65

def AllocBody536_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody536_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody536_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 5

def AllocBody536_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody536_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody536_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody536_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody536_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_77 : StackLang.HolProg 64 :=
.seq AllocBody536_75 AllocBody536_76

def AllocBody536_78 : StackLang.HolProg 64 :=
.seq AllocBody536_74 AllocBody536_77

def AllocBody536_79 : StackLang.HolProg 64 :=
.seq AllocBody536_73 AllocBody536_78

def AllocBody536_80 : StackLang.HolProg 64 :=
.seq AllocBody536_72 AllocBody536_79

def AllocBody536_81 : StackLang.HolProg 64 :=
.seq AllocBody536_71 AllocBody536_80

def AllocBody536_82 : StackLang.HolProg 64 :=
.seq AllocBody536_70 AllocBody536_81

def AllocBody536_83 : StackLang.HolProg 64 :=
.seq AllocBody536_69 AllocBody536_82

def AllocBody536_84 : StackLang.HolProg 64 :=
.seq AllocBody536_68 AllocBody536_83

def AllocBody536_85 : StackLang.HolProg 64 :=
.seq AllocBody536_67 AllocBody536_84

def AllocBody536_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody536_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody536_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody536_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_93 : StackLang.HolProg 64 :=
.seq AllocBody536_91 AllocBody536_92

def AllocBody536_94 : StackLang.HolProg 64 :=
.seq AllocBody536_90 AllocBody536_93

def AllocBody536_95 : StackLang.HolProg 64 :=
.seq AllocBody536_89 AllocBody536_94

def AllocBody536_96 : StackLang.HolProg 64 :=
.seq AllocBody536_88 AllocBody536_95

def AllocBody536_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_98 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody536_99 : StackLang.HolProg 64 :=
.seq AllocBody536_97 AllocBody536_98

def AllocBody536_100 : StackLang.HolProg 64 :=
.call (some (AllocBody536_96, 0, 536, 4)) (Sum.inl 470) (some (AllocBody536_99, 536, 5))

def AllocBody536_101 : StackLang.HolProg 64 :=
.seq AllocBody536_87 AllocBody536_100

def AllocBody536_102 : StackLang.HolProg 64 :=
.seq AllocBody536_86 AllocBody536_101

def AllocBody536_103 : StackLang.HolProg 64 :=
.seq AllocBody536_85 AllocBody536_102

def AllocBody536_104 : StackLang.HolProg 64 :=
.seq AllocBody536_66 AllocBody536_103

def AllocBody536_105 : StackLang.HolProg 64 :=
.seq AllocBody536_63 AllocBody536_104

def AllocBody536_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody536_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_108 : StackLang.HolProg 64 :=
.seq AllocBody536_106 AllocBody536_107

def AllocBody536_109 : StackLang.HolProg 64 :=
.seq AllocBody536_105 AllocBody536_108

def AllocBody536_110 : StackLang.HolProg 64 :=
.seq AllocBody536_62 AllocBody536_109

def AllocBody536_111 : StackLang.HolProg 64 :=
.seq AllocBody536_59 AllocBody536_110

def AllocBody536_112 : StackLang.HolProg 64 :=
.seq AllocBody536_58 AllocBody536_111

def AllocBody536_113 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody536_57 AllocBody536_112

def AllocBody536_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody536_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1777#64)

def AllocBody536_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_119 : StackLang.HolProg 64 :=
.seq AllocBody536_117 AllocBody536_118

def AllocBody536_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody536_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody536_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 7

def AllocBody536_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody536_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody536_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody536_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody536_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_130 : StackLang.HolProg 64 :=
.seq AllocBody536_128 AllocBody536_129

def AllocBody536_131 : StackLang.HolProg 64 :=
.seq AllocBody536_127 AllocBody536_130

def AllocBody536_132 : StackLang.HolProg 64 :=
.seq AllocBody536_126 AllocBody536_131

def AllocBody536_133 : StackLang.HolProg 64 :=
.seq AllocBody536_125 AllocBody536_132

def AllocBody536_134 : StackLang.HolProg 64 :=
.seq AllocBody536_124 AllocBody536_133

def AllocBody536_135 : StackLang.HolProg 64 :=
.seq AllocBody536_123 AllocBody536_134

def AllocBody536_136 : StackLang.HolProg 64 :=
.seq AllocBody536_122 AllocBody536_135

def AllocBody536_137 : StackLang.HolProg 64 :=
.seq AllocBody536_121 AllocBody536_136

def AllocBody536_138 : StackLang.HolProg 64 :=
.seq AllocBody536_120 AllocBody536_137

def AllocBody536_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody536_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody536_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody536_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody536_146 : StackLang.HolProg 64 :=
.seq AllocBody536_144 AllocBody536_145

def AllocBody536_147 : StackLang.HolProg 64 :=
.seq AllocBody536_143 AllocBody536_146

def AllocBody536_148 : StackLang.HolProg 64 :=
.seq AllocBody536_142 AllocBody536_147

def AllocBody536_149 : StackLang.HolProg 64 :=
.seq AllocBody536_141 AllocBody536_148

def AllocBody536_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody536_152 : StackLang.HolProg 64 :=
.seq AllocBody536_150 AllocBody536_151

def AllocBody536_153 : StackLang.HolProg 64 :=
.call (some (AllocBody536_149, 0, 536, 6)) (Sum.inl 69) (some (AllocBody536_152, 536, 7))

def AllocBody536_154 : StackLang.HolProg 64 :=
.seq AllocBody536_140 AllocBody536_153

def AllocBody536_155 : StackLang.HolProg 64 :=
.seq AllocBody536_139 AllocBody536_154

def AllocBody536_156 : StackLang.HolProg 64 :=
.seq AllocBody536_138 AllocBody536_155

def AllocBody536_157 : StackLang.HolProg 64 :=
.seq AllocBody536_119 AllocBody536_156

def AllocBody536_158 : StackLang.HolProg 64 :=
.seq AllocBody536_116 AllocBody536_157

def AllocBody536_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody536_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody536_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody536_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1778#64)

def AllocBody536_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_165 : StackLang.HolProg 64 :=
.seq AllocBody536_163 AllocBody536_164

def AllocBody536_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody536_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody536_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 9

def AllocBody536_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody536_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody536_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody536_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody536_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_176 : StackLang.HolProg 64 :=
.seq AllocBody536_174 AllocBody536_175

def AllocBody536_177 : StackLang.HolProg 64 :=
.seq AllocBody536_173 AllocBody536_176

def AllocBody536_178 : StackLang.HolProg 64 :=
.seq AllocBody536_172 AllocBody536_177

def AllocBody536_179 : StackLang.HolProg 64 :=
.seq AllocBody536_171 AllocBody536_178

def AllocBody536_180 : StackLang.HolProg 64 :=
.seq AllocBody536_170 AllocBody536_179

def AllocBody536_181 : StackLang.HolProg 64 :=
.seq AllocBody536_169 AllocBody536_180

def AllocBody536_182 : StackLang.HolProg 64 :=
.seq AllocBody536_168 AllocBody536_181

def AllocBody536_183 : StackLang.HolProg 64 :=
.seq AllocBody536_167 AllocBody536_182

def AllocBody536_184 : StackLang.HolProg 64 :=
.seq AllocBody536_166 AllocBody536_183

def AllocBody536_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody536_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody536_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody536_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody536_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody536_193 : StackLang.HolProg 64 :=
.seq AllocBody536_191 AllocBody536_192

def AllocBody536_194 : StackLang.HolProg 64 :=
.seq AllocBody536_190 AllocBody536_193

def AllocBody536_195 : StackLang.HolProg 64 :=
.seq AllocBody536_189 AllocBody536_194

def AllocBody536_196 : StackLang.HolProg 64 :=
.seq AllocBody536_188 AllocBody536_195

def AllocBody536_197 : StackLang.HolProg 64 :=
.seq AllocBody536_187 AllocBody536_196

def AllocBody536_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody536_199 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody536_200 : StackLang.HolProg 64 :=
.seq AllocBody536_198 AllocBody536_199

def AllocBody536_201 : StackLang.HolProg 64 :=
.call (some (AllocBody536_197, 0, 536, 8)) (Sum.inl 68) (some (AllocBody536_200, 536, 9))

def AllocBody536_202 : StackLang.HolProg 64 :=
.seq AllocBody536_186 AllocBody536_201

def AllocBody536_203 : StackLang.HolProg 64 :=
.seq AllocBody536_185 AllocBody536_202

def AllocBody536_204 : StackLang.HolProg 64 :=
.seq AllocBody536_184 AllocBody536_203

def AllocBody536_205 : StackLang.HolProg 64 :=
.seq AllocBody536_165 AllocBody536_204

def AllocBody536_206 : StackLang.HolProg 64 :=
.seq AllocBody536_162 AllocBody536_205

def AllocBody536_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody536_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody536_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody536_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody536_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody536_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def AllocBody536_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def AllocBody536_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody536_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody536_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def AllocBody536_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody536_220 : StackLang.HolProg 64 :=
.seq AllocBody536_218 AllocBody536_219

def AllocBody536_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1779#64)

def AllocBody536_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_224 : StackLang.HolProg 64 :=
.seq AllocBody536_222 AllocBody536_223

def AllocBody536_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody536_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody536_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 11

def AllocBody536_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody536_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody536_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody536_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody536_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_235 : StackLang.HolProg 64 :=
.seq AllocBody536_233 AllocBody536_234

def AllocBody536_236 : StackLang.HolProg 64 :=
.seq AllocBody536_232 AllocBody536_235

def AllocBody536_237 : StackLang.HolProg 64 :=
.seq AllocBody536_231 AllocBody536_236

def AllocBody536_238 : StackLang.HolProg 64 :=
.seq AllocBody536_230 AllocBody536_237

def AllocBody536_239 : StackLang.HolProg 64 :=
.seq AllocBody536_229 AllocBody536_238

def AllocBody536_240 : StackLang.HolProg 64 :=
.seq AllocBody536_228 AllocBody536_239

def AllocBody536_241 : StackLang.HolProg 64 :=
.seq AllocBody536_227 AllocBody536_240

def AllocBody536_242 : StackLang.HolProg 64 :=
.seq AllocBody536_226 AllocBody536_241

def AllocBody536_243 : StackLang.HolProg 64 :=
.seq AllocBody536_225 AllocBody536_242

def AllocBody536_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody536_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody536_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody536_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody536_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody536_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody536_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody536_254 : StackLang.HolProg 64 :=
.seq AllocBody536_252 AllocBody536_253

def AllocBody536_255 : StackLang.HolProg 64 :=
.seq AllocBody536_251 AllocBody536_254

def AllocBody536_256 : StackLang.HolProg 64 :=
.seq AllocBody536_250 AllocBody536_255

def AllocBody536_257 : StackLang.HolProg 64 :=
.seq AllocBody536_249 AllocBody536_256

def AllocBody536_258 : StackLang.HolProg 64 :=
.seq AllocBody536_248 AllocBody536_257

def AllocBody536_259 : StackLang.HolProg 64 :=
.seq AllocBody536_247 AllocBody536_258

def AllocBody536_260 : StackLang.HolProg 64 :=
.seq AllocBody536_246 AllocBody536_259

def AllocBody536_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody536_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody536_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody536_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody536_265 : StackLang.HolProg 64 :=
.seq AllocBody536_263 AllocBody536_264

def AllocBody536_266 : StackLang.HolProg 64 :=
.seq AllocBody536_262 AllocBody536_265

def AllocBody536_267 : StackLang.HolProg 64 :=
.seq AllocBody536_261 AllocBody536_266

def AllocBody536_268 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody536_269 : StackLang.HolProg 64 :=
.seq AllocBody536_267 AllocBody536_268

def AllocBody536_270 : StackLang.HolProg 64 :=
.call (some (AllocBody536_260, 0, 536, 10)) (Sum.inl 484) (some (AllocBody536_269, 536, 11))

def AllocBody536_271 : StackLang.HolProg 64 :=
.seq AllocBody536_245 AllocBody536_270

def AllocBody536_272 : StackLang.HolProg 64 :=
.seq AllocBody536_244 AllocBody536_271

def AllocBody536_273 : StackLang.HolProg 64 :=
.seq AllocBody536_243 AllocBody536_272

def AllocBody536_274 : StackLang.HolProg 64 :=
.seq AllocBody536_224 AllocBody536_273

def AllocBody536_275 : StackLang.HolProg 64 :=
.seq AllocBody536_221 AllocBody536_274

def AllocBody536_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody536_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody536_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody536_279 : StackLang.HolProg 64 :=
.seq AllocBody536_277 AllocBody536_278

def AllocBody536_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1780#64)

def AllocBody536_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_283 : StackLang.HolProg 64 :=
.seq AllocBody536_281 AllocBody536_282

def AllocBody536_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody536_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody536_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 13

def AllocBody536_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody536_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody536_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody536_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody536_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_294 : StackLang.HolProg 64 :=
.seq AllocBody536_292 AllocBody536_293

def AllocBody536_295 : StackLang.HolProg 64 :=
.seq AllocBody536_291 AllocBody536_294

def AllocBody536_296 : StackLang.HolProg 64 :=
.seq AllocBody536_290 AllocBody536_295

def AllocBody536_297 : StackLang.HolProg 64 :=
.seq AllocBody536_289 AllocBody536_296

def AllocBody536_298 : StackLang.HolProg 64 :=
.seq AllocBody536_288 AllocBody536_297

def AllocBody536_299 : StackLang.HolProg 64 :=
.seq AllocBody536_287 AllocBody536_298

def AllocBody536_300 : StackLang.HolProg 64 :=
.seq AllocBody536_286 AllocBody536_299

def AllocBody536_301 : StackLang.HolProg 64 :=
.seq AllocBody536_285 AllocBody536_300

def AllocBody536_302 : StackLang.HolProg 64 :=
.seq AllocBody536_284 AllocBody536_301

def AllocBody536_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody536_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody536_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody536_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody536_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody536_311 : StackLang.HolProg 64 :=
.seq AllocBody536_309 AllocBody536_310

def AllocBody536_312 : StackLang.HolProg 64 :=
.seq AllocBody536_308 AllocBody536_311

def AllocBody536_313 : StackLang.HolProg 64 :=
.seq AllocBody536_307 AllocBody536_312

def AllocBody536_314 : StackLang.HolProg 64 :=
.seq AllocBody536_306 AllocBody536_313

def AllocBody536_315 : StackLang.HolProg 64 :=
.seq AllocBody536_305 AllocBody536_314

def AllocBody536_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody536_317 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody536_318 : StackLang.HolProg 64 :=
.seq AllocBody536_316 AllocBody536_317

def AllocBody536_319 : StackLang.HolProg 64 :=
.call (some (AllocBody536_315, 0, 536, 12)) (Sum.inl 146) (some (AllocBody536_318, 536, 13))

def AllocBody536_320 : StackLang.HolProg 64 :=
.seq AllocBody536_304 AllocBody536_319

def AllocBody536_321 : StackLang.HolProg 64 :=
.seq AllocBody536_303 AllocBody536_320

def AllocBody536_322 : StackLang.HolProg 64 :=
.seq AllocBody536_302 AllocBody536_321

def AllocBody536_323 : StackLang.HolProg 64 :=
.seq AllocBody536_283 AllocBody536_322

def AllocBody536_324 : StackLang.HolProg 64 :=
.seq AllocBody536_280 AllocBody536_323

def AllocBody536_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody536_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody536_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody536_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody536_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody536_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody536_331 : StackLang.HolProg 64 :=
.seq AllocBody536_329 AllocBody536_330

def AllocBody536_332 : StackLang.HolProg 64 :=
.seq AllocBody536_328 AllocBody536_331

def AllocBody536_333 : StackLang.HolProg 64 :=
.seq AllocBody536_327 AllocBody536_332

def AllocBody536_334 : StackLang.HolProg 64 :=
.seq AllocBody536_326 AllocBody536_333

def AllocBody536_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1781#64)

def AllocBody536_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_338 : StackLang.HolProg 64 :=
.seq AllocBody536_336 AllocBody536_337

def AllocBody536_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody536_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody536_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 15

def AllocBody536_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody536_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody536_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody536_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody536_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_349 : StackLang.HolProg 64 :=
.seq AllocBody536_347 AllocBody536_348

def AllocBody536_350 : StackLang.HolProg 64 :=
.seq AllocBody536_346 AllocBody536_349

def AllocBody536_351 : StackLang.HolProg 64 :=
.seq AllocBody536_345 AllocBody536_350

def AllocBody536_352 : StackLang.HolProg 64 :=
.seq AllocBody536_344 AllocBody536_351

def AllocBody536_353 : StackLang.HolProg 64 :=
.seq AllocBody536_343 AllocBody536_352

def AllocBody536_354 : StackLang.HolProg 64 :=
.seq AllocBody536_342 AllocBody536_353

def AllocBody536_355 : StackLang.HolProg 64 :=
.seq AllocBody536_341 AllocBody536_354

def AllocBody536_356 : StackLang.HolProg 64 :=
.seq AllocBody536_340 AllocBody536_355

def AllocBody536_357 : StackLang.HolProg 64 :=
.seq AllocBody536_339 AllocBody536_356

def AllocBody536_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody536_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody536_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody536_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody536_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody536_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody536_367 : StackLang.HolProg 64 :=
.seq AllocBody536_365 AllocBody536_366

def AllocBody536_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody536_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody536_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody536_371 : StackLang.HolProg 64 :=
.seq AllocBody536_369 AllocBody536_370

def AllocBody536_372 : StackLang.HolProg 64 :=
.seq AllocBody536_368 AllocBody536_371

def AllocBody536_373 : StackLang.HolProg 64 :=
.seq AllocBody536_367 AllocBody536_372

def AllocBody536_374 : StackLang.HolProg 64 :=
.seq AllocBody536_364 AllocBody536_373

def AllocBody536_375 : StackLang.HolProg 64 :=
.seq AllocBody536_363 AllocBody536_374

def AllocBody536_376 : StackLang.HolProg 64 :=
.seq AllocBody536_362 AllocBody536_375

def AllocBody536_377 : StackLang.HolProg 64 :=
.seq AllocBody536_361 AllocBody536_376

def AllocBody536_378 : StackLang.HolProg 64 :=
.seq AllocBody536_360 AllocBody536_377

def AllocBody536_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody536_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody536_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody536_382 : StackLang.HolProg 64 :=
.seq AllocBody536_380 AllocBody536_381

def AllocBody536_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody536_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody536_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody536_386 : StackLang.HolProg 64 :=
.seq AllocBody536_384 AllocBody536_385

def AllocBody536_387 : StackLang.HolProg 64 :=
.seq AllocBody536_383 AllocBody536_386

def AllocBody536_388 : StackLang.HolProg 64 :=
.seq AllocBody536_382 AllocBody536_387

def AllocBody536_389 : StackLang.HolProg 64 :=
.seq AllocBody536_379 AllocBody536_388

def AllocBody536_390 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody536_391 : StackLang.HolProg 64 :=
.seq AllocBody536_389 AllocBody536_390

def AllocBody536_392 : StackLang.HolProg 64 :=
.call (some (AllocBody536_378, 0, 536, 14)) (Sum.inl 70) (some (AllocBody536_391, 536, 15))

def AllocBody536_393 : StackLang.HolProg 64 :=
.seq AllocBody536_359 AllocBody536_392

def AllocBody536_394 : StackLang.HolProg 64 :=
.seq AllocBody536_358 AllocBody536_393

def AllocBody536_395 : StackLang.HolProg 64 :=
.seq AllocBody536_357 AllocBody536_394

def AllocBody536_396 : StackLang.HolProg 64 :=
.seq AllocBody536_338 AllocBody536_395

def AllocBody536_397 : StackLang.HolProg 64 :=
.seq AllocBody536_335 AllocBody536_396

def AllocBody536_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody536_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody536_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1782#64)

def AllocBody536_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_403 : StackLang.HolProg 64 :=
.seq AllocBody536_401 AllocBody536_402

def AllocBody536_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody536_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody536_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 17

def AllocBody536_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody536_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody536_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody536_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody536_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_414 : StackLang.HolProg 64 :=
.seq AllocBody536_412 AllocBody536_413

def AllocBody536_415 : StackLang.HolProg 64 :=
.seq AllocBody536_411 AllocBody536_414

def AllocBody536_416 : StackLang.HolProg 64 :=
.seq AllocBody536_410 AllocBody536_415

def AllocBody536_417 : StackLang.HolProg 64 :=
.seq AllocBody536_409 AllocBody536_416

def AllocBody536_418 : StackLang.HolProg 64 :=
.seq AllocBody536_408 AllocBody536_417

def AllocBody536_419 : StackLang.HolProg 64 :=
.seq AllocBody536_407 AllocBody536_418

def AllocBody536_420 : StackLang.HolProg 64 :=
.seq AllocBody536_406 AllocBody536_419

def AllocBody536_421 : StackLang.HolProg 64 :=
.seq AllocBody536_405 AllocBody536_420

def AllocBody536_422 : StackLang.HolProg 64 :=
.seq AllocBody536_404 AllocBody536_421

def AllocBody536_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody536_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody536_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody536_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody536_430 : StackLang.HolProg 64 :=
.seq AllocBody536_428 AllocBody536_429

def AllocBody536_431 : StackLang.HolProg 64 :=
.seq AllocBody536_427 AllocBody536_430

def AllocBody536_432 : StackLang.HolProg 64 :=
.seq AllocBody536_426 AllocBody536_431

def AllocBody536_433 : StackLang.HolProg 64 :=
.seq AllocBody536_425 AllocBody536_432

def AllocBody536_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody536_435 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody536_436 : StackLang.HolProg 64 :=
.seq AllocBody536_434 AllocBody536_435

def AllocBody536_437 : StackLang.HolProg 64 :=
.call (some (AllocBody536_433, 0, 536, 16)) (Sum.inl 476) (some (AllocBody536_436, 536, 17))

def AllocBody536_438 : StackLang.HolProg 64 :=
.seq AllocBody536_424 AllocBody536_437

def AllocBody536_439 : StackLang.HolProg 64 :=
.seq AllocBody536_423 AllocBody536_438

def AllocBody536_440 : StackLang.HolProg 64 :=
.seq AllocBody536_422 AllocBody536_439

def AllocBody536_441 : StackLang.HolProg 64 :=
.seq AllocBody536_403 AllocBody536_440

def AllocBody536_442 : StackLang.HolProg 64 :=
.seq AllocBody536_400 AllocBody536_441

def AllocBody536_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody536_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody536_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1783#64)

def AllocBody536_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_450 : StackLang.HolProg 64 :=
.seq AllocBody536_448 AllocBody536_449

def AllocBody536_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody536_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody536_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody536_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 19

def AllocBody536_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody536_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody536_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody536_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody536_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_461 : StackLang.HolProg 64 :=
.seq AllocBody536_459 AllocBody536_460

def AllocBody536_462 : StackLang.HolProg 64 :=
.seq AllocBody536_458 AllocBody536_461

def AllocBody536_463 : StackLang.HolProg 64 :=
.seq AllocBody536_457 AllocBody536_462

def AllocBody536_464 : StackLang.HolProg 64 :=
.seq AllocBody536_456 AllocBody536_463

def AllocBody536_465 : StackLang.HolProg 64 :=
.seq AllocBody536_455 AllocBody536_464

def AllocBody536_466 : StackLang.HolProg 64 :=
.seq AllocBody536_454 AllocBody536_465

def AllocBody536_467 : StackLang.HolProg 64 :=
.seq AllocBody536_453 AllocBody536_466

def AllocBody536_468 : StackLang.HolProg 64 :=
.seq AllocBody536_452 AllocBody536_467

def AllocBody536_469 : StackLang.HolProg 64 :=
.seq AllocBody536_451 AllocBody536_468

def AllocBody536_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody536_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody536_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody536_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody536_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody536_477 : StackLang.HolProg 64 :=
.seq AllocBody536_475 AllocBody536_476

def AllocBody536_478 : StackLang.HolProg 64 :=
.seq AllocBody536_474 AllocBody536_477

def AllocBody536_479 : StackLang.HolProg 64 :=
.seq AllocBody536_473 AllocBody536_478

def AllocBody536_480 : StackLang.HolProg 64 :=
.seq AllocBody536_472 AllocBody536_479

def AllocBody536_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody536_482 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody536_483 : StackLang.HolProg 64 :=
.seq AllocBody536_481 AllocBody536_482

def AllocBody536_484 : StackLang.HolProg 64 :=
.call (some (AllocBody536_480, 0, 536, 18)) (Sum.inl 490) (some (AllocBody536_483, 536, 19))

def AllocBody536_485 : StackLang.HolProg 64 :=
.seq AllocBody536_471 AllocBody536_484

def AllocBody536_486 : StackLang.HolProg 64 :=
.seq AllocBody536_470 AllocBody536_485

def AllocBody536_487 : StackLang.HolProg 64 :=
.seq AllocBody536_469 AllocBody536_486

def AllocBody536_488 : StackLang.HolProg 64 :=
.seq AllocBody536_450 AllocBody536_487

def AllocBody536_489 : StackLang.HolProg 64 :=
.seq AllocBody536_447 AllocBody536_488

def AllocBody536_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody536_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody536_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody536_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody536_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody536_495 : StackLang.HolProg 64 :=
.seq AllocBody536_493 AllocBody536_494

def AllocBody536_496 : StackLang.HolProg 64 :=
.seq AllocBody536_492 AllocBody536_495

def AllocBody536_497 : StackLang.HolProg 64 :=
.seq AllocBody536_491 AllocBody536_496

def AllocBody536_498 : StackLang.HolProg 64 :=
.seq AllocBody536_490 AllocBody536_497

def AllocBody536_499 : StackLang.HolProg 64 :=
.seq AllocBody536_489 AllocBody536_498

def AllocBody536_500 : StackLang.HolProg 64 :=
.seq AllocBody536_446 AllocBody536_499

def AllocBody536_501 : StackLang.HolProg 64 :=
.seq AllocBody536_445 AllocBody536_500

def AllocBody536_502 : StackLang.HolProg 64 :=
.seq AllocBody536_444 AllocBody536_501

def AllocBody536_503 : StackLang.HolProg 64 :=
.seq AllocBody536_443 AllocBody536_502

def AllocBody536_504 : StackLang.HolProg 64 :=
.seq AllocBody536_442 AllocBody536_503

def AllocBody536_505 : StackLang.HolProg 64 :=
.seq AllocBody536_399 AllocBody536_504

def AllocBody536_506 : StackLang.HolProg 64 :=
.seq AllocBody536_398 AllocBody536_505

def AllocBody536_507 : StackLang.HolProg 64 :=
.seq AllocBody536_397 AllocBody536_506

def AllocBody536_508 : StackLang.HolProg 64 :=
.seq AllocBody536_334 AllocBody536_507

def AllocBody536_509 : StackLang.HolProg 64 :=
.seq AllocBody536_325 AllocBody536_508

def AllocBody536_510 : StackLang.HolProg 64 :=
.seq AllocBody536_324 AllocBody536_509

def AllocBody536_511 : StackLang.HolProg 64 :=
.seq AllocBody536_279 AllocBody536_510

def AllocBody536_512 : StackLang.HolProg 64 :=
.seq AllocBody536_276 AllocBody536_511

def AllocBody536_513 : StackLang.HolProg 64 :=
.seq AllocBody536_275 AllocBody536_512

def AllocBody536_514 : StackLang.HolProg 64 :=
.seq AllocBody536_220 AllocBody536_513

def AllocBody536_515 : StackLang.HolProg 64 :=
.seq AllocBody536_217 AllocBody536_514

def AllocBody536_516 : StackLang.HolProg 64 :=
.seq AllocBody536_216 AllocBody536_515

def AllocBody536_517 : StackLang.HolProg 64 :=
.seq AllocBody536_215 AllocBody536_516

def AllocBody536_518 : StackLang.HolProg 64 :=
.seq AllocBody536_214 AllocBody536_517

def AllocBody536_519 : StackLang.HolProg 64 :=
.seq AllocBody536_213 AllocBody536_518

def AllocBody536_520 : StackLang.HolProg 64 :=
.seq AllocBody536_212 AllocBody536_519

def AllocBody536_521 : StackLang.HolProg 64 :=
.seq AllocBody536_211 AllocBody536_520

def AllocBody536_522 : StackLang.HolProg 64 :=
.seq AllocBody536_210 AllocBody536_521

def AllocBody536_523 : StackLang.HolProg 64 :=
.seq AllocBody536_209 AllocBody536_522

def AllocBody536_524 : StackLang.HolProg 64 :=
.seq AllocBody536_208 AllocBody536_523

def AllocBody536_525 : StackLang.HolProg 64 :=
.seq AllocBody536_207 AllocBody536_524

def AllocBody536_526 : StackLang.HolProg 64 :=
.seq AllocBody536_206 AllocBody536_525

def AllocBody536_527 : StackLang.HolProg 64 :=
.seq AllocBody536_161 AllocBody536_526

def AllocBody536_528 : StackLang.HolProg 64 :=
.seq AllocBody536_160 AllocBody536_527

def AllocBody536_529 : StackLang.HolProg 64 :=
.seq AllocBody536_159 AllocBody536_528

def AllocBody536_530 : StackLang.HolProg 64 :=
.seq AllocBody536_158 AllocBody536_529

def AllocBody536_531 : StackLang.HolProg 64 :=
.seq AllocBody536_115 AllocBody536_530

def AllocBody536_532 : StackLang.HolProg 64 :=
.seq AllocBody536_114 AllocBody536_531

def AllocBody536_533 : StackLang.HolProg 64 :=
.seq AllocBody536_113 AllocBody536_532

def AllocBody536_534 : StackLang.HolProg 64 :=
.seq AllocBody536_2 AllocBody536_533

def AllocBody536_535 : StackLang.HolProg 64 :=
.seq AllocBody536_1 AllocBody536_534

def AllocBody536_536 : StackLang.HolProg 64 :=
.seq AllocBody536_0 AllocBody536_535

def Alloc536 : Nat × StackLang.HolProg 64 := (536, AllocBody536_536)
theorem Alloc536_eq : StackAlloc.progComp (536, raw536) = Alloc536 := by
  kernel_rfl
#print axioms Alloc536_eq
end InitECandidate.Proofs.BackendStages
