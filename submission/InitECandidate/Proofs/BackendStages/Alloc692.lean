import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw692
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody692_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody692_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody692_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody692_3 : StackLang.HolProg 64 :=
.seq AllocBody692_1 AllocBody692_2

def AllocBody692_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 12#64)

def AllocBody692_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody692_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody692_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody692_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody692_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody692_10 : StackLang.HolProg 64 :=
.seq AllocBody692_8 AllocBody692_9

def AllocBody692_11 : StackLang.HolProg 64 :=
.seq AllocBody692_7 AllocBody692_10

def AllocBody692_12 : StackLang.HolProg 64 :=
.seq AllocBody692_6 AllocBody692_11

def AllocBody692_13 : StackLang.HolProg 64 :=
.seq AllocBody692_5 AllocBody692_12

def AllocBody692_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2969#64)

def AllocBody692_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody692_17 : StackLang.HolProg 64 :=
.seq AllocBody692_15 AllocBody692_16

def AllocBody692_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody692_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody692_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody692_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 692 3

def AllocBody692_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody692_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody692_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody692_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody692_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody692_28 : StackLang.HolProg 64 :=
.seq AllocBody692_26 AllocBody692_27

def AllocBody692_29 : StackLang.HolProg 64 :=
.seq AllocBody692_25 AllocBody692_28

def AllocBody692_30 : StackLang.HolProg 64 :=
.seq AllocBody692_24 AllocBody692_29

def AllocBody692_31 : StackLang.HolProg 64 :=
.seq AllocBody692_23 AllocBody692_30

def AllocBody692_32 : StackLang.HolProg 64 :=
.seq AllocBody692_22 AllocBody692_31

def AllocBody692_33 : StackLang.HolProg 64 :=
.seq AllocBody692_21 AllocBody692_32

def AllocBody692_34 : StackLang.HolProg 64 :=
.seq AllocBody692_20 AllocBody692_33

def AllocBody692_35 : StackLang.HolProg 64 :=
.seq AllocBody692_19 AllocBody692_34

def AllocBody692_36 : StackLang.HolProg 64 :=
.seq AllocBody692_18 AllocBody692_35

def AllocBody692_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody692_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody692_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody692_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody692_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody692_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody692_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody692_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody692_47 : StackLang.HolProg 64 :=
.seq AllocBody692_45 AllocBody692_46

def AllocBody692_48 : StackLang.HolProg 64 :=
.seq AllocBody692_44 AllocBody692_47

def AllocBody692_49 : StackLang.HolProg 64 :=
.seq AllocBody692_43 AllocBody692_48

def AllocBody692_50 : StackLang.HolProg 64 :=
.seq AllocBody692_42 AllocBody692_49

def AllocBody692_51 : StackLang.HolProg 64 :=
.seq AllocBody692_41 AllocBody692_50

def AllocBody692_52 : StackLang.HolProg 64 :=
.seq AllocBody692_40 AllocBody692_51

def AllocBody692_53 : StackLang.HolProg 64 :=
.seq AllocBody692_39 AllocBody692_52

def AllocBody692_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody692_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody692_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody692_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody692_58 : StackLang.HolProg 64 :=
.seq AllocBody692_56 AllocBody692_57

def AllocBody692_59 : StackLang.HolProg 64 :=
.seq AllocBody692_55 AllocBody692_58

def AllocBody692_60 : StackLang.HolProg 64 :=
.seq AllocBody692_54 AllocBody692_59

def AllocBody692_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody692_62 : StackLang.HolProg 64 :=
.seq AllocBody692_60 AllocBody692_61

def AllocBody692_63 : StackLang.HolProg 64 :=
.call (some (AllocBody692_53, 0, 692, 2)) (Sum.inl 679) (some (AllocBody692_62, 692, 3))

def AllocBody692_64 : StackLang.HolProg 64 :=
.seq AllocBody692_38 AllocBody692_63

def AllocBody692_65 : StackLang.HolProg 64 :=
.seq AllocBody692_37 AllocBody692_64

def AllocBody692_66 : StackLang.HolProg 64 :=
.seq AllocBody692_36 AllocBody692_65

def AllocBody692_67 : StackLang.HolProg 64 :=
.seq AllocBody692_17 AllocBody692_66

def AllocBody692_68 : StackLang.HolProg 64 :=
.seq AllocBody692_14 AllocBody692_67

def AllocBody692_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody692_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody692_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody692_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody692_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody692_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody692_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody692_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody692_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody692_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody692_86 : StackLang.HolProg 64 :=
.seq AllocBody692_84 AllocBody692_85

def AllocBody692_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody692_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody692_89 : StackLang.HolProg 64 :=
.seq AllocBody692_87 AllocBody692_88

def AllocBody692_90 : StackLang.HolProg 64 :=
.seq AllocBody692_86 AllocBody692_89

def AllocBody692_91 : StackLang.HolProg 64 :=
.seq AllocBody692_83 AllocBody692_90

def AllocBody692_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2970#64)

def AllocBody692_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody692_95 : StackLang.HolProg 64 :=
.seq AllocBody692_93 AllocBody692_94

def AllocBody692_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody692_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody692_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody692_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 692 5

def AllocBody692_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody692_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody692_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody692_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody692_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody692_106 : StackLang.HolProg 64 :=
.seq AllocBody692_104 AllocBody692_105

def AllocBody692_107 : StackLang.HolProg 64 :=
.seq AllocBody692_103 AllocBody692_106

def AllocBody692_108 : StackLang.HolProg 64 :=
.seq AllocBody692_102 AllocBody692_107

def AllocBody692_109 : StackLang.HolProg 64 :=
.seq AllocBody692_101 AllocBody692_108

def AllocBody692_110 : StackLang.HolProg 64 :=
.seq AllocBody692_100 AllocBody692_109

def AllocBody692_111 : StackLang.HolProg 64 :=
.seq AllocBody692_99 AllocBody692_110

def AllocBody692_112 : StackLang.HolProg 64 :=
.seq AllocBody692_98 AllocBody692_111

def AllocBody692_113 : StackLang.HolProg 64 :=
.seq AllocBody692_97 AllocBody692_112

def AllocBody692_114 : StackLang.HolProg 64 :=
.seq AllocBody692_96 AllocBody692_113

def AllocBody692_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody692_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody692_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody692_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody692_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody692_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody692_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody692_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody692_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody692_126 : StackLang.HolProg 64 :=
.seq AllocBody692_124 AllocBody692_125

def AllocBody692_127 : StackLang.HolProg 64 :=
.seq AllocBody692_123 AllocBody692_126

def AllocBody692_128 : StackLang.HolProg 64 :=
.seq AllocBody692_122 AllocBody692_127

def AllocBody692_129 : StackLang.HolProg 64 :=
.seq AllocBody692_121 AllocBody692_128

def AllocBody692_130 : StackLang.HolProg 64 :=
.seq AllocBody692_120 AllocBody692_129

def AllocBody692_131 : StackLang.HolProg 64 :=
.seq AllocBody692_119 AllocBody692_130

def AllocBody692_132 : StackLang.HolProg 64 :=
.seq AllocBody692_118 AllocBody692_131

def AllocBody692_133 : StackLang.HolProg 64 :=
.seq AllocBody692_117 AllocBody692_132

def AllocBody692_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody692_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody692_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody692_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody692_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody692_139 : StackLang.HolProg 64 :=
.seq AllocBody692_137 AllocBody692_138

def AllocBody692_140 : StackLang.HolProg 64 :=
.seq AllocBody692_136 AllocBody692_139

def AllocBody692_141 : StackLang.HolProg 64 :=
.seq AllocBody692_135 AllocBody692_140

def AllocBody692_142 : StackLang.HolProg 64 :=
.seq AllocBody692_134 AllocBody692_141

def AllocBody692_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody692_144 : StackLang.HolProg 64 :=
.seq AllocBody692_142 AllocBody692_143

def AllocBody692_145 : StackLang.HolProg 64 :=
.call (some (AllocBody692_133, 0, 692, 4)) (Sum.inl 669) (some (AllocBody692_144, 692, 5))

def AllocBody692_146 : StackLang.HolProg 64 :=
.seq AllocBody692_116 AllocBody692_145

def AllocBody692_147 : StackLang.HolProg 64 :=
.seq AllocBody692_115 AllocBody692_146

def AllocBody692_148 : StackLang.HolProg 64 :=
.seq AllocBody692_114 AllocBody692_147

def AllocBody692_149 : StackLang.HolProg 64 :=
.seq AllocBody692_95 AllocBody692_148

def AllocBody692_150 : StackLang.HolProg 64 :=
.seq AllocBody692_92 AllocBody692_149

def AllocBody692_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_153 : StackLang.HolProg 64 :=
.seq AllocBody692_151 AllocBody692_152

def AllocBody692_154 : StackLang.HolProg 64 :=
.seq AllocBody692_150 AllocBody692_153

def AllocBody692_155 : StackLang.HolProg 64 :=
.seq AllocBody692_91 AllocBody692_154

def AllocBody692_156 : StackLang.HolProg 64 :=
.seq AllocBody692_82 AllocBody692_155

def AllocBody692_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody692_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody692_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody692_161 : StackLang.HolProg 64 :=
.seq AllocBody692_159 AllocBody692_160

def AllocBody692_162 : StackLang.HolProg 64 :=
.seq AllocBody692_158 AllocBody692_161

def AllocBody692_163 : StackLang.HolProg 64 :=
.seq AllocBody692_157 AllocBody692_162

def AllocBody692_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody692_156 AllocBody692_163

def AllocBody692_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody692_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody692_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody692_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody692_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody692_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody692_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody692_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody692_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody692_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody692_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody692_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def AllocBody692_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody692_185 : StackLang.HolProg 64 :=
.seq AllocBody692_183 AllocBody692_184

def AllocBody692_186 : StackLang.HolProg 64 :=
.seq AllocBody692_182 AllocBody692_185

def AllocBody692_187 : StackLang.HolProg 64 :=
.seq AllocBody692_181 AllocBody692_186

def AllocBody692_188 : StackLang.HolProg 64 :=
.seq AllocBody692_180 AllocBody692_187

def AllocBody692_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2971#64)

def AllocBody692_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody692_192 : StackLang.HolProg 64 :=
.seq AllocBody692_190 AllocBody692_191

def AllocBody692_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody692_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody692_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody692_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 692 7

def AllocBody692_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody692_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody692_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody692_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody692_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody692_203 : StackLang.HolProg 64 :=
.seq AllocBody692_201 AllocBody692_202

def AllocBody692_204 : StackLang.HolProg 64 :=
.seq AllocBody692_200 AllocBody692_203

def AllocBody692_205 : StackLang.HolProg 64 :=
.seq AllocBody692_199 AllocBody692_204

def AllocBody692_206 : StackLang.HolProg 64 :=
.seq AllocBody692_198 AllocBody692_205

def AllocBody692_207 : StackLang.HolProg 64 :=
.seq AllocBody692_197 AllocBody692_206

def AllocBody692_208 : StackLang.HolProg 64 :=
.seq AllocBody692_196 AllocBody692_207

def AllocBody692_209 : StackLang.HolProg 64 :=
.seq AllocBody692_195 AllocBody692_208

def AllocBody692_210 : StackLang.HolProg 64 :=
.seq AllocBody692_194 AllocBody692_209

def AllocBody692_211 : StackLang.HolProg 64 :=
.seq AllocBody692_193 AllocBody692_210

def AllocBody692_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody692_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody692_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody692_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody692_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody692_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody692_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody692_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody692_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody692_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody692_224 : StackLang.HolProg 64 :=
.seq AllocBody692_222 AllocBody692_223

def AllocBody692_225 : StackLang.HolProg 64 :=
.seq AllocBody692_221 AllocBody692_224

def AllocBody692_226 : StackLang.HolProg 64 :=
.seq AllocBody692_220 AllocBody692_225

def AllocBody692_227 : StackLang.HolProg 64 :=
.seq AllocBody692_219 AllocBody692_226

def AllocBody692_228 : StackLang.HolProg 64 :=
.seq AllocBody692_218 AllocBody692_227

def AllocBody692_229 : StackLang.HolProg 64 :=
.seq AllocBody692_217 AllocBody692_228

def AllocBody692_230 : StackLang.HolProg 64 :=
.seq AllocBody692_216 AllocBody692_229

def AllocBody692_231 : StackLang.HolProg 64 :=
.seq AllocBody692_215 AllocBody692_230

def AllocBody692_232 : StackLang.HolProg 64 :=
.seq AllocBody692_214 AllocBody692_231

def AllocBody692_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody692_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody692_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody692_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody692_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody692_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody692_239 : StackLang.HolProg 64 :=
.seq AllocBody692_237 AllocBody692_238

def AllocBody692_240 : StackLang.HolProg 64 :=
.seq AllocBody692_236 AllocBody692_239

def AllocBody692_241 : StackLang.HolProg 64 :=
.seq AllocBody692_235 AllocBody692_240

def AllocBody692_242 : StackLang.HolProg 64 :=
.seq AllocBody692_234 AllocBody692_241

def AllocBody692_243 : StackLang.HolProg 64 :=
.seq AllocBody692_233 AllocBody692_242

def AllocBody692_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody692_245 : StackLang.HolProg 64 :=
.seq AllocBody692_243 AllocBody692_244

def AllocBody692_246 : StackLang.HolProg 64 :=
.call (some (AllocBody692_232, 0, 692, 6)) (Sum.inl 668) (some (AllocBody692_245, 692, 7))

def AllocBody692_247 : StackLang.HolProg 64 :=
.seq AllocBody692_213 AllocBody692_246

def AllocBody692_248 : StackLang.HolProg 64 :=
.seq AllocBody692_212 AllocBody692_247

def AllocBody692_249 : StackLang.HolProg 64 :=
.seq AllocBody692_211 AllocBody692_248

def AllocBody692_250 : StackLang.HolProg 64 :=
.seq AllocBody692_192 AllocBody692_249

def AllocBody692_251 : StackLang.HolProg 64 :=
.seq AllocBody692_189 AllocBody692_250

def AllocBody692_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def AllocBody692_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_255 : StackLang.HolProg 64 :=
.seq AllocBody692_253 AllocBody692_254

def AllocBody692_256 : StackLang.HolProg 64 :=
.seq AllocBody692_252 AllocBody692_255

def AllocBody692_257 : StackLang.HolProg 64 :=
.seq AllocBody692_251 AllocBody692_256

def AllocBody692_258 : StackLang.HolProg 64 :=
.seq AllocBody692_188 AllocBody692_257

def AllocBody692_259 : StackLang.HolProg 64 :=
.seq AllocBody692_179 AllocBody692_258

def AllocBody692_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody692_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody692_263 : StackLang.HolProg 64 :=
.seq AllocBody692_261 AllocBody692_262

def AllocBody692_264 : StackLang.HolProg 64 :=
.seq AllocBody692_260 AllocBody692_263

def AllocBody692_265 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody692_259 AllocBody692_264

def AllocBody692_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody692_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 6

def AllocBody692_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody692_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody692_271 : StackLang.HolProg 64 :=
.seq AllocBody692_269 AllocBody692_270

def AllocBody692_272 : StackLang.HolProg 64 :=
.seq AllocBody692_268 AllocBody692_271

def AllocBody692_273 : StackLang.HolProg 64 :=
.seq AllocBody692_267 AllocBody692_272

def AllocBody692_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody692_275 : StackLang.HolProg 64 :=
.seq AllocBody692_273 AllocBody692_274

def AllocBody692_276 : StackLang.HolProg 64 :=
.seq AllocBody692_266 AllocBody692_275

def AllocBody692_277 : StackLang.HolProg 64 :=
.seq AllocBody692_265 AllocBody692_276

def AllocBody692_278 : StackLang.HolProg 64 :=
.seq AllocBody692_178 AllocBody692_277

def AllocBody692_279 : StackLang.HolProg 64 :=
.seq AllocBody692_177 AllocBody692_278

def AllocBody692_280 : StackLang.HolProg 64 :=
.seq AllocBody692_176 AllocBody692_279

def AllocBody692_281 : StackLang.HolProg 64 :=
.seq AllocBody692_175 AllocBody692_280

def AllocBody692_282 : StackLang.HolProg 64 :=
.seq AllocBody692_174 AllocBody692_281

def AllocBody692_283 : StackLang.HolProg 64 :=
.seq AllocBody692_173 AllocBody692_282

def AllocBody692_284 : StackLang.HolProg 64 :=
.seq AllocBody692_172 AllocBody692_283

def AllocBody692_285 : StackLang.HolProg 64 :=
.seq AllocBody692_171 AllocBody692_284

def AllocBody692_286 : StackLang.HolProg 64 :=
.seq AllocBody692_170 AllocBody692_285

def AllocBody692_287 : StackLang.HolProg 64 :=
.seq AllocBody692_169 AllocBody692_286

def AllocBody692_288 : StackLang.HolProg 64 :=
.seq AllocBody692_168 AllocBody692_287

def AllocBody692_289 : StackLang.HolProg 64 :=
.seq AllocBody692_167 AllocBody692_288

def AllocBody692_290 : StackLang.HolProg 64 :=
.seq AllocBody692_166 AllocBody692_289

def AllocBody692_291 : StackLang.HolProg 64 :=
.seq AllocBody692_165 AllocBody692_290

def AllocBody692_292 : StackLang.HolProg 64 :=
.seq AllocBody692_164 AllocBody692_291

def AllocBody692_293 : StackLang.HolProg 64 :=
.seq AllocBody692_81 AllocBody692_292

def AllocBody692_294 : StackLang.HolProg 64 :=
.seq AllocBody692_80 AllocBody692_293

def AllocBody692_295 : StackLang.HolProg 64 :=
.seq AllocBody692_79 AllocBody692_294

def AllocBody692_296 : StackLang.HolProg 64 :=
.seq AllocBody692_78 AllocBody692_295

def AllocBody692_297 : StackLang.HolProg 64 :=
.seq AllocBody692_77 AllocBody692_296

def AllocBody692_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody692_300 : StackLang.HolProg 64 :=
.seq AllocBody692_298 AllocBody692_299

def AllocBody692_301 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody692_297 AllocBody692_300

def AllocBody692_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def AllocBody692_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody692_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody692_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody692_307 : StackLang.HolProg 64 :=
.seq AllocBody692_305 AllocBody692_306

def AllocBody692_308 : StackLang.HolProg 64 :=
.seq AllocBody692_304 AllocBody692_307

def AllocBody692_309 : StackLang.HolProg 64 :=
.seq AllocBody692_303 AllocBody692_308

def AllocBody692_310 : StackLang.HolProg 64 :=
.seq AllocBody692_302 AllocBody692_309

def AllocBody692_311 : StackLang.HolProg 64 :=
.seq AllocBody692_301 AllocBody692_310

def AllocBody692_312 : StackLang.HolProg 64 :=
.seq AllocBody692_76 AllocBody692_311

def AllocBody692_313 : StackLang.HolProg 64 :=
.seq AllocBody692_75 AllocBody692_312

def AllocBody692_314 : StackLang.HolProg 64 :=
.loop AllocBody692_313

def AllocBody692_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody692_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody692_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody692_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody692_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody692_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody692_321 : StackLang.HolProg 64 :=
.seq AllocBody692_319 AllocBody692_320

def AllocBody692_322 : StackLang.HolProg 64 :=
.seq AllocBody692_318 AllocBody692_321

def AllocBody692_323 : StackLang.HolProg 64 :=
.seq AllocBody692_317 AllocBody692_322

def AllocBody692_324 : StackLang.HolProg 64 :=
.seq AllocBody692_316 AllocBody692_323

def AllocBody692_325 : StackLang.HolProg 64 :=
.seq AllocBody692_315 AllocBody692_324

def AllocBody692_326 : StackLang.HolProg 64 :=
.seq AllocBody692_314 AllocBody692_325

def AllocBody692_327 : StackLang.HolProg 64 :=
.seq AllocBody692_74 AllocBody692_326

def AllocBody692_328 : StackLang.HolProg 64 :=
.seq AllocBody692_73 AllocBody692_327

def AllocBody692_329 : StackLang.HolProg 64 :=
.seq AllocBody692_72 AllocBody692_328

def AllocBody692_330 : StackLang.HolProg 64 :=
.seq AllocBody692_71 AllocBody692_329

def AllocBody692_331 : StackLang.HolProg 64 :=
.seq AllocBody692_70 AllocBody692_330

def AllocBody692_332 : StackLang.HolProg 64 :=
.seq AllocBody692_69 AllocBody692_331

def AllocBody692_333 : StackLang.HolProg 64 :=
.seq AllocBody692_68 AllocBody692_332

def AllocBody692_334 : StackLang.HolProg 64 :=
.seq AllocBody692_13 AllocBody692_333

def AllocBody692_335 : StackLang.HolProg 64 :=
.seq AllocBody692_4 AllocBody692_334

def AllocBody692_336 : StackLang.HolProg 64 :=
.seq AllocBody692_3 AllocBody692_335

def AllocBody692_337 : StackLang.HolProg 64 :=
.seq AllocBody692_0 AllocBody692_336

def Alloc692 : Nat × StackLang.HolProg 64 := (692, AllocBody692_337)
theorem Alloc692_eq : StackAlloc.progComp (692, raw692) = Alloc692 := by
  kernel_rfl
#print axioms Alloc692_eq
end InitECandidate.Proofs.BackendStages
