import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw146
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody146_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody146_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody146_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def AllocBody146_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody146_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_6 : StackLang.HolProg 64 :=
.seq AllocBody146_4 AllocBody146_5

def AllocBody146_7 : StackLang.HolProg 64 :=
.seq AllocBody146_3 AllocBody146_6

def AllocBody146_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody146_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_11 : StackLang.HolProg 64 :=
.seq AllocBody146_9 AllocBody146_10

def AllocBody146_12 : StackLang.HolProg 64 :=
.seq AllocBody146_8 AllocBody146_11

def AllocBody146_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody146_7 AllocBody146_12

def AllocBody146_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody146_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody146_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody146_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody146_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_21 : StackLang.HolProg 64 :=
.seq AllocBody146_19 AllocBody146_20

def AllocBody146_22 : StackLang.HolProg 64 :=
.seq AllocBody146_18 AllocBody146_21

def AllocBody146_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody146_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_26 : StackLang.HolProg 64 :=
.seq AllocBody146_24 AllocBody146_25

def AllocBody146_27 : StackLang.HolProg 64 :=
.seq AllocBody146_23 AllocBody146_26

def AllocBody146_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody146_22 AllocBody146_27

def AllocBody146_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody146_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody146_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody146_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody146_36 : StackLang.HolProg 64 :=
.seq AllocBody146_34 AllocBody146_35

def AllocBody146_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 112#64)

def AllocBody146_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody146_40 : StackLang.HolProg 64 :=
.seq AllocBody146_38 AllocBody146_39

def AllocBody146_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody146_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody146_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody146_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 3

def AllocBody146_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody146_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody146_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody146_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody146_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody146_51 : StackLang.HolProg 64 :=
.seq AllocBody146_49 AllocBody146_50

def AllocBody146_52 : StackLang.HolProg 64 :=
.seq AllocBody146_48 AllocBody146_51

def AllocBody146_53 : StackLang.HolProg 64 :=
.seq AllocBody146_47 AllocBody146_52

def AllocBody146_54 : StackLang.HolProg 64 :=
.seq AllocBody146_46 AllocBody146_53

def AllocBody146_55 : StackLang.HolProg 64 :=
.seq AllocBody146_45 AllocBody146_54

def AllocBody146_56 : StackLang.HolProg 64 :=
.seq AllocBody146_44 AllocBody146_55

def AllocBody146_57 : StackLang.HolProg 64 :=
.seq AllocBody146_43 AllocBody146_56

def AllocBody146_58 : StackLang.HolProg 64 :=
.seq AllocBody146_42 AllocBody146_57

def AllocBody146_59 : StackLang.HolProg 64 :=
.seq AllocBody146_41 AllocBody146_58

def AllocBody146_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody146_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody146_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody146_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody146_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody146_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody146_68 : StackLang.HolProg 64 :=
.seq AllocBody146_66 AllocBody146_67

def AllocBody146_69 : StackLang.HolProg 64 :=
.seq AllocBody146_65 AllocBody146_68

def AllocBody146_70 : StackLang.HolProg 64 :=
.seq AllocBody146_64 AllocBody146_69

def AllocBody146_71 : StackLang.HolProg 64 :=
.seq AllocBody146_63 AllocBody146_70

def AllocBody146_72 : StackLang.HolProg 64 :=
.seq AllocBody146_62 AllocBody146_71

def AllocBody146_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody146_74 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody146_75 : StackLang.HolProg 64 :=
.seq AllocBody146_73 AllocBody146_74

def AllocBody146_76 : StackLang.HolProg 64 :=
.call (some (AllocBody146_72, 0, 146, 2)) (Sum.inl 84) (some (AllocBody146_75, 146, 3))

def AllocBody146_77 : StackLang.HolProg 64 :=
.seq AllocBody146_61 AllocBody146_76

def AllocBody146_78 : StackLang.HolProg 64 :=
.seq AllocBody146_60 AllocBody146_77

def AllocBody146_79 : StackLang.HolProg 64 :=
.seq AllocBody146_59 AllocBody146_78

def AllocBody146_80 : StackLang.HolProg 64 :=
.seq AllocBody146_40 AllocBody146_79

def AllocBody146_81 : StackLang.HolProg 64 :=
.seq AllocBody146_37 AllocBody146_80

def AllocBody146_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody146_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody146_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody146_87 : StackLang.HolProg 64 :=
.seq AllocBody146_85 AllocBody146_86

def AllocBody146_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 113#64)

def AllocBody146_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody146_91 : StackLang.HolProg 64 :=
.seq AllocBody146_89 AllocBody146_90

def AllocBody146_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody146_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody146_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody146_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 5

def AllocBody146_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody146_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody146_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody146_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody146_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody146_102 : StackLang.HolProg 64 :=
.seq AllocBody146_100 AllocBody146_101

def AllocBody146_103 : StackLang.HolProg 64 :=
.seq AllocBody146_99 AllocBody146_102

def AllocBody146_104 : StackLang.HolProg 64 :=
.seq AllocBody146_98 AllocBody146_103

def AllocBody146_105 : StackLang.HolProg 64 :=
.seq AllocBody146_97 AllocBody146_104

def AllocBody146_106 : StackLang.HolProg 64 :=
.seq AllocBody146_96 AllocBody146_105

def AllocBody146_107 : StackLang.HolProg 64 :=
.seq AllocBody146_95 AllocBody146_106

def AllocBody146_108 : StackLang.HolProg 64 :=
.seq AllocBody146_94 AllocBody146_107

def AllocBody146_109 : StackLang.HolProg 64 :=
.seq AllocBody146_93 AllocBody146_108

def AllocBody146_110 : StackLang.HolProg 64 :=
.seq AllocBody146_92 AllocBody146_109

def AllocBody146_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody146_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody146_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody146_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody146_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody146_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody146_119 : StackLang.HolProg 64 :=
.seq AllocBody146_117 AllocBody146_118

def AllocBody146_120 : StackLang.HolProg 64 :=
.seq AllocBody146_116 AllocBody146_119

def AllocBody146_121 : StackLang.HolProg 64 :=
.seq AllocBody146_115 AllocBody146_120

def AllocBody146_122 : StackLang.HolProg 64 :=
.seq AllocBody146_114 AllocBody146_121

def AllocBody146_123 : StackLang.HolProg 64 :=
.seq AllocBody146_113 AllocBody146_122

def AllocBody146_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody146_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody146_126 : StackLang.HolProg 64 :=
.seq AllocBody146_124 AllocBody146_125

def AllocBody146_127 : StackLang.HolProg 64 :=
.call (some (AllocBody146_123, 0, 146, 4)) (Sum.inl 84) (some (AllocBody146_126, 146, 5))

def AllocBody146_128 : StackLang.HolProg 64 :=
.seq AllocBody146_112 AllocBody146_127

def AllocBody146_129 : StackLang.HolProg 64 :=
.seq AllocBody146_111 AllocBody146_128

def AllocBody146_130 : StackLang.HolProg 64 :=
.seq AllocBody146_110 AllocBody146_129

def AllocBody146_131 : StackLang.HolProg 64 :=
.seq AllocBody146_91 AllocBody146_130

def AllocBody146_132 : StackLang.HolProg 64 :=
.seq AllocBody146_88 AllocBody146_131

def AllocBody146_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody146_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody146_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody146_138 : StackLang.HolProg 64 :=
.seq AllocBody146_136 AllocBody146_137

def AllocBody146_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 114#64)

def AllocBody146_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody146_142 : StackLang.HolProg 64 :=
.seq AllocBody146_140 AllocBody146_141

def AllocBody146_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody146_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody146_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody146_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 7

def AllocBody146_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody146_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody146_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody146_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody146_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody146_153 : StackLang.HolProg 64 :=
.seq AllocBody146_151 AllocBody146_152

def AllocBody146_154 : StackLang.HolProg 64 :=
.seq AllocBody146_150 AllocBody146_153

def AllocBody146_155 : StackLang.HolProg 64 :=
.seq AllocBody146_149 AllocBody146_154

def AllocBody146_156 : StackLang.HolProg 64 :=
.seq AllocBody146_148 AllocBody146_155

def AllocBody146_157 : StackLang.HolProg 64 :=
.seq AllocBody146_147 AllocBody146_156

def AllocBody146_158 : StackLang.HolProg 64 :=
.seq AllocBody146_146 AllocBody146_157

def AllocBody146_159 : StackLang.HolProg 64 :=
.seq AllocBody146_145 AllocBody146_158

def AllocBody146_160 : StackLang.HolProg 64 :=
.seq AllocBody146_144 AllocBody146_159

def AllocBody146_161 : StackLang.HolProg 64 :=
.seq AllocBody146_143 AllocBody146_160

def AllocBody146_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody146_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody146_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody146_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody146_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody146_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody146_170 : StackLang.HolProg 64 :=
.seq AllocBody146_168 AllocBody146_169

def AllocBody146_171 : StackLang.HolProg 64 :=
.seq AllocBody146_167 AllocBody146_170

def AllocBody146_172 : StackLang.HolProg 64 :=
.seq AllocBody146_166 AllocBody146_171

def AllocBody146_173 : StackLang.HolProg 64 :=
.seq AllocBody146_165 AllocBody146_172

def AllocBody146_174 : StackLang.HolProg 64 :=
.seq AllocBody146_164 AllocBody146_173

def AllocBody146_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody146_176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody146_177 : StackLang.HolProg 64 :=
.seq AllocBody146_175 AllocBody146_176

def AllocBody146_178 : StackLang.HolProg 64 :=
.call (some (AllocBody146_174, 0, 146, 6)) (Sum.inl 84) (some (AllocBody146_177, 146, 7))

def AllocBody146_179 : StackLang.HolProg 64 :=
.seq AllocBody146_163 AllocBody146_178

def AllocBody146_180 : StackLang.HolProg 64 :=
.seq AllocBody146_162 AllocBody146_179

def AllocBody146_181 : StackLang.HolProg 64 :=
.seq AllocBody146_161 AllocBody146_180

def AllocBody146_182 : StackLang.HolProg 64 :=
.seq AllocBody146_142 AllocBody146_181

def AllocBody146_183 : StackLang.HolProg 64 :=
.seq AllocBody146_139 AllocBody146_182

def AllocBody146_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody146_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody146_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 115#64)

def AllocBody146_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody146_191 : StackLang.HolProg 64 :=
.seq AllocBody146_189 AllocBody146_190

def AllocBody146_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody146_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody146_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody146_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 9

def AllocBody146_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody146_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody146_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody146_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody146_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody146_202 : StackLang.HolProg 64 :=
.seq AllocBody146_200 AllocBody146_201

def AllocBody146_203 : StackLang.HolProg 64 :=
.seq AllocBody146_199 AllocBody146_202

def AllocBody146_204 : StackLang.HolProg 64 :=
.seq AllocBody146_198 AllocBody146_203

def AllocBody146_205 : StackLang.HolProg 64 :=
.seq AllocBody146_197 AllocBody146_204

def AllocBody146_206 : StackLang.HolProg 64 :=
.seq AllocBody146_196 AllocBody146_205

def AllocBody146_207 : StackLang.HolProg 64 :=
.seq AllocBody146_195 AllocBody146_206

def AllocBody146_208 : StackLang.HolProg 64 :=
.seq AllocBody146_194 AllocBody146_207

def AllocBody146_209 : StackLang.HolProg 64 :=
.seq AllocBody146_193 AllocBody146_208

def AllocBody146_210 : StackLang.HolProg 64 :=
.seq AllocBody146_192 AllocBody146_209

def AllocBody146_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody146_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody146_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody146_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody146_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody146_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody146_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody146_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody146_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody146_222 : StackLang.HolProg 64 :=
.seq AllocBody146_220 AllocBody146_221

def AllocBody146_223 : StackLang.HolProg 64 :=
.seq AllocBody146_219 AllocBody146_222

def AllocBody146_224 : StackLang.HolProg 64 :=
.seq AllocBody146_218 AllocBody146_223

def AllocBody146_225 : StackLang.HolProg 64 :=
.seq AllocBody146_217 AllocBody146_224

def AllocBody146_226 : StackLang.HolProg 64 :=
.seq AllocBody146_216 AllocBody146_225

def AllocBody146_227 : StackLang.HolProg 64 :=
.seq AllocBody146_215 AllocBody146_226

def AllocBody146_228 : StackLang.HolProg 64 :=
.seq AllocBody146_214 AllocBody146_227

def AllocBody146_229 : StackLang.HolProg 64 :=
.seq AllocBody146_213 AllocBody146_228

def AllocBody146_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody146_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody146_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody146_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody146_234 : StackLang.HolProg 64 :=
.seq AllocBody146_232 AllocBody146_233

def AllocBody146_235 : StackLang.HolProg 64 :=
.seq AllocBody146_231 AllocBody146_234

def AllocBody146_236 : StackLang.HolProg 64 :=
.seq AllocBody146_230 AllocBody146_235

def AllocBody146_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody146_238 : StackLang.HolProg 64 :=
.seq AllocBody146_236 AllocBody146_237

def AllocBody146_239 : StackLang.HolProg 64 :=
.call (some (AllocBody146_229, 0, 146, 8)) (Sum.inl 84) (some (AllocBody146_238, 146, 9))

def AllocBody146_240 : StackLang.HolProg 64 :=
.seq AllocBody146_212 AllocBody146_239

def AllocBody146_241 : StackLang.HolProg 64 :=
.seq AllocBody146_211 AllocBody146_240

def AllocBody146_242 : StackLang.HolProg 64 :=
.seq AllocBody146_210 AllocBody146_241

def AllocBody146_243 : StackLang.HolProg 64 :=
.seq AllocBody146_191 AllocBody146_242

def AllocBody146_244 : StackLang.HolProg 64 :=
.seq AllocBody146_188 AllocBody146_243

def AllocBody146_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody146_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody146_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody146_249 : StackLang.HolProg 64 :=
.seq AllocBody146_247 AllocBody146_248

def AllocBody146_250 : StackLang.HolProg 64 :=
.seq AllocBody146_246 AllocBody146_249

def AllocBody146_251 : StackLang.HolProg 64 :=
.seq AllocBody146_245 AllocBody146_250

def AllocBody146_252 : StackLang.HolProg 64 :=
.seq AllocBody146_244 AllocBody146_251

def AllocBody146_253 : StackLang.HolProg 64 :=
.seq AllocBody146_187 AllocBody146_252

def AllocBody146_254 : StackLang.HolProg 64 :=
.seq AllocBody146_186 AllocBody146_253

def AllocBody146_255 : StackLang.HolProg 64 :=
.seq AllocBody146_185 AllocBody146_254

def AllocBody146_256 : StackLang.HolProg 64 :=
.seq AllocBody146_184 AllocBody146_255

def AllocBody146_257 : StackLang.HolProg 64 :=
.seq AllocBody146_183 AllocBody146_256

def AllocBody146_258 : StackLang.HolProg 64 :=
.seq AllocBody146_138 AllocBody146_257

def AllocBody146_259 : StackLang.HolProg 64 :=
.seq AllocBody146_135 AllocBody146_258

def AllocBody146_260 : StackLang.HolProg 64 :=
.seq AllocBody146_134 AllocBody146_259

def AllocBody146_261 : StackLang.HolProg 64 :=
.seq AllocBody146_133 AllocBody146_260

def AllocBody146_262 : StackLang.HolProg 64 :=
.seq AllocBody146_132 AllocBody146_261

def AllocBody146_263 : StackLang.HolProg 64 :=
.seq AllocBody146_87 AllocBody146_262

def AllocBody146_264 : StackLang.HolProg 64 :=
.seq AllocBody146_84 AllocBody146_263

def AllocBody146_265 : StackLang.HolProg 64 :=
.seq AllocBody146_83 AllocBody146_264

def AllocBody146_266 : StackLang.HolProg 64 :=
.seq AllocBody146_82 AllocBody146_265

def AllocBody146_267 : StackLang.HolProg 64 :=
.seq AllocBody146_81 AllocBody146_266

def AllocBody146_268 : StackLang.HolProg 64 :=
.seq AllocBody146_36 AllocBody146_267

def AllocBody146_269 : StackLang.HolProg 64 :=
.seq AllocBody146_33 AllocBody146_268

def AllocBody146_270 : StackLang.HolProg 64 :=
.seq AllocBody146_32 AllocBody146_269

def AllocBody146_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_272 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody146_270 AllocBody146_271

def AllocBody146_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody146_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody146_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody146_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def AllocBody146_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody146_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody146_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody146_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody146_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody146_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody146_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody146_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody146_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody146_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def AllocBody146_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody146_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_303 : StackLang.HolProg 64 :=
.seq AllocBody146_301 AllocBody146_302

def AllocBody146_304 : StackLang.HolProg 64 :=
.seq AllocBody146_300 AllocBody146_303

def AllocBody146_305 : StackLang.HolProg 64 :=
.seq AllocBody146_299 AllocBody146_304

def AllocBody146_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_308 : StackLang.HolProg 64 :=
.seq AllocBody146_306 AllocBody146_307

def AllocBody146_309 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) AllocBody146_305 AllocBody146_308

def AllocBody146_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def AllocBody146_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody146_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_317 : StackLang.HolProg 64 :=
.seq AllocBody146_315 AllocBody146_316

def AllocBody146_318 : StackLang.HolProg 64 :=
.seq AllocBody146_314 AllocBody146_317

def AllocBody146_319 : StackLang.HolProg 64 :=
.seq AllocBody146_313 AllocBody146_318

def AllocBody146_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_322 : StackLang.HolProg 64 :=
.seq AllocBody146_320 AllocBody146_321

def AllocBody146_323 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) AllocBody146_319 AllocBody146_322

def AllocBody146_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 2#64)

def AllocBody146_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody146_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_331 : StackLang.HolProg 64 :=
.seq AllocBody146_329 AllocBody146_330

def AllocBody146_332 : StackLang.HolProg 64 :=
.seq AllocBody146_328 AllocBody146_331

def AllocBody146_333 : StackLang.HolProg 64 :=
.seq AllocBody146_327 AllocBody146_332

def AllocBody146_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_336 : StackLang.HolProg 64 :=
.seq AllocBody146_334 AllocBody146_335

def AllocBody146_337 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) AllocBody146_333 AllocBody146_336

def AllocBody146_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 3#64)

def AllocBody146_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody146_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_345 : StackLang.HolProg 64 :=
.seq AllocBody146_343 AllocBody146_344

def AllocBody146_346 : StackLang.HolProg 64 :=
.seq AllocBody146_342 AllocBody146_345

def AllocBody146_347 : StackLang.HolProg 64 :=
.seq AllocBody146_341 AllocBody146_346

def AllocBody146_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_350 : StackLang.HolProg 64 :=
.seq AllocBody146_348 AllocBody146_349

def AllocBody146_351 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) AllocBody146_347 AllocBody146_350

def AllocBody146_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody146_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody146_357 : StackLang.HolProg 64 :=
.seq AllocBody146_355 AllocBody146_356

def AllocBody146_358 : StackLang.HolProg 64 :=
.seq AllocBody146_354 AllocBody146_357

def AllocBody146_359 : StackLang.HolProg 64 :=
.seq AllocBody146_353 AllocBody146_358

def AllocBody146_360 : StackLang.HolProg 64 :=
.seq AllocBody146_352 AllocBody146_359

def AllocBody146_361 : StackLang.HolProg 64 :=
.seq AllocBody146_351 AllocBody146_360

def AllocBody146_362 : StackLang.HolProg 64 :=
.seq AllocBody146_340 AllocBody146_361

def AllocBody146_363 : StackLang.HolProg 64 :=
.seq AllocBody146_339 AllocBody146_362

def AllocBody146_364 : StackLang.HolProg 64 :=
.seq AllocBody146_338 AllocBody146_363

def AllocBody146_365 : StackLang.HolProg 64 :=
.seq AllocBody146_337 AllocBody146_364

def AllocBody146_366 : StackLang.HolProg 64 :=
.seq AllocBody146_326 AllocBody146_365

def AllocBody146_367 : StackLang.HolProg 64 :=
.seq AllocBody146_325 AllocBody146_366

def AllocBody146_368 : StackLang.HolProg 64 :=
.seq AllocBody146_324 AllocBody146_367

def AllocBody146_369 : StackLang.HolProg 64 :=
.seq AllocBody146_323 AllocBody146_368

def AllocBody146_370 : StackLang.HolProg 64 :=
.seq AllocBody146_312 AllocBody146_369

def AllocBody146_371 : StackLang.HolProg 64 :=
.seq AllocBody146_311 AllocBody146_370

def AllocBody146_372 : StackLang.HolProg 64 :=
.seq AllocBody146_310 AllocBody146_371

def AllocBody146_373 : StackLang.HolProg 64 :=
.seq AllocBody146_309 AllocBody146_372

def AllocBody146_374 : StackLang.HolProg 64 :=
.seq AllocBody146_298 AllocBody146_373

def AllocBody146_375 : StackLang.HolProg 64 :=
.seq AllocBody146_297 AllocBody146_374

def AllocBody146_376 : StackLang.HolProg 64 :=
.seq AllocBody146_296 AllocBody146_375

def AllocBody146_377 : StackLang.HolProg 64 :=
.seq AllocBody146_295 AllocBody146_376

def AllocBody146_378 : StackLang.HolProg 64 :=
.seq AllocBody146_294 AllocBody146_377

def AllocBody146_379 : StackLang.HolProg 64 :=
.seq AllocBody146_293 AllocBody146_378

def AllocBody146_380 : StackLang.HolProg 64 :=
.seq AllocBody146_292 AllocBody146_379

def AllocBody146_381 : StackLang.HolProg 64 :=
.seq AllocBody146_291 AllocBody146_380

def AllocBody146_382 : StackLang.HolProg 64 :=
.seq AllocBody146_290 AllocBody146_381

def AllocBody146_383 : StackLang.HolProg 64 :=
.seq AllocBody146_289 AllocBody146_382

def AllocBody146_384 : StackLang.HolProg 64 :=
.seq AllocBody146_288 AllocBody146_383

def AllocBody146_385 : StackLang.HolProg 64 :=
.seq AllocBody146_287 AllocBody146_384

def AllocBody146_386 : StackLang.HolProg 64 :=
.seq AllocBody146_286 AllocBody146_385

def AllocBody146_387 : StackLang.HolProg 64 :=
.seq AllocBody146_285 AllocBody146_386

def AllocBody146_388 : StackLang.HolProg 64 :=
.seq AllocBody146_284 AllocBody146_387

def AllocBody146_389 : StackLang.HolProg 64 :=
.seq AllocBody146_283 AllocBody146_388

def AllocBody146_390 : StackLang.HolProg 64 :=
.seq AllocBody146_282 AllocBody146_389

def AllocBody146_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody146_393 : StackLang.HolProg 64 :=
.seq AllocBody146_391 AllocBody146_392

def AllocBody146_394 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody146_390 AllocBody146_393

def AllocBody146_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody146_397 : StackLang.HolProg 64 :=
.seq AllocBody146_395 AllocBody146_396

def AllocBody146_398 : StackLang.HolProg 64 :=
.seq AllocBody146_394 AllocBody146_397

def AllocBody146_399 : StackLang.HolProg 64 :=
.seq AllocBody146_281 AllocBody146_398

def AllocBody146_400 : StackLang.HolProg 64 :=
.loop AllocBody146_399

def AllocBody146_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody146_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody146_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody146_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody146_405 : StackLang.HolProg 64 :=
.seq AllocBody146_403 AllocBody146_404

def AllocBody146_406 : StackLang.HolProg 64 :=
.seq AllocBody146_402 AllocBody146_405

def AllocBody146_407 : StackLang.HolProg 64 :=
.seq AllocBody146_401 AllocBody146_406

def AllocBody146_408 : StackLang.HolProg 64 :=
.seq AllocBody146_400 AllocBody146_407

def AllocBody146_409 : StackLang.HolProg 64 :=
.seq AllocBody146_280 AllocBody146_408

def AllocBody146_410 : StackLang.HolProg 64 :=
.seq AllocBody146_279 AllocBody146_409

def AllocBody146_411 : StackLang.HolProg 64 :=
.seq AllocBody146_278 AllocBody146_410

def AllocBody146_412 : StackLang.HolProg 64 :=
.seq AllocBody146_277 AllocBody146_411

def AllocBody146_413 : StackLang.HolProg 64 :=
.seq AllocBody146_276 AllocBody146_412

def AllocBody146_414 : StackLang.HolProg 64 :=
.seq AllocBody146_275 AllocBody146_413

def AllocBody146_415 : StackLang.HolProg 64 :=
.seq AllocBody146_274 AllocBody146_414

def AllocBody146_416 : StackLang.HolProg 64 :=
.seq AllocBody146_273 AllocBody146_415

def AllocBody146_417 : StackLang.HolProg 64 :=
.seq AllocBody146_272 AllocBody146_416

def AllocBody146_418 : StackLang.HolProg 64 :=
.seq AllocBody146_31 AllocBody146_417

def AllocBody146_419 : StackLang.HolProg 64 :=
.seq AllocBody146_30 AllocBody146_418

def AllocBody146_420 : StackLang.HolProg 64 :=
.seq AllocBody146_29 AllocBody146_419

def AllocBody146_421 : StackLang.HolProg 64 :=
.seq AllocBody146_28 AllocBody146_420

def AllocBody146_422 : StackLang.HolProg 64 :=
.seq AllocBody146_17 AllocBody146_421

def AllocBody146_423 : StackLang.HolProg 64 :=
.seq AllocBody146_16 AllocBody146_422

def AllocBody146_424 : StackLang.HolProg 64 :=
.seq AllocBody146_15 AllocBody146_423

def AllocBody146_425 : StackLang.HolProg 64 :=
.seq AllocBody146_14 AllocBody146_424

def AllocBody146_426 : StackLang.HolProg 64 :=
.seq AllocBody146_13 AllocBody146_425

def AllocBody146_427 : StackLang.HolProg 64 :=
.seq AllocBody146_2 AllocBody146_426

def AllocBody146_428 : StackLang.HolProg 64 :=
.seq AllocBody146_1 AllocBody146_427

def AllocBody146_429 : StackLang.HolProg 64 :=
.seq AllocBody146_0 AllocBody146_428

def Alloc146 : Nat × StackLang.HolProg 64 := (146, AllocBody146_429)
theorem Alloc146_eq : StackAlloc.progComp (146, raw146) = Alloc146 := by
  kernel_rfl
#print axioms Alloc146_eq
end InitECandidate.Proofs.BackendStages
