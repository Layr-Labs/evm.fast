import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw360
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody360_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody360_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody360_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody360_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody360_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody360_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody360_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody360_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody360_9 : StackLang.HolProg 64 :=
.seq AllocBody360_7 AllocBody360_8

def AllocBody360_10 : StackLang.HolProg 64 :=
.seq AllocBody360_6 AllocBody360_9

def AllocBody360_11 : StackLang.HolProg 64 :=
.seq AllocBody360_5 AllocBody360_10

def AllocBody360_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody360_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def AllocBody360_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody360_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody360_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody360_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody360_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 33#64)

def AllocBody360_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody360_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody360_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody360_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody360_27 : StackLang.HolProg 64 :=
.seq AllocBody360_25 AllocBody360_26

def AllocBody360_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody360_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody360_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def AllocBody360_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody360_32 : StackLang.HolProg 64 :=
.seq AllocBody360_30 AllocBody360_31

def AllocBody360_33 : StackLang.HolProg 64 :=
.seq AllocBody360_29 AllocBody360_32

def AllocBody360_34 : StackLang.HolProg 64 :=
.seq AllocBody360_28 AllocBody360_33

def AllocBody360_35 : StackLang.HolProg 64 :=
.seq AllocBody360_27 AllocBody360_34

def AllocBody360_36 : StackLang.HolProg 64 :=
.seq AllocBody360_24 AllocBody360_35

def AllocBody360_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1033#64)

def AllocBody360_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody360_40 : StackLang.HolProg 64 :=
.seq AllocBody360_38 AllocBody360_39

def AllocBody360_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody360_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody360_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody360_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 360 3

def AllocBody360_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody360_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody360_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody360_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody360_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody360_51 : StackLang.HolProg 64 :=
.seq AllocBody360_49 AllocBody360_50

def AllocBody360_52 : StackLang.HolProg 64 :=
.seq AllocBody360_48 AllocBody360_51

def AllocBody360_53 : StackLang.HolProg 64 :=
.seq AllocBody360_47 AllocBody360_52

def AllocBody360_54 : StackLang.HolProg 64 :=
.seq AllocBody360_46 AllocBody360_53

def AllocBody360_55 : StackLang.HolProg 64 :=
.seq AllocBody360_45 AllocBody360_54

def AllocBody360_56 : StackLang.HolProg 64 :=
.seq AllocBody360_44 AllocBody360_55

def AllocBody360_57 : StackLang.HolProg 64 :=
.seq AllocBody360_43 AllocBody360_56

def AllocBody360_58 : StackLang.HolProg 64 :=
.seq AllocBody360_42 AllocBody360_57

def AllocBody360_59 : StackLang.HolProg 64 :=
.seq AllocBody360_41 AllocBody360_58

def AllocBody360_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody360_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody360_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody360_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody360_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody360_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody360_68 : StackLang.HolProg 64 :=
.seq AllocBody360_66 AllocBody360_67

def AllocBody360_69 : StackLang.HolProg 64 :=
.seq AllocBody360_65 AllocBody360_68

def AllocBody360_70 : StackLang.HolProg 64 :=
.seq AllocBody360_64 AllocBody360_69

def AllocBody360_71 : StackLang.HolProg 64 :=
.seq AllocBody360_63 AllocBody360_70

def AllocBody360_72 : StackLang.HolProg 64 :=
.seq AllocBody360_62 AllocBody360_71

def AllocBody360_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody360_74 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody360_75 : StackLang.HolProg 64 :=
.seq AllocBody360_73 AllocBody360_74

def AllocBody360_76 : StackLang.HolProg 64 :=
.call (some (AllocBody360_72, 0, 360, 2)) (Sum.inl 180) (some (AllocBody360_75, 360, 3))

def AllocBody360_77 : StackLang.HolProg 64 :=
.seq AllocBody360_61 AllocBody360_76

def AllocBody360_78 : StackLang.HolProg 64 :=
.seq AllocBody360_60 AllocBody360_77

def AllocBody360_79 : StackLang.HolProg 64 :=
.seq AllocBody360_59 AllocBody360_78

def AllocBody360_80 : StackLang.HolProg 64 :=
.seq AllocBody360_40 AllocBody360_79

def AllocBody360_81 : StackLang.HolProg 64 :=
.seq AllocBody360_37 AllocBody360_80

def AllocBody360_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody360_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody360_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 21#64)))

def AllocBody360_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody360_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1034#64)

def AllocBody360_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody360_90 : StackLang.HolProg 64 :=
.seq AllocBody360_88 AllocBody360_89

def AllocBody360_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody360_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody360_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody360_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 360 5

def AllocBody360_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody360_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody360_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody360_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody360_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody360_101 : StackLang.HolProg 64 :=
.seq AllocBody360_99 AllocBody360_100

def AllocBody360_102 : StackLang.HolProg 64 :=
.seq AllocBody360_98 AllocBody360_101

def AllocBody360_103 : StackLang.HolProg 64 :=
.seq AllocBody360_97 AllocBody360_102

def AllocBody360_104 : StackLang.HolProg 64 :=
.seq AllocBody360_96 AllocBody360_103

def AllocBody360_105 : StackLang.HolProg 64 :=
.seq AllocBody360_95 AllocBody360_104

def AllocBody360_106 : StackLang.HolProg 64 :=
.seq AllocBody360_94 AllocBody360_105

def AllocBody360_107 : StackLang.HolProg 64 :=
.seq AllocBody360_93 AllocBody360_106

def AllocBody360_108 : StackLang.HolProg 64 :=
.seq AllocBody360_92 AllocBody360_107

def AllocBody360_109 : StackLang.HolProg 64 :=
.seq AllocBody360_91 AllocBody360_108

def AllocBody360_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody360_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody360_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody360_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody360_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody360_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody360_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody360_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody360_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody360_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody360_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody360_123 : StackLang.HolProg 64 :=
.seq AllocBody360_121 AllocBody360_122

def AllocBody360_124 : StackLang.HolProg 64 :=
.seq AllocBody360_120 AllocBody360_123

def AllocBody360_125 : StackLang.HolProg 64 :=
.seq AllocBody360_119 AllocBody360_124

def AllocBody360_126 : StackLang.HolProg 64 :=
.seq AllocBody360_118 AllocBody360_125

def AllocBody360_127 : StackLang.HolProg 64 :=
.seq AllocBody360_117 AllocBody360_126

def AllocBody360_128 : StackLang.HolProg 64 :=
.seq AllocBody360_116 AllocBody360_127

def AllocBody360_129 : StackLang.HolProg 64 :=
.seq AllocBody360_115 AllocBody360_128

def AllocBody360_130 : StackLang.HolProg 64 :=
.seq AllocBody360_114 AllocBody360_129

def AllocBody360_131 : StackLang.HolProg 64 :=
.seq AllocBody360_113 AllocBody360_130

def AllocBody360_132 : StackLang.HolProg 64 :=
.seq AllocBody360_112 AllocBody360_131

def AllocBody360_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody360_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody360_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody360_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody360_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody360_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody360_139 : StackLang.HolProg 64 :=
.seq AllocBody360_137 AllocBody360_138

def AllocBody360_140 : StackLang.HolProg 64 :=
.seq AllocBody360_136 AllocBody360_139

def AllocBody360_141 : StackLang.HolProg 64 :=
.seq AllocBody360_135 AllocBody360_140

def AllocBody360_142 : StackLang.HolProg 64 :=
.seq AllocBody360_134 AllocBody360_141

def AllocBody360_143 : StackLang.HolProg 64 :=
.seq AllocBody360_133 AllocBody360_142

def AllocBody360_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody360_145 : StackLang.HolProg 64 :=
.seq AllocBody360_143 AllocBody360_144

def AllocBody360_146 : StackLang.HolProg 64 :=
.call (some (AllocBody360_132, 0, 360, 4)) (Sum.inl 180) (some (AllocBody360_145, 360, 5))

def AllocBody360_147 : StackLang.HolProg 64 :=
.seq AllocBody360_111 AllocBody360_146

def AllocBody360_148 : StackLang.HolProg 64 :=
.seq AllocBody360_110 AllocBody360_147

def AllocBody360_149 : StackLang.HolProg 64 :=
.seq AllocBody360_109 AllocBody360_148

def AllocBody360_150 : StackLang.HolProg 64 :=
.seq AllocBody360_90 AllocBody360_149

def AllocBody360_151 : StackLang.HolProg 64 :=
.seq AllocBody360_87 AllocBody360_150

def AllocBody360_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody360_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody360_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody360_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody360_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody360_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 6

def AllocBody360_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody360_161 : StackLang.HolProg 64 :=
.seq AllocBody360_159 AllocBody360_160

def AllocBody360_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody360_163 : StackLang.HolProg 64 :=
.seq AllocBody360_161 AllocBody360_162

def AllocBody360_164 : StackLang.HolProg 64 :=
.seq AllocBody360_158 AllocBody360_163

def AllocBody360_165 : StackLang.HolProg 64 :=
.seq AllocBody360_157 AllocBody360_164

def AllocBody360_166 : StackLang.HolProg 64 :=
.seq AllocBody360_156 AllocBody360_165

def AllocBody360_167 : StackLang.HolProg 64 :=
.seq AllocBody360_155 AllocBody360_166

def AllocBody360_168 : StackLang.HolProg 64 :=
.seq AllocBody360_154 AllocBody360_167

def AllocBody360_169 : StackLang.HolProg 64 :=
.seq AllocBody360_153 AllocBody360_168

def AllocBody360_170 : StackLang.HolProg 64 :=
.seq AllocBody360_152 AllocBody360_169

def AllocBody360_171 : StackLang.HolProg 64 :=
.seq AllocBody360_151 AllocBody360_170

def AllocBody360_172 : StackLang.HolProg 64 :=
.seq AllocBody360_86 AllocBody360_171

def AllocBody360_173 : StackLang.HolProg 64 :=
.seq AllocBody360_85 AllocBody360_172

def AllocBody360_174 : StackLang.HolProg 64 :=
.seq AllocBody360_84 AllocBody360_173

def AllocBody360_175 : StackLang.HolProg 64 :=
.seq AllocBody360_83 AllocBody360_174

def AllocBody360_176 : StackLang.HolProg 64 :=
.seq AllocBody360_82 AllocBody360_175

def AllocBody360_177 : StackLang.HolProg 64 :=
.seq AllocBody360_81 AllocBody360_176

def AllocBody360_178 : StackLang.HolProg 64 :=
.seq AllocBody360_36 AllocBody360_177

def AllocBody360_179 : StackLang.HolProg 64 :=
.seq AllocBody360_23 AllocBody360_178

def AllocBody360_180 : StackLang.HolProg 64 :=
.seq AllocBody360_22 AllocBody360_179

def AllocBody360_181 : StackLang.HolProg 64 :=
.seq AllocBody360_21 AllocBody360_180

def AllocBody360_182 : StackLang.HolProg 64 :=
.seq AllocBody360_20 AllocBody360_181

def AllocBody360_183 : StackLang.HolProg 64 :=
.seq AllocBody360_19 AllocBody360_182

def AllocBody360_184 : StackLang.HolProg 64 :=
.seq AllocBody360_18 AllocBody360_183

def AllocBody360_185 : StackLang.HolProg 64 :=
.seq AllocBody360_17 AllocBody360_184

def AllocBody360_186 : StackLang.HolProg 64 :=
.seq AllocBody360_16 AllocBody360_185

def AllocBody360_187 : StackLang.HolProg 64 :=
.seq AllocBody360_15 AllocBody360_186

def AllocBody360_188 : StackLang.HolProg 64 :=
.seq AllocBody360_14 AllocBody360_187

def AllocBody360_189 : StackLang.HolProg 64 :=
.seq AllocBody360_13 AllocBody360_188

def AllocBody360_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody360_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody360_192 : StackLang.HolProg 64 :=
.seq AllocBody360_190 AllocBody360_191

def AllocBody360_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody360_189 AllocBody360_192

def AllocBody360_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody360_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody360_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody360_197 : StackLang.HolProg 64 :=
.seq AllocBody360_195 AllocBody360_196

def AllocBody360_198 : StackLang.HolProg 64 :=
.seq AllocBody360_194 AllocBody360_197

def AllocBody360_199 : StackLang.HolProg 64 :=
.seq AllocBody360_193 AllocBody360_198

def AllocBody360_200 : StackLang.HolProg 64 :=
.seq AllocBody360_12 AllocBody360_199

def AllocBody360_201 : StackLang.HolProg 64 :=
.loop AllocBody360_200

def AllocBody360_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody360_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 5

def AllocBody360_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody360_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody360_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody360_207 : StackLang.HolProg 64 :=
.seq AllocBody360_205 AllocBody360_206

def AllocBody360_208 : StackLang.HolProg 64 :=
.seq AllocBody360_204 AllocBody360_207

def AllocBody360_209 : StackLang.HolProg 64 :=
.seq AllocBody360_203 AllocBody360_208

def AllocBody360_210 : StackLang.HolProg 64 :=
.seq AllocBody360_202 AllocBody360_209

def AllocBody360_211 : StackLang.HolProg 64 :=
.seq AllocBody360_201 AllocBody360_210

def AllocBody360_212 : StackLang.HolProg 64 :=
.seq AllocBody360_11 AllocBody360_211

def AllocBody360_213 : StackLang.HolProg 64 :=
.seq AllocBody360_4 AllocBody360_212

def AllocBody360_214 : StackLang.HolProg 64 :=
.seq AllocBody360_3 AllocBody360_213

def AllocBody360_215 : StackLang.HolProg 64 :=
.seq AllocBody360_2 AllocBody360_214

def AllocBody360_216 : StackLang.HolProg 64 :=
.seq AllocBody360_1 AllocBody360_215

def AllocBody360_217 : StackLang.HolProg 64 :=
.seq AllocBody360_0 AllocBody360_216

def Alloc360 : Nat × StackLang.HolProg 64 := (360, AllocBody360_217)
theorem Alloc360_eq : StackAlloc.progComp (360, raw360) = Alloc360 := by
  kernel_rfl
#print axioms Alloc360_eq
end InitECandidate.Proofs.BackendStages
