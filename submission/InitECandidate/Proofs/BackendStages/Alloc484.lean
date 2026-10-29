import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw484
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody484_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody484_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody484_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody484_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody484_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody484_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody484_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody484_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody484_11 : StackLang.HolProg 64 :=
.seq AllocBody484_9 AllocBody484_10

def AllocBody484_12 : StackLang.HolProg 64 :=
.seq AllocBody484_8 AllocBody484_11

def AllocBody484_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody484_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody484_15 : StackLang.HolProg 64 :=
.seq AllocBody484_13 AllocBody484_14

def AllocBody484_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody484_12 AllocBody484_15

def AllocBody484_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody484_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody484_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody484_20 : StackLang.HolProg 64 :=
.seq AllocBody484_18 AllocBody484_19

def AllocBody484_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody484_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody484_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody484_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody484_25 : StackLang.HolProg 64 :=
.seq AllocBody484_23 AllocBody484_24

def AllocBody484_26 : StackLang.HolProg 64 :=
.seq AllocBody484_22 AllocBody484_25

def AllocBody484_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1521#64)

def AllocBody484_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody484_30 : StackLang.HolProg 64 :=
.seq AllocBody484_28 AllocBody484_29

def AllocBody484_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody484_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody484_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody484_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 484 3

def AllocBody484_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody484_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody484_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody484_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody484_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody484_41 : StackLang.HolProg 64 :=
.seq AllocBody484_39 AllocBody484_40

def AllocBody484_42 : StackLang.HolProg 64 :=
.seq AllocBody484_38 AllocBody484_41

def AllocBody484_43 : StackLang.HolProg 64 :=
.seq AllocBody484_37 AllocBody484_42

def AllocBody484_44 : StackLang.HolProg 64 :=
.seq AllocBody484_36 AllocBody484_43

def AllocBody484_45 : StackLang.HolProg 64 :=
.seq AllocBody484_35 AllocBody484_44

def AllocBody484_46 : StackLang.HolProg 64 :=
.seq AllocBody484_34 AllocBody484_45

def AllocBody484_47 : StackLang.HolProg 64 :=
.seq AllocBody484_33 AllocBody484_46

def AllocBody484_48 : StackLang.HolProg 64 :=
.seq AllocBody484_32 AllocBody484_47

def AllocBody484_49 : StackLang.HolProg 64 :=
.seq AllocBody484_31 AllocBody484_48

def AllocBody484_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody484_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody484_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody484_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody484_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody484_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody484_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody484_59 : StackLang.HolProg 64 :=
.seq AllocBody484_57 AllocBody484_58

def AllocBody484_60 : StackLang.HolProg 64 :=
.seq AllocBody484_56 AllocBody484_59

def AllocBody484_61 : StackLang.HolProg 64 :=
.seq AllocBody484_55 AllocBody484_60

def AllocBody484_62 : StackLang.HolProg 64 :=
.seq AllocBody484_54 AllocBody484_61

def AllocBody484_63 : StackLang.HolProg 64 :=
.seq AllocBody484_53 AllocBody484_62

def AllocBody484_64 : StackLang.HolProg 64 :=
.seq AllocBody484_52 AllocBody484_63

def AllocBody484_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody484_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody484_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody484_68 : StackLang.HolProg 64 :=
.seq AllocBody484_66 AllocBody484_67

def AllocBody484_69 : StackLang.HolProg 64 :=
.seq AllocBody484_65 AllocBody484_68

def AllocBody484_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody484_71 : StackLang.HolProg 64 :=
.seq AllocBody484_69 AllocBody484_70

def AllocBody484_72 : StackLang.HolProg 64 :=
.call (some (AllocBody484_64, 0, 484, 2)) (Sum.inl 77) (some (AllocBody484_71, 484, 3))

def AllocBody484_73 : StackLang.HolProg 64 :=
.seq AllocBody484_51 AllocBody484_72

def AllocBody484_74 : StackLang.HolProg 64 :=
.seq AllocBody484_50 AllocBody484_73

def AllocBody484_75 : StackLang.HolProg 64 :=
.seq AllocBody484_49 AllocBody484_74

def AllocBody484_76 : StackLang.HolProg 64 :=
.seq AllocBody484_30 AllocBody484_75

def AllocBody484_77 : StackLang.HolProg 64 :=
.seq AllocBody484_27 AllocBody484_76

def AllocBody484_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody484_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_80 : StackLang.HolProg 64 :=
.seq AllocBody484_78 AllocBody484_79

def AllocBody484_81 : StackLang.HolProg 64 :=
.seq AllocBody484_77 AllocBody484_80

def AllocBody484_82 : StackLang.HolProg 64 :=
.seq AllocBody484_26 AllocBody484_81

def AllocBody484_83 : StackLang.HolProg 64 :=
.seq AllocBody484_21 AllocBody484_82

def AllocBody484_84 : StackLang.HolProg 64 :=
.seq AllocBody484_20 AllocBody484_83

def AllocBody484_85 : StackLang.HolProg 64 :=
.seq AllocBody484_17 AllocBody484_84

def AllocBody484_86 : StackLang.HolProg 64 :=
.seq AllocBody484_16 AllocBody484_85

def AllocBody484_87 : StackLang.HolProg 64 :=
.seq AllocBody484_7 AllocBody484_86

def AllocBody484_88 : StackLang.HolProg 64 :=
.seq AllocBody484_6 AllocBody484_87

def AllocBody484_89 : StackLang.HolProg 64 :=
.seq AllocBody484_5 AllocBody484_88

def AllocBody484_90 : StackLang.HolProg 64 :=
.seq AllocBody484_4 AllocBody484_89

def AllocBody484_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody484_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody484_93 : StackLang.HolProg 64 :=
.seq AllocBody484_91 AllocBody484_92

def AllocBody484_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody484_90 AllocBody484_93

def AllocBody484_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody484_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody484_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody484_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1522#64)

def AllocBody484_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody484_104 : StackLang.HolProg 64 :=
.seq AllocBody484_102 AllocBody484_103

def AllocBody484_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody484_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody484_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody484_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 484 5

def AllocBody484_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody484_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody484_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody484_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody484_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody484_115 : StackLang.HolProg 64 :=
.seq AllocBody484_113 AllocBody484_114

def AllocBody484_116 : StackLang.HolProg 64 :=
.seq AllocBody484_112 AllocBody484_115

def AllocBody484_117 : StackLang.HolProg 64 :=
.seq AllocBody484_111 AllocBody484_116

def AllocBody484_118 : StackLang.HolProg 64 :=
.seq AllocBody484_110 AllocBody484_117

def AllocBody484_119 : StackLang.HolProg 64 :=
.seq AllocBody484_109 AllocBody484_118

def AllocBody484_120 : StackLang.HolProg 64 :=
.seq AllocBody484_108 AllocBody484_119

def AllocBody484_121 : StackLang.HolProg 64 :=
.seq AllocBody484_107 AllocBody484_120

def AllocBody484_122 : StackLang.HolProg 64 :=
.seq AllocBody484_106 AllocBody484_121

def AllocBody484_123 : StackLang.HolProg 64 :=
.seq AllocBody484_105 AllocBody484_122

def AllocBody484_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody484_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody484_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody484_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody484_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody484_131 : StackLang.HolProg 64 :=
.seq AllocBody484_129 AllocBody484_130

def AllocBody484_132 : StackLang.HolProg 64 :=
.seq AllocBody484_128 AllocBody484_131

def AllocBody484_133 : StackLang.HolProg 64 :=
.seq AllocBody484_127 AllocBody484_132

def AllocBody484_134 : StackLang.HolProg 64 :=
.seq AllocBody484_126 AllocBody484_133

def AllocBody484_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody484_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody484_137 : StackLang.HolProg 64 :=
.seq AllocBody484_135 AllocBody484_136

def AllocBody484_138 : StackLang.HolProg 64 :=
.call (some (AllocBody484_134, 0, 484, 4)) (Sum.inl 78) (some (AllocBody484_137, 484, 5))

def AllocBody484_139 : StackLang.HolProg 64 :=
.seq AllocBody484_125 AllocBody484_138

def AllocBody484_140 : StackLang.HolProg 64 :=
.seq AllocBody484_124 AllocBody484_139

def AllocBody484_141 : StackLang.HolProg 64 :=
.seq AllocBody484_123 AllocBody484_140

def AllocBody484_142 : StackLang.HolProg 64 :=
.seq AllocBody484_104 AllocBody484_141

def AllocBody484_143 : StackLang.HolProg 64 :=
.seq AllocBody484_101 AllocBody484_142

def AllocBody484_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody484_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody484_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody484_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody484_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody484_149 : StackLang.HolProg 64 :=
.seq AllocBody484_147 AllocBody484_148

def AllocBody484_150 : StackLang.HolProg 64 :=
.seq AllocBody484_146 AllocBody484_149

def AllocBody484_151 : StackLang.HolProg 64 :=
.seq AllocBody484_145 AllocBody484_150

def AllocBody484_152 : StackLang.HolProg 64 :=
.seq AllocBody484_144 AllocBody484_151

def AllocBody484_153 : StackLang.HolProg 64 :=
.seq AllocBody484_143 AllocBody484_152

def AllocBody484_154 : StackLang.HolProg 64 :=
.seq AllocBody484_100 AllocBody484_153

def AllocBody484_155 : StackLang.HolProg 64 :=
.seq AllocBody484_99 AllocBody484_154

def AllocBody484_156 : StackLang.HolProg 64 :=
.seq AllocBody484_98 AllocBody484_155

def AllocBody484_157 : StackLang.HolProg 64 :=
.seq AllocBody484_97 AllocBody484_156

def AllocBody484_158 : StackLang.HolProg 64 :=
.seq AllocBody484_96 AllocBody484_157

def AllocBody484_159 : StackLang.HolProg 64 :=
.seq AllocBody484_95 AllocBody484_158

def AllocBody484_160 : StackLang.HolProg 64 :=
.seq AllocBody484_94 AllocBody484_159

def AllocBody484_161 : StackLang.HolProg 64 :=
.seq AllocBody484_3 AllocBody484_160

def AllocBody484_162 : StackLang.HolProg 64 :=
.seq AllocBody484_2 AllocBody484_161

def AllocBody484_163 : StackLang.HolProg 64 :=
.seq AllocBody484_1 AllocBody484_162

def AllocBody484_164 : StackLang.HolProg 64 :=
.seq AllocBody484_0 AllocBody484_163

def Alloc484 : Nat × StackLang.HolProg 64 := (484, AllocBody484_164)
theorem Alloc484_eq : StackAlloc.progComp (484, raw484) = Alloc484 := by
  kernel_rfl
#print axioms Alloc484_eq
end InitECandidate.Proofs.BackendStages
