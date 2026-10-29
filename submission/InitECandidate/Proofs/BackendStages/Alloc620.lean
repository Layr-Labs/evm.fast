import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw620
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody620_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody620_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody620_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 5

def AllocBody620_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def AllocBody620_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody620_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody620_6 : StackLang.HolProg 64 :=
.seq AllocBody620_4 AllocBody620_5

def AllocBody620_7 : StackLang.HolProg 64 :=
.seq AllocBody620_3 AllocBody620_6

def AllocBody620_8 : StackLang.HolProg 64 :=
.seq AllocBody620_2 AllocBody620_7

def AllocBody620_9 : StackLang.HolProg 64 :=
.seq AllocBody620_1 AllocBody620_8

def AllocBody620_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2429#64)

def AllocBody620_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody620_13 : StackLang.HolProg 64 :=
.seq AllocBody620_11 AllocBody620_12

def AllocBody620_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody620_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody620_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody620_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 3

def AllocBody620_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody620_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody620_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody620_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody620_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody620_24 : StackLang.HolProg 64 :=
.seq AllocBody620_22 AllocBody620_23

def AllocBody620_25 : StackLang.HolProg 64 :=
.seq AllocBody620_21 AllocBody620_24

def AllocBody620_26 : StackLang.HolProg 64 :=
.seq AllocBody620_20 AllocBody620_25

def AllocBody620_27 : StackLang.HolProg 64 :=
.seq AllocBody620_19 AllocBody620_26

def AllocBody620_28 : StackLang.HolProg 64 :=
.seq AllocBody620_18 AllocBody620_27

def AllocBody620_29 : StackLang.HolProg 64 :=
.seq AllocBody620_17 AllocBody620_28

def AllocBody620_30 : StackLang.HolProg 64 :=
.seq AllocBody620_16 AllocBody620_29

def AllocBody620_31 : StackLang.HolProg 64 :=
.seq AllocBody620_15 AllocBody620_30

def AllocBody620_32 : StackLang.HolProg 64 :=
.seq AllocBody620_14 AllocBody620_31

def AllocBody620_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody620_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody620_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody620_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody620_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody620_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody620_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody620_42 : StackLang.HolProg 64 :=
.seq AllocBody620_40 AllocBody620_41

def AllocBody620_43 : StackLang.HolProg 64 :=
.seq AllocBody620_39 AllocBody620_42

def AllocBody620_44 : StackLang.HolProg 64 :=
.seq AllocBody620_38 AllocBody620_43

def AllocBody620_45 : StackLang.HolProg 64 :=
.seq AllocBody620_37 AllocBody620_44

def AllocBody620_46 : StackLang.HolProg 64 :=
.seq AllocBody620_36 AllocBody620_45

def AllocBody620_47 : StackLang.HolProg 64 :=
.seq AllocBody620_35 AllocBody620_46

def AllocBody620_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody620_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody620_50 : StackLang.HolProg 64 :=
.seq AllocBody620_48 AllocBody620_49

def AllocBody620_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody620_52 : StackLang.HolProg 64 :=
.seq AllocBody620_50 AllocBody620_51

def AllocBody620_53 : StackLang.HolProg 64 :=
.call (some (AllocBody620_47, 0, 620, 2)) (Sum.inl 102) (some (AllocBody620_52, 620, 3))

def AllocBody620_54 : StackLang.HolProg 64 :=
.seq AllocBody620_34 AllocBody620_53

def AllocBody620_55 : StackLang.HolProg 64 :=
.seq AllocBody620_33 AllocBody620_54

def AllocBody620_56 : StackLang.HolProg 64 :=
.seq AllocBody620_32 AllocBody620_55

def AllocBody620_57 : StackLang.HolProg 64 :=
.seq AllocBody620_13 AllocBody620_56

def AllocBody620_58 : StackLang.HolProg 64 :=
.seq AllocBody620_10 AllocBody620_57

def AllocBody620_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody620_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody620_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2300#64)

def AllocBody620_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody620_66 : StackLang.HolProg 64 :=
.seq AllocBody620_64 AllocBody620_65

def AllocBody620_67 : StackLang.HolProg 64 :=
.seq AllocBody620_63 AllocBody620_66

def AllocBody620_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody620_70 : StackLang.HolProg 64 :=
.seq AllocBody620_68 AllocBody620_69

def AllocBody620_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody620_67 AllocBody620_70

def AllocBody620_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody620_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody620_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody620_76 : StackLang.HolProg 64 :=
.seq AllocBody620_74 AllocBody620_75

def AllocBody620_77 : StackLang.HolProg 64 :=
.seq AllocBody620_73 AllocBody620_76

def AllocBody620_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2430#64)

def AllocBody620_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody620_81 : StackLang.HolProg 64 :=
.seq AllocBody620_79 AllocBody620_80

def AllocBody620_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody620_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody620_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody620_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 5

def AllocBody620_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody620_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody620_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody620_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody620_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody620_92 : StackLang.HolProg 64 :=
.seq AllocBody620_90 AllocBody620_91

def AllocBody620_93 : StackLang.HolProg 64 :=
.seq AllocBody620_89 AllocBody620_92

def AllocBody620_94 : StackLang.HolProg 64 :=
.seq AllocBody620_88 AllocBody620_93

def AllocBody620_95 : StackLang.HolProg 64 :=
.seq AllocBody620_87 AllocBody620_94

def AllocBody620_96 : StackLang.HolProg 64 :=
.seq AllocBody620_86 AllocBody620_95

def AllocBody620_97 : StackLang.HolProg 64 :=
.seq AllocBody620_85 AllocBody620_96

def AllocBody620_98 : StackLang.HolProg 64 :=
.seq AllocBody620_84 AllocBody620_97

def AllocBody620_99 : StackLang.HolProg 64 :=
.seq AllocBody620_83 AllocBody620_98

def AllocBody620_100 : StackLang.HolProg 64 :=
.seq AllocBody620_82 AllocBody620_99

def AllocBody620_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody620_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody620_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody620_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody620_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody620_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody620_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody620_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody620_111 : StackLang.HolProg 64 :=
.seq AllocBody620_109 AllocBody620_110

def AllocBody620_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody620_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody620_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody620_115 : StackLang.HolProg 64 :=
.seq AllocBody620_113 AllocBody620_114

def AllocBody620_116 : StackLang.HolProg 64 :=
.seq AllocBody620_112 AllocBody620_115

def AllocBody620_117 : StackLang.HolProg 64 :=
.seq AllocBody620_111 AllocBody620_116

def AllocBody620_118 : StackLang.HolProg 64 :=
.seq AllocBody620_108 AllocBody620_117

def AllocBody620_119 : StackLang.HolProg 64 :=
.seq AllocBody620_107 AllocBody620_118

def AllocBody620_120 : StackLang.HolProg 64 :=
.seq AllocBody620_106 AllocBody620_119

def AllocBody620_121 : StackLang.HolProg 64 :=
.seq AllocBody620_105 AllocBody620_120

def AllocBody620_122 : StackLang.HolProg 64 :=
.seq AllocBody620_104 AllocBody620_121

def AllocBody620_123 : StackLang.HolProg 64 :=
.seq AllocBody620_103 AllocBody620_122

def AllocBody620_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody620_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody620_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody620_127 : StackLang.HolProg 64 :=
.seq AllocBody620_125 AllocBody620_126

def AllocBody620_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody620_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody620_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody620_131 : StackLang.HolProg 64 :=
.seq AllocBody620_129 AllocBody620_130

def AllocBody620_132 : StackLang.HolProg 64 :=
.seq AllocBody620_128 AllocBody620_131

def AllocBody620_133 : StackLang.HolProg 64 :=
.seq AllocBody620_127 AllocBody620_132

def AllocBody620_134 : StackLang.HolProg 64 :=
.seq AllocBody620_124 AllocBody620_133

def AllocBody620_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody620_136 : StackLang.HolProg 64 :=
.seq AllocBody620_134 AllocBody620_135

def AllocBody620_137 : StackLang.HolProg 64 :=
.call (some (AllocBody620_123, 0, 620, 4)) (Sum.inl 463) (some (AllocBody620_136, 620, 5))

def AllocBody620_138 : StackLang.HolProg 64 :=
.seq AllocBody620_102 AllocBody620_137

def AllocBody620_139 : StackLang.HolProg 64 :=
.seq AllocBody620_101 AllocBody620_138

def AllocBody620_140 : StackLang.HolProg 64 :=
.seq AllocBody620_100 AllocBody620_139

def AllocBody620_141 : StackLang.HolProg 64 :=
.seq AllocBody620_81 AllocBody620_140

def AllocBody620_142 : StackLang.HolProg 64 :=
.seq AllocBody620_78 AllocBody620_141

def AllocBody620_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody620_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody620_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody620_149 : StackLang.HolProg 64 :=
.seq AllocBody620_147 AllocBody620_148

def AllocBody620_150 : StackLang.HolProg 64 :=
.seq AllocBody620_146 AllocBody620_149

def AllocBody620_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2431#64)

def AllocBody620_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody620_154 : StackLang.HolProg 64 :=
.seq AllocBody620_152 AllocBody620_153

def AllocBody620_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody620_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody620_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody620_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 7

def AllocBody620_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody620_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody620_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody620_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody620_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody620_165 : StackLang.HolProg 64 :=
.seq AllocBody620_163 AllocBody620_164

def AllocBody620_166 : StackLang.HolProg 64 :=
.seq AllocBody620_162 AllocBody620_165

def AllocBody620_167 : StackLang.HolProg 64 :=
.seq AllocBody620_161 AllocBody620_166

def AllocBody620_168 : StackLang.HolProg 64 :=
.seq AllocBody620_160 AllocBody620_167

def AllocBody620_169 : StackLang.HolProg 64 :=
.seq AllocBody620_159 AllocBody620_168

def AllocBody620_170 : StackLang.HolProg 64 :=
.seq AllocBody620_158 AllocBody620_169

def AllocBody620_171 : StackLang.HolProg 64 :=
.seq AllocBody620_157 AllocBody620_170

def AllocBody620_172 : StackLang.HolProg 64 :=
.seq AllocBody620_156 AllocBody620_171

def AllocBody620_173 : StackLang.HolProg 64 :=
.seq AllocBody620_155 AllocBody620_172

def AllocBody620_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody620_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody620_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody620_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody620_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody620_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody620_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody620_183 : StackLang.HolProg 64 :=
.seq AllocBody620_181 AllocBody620_182

def AllocBody620_184 : StackLang.HolProg 64 :=
.seq AllocBody620_180 AllocBody620_183

def AllocBody620_185 : StackLang.HolProg 64 :=
.seq AllocBody620_179 AllocBody620_184

def AllocBody620_186 : StackLang.HolProg 64 :=
.seq AllocBody620_178 AllocBody620_185

def AllocBody620_187 : StackLang.HolProg 64 :=
.seq AllocBody620_177 AllocBody620_186

def AllocBody620_188 : StackLang.HolProg 64 :=
.seq AllocBody620_176 AllocBody620_187

def AllocBody620_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody620_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody620_191 : StackLang.HolProg 64 :=
.seq AllocBody620_189 AllocBody620_190

def AllocBody620_192 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody620_193 : StackLang.HolProg 64 :=
.seq AllocBody620_191 AllocBody620_192

def AllocBody620_194 : StackLang.HolProg 64 :=
.call (some (AllocBody620_188, 0, 620, 6)) (Sum.inl 463) (some (AllocBody620_193, 620, 7))

def AllocBody620_195 : StackLang.HolProg 64 :=
.seq AllocBody620_175 AllocBody620_194

def AllocBody620_196 : StackLang.HolProg 64 :=
.seq AllocBody620_174 AllocBody620_195

def AllocBody620_197 : StackLang.HolProg 64 :=
.seq AllocBody620_173 AllocBody620_196

def AllocBody620_198 : StackLang.HolProg 64 :=
.seq AllocBody620_154 AllocBody620_197

def AllocBody620_199 : StackLang.HolProg 64 :=
.seq AllocBody620_151 AllocBody620_198

def AllocBody620_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody620_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody620_203 : StackLang.HolProg 64 :=
.seq AllocBody620_201 AllocBody620_202

def AllocBody620_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2432#64)

def AllocBody620_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody620_207 : StackLang.HolProg 64 :=
.seq AllocBody620_205 AllocBody620_206

def AllocBody620_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody620_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody620_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody620_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 9

def AllocBody620_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody620_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody620_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody620_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody620_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody620_218 : StackLang.HolProg 64 :=
.seq AllocBody620_216 AllocBody620_217

def AllocBody620_219 : StackLang.HolProg 64 :=
.seq AllocBody620_215 AllocBody620_218

def AllocBody620_220 : StackLang.HolProg 64 :=
.seq AllocBody620_214 AllocBody620_219

def AllocBody620_221 : StackLang.HolProg 64 :=
.seq AllocBody620_213 AllocBody620_220

def AllocBody620_222 : StackLang.HolProg 64 :=
.seq AllocBody620_212 AllocBody620_221

def AllocBody620_223 : StackLang.HolProg 64 :=
.seq AllocBody620_211 AllocBody620_222

def AllocBody620_224 : StackLang.HolProg 64 :=
.seq AllocBody620_210 AllocBody620_223

def AllocBody620_225 : StackLang.HolProg 64 :=
.seq AllocBody620_209 AllocBody620_224

def AllocBody620_226 : StackLang.HolProg 64 :=
.seq AllocBody620_208 AllocBody620_225

def AllocBody620_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody620_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody620_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody620_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody620_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody620_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody620_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody620_236 : StackLang.HolProg 64 :=
.seq AllocBody620_234 AllocBody620_235

def AllocBody620_237 : StackLang.HolProg 64 :=
.seq AllocBody620_233 AllocBody620_236

def AllocBody620_238 : StackLang.HolProg 64 :=
.seq AllocBody620_232 AllocBody620_237

def AllocBody620_239 : StackLang.HolProg 64 :=
.seq AllocBody620_231 AllocBody620_238

def AllocBody620_240 : StackLang.HolProg 64 :=
.seq AllocBody620_230 AllocBody620_239

def AllocBody620_241 : StackLang.HolProg 64 :=
.seq AllocBody620_229 AllocBody620_240

def AllocBody620_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody620_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody620_244 : StackLang.HolProg 64 :=
.seq AllocBody620_242 AllocBody620_243

def AllocBody620_245 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody620_246 : StackLang.HolProg 64 :=
.seq AllocBody620_244 AllocBody620_245

def AllocBody620_247 : StackLang.HolProg 64 :=
.call (some (AllocBody620_241, 0, 620, 8)) (Sum.inl 463) (some (AllocBody620_246, 620, 9))

def AllocBody620_248 : StackLang.HolProg 64 :=
.seq AllocBody620_228 AllocBody620_247

def AllocBody620_249 : StackLang.HolProg 64 :=
.seq AllocBody620_227 AllocBody620_248

def AllocBody620_250 : StackLang.HolProg 64 :=
.seq AllocBody620_226 AllocBody620_249

def AllocBody620_251 : StackLang.HolProg 64 :=
.seq AllocBody620_207 AllocBody620_250

def AllocBody620_252 : StackLang.HolProg 64 :=
.seq AllocBody620_204 AllocBody620_251

def AllocBody620_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody620_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody620_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def AllocBody620_257 : StackLang.HolProg 64 :=
.seq AllocBody620_255 AllocBody620_256

def AllocBody620_258 : StackLang.HolProg 64 :=
.seq AllocBody620_254 AllocBody620_257

def AllocBody620_259 : StackLang.HolProg 64 :=
.seq AllocBody620_253 AllocBody620_258

def AllocBody620_260 : StackLang.HolProg 64 :=
.seq AllocBody620_252 AllocBody620_259

def AllocBody620_261 : StackLang.HolProg 64 :=
.seq AllocBody620_203 AllocBody620_260

def AllocBody620_262 : StackLang.HolProg 64 :=
.seq AllocBody620_200 AllocBody620_261

def AllocBody620_263 : StackLang.HolProg 64 :=
.seq AllocBody620_199 AllocBody620_262

def AllocBody620_264 : StackLang.HolProg 64 :=
.seq AllocBody620_150 AllocBody620_263

def AllocBody620_265 : StackLang.HolProg 64 :=
.seq AllocBody620_145 AllocBody620_264

def AllocBody620_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody620_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody620_268 : StackLang.HolProg 64 :=
.seq AllocBody620_266 AllocBody620_267

def AllocBody620_269 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody620_265 AllocBody620_268

def AllocBody620_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody620_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody620_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody620_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody620_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody620_282 : StackLang.HolProg 64 :=
.seq AllocBody620_280 AllocBody620_281

def AllocBody620_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_285 : StackLang.HolProg 64 :=
.seq AllocBody620_283 AllocBody620_284

def AllocBody620_286 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody620_282 AllocBody620_285

def AllocBody620_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody620_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody620_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody620_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody620_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody620_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def AllocBody620_295 : StackLang.HolProg 64 :=
.seq AllocBody620_293 AllocBody620_294

def AllocBody620_296 : StackLang.HolProg 64 :=
.seq AllocBody620_292 AllocBody620_295

def AllocBody620_297 : StackLang.HolProg 64 :=
.seq AllocBody620_291 AllocBody620_296

def AllocBody620_298 : StackLang.HolProg 64 :=
.seq AllocBody620_290 AllocBody620_297

def AllocBody620_299 : StackLang.HolProg 64 :=
.seq AllocBody620_289 AllocBody620_298

def AllocBody620_300 : StackLang.HolProg 64 :=
.seq AllocBody620_288 AllocBody620_299

def AllocBody620_301 : StackLang.HolProg 64 :=
.seq AllocBody620_287 AllocBody620_300

def AllocBody620_302 : StackLang.HolProg 64 :=
.seq AllocBody620_286 AllocBody620_301

def AllocBody620_303 : StackLang.HolProg 64 :=
.seq AllocBody620_279 AllocBody620_302

def AllocBody620_304 : StackLang.HolProg 64 :=
.seq AllocBody620_278 AllocBody620_303

def AllocBody620_305 : StackLang.HolProg 64 :=
.seq AllocBody620_277 AllocBody620_304

def AllocBody620_306 : StackLang.HolProg 64 :=
.seq AllocBody620_276 AllocBody620_305

def AllocBody620_307 : StackLang.HolProg 64 :=
.seq AllocBody620_275 AllocBody620_306

def AllocBody620_308 : StackLang.HolProg 64 :=
.seq AllocBody620_274 AllocBody620_307

def AllocBody620_309 : StackLang.HolProg 64 :=
.seq AllocBody620_273 AllocBody620_308

def AllocBody620_310 : StackLang.HolProg 64 :=
.seq AllocBody620_272 AllocBody620_309

def AllocBody620_311 : StackLang.HolProg 64 :=
.seq AllocBody620_271 AllocBody620_310

def AllocBody620_312 : StackLang.HolProg 64 :=
.seq AllocBody620_270 AllocBody620_311

def AllocBody620_313 : StackLang.HolProg 64 :=
.seq AllocBody620_269 AllocBody620_312

def AllocBody620_314 : StackLang.HolProg 64 :=
.seq AllocBody620_144 AllocBody620_313

def AllocBody620_315 : StackLang.HolProg 64 :=
.seq AllocBody620_143 AllocBody620_314

def AllocBody620_316 : StackLang.HolProg 64 :=
.seq AllocBody620_142 AllocBody620_315

def AllocBody620_317 : StackLang.HolProg 64 :=
.seq AllocBody620_77 AllocBody620_316

def AllocBody620_318 : StackLang.HolProg 64 :=
.seq AllocBody620_72 AllocBody620_317

def AllocBody620_319 : StackLang.HolProg 64 :=
.seq AllocBody620_71 AllocBody620_318

def AllocBody620_320 : StackLang.HolProg 64 :=
.seq AllocBody620_62 AllocBody620_319

def AllocBody620_321 : StackLang.HolProg 64 :=
.seq AllocBody620_61 AllocBody620_320

def AllocBody620_322 : StackLang.HolProg 64 :=
.seq AllocBody620_60 AllocBody620_321

def AllocBody620_323 : StackLang.HolProg 64 :=
.seq AllocBody620_59 AllocBody620_322

def AllocBody620_324 : StackLang.HolProg 64 :=
.seq AllocBody620_58 AllocBody620_323

def AllocBody620_325 : StackLang.HolProg 64 :=
.seq AllocBody620_9 AllocBody620_324

def AllocBody620_326 : StackLang.HolProg 64 :=
.seq AllocBody620_0 AllocBody620_325

def Alloc620 : Nat × StackLang.HolProg 64 := (620, AllocBody620_326)
theorem Alloc620_eq : StackAlloc.progComp (620, raw620) = Alloc620 := by
  kernel_rfl
#print axioms Alloc620_eq
end InitECandidate.Proofs.BackendStages
