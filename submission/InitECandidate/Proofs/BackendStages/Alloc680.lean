import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw680
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody680_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody680_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody680_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody680_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody680_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody680_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody680_7 : StackLang.HolProg 64 :=
.seq AllocBody680_5 AllocBody680_6

def AllocBody680_8 : StackLang.HolProg 64 :=
.seq AllocBody680_4 AllocBody680_7

def AllocBody680_9 : StackLang.HolProg 64 :=
.seq AllocBody680_3 AllocBody680_8

def AllocBody680_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2794#64)

def AllocBody680_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody680_13 : StackLang.HolProg 64 :=
.seq AllocBody680_11 AllocBody680_12

def AllocBody680_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody680_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody680_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody680_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 680 3

def AllocBody680_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody680_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody680_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody680_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody680_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody680_24 : StackLang.HolProg 64 :=
.seq AllocBody680_22 AllocBody680_23

def AllocBody680_25 : StackLang.HolProg 64 :=
.seq AllocBody680_21 AllocBody680_24

def AllocBody680_26 : StackLang.HolProg 64 :=
.seq AllocBody680_20 AllocBody680_25

def AllocBody680_27 : StackLang.HolProg 64 :=
.seq AllocBody680_19 AllocBody680_26

def AllocBody680_28 : StackLang.HolProg 64 :=
.seq AllocBody680_18 AllocBody680_27

def AllocBody680_29 : StackLang.HolProg 64 :=
.seq AllocBody680_17 AllocBody680_28

def AllocBody680_30 : StackLang.HolProg 64 :=
.seq AllocBody680_16 AllocBody680_29

def AllocBody680_31 : StackLang.HolProg 64 :=
.seq AllocBody680_15 AllocBody680_30

def AllocBody680_32 : StackLang.HolProg 64 :=
.seq AllocBody680_14 AllocBody680_31

def AllocBody680_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody680_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody680_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody680_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody680_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody680_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody680_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody680_42 : StackLang.HolProg 64 :=
.seq AllocBody680_40 AllocBody680_41

def AllocBody680_43 : StackLang.HolProg 64 :=
.seq AllocBody680_39 AllocBody680_42

def AllocBody680_44 : StackLang.HolProg 64 :=
.seq AllocBody680_38 AllocBody680_43

def AllocBody680_45 : StackLang.HolProg 64 :=
.seq AllocBody680_37 AllocBody680_44

def AllocBody680_46 : StackLang.HolProg 64 :=
.seq AllocBody680_36 AllocBody680_45

def AllocBody680_47 : StackLang.HolProg 64 :=
.seq AllocBody680_35 AllocBody680_46

def AllocBody680_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody680_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody680_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody680_51 : StackLang.HolProg 64 :=
.seq AllocBody680_49 AllocBody680_50

def AllocBody680_52 : StackLang.HolProg 64 :=
.seq AllocBody680_48 AllocBody680_51

def AllocBody680_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody680_54 : StackLang.HolProg 64 :=
.seq AllocBody680_52 AllocBody680_53

def AllocBody680_55 : StackLang.HolProg 64 :=
.call (some (AllocBody680_47, 0, 680, 2)) (Sum.inl 679) (some (AllocBody680_54, 680, 3))

def AllocBody680_56 : StackLang.HolProg 64 :=
.seq AllocBody680_34 AllocBody680_55

def AllocBody680_57 : StackLang.HolProg 64 :=
.seq AllocBody680_33 AllocBody680_56

def AllocBody680_58 : StackLang.HolProg 64 :=
.seq AllocBody680_32 AllocBody680_57

def AllocBody680_59 : StackLang.HolProg 64 :=
.seq AllocBody680_13 AllocBody680_58

def AllocBody680_60 : StackLang.HolProg 64 :=
.seq AllocBody680_10 AllocBody680_59

def AllocBody680_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody680_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody680_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody680_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody680_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody680_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody680_67 : StackLang.HolProg 64 :=
.seq AllocBody680_65 AllocBody680_66

def AllocBody680_68 : StackLang.HolProg 64 :=
.seq AllocBody680_64 AllocBody680_67

def AllocBody680_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2795#64)

def AllocBody680_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody680_72 : StackLang.HolProg 64 :=
.seq AllocBody680_70 AllocBody680_71

def AllocBody680_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody680_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody680_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody680_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 680 5

def AllocBody680_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody680_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody680_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody680_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody680_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody680_83 : StackLang.HolProg 64 :=
.seq AllocBody680_81 AllocBody680_82

def AllocBody680_84 : StackLang.HolProg 64 :=
.seq AllocBody680_80 AllocBody680_83

def AllocBody680_85 : StackLang.HolProg 64 :=
.seq AllocBody680_79 AllocBody680_84

def AllocBody680_86 : StackLang.HolProg 64 :=
.seq AllocBody680_78 AllocBody680_85

def AllocBody680_87 : StackLang.HolProg 64 :=
.seq AllocBody680_77 AllocBody680_86

def AllocBody680_88 : StackLang.HolProg 64 :=
.seq AllocBody680_76 AllocBody680_87

def AllocBody680_89 : StackLang.HolProg 64 :=
.seq AllocBody680_75 AllocBody680_88

def AllocBody680_90 : StackLang.HolProg 64 :=
.seq AllocBody680_74 AllocBody680_89

def AllocBody680_91 : StackLang.HolProg 64 :=
.seq AllocBody680_73 AllocBody680_90

def AllocBody680_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody680_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody680_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody680_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody680_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody680_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody680_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody680_101 : StackLang.HolProg 64 :=
.seq AllocBody680_99 AllocBody680_100

def AllocBody680_102 : StackLang.HolProg 64 :=
.seq AllocBody680_98 AllocBody680_101

def AllocBody680_103 : StackLang.HolProg 64 :=
.seq AllocBody680_97 AllocBody680_102

def AllocBody680_104 : StackLang.HolProg 64 :=
.seq AllocBody680_96 AllocBody680_103

def AllocBody680_105 : StackLang.HolProg 64 :=
.seq AllocBody680_95 AllocBody680_104

def AllocBody680_106 : StackLang.HolProg 64 :=
.seq AllocBody680_94 AllocBody680_105

def AllocBody680_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody680_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody680_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody680_110 : StackLang.HolProg 64 :=
.seq AllocBody680_108 AllocBody680_109

def AllocBody680_111 : StackLang.HolProg 64 :=
.seq AllocBody680_107 AllocBody680_110

def AllocBody680_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody680_113 : StackLang.HolProg 64 :=
.seq AllocBody680_111 AllocBody680_112

def AllocBody680_114 : StackLang.HolProg 64 :=
.call (some (AllocBody680_106, 0, 680, 4)) (Sum.inl 679) (some (AllocBody680_113, 680, 5))

def AllocBody680_115 : StackLang.HolProg 64 :=
.seq AllocBody680_93 AllocBody680_114

def AllocBody680_116 : StackLang.HolProg 64 :=
.seq AllocBody680_92 AllocBody680_115

def AllocBody680_117 : StackLang.HolProg 64 :=
.seq AllocBody680_91 AllocBody680_116

def AllocBody680_118 : StackLang.HolProg 64 :=
.seq AllocBody680_72 AllocBody680_117

def AllocBody680_119 : StackLang.HolProg 64 :=
.seq AllocBody680_69 AllocBody680_118

def AllocBody680_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody680_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody680_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody680_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody680_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2796#64)

def AllocBody680_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody680_129 : StackLang.HolProg 64 :=
.seq AllocBody680_127 AllocBody680_128

def AllocBody680_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody680_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody680_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody680_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 680 7

def AllocBody680_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody680_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody680_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody680_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody680_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody680_140 : StackLang.HolProg 64 :=
.seq AllocBody680_138 AllocBody680_139

def AllocBody680_141 : StackLang.HolProg 64 :=
.seq AllocBody680_137 AllocBody680_140

def AllocBody680_142 : StackLang.HolProg 64 :=
.seq AllocBody680_136 AllocBody680_141

def AllocBody680_143 : StackLang.HolProg 64 :=
.seq AllocBody680_135 AllocBody680_142

def AllocBody680_144 : StackLang.HolProg 64 :=
.seq AllocBody680_134 AllocBody680_143

def AllocBody680_145 : StackLang.HolProg 64 :=
.seq AllocBody680_133 AllocBody680_144

def AllocBody680_146 : StackLang.HolProg 64 :=
.seq AllocBody680_132 AllocBody680_145

def AllocBody680_147 : StackLang.HolProg 64 :=
.seq AllocBody680_131 AllocBody680_146

def AllocBody680_148 : StackLang.HolProg 64 :=
.seq AllocBody680_130 AllocBody680_147

def AllocBody680_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody680_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody680_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody680_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody680_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody680_156 : StackLang.HolProg 64 :=
.seq AllocBody680_154 AllocBody680_155

def AllocBody680_157 : StackLang.HolProg 64 :=
.seq AllocBody680_153 AllocBody680_156

def AllocBody680_158 : StackLang.HolProg 64 :=
.seq AllocBody680_152 AllocBody680_157

def AllocBody680_159 : StackLang.HolProg 64 :=
.seq AllocBody680_151 AllocBody680_158

def AllocBody680_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody680_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody680_162 : StackLang.HolProg 64 :=
.seq AllocBody680_160 AllocBody680_161

def AllocBody680_163 : StackLang.HolProg 64 :=
.call (some (AllocBody680_159, 0, 680, 6)) (Sum.inl 678) (some (AllocBody680_162, 680, 7))

def AllocBody680_164 : StackLang.HolProg 64 :=
.seq AllocBody680_150 AllocBody680_163

def AllocBody680_165 : StackLang.HolProg 64 :=
.seq AllocBody680_149 AllocBody680_164

def AllocBody680_166 : StackLang.HolProg 64 :=
.seq AllocBody680_148 AllocBody680_165

def AllocBody680_167 : StackLang.HolProg 64 :=
.seq AllocBody680_129 AllocBody680_166

def AllocBody680_168 : StackLang.HolProg 64 :=
.seq AllocBody680_126 AllocBody680_167

def AllocBody680_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody680_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody680_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody680_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody680_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody680_174 : StackLang.HolProg 64 :=
.seq AllocBody680_172 AllocBody680_173

def AllocBody680_175 : StackLang.HolProg 64 :=
.seq AllocBody680_171 AllocBody680_174

def AllocBody680_176 : StackLang.HolProg 64 :=
.seq AllocBody680_170 AllocBody680_175

def AllocBody680_177 : StackLang.HolProg 64 :=
.seq AllocBody680_169 AllocBody680_176

def AllocBody680_178 : StackLang.HolProg 64 :=
.seq AllocBody680_168 AllocBody680_177

def AllocBody680_179 : StackLang.HolProg 64 :=
.seq AllocBody680_125 AllocBody680_178

def AllocBody680_180 : StackLang.HolProg 64 :=
.seq AllocBody680_124 AllocBody680_179

def AllocBody680_181 : StackLang.HolProg 64 :=
.seq AllocBody680_123 AllocBody680_180

def AllocBody680_182 : StackLang.HolProg 64 :=
.seq AllocBody680_122 AllocBody680_181

def AllocBody680_183 : StackLang.HolProg 64 :=
.seq AllocBody680_121 AllocBody680_182

def AllocBody680_184 : StackLang.HolProg 64 :=
.seq AllocBody680_120 AllocBody680_183

def AllocBody680_185 : StackLang.HolProg 64 :=
.seq AllocBody680_119 AllocBody680_184

def AllocBody680_186 : StackLang.HolProg 64 :=
.seq AllocBody680_68 AllocBody680_185

def AllocBody680_187 : StackLang.HolProg 64 :=
.seq AllocBody680_63 AllocBody680_186

def AllocBody680_188 : StackLang.HolProg 64 :=
.seq AllocBody680_62 AllocBody680_187

def AllocBody680_189 : StackLang.HolProg 64 :=
.seq AllocBody680_61 AllocBody680_188

def AllocBody680_190 : StackLang.HolProg 64 :=
.seq AllocBody680_60 AllocBody680_189

def AllocBody680_191 : StackLang.HolProg 64 :=
.seq AllocBody680_9 AllocBody680_190

def AllocBody680_192 : StackLang.HolProg 64 :=
.seq AllocBody680_2 AllocBody680_191

def AllocBody680_193 : StackLang.HolProg 64 :=
.seq AllocBody680_1 AllocBody680_192

def AllocBody680_194 : StackLang.HolProg 64 :=
.seq AllocBody680_0 AllocBody680_193

def Alloc680 : Nat × StackLang.HolProg 64 := (680, AllocBody680_194)
theorem Alloc680_eq : StackAlloc.progComp (680, raw680) = Alloc680 := by
  kernel_rfl
#print axioms Alloc680_eq
end InitECandidate.Proofs.BackendStages
