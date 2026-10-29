import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw364
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody364_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody364_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody364_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody364_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody364_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody364_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody364_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody364_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody364_9 : StackLang.HolProg 64 :=
.seq AllocBody364_7 AllocBody364_8

def AllocBody364_10 : StackLang.HolProg 64 :=
.seq AllocBody364_6 AllocBody364_9

def AllocBody364_11 : StackLang.HolProg 64 :=
.seq AllocBody364_5 AllocBody364_10

def AllocBody364_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody364_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 120#64)

def AllocBody364_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody364_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody364_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody364_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody364_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody364_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def AllocBody364_23 : StackLang.HolProg 64 :=
.seq AllocBody364_21 AllocBody364_22

def AllocBody364_24 : StackLang.HolProg 64 :=
.seq AllocBody364_20 AllocBody364_23

def AllocBody364_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1049#64)

def AllocBody364_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody364_28 : StackLang.HolProg 64 :=
.seq AllocBody364_26 AllocBody364_27

def AllocBody364_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody364_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody364_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody364_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 364 3

def AllocBody364_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody364_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody364_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody364_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody364_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody364_39 : StackLang.HolProg 64 :=
.seq AllocBody364_37 AllocBody364_38

def AllocBody364_40 : StackLang.HolProg 64 :=
.seq AllocBody364_36 AllocBody364_39

def AllocBody364_41 : StackLang.HolProg 64 :=
.seq AllocBody364_35 AllocBody364_40

def AllocBody364_42 : StackLang.HolProg 64 :=
.seq AllocBody364_34 AllocBody364_41

def AllocBody364_43 : StackLang.HolProg 64 :=
.seq AllocBody364_33 AllocBody364_42

def AllocBody364_44 : StackLang.HolProg 64 :=
.seq AllocBody364_32 AllocBody364_43

def AllocBody364_45 : StackLang.HolProg 64 :=
.seq AllocBody364_31 AllocBody364_44

def AllocBody364_46 : StackLang.HolProg 64 :=
.seq AllocBody364_30 AllocBody364_45

def AllocBody364_47 : StackLang.HolProg 64 :=
.seq AllocBody364_29 AllocBody364_46

def AllocBody364_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody364_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody364_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody364_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody364_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody364_55 : StackLang.HolProg 64 :=
.seq AllocBody364_53 AllocBody364_54

def AllocBody364_56 : StackLang.HolProg 64 :=
.seq AllocBody364_52 AllocBody364_55

def AllocBody364_57 : StackLang.HolProg 64 :=
.seq AllocBody364_51 AllocBody364_56

def AllocBody364_58 : StackLang.HolProg 64 :=
.seq AllocBody364_50 AllocBody364_57

def AllocBody364_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody364_61 : StackLang.HolProg 64 :=
.seq AllocBody364_59 AllocBody364_60

def AllocBody364_62 : StackLang.HolProg 64 :=
.call (some (AllocBody364_58, 0, 364, 2)) (Sum.inl 363) (some (AllocBody364_61, 364, 3))

def AllocBody364_63 : StackLang.HolProg 64 :=
.seq AllocBody364_49 AllocBody364_62

def AllocBody364_64 : StackLang.HolProg 64 :=
.seq AllocBody364_48 AllocBody364_63

def AllocBody364_65 : StackLang.HolProg 64 :=
.seq AllocBody364_47 AllocBody364_64

def AllocBody364_66 : StackLang.HolProg 64 :=
.seq AllocBody364_28 AllocBody364_65

def AllocBody364_67 : StackLang.HolProg 64 :=
.seq AllocBody364_25 AllocBody364_66

def AllocBody364_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody364_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody364_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody364_71 : StackLang.HolProg 64 :=
.seq AllocBody364_69 AllocBody364_70

def AllocBody364_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1050#64)

def AllocBody364_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody364_75 : StackLang.HolProg 64 :=
.seq AllocBody364_73 AllocBody364_74

def AllocBody364_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody364_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody364_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody364_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 364 5

def AllocBody364_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody364_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody364_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody364_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody364_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody364_86 : StackLang.HolProg 64 :=
.seq AllocBody364_84 AllocBody364_85

def AllocBody364_87 : StackLang.HolProg 64 :=
.seq AllocBody364_83 AllocBody364_86

def AllocBody364_88 : StackLang.HolProg 64 :=
.seq AllocBody364_82 AllocBody364_87

def AllocBody364_89 : StackLang.HolProg 64 :=
.seq AllocBody364_81 AllocBody364_88

def AllocBody364_90 : StackLang.HolProg 64 :=
.seq AllocBody364_80 AllocBody364_89

def AllocBody364_91 : StackLang.HolProg 64 :=
.seq AllocBody364_79 AllocBody364_90

def AllocBody364_92 : StackLang.HolProg 64 :=
.seq AllocBody364_78 AllocBody364_91

def AllocBody364_93 : StackLang.HolProg 64 :=
.seq AllocBody364_77 AllocBody364_92

def AllocBody364_94 : StackLang.HolProg 64 :=
.seq AllocBody364_76 AllocBody364_93

def AllocBody364_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody364_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody364_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody364_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody364_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody364_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody364_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody364_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody364_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody364_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody364_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody364_108 : StackLang.HolProg 64 :=
.seq AllocBody364_106 AllocBody364_107

def AllocBody364_109 : StackLang.HolProg 64 :=
.seq AllocBody364_105 AllocBody364_108

def AllocBody364_110 : StackLang.HolProg 64 :=
.seq AllocBody364_104 AllocBody364_109

def AllocBody364_111 : StackLang.HolProg 64 :=
.seq AllocBody364_103 AllocBody364_110

def AllocBody364_112 : StackLang.HolProg 64 :=
.seq AllocBody364_102 AllocBody364_111

def AllocBody364_113 : StackLang.HolProg 64 :=
.seq AllocBody364_101 AllocBody364_112

def AllocBody364_114 : StackLang.HolProg 64 :=
.seq AllocBody364_100 AllocBody364_113

def AllocBody364_115 : StackLang.HolProg 64 :=
.seq AllocBody364_99 AllocBody364_114

def AllocBody364_116 : StackLang.HolProg 64 :=
.seq AllocBody364_98 AllocBody364_115

def AllocBody364_117 : StackLang.HolProg 64 :=
.seq AllocBody364_97 AllocBody364_116

def AllocBody364_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody364_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody364_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody364_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody364_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody364_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody364_124 : StackLang.HolProg 64 :=
.seq AllocBody364_122 AllocBody364_123

def AllocBody364_125 : StackLang.HolProg 64 :=
.seq AllocBody364_121 AllocBody364_124

def AllocBody364_126 : StackLang.HolProg 64 :=
.seq AllocBody364_120 AllocBody364_125

def AllocBody364_127 : StackLang.HolProg 64 :=
.seq AllocBody364_119 AllocBody364_126

def AllocBody364_128 : StackLang.HolProg 64 :=
.seq AllocBody364_118 AllocBody364_127

def AllocBody364_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody364_130 : StackLang.HolProg 64 :=
.seq AllocBody364_128 AllocBody364_129

def AllocBody364_131 : StackLang.HolProg 64 :=
.call (some (AllocBody364_117, 0, 364, 4)) (Sum.inl 180) (some (AllocBody364_130, 364, 5))

def AllocBody364_132 : StackLang.HolProg 64 :=
.seq AllocBody364_96 AllocBody364_131

def AllocBody364_133 : StackLang.HolProg 64 :=
.seq AllocBody364_95 AllocBody364_132

def AllocBody364_134 : StackLang.HolProg 64 :=
.seq AllocBody364_94 AllocBody364_133

def AllocBody364_135 : StackLang.HolProg 64 :=
.seq AllocBody364_75 AllocBody364_134

def AllocBody364_136 : StackLang.HolProg 64 :=
.seq AllocBody364_72 AllocBody364_135

def AllocBody364_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody364_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody364_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody364_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody364_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody364_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 6

def AllocBody364_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody364_146 : StackLang.HolProg 64 :=
.seq AllocBody364_144 AllocBody364_145

def AllocBody364_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody364_148 : StackLang.HolProg 64 :=
.seq AllocBody364_146 AllocBody364_147

def AllocBody364_149 : StackLang.HolProg 64 :=
.seq AllocBody364_143 AllocBody364_148

def AllocBody364_150 : StackLang.HolProg 64 :=
.seq AllocBody364_142 AllocBody364_149

def AllocBody364_151 : StackLang.HolProg 64 :=
.seq AllocBody364_141 AllocBody364_150

def AllocBody364_152 : StackLang.HolProg 64 :=
.seq AllocBody364_140 AllocBody364_151

def AllocBody364_153 : StackLang.HolProg 64 :=
.seq AllocBody364_139 AllocBody364_152

def AllocBody364_154 : StackLang.HolProg 64 :=
.seq AllocBody364_138 AllocBody364_153

def AllocBody364_155 : StackLang.HolProg 64 :=
.seq AllocBody364_137 AllocBody364_154

def AllocBody364_156 : StackLang.HolProg 64 :=
.seq AllocBody364_136 AllocBody364_155

def AllocBody364_157 : StackLang.HolProg 64 :=
.seq AllocBody364_71 AllocBody364_156

def AllocBody364_158 : StackLang.HolProg 64 :=
.seq AllocBody364_68 AllocBody364_157

def AllocBody364_159 : StackLang.HolProg 64 :=
.seq AllocBody364_67 AllocBody364_158

def AllocBody364_160 : StackLang.HolProg 64 :=
.seq AllocBody364_24 AllocBody364_159

def AllocBody364_161 : StackLang.HolProg 64 :=
.seq AllocBody364_19 AllocBody364_160

def AllocBody364_162 : StackLang.HolProg 64 :=
.seq AllocBody364_18 AllocBody364_161

def AllocBody364_163 : StackLang.HolProg 64 :=
.seq AllocBody364_17 AllocBody364_162

def AllocBody364_164 : StackLang.HolProg 64 :=
.seq AllocBody364_16 AllocBody364_163

def AllocBody364_165 : StackLang.HolProg 64 :=
.seq AllocBody364_15 AllocBody364_164

def AllocBody364_166 : StackLang.HolProg 64 :=
.seq AllocBody364_14 AllocBody364_165

def AllocBody364_167 : StackLang.HolProg 64 :=
.seq AllocBody364_13 AllocBody364_166

def AllocBody364_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody364_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody364_170 : StackLang.HolProg 64 :=
.seq AllocBody364_168 AllocBody364_169

def AllocBody364_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody364_167 AllocBody364_170

def AllocBody364_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody364_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody364_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody364_175 : StackLang.HolProg 64 :=
.seq AllocBody364_173 AllocBody364_174

def AllocBody364_176 : StackLang.HolProg 64 :=
.seq AllocBody364_172 AllocBody364_175

def AllocBody364_177 : StackLang.HolProg 64 :=
.seq AllocBody364_171 AllocBody364_176

def AllocBody364_178 : StackLang.HolProg 64 :=
.seq AllocBody364_12 AllocBody364_177

def AllocBody364_179 : StackLang.HolProg 64 :=
.loop AllocBody364_178

def AllocBody364_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody364_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 5

def AllocBody364_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody364_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody364_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody364_185 : StackLang.HolProg 64 :=
.seq AllocBody364_183 AllocBody364_184

def AllocBody364_186 : StackLang.HolProg 64 :=
.seq AllocBody364_182 AllocBody364_185

def AllocBody364_187 : StackLang.HolProg 64 :=
.seq AllocBody364_181 AllocBody364_186

def AllocBody364_188 : StackLang.HolProg 64 :=
.seq AllocBody364_180 AllocBody364_187

def AllocBody364_189 : StackLang.HolProg 64 :=
.seq AllocBody364_179 AllocBody364_188

def AllocBody364_190 : StackLang.HolProg 64 :=
.seq AllocBody364_11 AllocBody364_189

def AllocBody364_191 : StackLang.HolProg 64 :=
.seq AllocBody364_4 AllocBody364_190

def AllocBody364_192 : StackLang.HolProg 64 :=
.seq AllocBody364_3 AllocBody364_191

def AllocBody364_193 : StackLang.HolProg 64 :=
.seq AllocBody364_2 AllocBody364_192

def AllocBody364_194 : StackLang.HolProg 64 :=
.seq AllocBody364_1 AllocBody364_193

def AllocBody364_195 : StackLang.HolProg 64 :=
.seq AllocBody364_0 AllocBody364_194

def Alloc364 : Nat × StackLang.HolProg 64 := (364, AllocBody364_195)
theorem Alloc364_eq : StackAlloc.progComp (364, raw364) = Alloc364 := by
  kernel_rfl
#print axioms Alloc364_eq
end InitECandidate.Proofs.BackendStages
