import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw304
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody304_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody304_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody304_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody304_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody304_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody304_5 : StackLang.HolProg 64 :=
.seq AllocBody304_3 AllocBody304_4

def AllocBody304_6 : StackLang.HolProg 64 :=
.seq AllocBody304_2 AllocBody304_5

def AllocBody304_7 : StackLang.HolProg 64 :=
.seq AllocBody304_1 AllocBody304_6

def AllocBody304_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 835#64)

def AllocBody304_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody304_11 : StackLang.HolProg 64 :=
.seq AllocBody304_9 AllocBody304_10

def AllocBody304_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody304_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody304_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody304_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 3

def AllocBody304_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody304_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody304_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody304_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody304_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody304_22 : StackLang.HolProg 64 :=
.seq AllocBody304_20 AllocBody304_21

def AllocBody304_23 : StackLang.HolProg 64 :=
.seq AllocBody304_19 AllocBody304_22

def AllocBody304_24 : StackLang.HolProg 64 :=
.seq AllocBody304_18 AllocBody304_23

def AllocBody304_25 : StackLang.HolProg 64 :=
.seq AllocBody304_17 AllocBody304_24

def AllocBody304_26 : StackLang.HolProg 64 :=
.seq AllocBody304_16 AllocBody304_25

def AllocBody304_27 : StackLang.HolProg 64 :=
.seq AllocBody304_15 AllocBody304_26

def AllocBody304_28 : StackLang.HolProg 64 :=
.seq AllocBody304_14 AllocBody304_27

def AllocBody304_29 : StackLang.HolProg 64 :=
.seq AllocBody304_13 AllocBody304_28

def AllocBody304_30 : StackLang.HolProg 64 :=
.seq AllocBody304_12 AllocBody304_29

def AllocBody304_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody304_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody304_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody304_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody304_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody304_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody304_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody304_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody304_41 : StackLang.HolProg 64 :=
.seq AllocBody304_39 AllocBody304_40

def AllocBody304_42 : StackLang.HolProg 64 :=
.seq AllocBody304_38 AllocBody304_41

def AllocBody304_43 : StackLang.HolProg 64 :=
.seq AllocBody304_37 AllocBody304_42

def AllocBody304_44 : StackLang.HolProg 64 :=
.seq AllocBody304_36 AllocBody304_43

def AllocBody304_45 : StackLang.HolProg 64 :=
.seq AllocBody304_35 AllocBody304_44

def AllocBody304_46 : StackLang.HolProg 64 :=
.seq AllocBody304_34 AllocBody304_45

def AllocBody304_47 : StackLang.HolProg 64 :=
.seq AllocBody304_33 AllocBody304_46

def AllocBody304_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody304_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody304_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody304_51 : StackLang.HolProg 64 :=
.seq AllocBody304_49 AllocBody304_50

def AllocBody304_52 : StackLang.HolProg 64 :=
.seq AllocBody304_48 AllocBody304_51

def AllocBody304_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody304_54 : StackLang.HolProg 64 :=
.seq AllocBody304_52 AllocBody304_53

def AllocBody304_55 : StackLang.HolProg 64 :=
.call (some (AllocBody304_47, 0, 304, 2)) (Sum.inl 75) (some (AllocBody304_54, 304, 3))

def AllocBody304_56 : StackLang.HolProg 64 :=
.seq AllocBody304_32 AllocBody304_55

def AllocBody304_57 : StackLang.HolProg 64 :=
.seq AllocBody304_31 AllocBody304_56

def AllocBody304_58 : StackLang.HolProg 64 :=
.seq AllocBody304_30 AllocBody304_57

def AllocBody304_59 : StackLang.HolProg 64 :=
.seq AllocBody304_11 AllocBody304_58

def AllocBody304_60 : StackLang.HolProg 64 :=
.seq AllocBody304_8 AllocBody304_59

def AllocBody304_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody304_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody304_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody304_64 : StackLang.HolProg 64 :=
.seq AllocBody304_62 AllocBody304_63

def AllocBody304_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 836#64)

def AllocBody304_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody304_68 : StackLang.HolProg 64 :=
.seq AllocBody304_66 AllocBody304_67

def AllocBody304_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody304_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody304_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody304_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 7

def AllocBody304_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody304_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody304_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody304_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody304_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody304_79 : StackLang.HolProg 64 :=
.seq AllocBody304_77 AllocBody304_78

def AllocBody304_80 : StackLang.HolProg 64 :=
.seq AllocBody304_76 AllocBody304_79

def AllocBody304_81 : StackLang.HolProg 64 :=
.seq AllocBody304_75 AllocBody304_80

def AllocBody304_82 : StackLang.HolProg 64 :=
.seq AllocBody304_74 AllocBody304_81

def AllocBody304_83 : StackLang.HolProg 64 :=
.seq AllocBody304_73 AllocBody304_82

def AllocBody304_84 : StackLang.HolProg 64 :=
.seq AllocBody304_72 AllocBody304_83

def AllocBody304_85 : StackLang.HolProg 64 :=
.seq AllocBody304_71 AllocBody304_84

def AllocBody304_86 : StackLang.HolProg 64 :=
.seq AllocBody304_70 AllocBody304_85

def AllocBody304_87 : StackLang.HolProg 64 :=
.seq AllocBody304_69 AllocBody304_86

def AllocBody304_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody304_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody304_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody304_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody304_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody304_95 : StackLang.HolProg 64 :=
.seq AllocBody304_93 AllocBody304_94

def AllocBody304_96 : StackLang.HolProg 64 :=
.seq AllocBody304_92 AllocBody304_95

def AllocBody304_97 : StackLang.HolProg 64 :=
.seq AllocBody304_91 AllocBody304_96

def AllocBody304_98 : StackLang.HolProg 64 :=
.seq AllocBody304_90 AllocBody304_97

def AllocBody304_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody304_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody304_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody304_102 : StackLang.HolProg 64 :=
.seq AllocBody304_100 AllocBody304_101

def AllocBody304_103 : StackLang.HolProg 64 :=
.seq AllocBody304_99 AllocBody304_102

def AllocBody304_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_105 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody304_106 : StackLang.HolProg 64 :=
.seq AllocBody304_104 AllocBody304_105

def AllocBody304_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody304_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody304_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody304_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody304_111 : StackLang.HolProg 64 :=
.seq AllocBody304_109 AllocBody304_110

def AllocBody304_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 837#64)

def AllocBody304_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody304_115 : StackLang.HolProg 64 :=
.seq AllocBody304_113 AllocBody304_114

def AllocBody304_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody304_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody304_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody304_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 6

def AllocBody304_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody304_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody304_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody304_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody304_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody304_126 : StackLang.HolProg 64 :=
.seq AllocBody304_124 AllocBody304_125

def AllocBody304_127 : StackLang.HolProg 64 :=
.seq AllocBody304_123 AllocBody304_126

def AllocBody304_128 : StackLang.HolProg 64 :=
.seq AllocBody304_122 AllocBody304_127

def AllocBody304_129 : StackLang.HolProg 64 :=
.seq AllocBody304_121 AllocBody304_128

def AllocBody304_130 : StackLang.HolProg 64 :=
.seq AllocBody304_120 AllocBody304_129

def AllocBody304_131 : StackLang.HolProg 64 :=
.seq AllocBody304_119 AllocBody304_130

def AllocBody304_132 : StackLang.HolProg 64 :=
.seq AllocBody304_118 AllocBody304_131

def AllocBody304_133 : StackLang.HolProg 64 :=
.seq AllocBody304_117 AllocBody304_132

def AllocBody304_134 : StackLang.HolProg 64 :=
.seq AllocBody304_116 AllocBody304_133

def AllocBody304_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody304_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody304_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody304_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody304_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody304_142 : StackLang.HolProg 64 :=
.seq AllocBody304_140 AllocBody304_141

def AllocBody304_143 : StackLang.HolProg 64 :=
.seq AllocBody304_139 AllocBody304_142

def AllocBody304_144 : StackLang.HolProg 64 :=
.seq AllocBody304_138 AllocBody304_143

def AllocBody304_145 : StackLang.HolProg 64 :=
.seq AllocBody304_137 AllocBody304_144

def AllocBody304_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody304_147 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody304_148 : StackLang.HolProg 64 :=
.seq AllocBody304_146 AllocBody304_147

def AllocBody304_149 : StackLang.HolProg 64 :=
.call (some (AllocBody304_145, 0, 304, 5)) (Sum.inl 76) (some (AllocBody304_148, 304, 6))

def AllocBody304_150 : StackLang.HolProg 64 :=
.seq AllocBody304_136 AllocBody304_149

def AllocBody304_151 : StackLang.HolProg 64 :=
.seq AllocBody304_135 AllocBody304_150

def AllocBody304_152 : StackLang.HolProg 64 :=
.seq AllocBody304_134 AllocBody304_151

def AllocBody304_153 : StackLang.HolProg 64 :=
.seq AllocBody304_115 AllocBody304_152

def AllocBody304_154 : StackLang.HolProg 64 :=
.seq AllocBody304_112 AllocBody304_153

def AllocBody304_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody304_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 2

def AllocBody304_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody304_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_160 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody304_161 : StackLang.HolProg 64 :=
.seq AllocBody304_159 AllocBody304_160

def AllocBody304_162 : StackLang.HolProg 64 :=
.seq AllocBody304_158 AllocBody304_161

def AllocBody304_163 : StackLang.HolProg 64 :=
.seq AllocBody304_157 AllocBody304_162

def AllocBody304_164 : StackLang.HolProg 64 :=
.seq AllocBody304_156 AllocBody304_163

def AllocBody304_165 : StackLang.HolProg 64 :=
.seq AllocBody304_155 AllocBody304_164

def AllocBody304_166 : StackLang.HolProg 64 :=
.seq AllocBody304_154 AllocBody304_165

def AllocBody304_167 : StackLang.HolProg 64 :=
.seq AllocBody304_111 AllocBody304_166

def AllocBody304_168 : StackLang.HolProg 64 :=
.seq AllocBody304_108 AllocBody304_167

def AllocBody304_169 : StackLang.HolProg 64 :=
.seq AllocBody304_107 AllocBody304_168

def AllocBody304_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) AllocBody304_106 AllocBody304_169

def AllocBody304_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody304_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody304_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody304_174 : StackLang.HolProg 64 :=
.seq AllocBody304_172 AllocBody304_173

def AllocBody304_175 : StackLang.HolProg 64 :=
.seq AllocBody304_171 AllocBody304_174

def AllocBody304_176 : StackLang.HolProg 64 :=
.seq AllocBody304_170 AllocBody304_175

def AllocBody304_177 : StackLang.HolProg 64 :=
.seq AllocBody304_103 AllocBody304_176

def AllocBody304_178 : StackLang.HolProg 64 :=
.call (some (AllocBody304_98, 0, 304, 4)) (Sum.inl 303) (some (AllocBody304_177, 304, 7))

def AllocBody304_179 : StackLang.HolProg 64 :=
.seq AllocBody304_89 AllocBody304_178

def AllocBody304_180 : StackLang.HolProg 64 :=
.seq AllocBody304_88 AllocBody304_179

def AllocBody304_181 : StackLang.HolProg 64 :=
.seq AllocBody304_87 AllocBody304_180

def AllocBody304_182 : StackLang.HolProg 64 :=
.seq AllocBody304_68 AllocBody304_181

def AllocBody304_183 : StackLang.HolProg 64 :=
.seq AllocBody304_65 AllocBody304_182

def AllocBody304_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody304_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody304_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody304_187 : StackLang.HolProg 64 :=
.seq AllocBody304_185 AllocBody304_186

def AllocBody304_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 838#64)

def AllocBody304_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody304_191 : StackLang.HolProg 64 :=
.seq AllocBody304_189 AllocBody304_190

def AllocBody304_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody304_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody304_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody304_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 304 9

def AllocBody304_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody304_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody304_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody304_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody304_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody304_202 : StackLang.HolProg 64 :=
.seq AllocBody304_200 AllocBody304_201

def AllocBody304_203 : StackLang.HolProg 64 :=
.seq AllocBody304_199 AllocBody304_202

def AllocBody304_204 : StackLang.HolProg 64 :=
.seq AllocBody304_198 AllocBody304_203

def AllocBody304_205 : StackLang.HolProg 64 :=
.seq AllocBody304_197 AllocBody304_204

def AllocBody304_206 : StackLang.HolProg 64 :=
.seq AllocBody304_196 AllocBody304_205

def AllocBody304_207 : StackLang.HolProg 64 :=
.seq AllocBody304_195 AllocBody304_206

def AllocBody304_208 : StackLang.HolProg 64 :=
.seq AllocBody304_194 AllocBody304_207

def AllocBody304_209 : StackLang.HolProg 64 :=
.seq AllocBody304_193 AllocBody304_208

def AllocBody304_210 : StackLang.HolProg 64 :=
.seq AllocBody304_192 AllocBody304_209

def AllocBody304_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody304_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody304_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody304_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody304_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody304_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody304_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody304_219 : StackLang.HolProg 64 :=
.seq AllocBody304_217 AllocBody304_218

def AllocBody304_220 : StackLang.HolProg 64 :=
.seq AllocBody304_216 AllocBody304_219

def AllocBody304_221 : StackLang.HolProg 64 :=
.seq AllocBody304_215 AllocBody304_220

def AllocBody304_222 : StackLang.HolProg 64 :=
.seq AllocBody304_214 AllocBody304_221

def AllocBody304_223 : StackLang.HolProg 64 :=
.seq AllocBody304_213 AllocBody304_222

def AllocBody304_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody304_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody304_226 : StackLang.HolProg 64 :=
.seq AllocBody304_224 AllocBody304_225

def AllocBody304_227 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody304_228 : StackLang.HolProg 64 :=
.seq AllocBody304_226 AllocBody304_227

def AllocBody304_229 : StackLang.HolProg 64 :=
.call (some (AllocBody304_223, 0, 304, 8)) (Sum.inl 76) (some (AllocBody304_228, 304, 9))

def AllocBody304_230 : StackLang.HolProg 64 :=
.seq AllocBody304_212 AllocBody304_229

def AllocBody304_231 : StackLang.HolProg 64 :=
.seq AllocBody304_211 AllocBody304_230

def AllocBody304_232 : StackLang.HolProg 64 :=
.seq AllocBody304_210 AllocBody304_231

def AllocBody304_233 : StackLang.HolProg 64 :=
.seq AllocBody304_191 AllocBody304_232

def AllocBody304_234 : StackLang.HolProg 64 :=
.seq AllocBody304_188 AllocBody304_233

def AllocBody304_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody304_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody304_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody304_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody304_239 : StackLang.HolProg 64 :=
.seq AllocBody304_237 AllocBody304_238

def AllocBody304_240 : StackLang.HolProg 64 :=
.seq AllocBody304_236 AllocBody304_239

def AllocBody304_241 : StackLang.HolProg 64 :=
.seq AllocBody304_235 AllocBody304_240

def AllocBody304_242 : StackLang.HolProg 64 :=
.seq AllocBody304_234 AllocBody304_241

def AllocBody304_243 : StackLang.HolProg 64 :=
.seq AllocBody304_187 AllocBody304_242

def AllocBody304_244 : StackLang.HolProg 64 :=
.seq AllocBody304_184 AllocBody304_243

def AllocBody304_245 : StackLang.HolProg 64 :=
.seq AllocBody304_183 AllocBody304_244

def AllocBody304_246 : StackLang.HolProg 64 :=
.seq AllocBody304_64 AllocBody304_245

def AllocBody304_247 : StackLang.HolProg 64 :=
.seq AllocBody304_61 AllocBody304_246

def AllocBody304_248 : StackLang.HolProg 64 :=
.seq AllocBody304_60 AllocBody304_247

def AllocBody304_249 : StackLang.HolProg 64 :=
.seq AllocBody304_7 AllocBody304_248

def AllocBody304_250 : StackLang.HolProg 64 :=
.seq AllocBody304_0 AllocBody304_249

def Alloc304 : Nat × StackLang.HolProg 64 := (304, AllocBody304_250)
theorem Alloc304_eq : StackAlloc.progComp (304, raw304) = Alloc304 := by
  kernel_rfl
#print axioms Alloc304_eq
end InitECandidate.Proofs.BackendStages
