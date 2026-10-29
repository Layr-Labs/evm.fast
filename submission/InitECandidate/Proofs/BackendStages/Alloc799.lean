import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw799
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody799_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody799_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody799_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody799_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody799_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def AllocBody799_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody799_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody799_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody799_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody799_9 : StackLang.HolProg 64 :=
.seq AllocBody799_7 AllocBody799_8

def AllocBody799_10 : StackLang.HolProg 64 :=
.seq AllocBody799_6 AllocBody799_9

def AllocBody799_11 : StackLang.HolProg 64 :=
.seq AllocBody799_5 AllocBody799_10

def AllocBody799_12 : StackLang.HolProg 64 :=
.seq AllocBody799_4 AllocBody799_11

def AllocBody799_13 : StackLang.HolProg 64 :=
.seq AllocBody799_3 AllocBody799_12

def AllocBody799_14 : StackLang.HolProg 64 :=
.seq AllocBody799_2 AllocBody799_13

def AllocBody799_15 : StackLang.HolProg 64 :=
.seq AllocBody799_1 AllocBody799_14

def AllocBody799_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3835#64)

def AllocBody799_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody799_19 : StackLang.HolProg 64 :=
.seq AllocBody799_17 AllocBody799_18

def AllocBody799_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody799_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody799_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody799_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 3

def AllocBody799_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody799_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody799_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody799_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody799_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody799_30 : StackLang.HolProg 64 :=
.seq AllocBody799_28 AllocBody799_29

def AllocBody799_31 : StackLang.HolProg 64 :=
.seq AllocBody799_27 AllocBody799_30

def AllocBody799_32 : StackLang.HolProg 64 :=
.seq AllocBody799_26 AllocBody799_31

def AllocBody799_33 : StackLang.HolProg 64 :=
.seq AllocBody799_25 AllocBody799_32

def AllocBody799_34 : StackLang.HolProg 64 :=
.seq AllocBody799_24 AllocBody799_33

def AllocBody799_35 : StackLang.HolProg 64 :=
.seq AllocBody799_23 AllocBody799_34

def AllocBody799_36 : StackLang.HolProg 64 :=
.seq AllocBody799_22 AllocBody799_35

def AllocBody799_37 : StackLang.HolProg 64 :=
.seq AllocBody799_21 AllocBody799_36

def AllocBody799_38 : StackLang.HolProg 64 :=
.seq AllocBody799_20 AllocBody799_37

def AllocBody799_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody799_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody799_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody799_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody799_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody799_46 : StackLang.HolProg 64 :=
.seq AllocBody799_44 AllocBody799_45

def AllocBody799_47 : StackLang.HolProg 64 :=
.seq AllocBody799_43 AllocBody799_46

def AllocBody799_48 : StackLang.HolProg 64 :=
.seq AllocBody799_42 AllocBody799_47

def AllocBody799_49 : StackLang.HolProg 64 :=
.seq AllocBody799_41 AllocBody799_48

def AllocBody799_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody799_52 : StackLang.HolProg 64 :=
.seq AllocBody799_50 AllocBody799_51

def AllocBody799_53 : StackLang.HolProg 64 :=
.call (some (AllocBody799_49, 0, 799, 2)) (Sum.inl 69) (some (AllocBody799_52, 799, 3))

def AllocBody799_54 : StackLang.HolProg 64 :=
.seq AllocBody799_40 AllocBody799_53

def AllocBody799_55 : StackLang.HolProg 64 :=
.seq AllocBody799_39 AllocBody799_54

def AllocBody799_56 : StackLang.HolProg 64 :=
.seq AllocBody799_38 AllocBody799_55

def AllocBody799_57 : StackLang.HolProg 64 :=
.seq AllocBody799_19 AllocBody799_56

def AllocBody799_58 : StackLang.HolProg 64 :=
.seq AllocBody799_16 AllocBody799_57

def AllocBody799_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody799_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 144#64)

def AllocBody799_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody799_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3836#64)

def AllocBody799_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody799_65 : StackLang.HolProg 64 :=
.seq AllocBody799_63 AllocBody799_64

def AllocBody799_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody799_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody799_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody799_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 5

def AllocBody799_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody799_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody799_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody799_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody799_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody799_76 : StackLang.HolProg 64 :=
.seq AllocBody799_74 AllocBody799_75

def AllocBody799_77 : StackLang.HolProg 64 :=
.seq AllocBody799_73 AllocBody799_76

def AllocBody799_78 : StackLang.HolProg 64 :=
.seq AllocBody799_72 AllocBody799_77

def AllocBody799_79 : StackLang.HolProg 64 :=
.seq AllocBody799_71 AllocBody799_78

def AllocBody799_80 : StackLang.HolProg 64 :=
.seq AllocBody799_70 AllocBody799_79

def AllocBody799_81 : StackLang.HolProg 64 :=
.seq AllocBody799_69 AllocBody799_80

def AllocBody799_82 : StackLang.HolProg 64 :=
.seq AllocBody799_68 AllocBody799_81

def AllocBody799_83 : StackLang.HolProg 64 :=
.seq AllocBody799_67 AllocBody799_82

def AllocBody799_84 : StackLang.HolProg 64 :=
.seq AllocBody799_66 AllocBody799_83

def AllocBody799_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody799_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody799_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody799_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody799_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody799_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody799_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody799_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody799_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody799_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody799_97 : StackLang.HolProg 64 :=
.seq AllocBody799_95 AllocBody799_96

def AllocBody799_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody799_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody799_100 : StackLang.HolProg 64 :=
.seq AllocBody799_98 AllocBody799_99

def AllocBody799_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody799_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody799_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody799_104 : StackLang.HolProg 64 :=
.seq AllocBody799_102 AllocBody799_103

def AllocBody799_105 : StackLang.HolProg 64 :=
.seq AllocBody799_101 AllocBody799_104

def AllocBody799_106 : StackLang.HolProg 64 :=
.seq AllocBody799_100 AllocBody799_105

def AllocBody799_107 : StackLang.HolProg 64 :=
.seq AllocBody799_97 AllocBody799_106

def AllocBody799_108 : StackLang.HolProg 64 :=
.seq AllocBody799_94 AllocBody799_107

def AllocBody799_109 : StackLang.HolProg 64 :=
.seq AllocBody799_93 AllocBody799_108

def AllocBody799_110 : StackLang.HolProg 64 :=
.seq AllocBody799_92 AllocBody799_109

def AllocBody799_111 : StackLang.HolProg 64 :=
.seq AllocBody799_91 AllocBody799_110

def AllocBody799_112 : StackLang.HolProg 64 :=
.seq AllocBody799_90 AllocBody799_111

def AllocBody799_113 : StackLang.HolProg 64 :=
.seq AllocBody799_89 AllocBody799_112

def AllocBody799_114 : StackLang.HolProg 64 :=
.seq AllocBody799_88 AllocBody799_113

def AllocBody799_115 : StackLang.HolProg 64 :=
.seq AllocBody799_87 AllocBody799_114

def AllocBody799_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody799_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody799_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody799_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody799_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody799_121 : StackLang.HolProg 64 :=
.seq AllocBody799_119 AllocBody799_120

def AllocBody799_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody799_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody799_124 : StackLang.HolProg 64 :=
.seq AllocBody799_122 AllocBody799_123

def AllocBody799_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody799_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody799_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody799_128 : StackLang.HolProg 64 :=
.seq AllocBody799_126 AllocBody799_127

def AllocBody799_129 : StackLang.HolProg 64 :=
.seq AllocBody799_125 AllocBody799_128

def AllocBody799_130 : StackLang.HolProg 64 :=
.seq AllocBody799_124 AllocBody799_129

def AllocBody799_131 : StackLang.HolProg 64 :=
.seq AllocBody799_121 AllocBody799_130

def AllocBody799_132 : StackLang.HolProg 64 :=
.seq AllocBody799_118 AllocBody799_131

def AllocBody799_133 : StackLang.HolProg 64 :=
.seq AllocBody799_117 AllocBody799_132

def AllocBody799_134 : StackLang.HolProg 64 :=
.seq AllocBody799_116 AllocBody799_133

def AllocBody799_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody799_136 : StackLang.HolProg 64 :=
.seq AllocBody799_134 AllocBody799_135

def AllocBody799_137 : StackLang.HolProg 64 :=
.call (some (AllocBody799_115, 0, 799, 4)) (Sum.inl 68) (some (AllocBody799_136, 799, 5))

def AllocBody799_138 : StackLang.HolProg 64 :=
.seq AllocBody799_86 AllocBody799_137

def AllocBody799_139 : StackLang.HolProg 64 :=
.seq AllocBody799_85 AllocBody799_138

def AllocBody799_140 : StackLang.HolProg 64 :=
.seq AllocBody799_84 AllocBody799_139

def AllocBody799_141 : StackLang.HolProg 64 :=
.seq AllocBody799_65 AllocBody799_140

def AllocBody799_142 : StackLang.HolProg 64 :=
.seq AllocBody799_62 AllocBody799_141

def AllocBody799_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody799_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody799_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody799_146 : StackLang.HolProg 64 :=
.seq AllocBody799_144 AllocBody799_145

def AllocBody799_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3837#64)

def AllocBody799_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody799_150 : StackLang.HolProg 64 :=
.seq AllocBody799_148 AllocBody799_149

def AllocBody799_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody799_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody799_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody799_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 7

def AllocBody799_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody799_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody799_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody799_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody799_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody799_161 : StackLang.HolProg 64 :=
.seq AllocBody799_159 AllocBody799_160

def AllocBody799_162 : StackLang.HolProg 64 :=
.seq AllocBody799_158 AllocBody799_161

def AllocBody799_163 : StackLang.HolProg 64 :=
.seq AllocBody799_157 AllocBody799_162

def AllocBody799_164 : StackLang.HolProg 64 :=
.seq AllocBody799_156 AllocBody799_163

def AllocBody799_165 : StackLang.HolProg 64 :=
.seq AllocBody799_155 AllocBody799_164

def AllocBody799_166 : StackLang.HolProg 64 :=
.seq AllocBody799_154 AllocBody799_165

def AllocBody799_167 : StackLang.HolProg 64 :=
.seq AllocBody799_153 AllocBody799_166

def AllocBody799_168 : StackLang.HolProg 64 :=
.seq AllocBody799_152 AllocBody799_167

def AllocBody799_169 : StackLang.HolProg 64 :=
.seq AllocBody799_151 AllocBody799_168

def AllocBody799_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody799_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody799_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody799_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody799_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody799_177 : StackLang.HolProg 64 :=
.seq AllocBody799_175 AllocBody799_176

def AllocBody799_178 : StackLang.HolProg 64 :=
.seq AllocBody799_174 AllocBody799_177

def AllocBody799_179 : StackLang.HolProg 64 :=
.seq AllocBody799_173 AllocBody799_178

def AllocBody799_180 : StackLang.HolProg 64 :=
.seq AllocBody799_172 AllocBody799_179

def AllocBody799_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody799_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody799_183 : StackLang.HolProg 64 :=
.seq AllocBody799_181 AllocBody799_182

def AllocBody799_184 : StackLang.HolProg 64 :=
.call (some (AllocBody799_180, 0, 799, 6)) (Sum.inl 796) (some (AllocBody799_183, 799, 7))

def AllocBody799_185 : StackLang.HolProg 64 :=
.seq AllocBody799_171 AllocBody799_184

def AllocBody799_186 : StackLang.HolProg 64 :=
.seq AllocBody799_170 AllocBody799_185

def AllocBody799_187 : StackLang.HolProg 64 :=
.seq AllocBody799_169 AllocBody799_186

def AllocBody799_188 : StackLang.HolProg 64 :=
.seq AllocBody799_150 AllocBody799_187

def AllocBody799_189 : StackLang.HolProg 64 :=
.seq AllocBody799_147 AllocBody799_188

def AllocBody799_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody799_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody799_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody799_193 : StackLang.HolProg 64 :=
.seq AllocBody799_191 AllocBody799_192

def AllocBody799_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3838#64)

def AllocBody799_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody799_197 : StackLang.HolProg 64 :=
.seq AllocBody799_195 AllocBody799_196

def AllocBody799_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody799_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody799_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody799_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 9

def AllocBody799_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody799_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody799_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody799_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody799_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody799_208 : StackLang.HolProg 64 :=
.seq AllocBody799_206 AllocBody799_207

def AllocBody799_209 : StackLang.HolProg 64 :=
.seq AllocBody799_205 AllocBody799_208

def AllocBody799_210 : StackLang.HolProg 64 :=
.seq AllocBody799_204 AllocBody799_209

def AllocBody799_211 : StackLang.HolProg 64 :=
.seq AllocBody799_203 AllocBody799_210

def AllocBody799_212 : StackLang.HolProg 64 :=
.seq AllocBody799_202 AllocBody799_211

def AllocBody799_213 : StackLang.HolProg 64 :=
.seq AllocBody799_201 AllocBody799_212

def AllocBody799_214 : StackLang.HolProg 64 :=
.seq AllocBody799_200 AllocBody799_213

def AllocBody799_215 : StackLang.HolProg 64 :=
.seq AllocBody799_199 AllocBody799_214

def AllocBody799_216 : StackLang.HolProg 64 :=
.seq AllocBody799_198 AllocBody799_215

def AllocBody799_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody799_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody799_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody799_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody799_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody799_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody799_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody799_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody799_227 : StackLang.HolProg 64 :=
.seq AllocBody799_225 AllocBody799_226

def AllocBody799_228 : StackLang.HolProg 64 :=
.seq AllocBody799_224 AllocBody799_227

def AllocBody799_229 : StackLang.HolProg 64 :=
.seq AllocBody799_223 AllocBody799_228

def AllocBody799_230 : StackLang.HolProg 64 :=
.seq AllocBody799_222 AllocBody799_229

def AllocBody799_231 : StackLang.HolProg 64 :=
.seq AllocBody799_221 AllocBody799_230

def AllocBody799_232 : StackLang.HolProg 64 :=
.seq AllocBody799_220 AllocBody799_231

def AllocBody799_233 : StackLang.HolProg 64 :=
.seq AllocBody799_219 AllocBody799_232

def AllocBody799_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody799_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody799_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody799_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody799_238 : StackLang.HolProg 64 :=
.seq AllocBody799_236 AllocBody799_237

def AllocBody799_239 : StackLang.HolProg 64 :=
.seq AllocBody799_235 AllocBody799_238

def AllocBody799_240 : StackLang.HolProg 64 :=
.seq AllocBody799_234 AllocBody799_239

def AllocBody799_241 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody799_242 : StackLang.HolProg 64 :=
.seq AllocBody799_240 AllocBody799_241

def AllocBody799_243 : StackLang.HolProg 64 :=
.call (some (AllocBody799_233, 0, 799, 8)) (Sum.inl 798) (some (AllocBody799_242, 799, 9))

def AllocBody799_244 : StackLang.HolProg 64 :=
.seq AllocBody799_218 AllocBody799_243

def AllocBody799_245 : StackLang.HolProg 64 :=
.seq AllocBody799_217 AllocBody799_244

def AllocBody799_246 : StackLang.HolProg 64 :=
.seq AllocBody799_216 AllocBody799_245

def AllocBody799_247 : StackLang.HolProg 64 :=
.seq AllocBody799_197 AllocBody799_246

def AllocBody799_248 : StackLang.HolProg 64 :=
.seq AllocBody799_194 AllocBody799_247

def AllocBody799_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody799_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody799_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody799_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody799_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody799_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def AllocBody799_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1624#64)))

def AllocBody799_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody799_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3839#64)

def AllocBody799_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody799_261 : StackLang.HolProg 64 :=
.seq AllocBody799_259 AllocBody799_260

def AllocBody799_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody799_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody799_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody799_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 11

def AllocBody799_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody799_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody799_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody799_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody799_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody799_272 : StackLang.HolProg 64 :=
.seq AllocBody799_270 AllocBody799_271

def AllocBody799_273 : StackLang.HolProg 64 :=
.seq AllocBody799_269 AllocBody799_272

def AllocBody799_274 : StackLang.HolProg 64 :=
.seq AllocBody799_268 AllocBody799_273

def AllocBody799_275 : StackLang.HolProg 64 :=
.seq AllocBody799_267 AllocBody799_274

def AllocBody799_276 : StackLang.HolProg 64 :=
.seq AllocBody799_266 AllocBody799_275

def AllocBody799_277 : StackLang.HolProg 64 :=
.seq AllocBody799_265 AllocBody799_276

def AllocBody799_278 : StackLang.HolProg 64 :=
.seq AllocBody799_264 AllocBody799_277

def AllocBody799_279 : StackLang.HolProg 64 :=
.seq AllocBody799_263 AllocBody799_278

def AllocBody799_280 : StackLang.HolProg 64 :=
.seq AllocBody799_262 AllocBody799_279

def AllocBody799_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody799_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody799_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody799_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody799_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody799_288 : StackLang.HolProg 64 :=
.seq AllocBody799_286 AllocBody799_287

def AllocBody799_289 : StackLang.HolProg 64 :=
.seq AllocBody799_285 AllocBody799_288

def AllocBody799_290 : StackLang.HolProg 64 :=
.seq AllocBody799_284 AllocBody799_289

def AllocBody799_291 : StackLang.HolProg 64 :=
.seq AllocBody799_283 AllocBody799_290

def AllocBody799_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody799_293 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody799_294 : StackLang.HolProg 64 :=
.seq AllocBody799_292 AllocBody799_293

def AllocBody799_295 : StackLang.HolProg 64 :=
.call (some (AllocBody799_291, 0, 799, 10)) (Sum.inl 772) (some (AllocBody799_294, 799, 11))

def AllocBody799_296 : StackLang.HolProg 64 :=
.seq AllocBody799_282 AllocBody799_295

def AllocBody799_297 : StackLang.HolProg 64 :=
.seq AllocBody799_281 AllocBody799_296

def AllocBody799_298 : StackLang.HolProg 64 :=
.seq AllocBody799_280 AllocBody799_297

def AllocBody799_299 : StackLang.HolProg 64 :=
.seq AllocBody799_261 AllocBody799_298

def AllocBody799_300 : StackLang.HolProg 64 :=
.seq AllocBody799_258 AllocBody799_299

def AllocBody799_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody799_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody799_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3840#64)

def AllocBody799_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody799_306 : StackLang.HolProg 64 :=
.seq AllocBody799_304 AllocBody799_305

def AllocBody799_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody799_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody799_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody799_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 799 13

def AllocBody799_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody799_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody799_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody799_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody799_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody799_317 : StackLang.HolProg 64 :=
.seq AllocBody799_315 AllocBody799_316

def AllocBody799_318 : StackLang.HolProg 64 :=
.seq AllocBody799_314 AllocBody799_317

def AllocBody799_319 : StackLang.HolProg 64 :=
.seq AllocBody799_313 AllocBody799_318

def AllocBody799_320 : StackLang.HolProg 64 :=
.seq AllocBody799_312 AllocBody799_319

def AllocBody799_321 : StackLang.HolProg 64 :=
.seq AllocBody799_311 AllocBody799_320

def AllocBody799_322 : StackLang.HolProg 64 :=
.seq AllocBody799_310 AllocBody799_321

def AllocBody799_323 : StackLang.HolProg 64 :=
.seq AllocBody799_309 AllocBody799_322

def AllocBody799_324 : StackLang.HolProg 64 :=
.seq AllocBody799_308 AllocBody799_323

def AllocBody799_325 : StackLang.HolProg 64 :=
.seq AllocBody799_307 AllocBody799_324

def AllocBody799_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody799_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody799_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody799_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody799_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody799_333 : StackLang.HolProg 64 :=
.seq AllocBody799_331 AllocBody799_332

def AllocBody799_334 : StackLang.HolProg 64 :=
.seq AllocBody799_330 AllocBody799_333

def AllocBody799_335 : StackLang.HolProg 64 :=
.seq AllocBody799_329 AllocBody799_334

def AllocBody799_336 : StackLang.HolProg 64 :=
.seq AllocBody799_328 AllocBody799_335

def AllocBody799_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody799_338 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody799_339 : StackLang.HolProg 64 :=
.seq AllocBody799_337 AllocBody799_338

def AllocBody799_340 : StackLang.HolProg 64 :=
.call (some (AllocBody799_336, 0, 799, 12)) (Sum.inl 70) (some (AllocBody799_339, 799, 13))

def AllocBody799_341 : StackLang.HolProg 64 :=
.seq AllocBody799_327 AllocBody799_340

def AllocBody799_342 : StackLang.HolProg 64 :=
.seq AllocBody799_326 AllocBody799_341

def AllocBody799_343 : StackLang.HolProg 64 :=
.seq AllocBody799_325 AllocBody799_342

def AllocBody799_344 : StackLang.HolProg 64 :=
.seq AllocBody799_306 AllocBody799_343

def AllocBody799_345 : StackLang.HolProg 64 :=
.seq AllocBody799_303 AllocBody799_344

def AllocBody799_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody799_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody799_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody799_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody799_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody799_351 : StackLang.HolProg 64 :=
.seq AllocBody799_349 AllocBody799_350

def AllocBody799_352 : StackLang.HolProg 64 :=
.seq AllocBody799_348 AllocBody799_351

def AllocBody799_353 : StackLang.HolProg 64 :=
.seq AllocBody799_347 AllocBody799_352

def AllocBody799_354 : StackLang.HolProg 64 :=
.seq AllocBody799_346 AllocBody799_353

def AllocBody799_355 : StackLang.HolProg 64 :=
.seq AllocBody799_345 AllocBody799_354

def AllocBody799_356 : StackLang.HolProg 64 :=
.seq AllocBody799_302 AllocBody799_355

def AllocBody799_357 : StackLang.HolProg 64 :=
.seq AllocBody799_301 AllocBody799_356

def AllocBody799_358 : StackLang.HolProg 64 :=
.seq AllocBody799_300 AllocBody799_357

def AllocBody799_359 : StackLang.HolProg 64 :=
.seq AllocBody799_257 AllocBody799_358

def AllocBody799_360 : StackLang.HolProg 64 :=
.seq AllocBody799_256 AllocBody799_359

def AllocBody799_361 : StackLang.HolProg 64 :=
.seq AllocBody799_255 AllocBody799_360

def AllocBody799_362 : StackLang.HolProg 64 :=
.seq AllocBody799_254 AllocBody799_361

def AllocBody799_363 : StackLang.HolProg 64 :=
.seq AllocBody799_253 AllocBody799_362

def AllocBody799_364 : StackLang.HolProg 64 :=
.seq AllocBody799_252 AllocBody799_363

def AllocBody799_365 : StackLang.HolProg 64 :=
.seq AllocBody799_251 AllocBody799_364

def AllocBody799_366 : StackLang.HolProg 64 :=
.seq AllocBody799_250 AllocBody799_365

def AllocBody799_367 : StackLang.HolProg 64 :=
.seq AllocBody799_249 AllocBody799_366

def AllocBody799_368 : StackLang.HolProg 64 :=
.seq AllocBody799_248 AllocBody799_367

def AllocBody799_369 : StackLang.HolProg 64 :=
.seq AllocBody799_193 AllocBody799_368

def AllocBody799_370 : StackLang.HolProg 64 :=
.seq AllocBody799_190 AllocBody799_369

def AllocBody799_371 : StackLang.HolProg 64 :=
.seq AllocBody799_189 AllocBody799_370

def AllocBody799_372 : StackLang.HolProg 64 :=
.seq AllocBody799_146 AllocBody799_371

def AllocBody799_373 : StackLang.HolProg 64 :=
.seq AllocBody799_143 AllocBody799_372

def AllocBody799_374 : StackLang.HolProg 64 :=
.seq AllocBody799_142 AllocBody799_373

def AllocBody799_375 : StackLang.HolProg 64 :=
.seq AllocBody799_61 AllocBody799_374

def AllocBody799_376 : StackLang.HolProg 64 :=
.seq AllocBody799_60 AllocBody799_375

def AllocBody799_377 : StackLang.HolProg 64 :=
.seq AllocBody799_59 AllocBody799_376

def AllocBody799_378 : StackLang.HolProg 64 :=
.seq AllocBody799_58 AllocBody799_377

def AllocBody799_379 : StackLang.HolProg 64 :=
.seq AllocBody799_15 AllocBody799_378

def AllocBody799_380 : StackLang.HolProg 64 :=
.seq AllocBody799_0 AllocBody799_379

def Alloc799 : Nat × StackLang.HolProg 64 := (799, AllocBody799_380)
theorem Alloc799_eq : StackAlloc.progComp (799, raw799) = Alloc799 := by
  kernel_rfl
#print axioms Alloc799_eq
end InitECandidate.Proofs.BackendStages
