import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw138
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody138_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody138_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody138_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody138_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody138_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody138_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody138_6 : StackLang.HolProg 64 :=
.seq AllocBody138_4 AllocBody138_5

def AllocBody138_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 97#64)

def AllocBody138_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody138_10 : StackLang.HolProg 64 :=
.seq AllocBody138_8 AllocBody138_9

def AllocBody138_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody138_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody138_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody138_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 138 3

def AllocBody138_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody138_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody138_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody138_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody138_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody138_21 : StackLang.HolProg 64 :=
.seq AllocBody138_19 AllocBody138_20

def AllocBody138_22 : StackLang.HolProg 64 :=
.seq AllocBody138_18 AllocBody138_21

def AllocBody138_23 : StackLang.HolProg 64 :=
.seq AllocBody138_17 AllocBody138_22

def AllocBody138_24 : StackLang.HolProg 64 :=
.seq AllocBody138_16 AllocBody138_23

def AllocBody138_25 : StackLang.HolProg 64 :=
.seq AllocBody138_15 AllocBody138_24

def AllocBody138_26 : StackLang.HolProg 64 :=
.seq AllocBody138_14 AllocBody138_25

def AllocBody138_27 : StackLang.HolProg 64 :=
.seq AllocBody138_13 AllocBody138_26

def AllocBody138_28 : StackLang.HolProg 64 :=
.seq AllocBody138_12 AllocBody138_27

def AllocBody138_29 : StackLang.HolProg 64 :=
.seq AllocBody138_11 AllocBody138_28

def AllocBody138_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody138_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody138_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody138_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody138_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody138_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody138_38 : StackLang.HolProg 64 :=
.seq AllocBody138_36 AllocBody138_37

def AllocBody138_39 : StackLang.HolProg 64 :=
.seq AllocBody138_35 AllocBody138_38

def AllocBody138_40 : StackLang.HolProg 64 :=
.seq AllocBody138_34 AllocBody138_39

def AllocBody138_41 : StackLang.HolProg 64 :=
.seq AllocBody138_33 AllocBody138_40

def AllocBody138_42 : StackLang.HolProg 64 :=
.seq AllocBody138_32 AllocBody138_41

def AllocBody138_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody138_44 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody138_45 : StackLang.HolProg 64 :=
.seq AllocBody138_43 AllocBody138_44

def AllocBody138_46 : StackLang.HolProg 64 :=
.call (some (AllocBody138_42, 0, 138, 2)) (Sum.inl 137) (some (AllocBody138_45, 138, 3))

def AllocBody138_47 : StackLang.HolProg 64 :=
.seq AllocBody138_31 AllocBody138_46

def AllocBody138_48 : StackLang.HolProg 64 :=
.seq AllocBody138_30 AllocBody138_47

def AllocBody138_49 : StackLang.HolProg 64 :=
.seq AllocBody138_29 AllocBody138_48

def AllocBody138_50 : StackLang.HolProg 64 :=
.seq AllocBody138_10 AllocBody138_49

def AllocBody138_51 : StackLang.HolProg 64 :=
.seq AllocBody138_7 AllocBody138_50

def AllocBody138_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody138_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody138_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody138_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody138_58 : StackLang.HolProg 64 :=
.seq AllocBody138_56 AllocBody138_57

def AllocBody138_59 : StackLang.HolProg 64 :=
.seq AllocBody138_55 AllocBody138_58

def AllocBody138_60 : StackLang.HolProg 64 :=
.seq AllocBody138_54 AllocBody138_59

def AllocBody138_61 : StackLang.HolProg 64 :=
.seq AllocBody138_53 AllocBody138_60

def AllocBody138_62 : StackLang.HolProg 64 :=
.seq AllocBody138_52 AllocBody138_61

def AllocBody138_63 : StackLang.HolProg 64 :=
.seq AllocBody138_51 AllocBody138_62

def AllocBody138_64 : StackLang.HolProg 64 :=
.seq AllocBody138_6 AllocBody138_63

def AllocBody138_65 : StackLang.HolProg 64 :=
.seq AllocBody138_3 AllocBody138_64

def AllocBody138_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody138_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody138_65 AllocBody138_66

def AllocBody138_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody138_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody138_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody138_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody138_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody138_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody138_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody138_75 : StackLang.HolProg 64 :=
.seq AllocBody138_73 AllocBody138_74

def AllocBody138_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 98#64)

def AllocBody138_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody138_79 : StackLang.HolProg 64 :=
.seq AllocBody138_77 AllocBody138_78

def AllocBody138_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody138_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody138_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody138_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 138 5

def AllocBody138_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody138_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody138_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody138_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody138_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody138_90 : StackLang.HolProg 64 :=
.seq AllocBody138_88 AllocBody138_89

def AllocBody138_91 : StackLang.HolProg 64 :=
.seq AllocBody138_87 AllocBody138_90

def AllocBody138_92 : StackLang.HolProg 64 :=
.seq AllocBody138_86 AllocBody138_91

def AllocBody138_93 : StackLang.HolProg 64 :=
.seq AllocBody138_85 AllocBody138_92

def AllocBody138_94 : StackLang.HolProg 64 :=
.seq AllocBody138_84 AllocBody138_93

def AllocBody138_95 : StackLang.HolProg 64 :=
.seq AllocBody138_83 AllocBody138_94

def AllocBody138_96 : StackLang.HolProg 64 :=
.seq AllocBody138_82 AllocBody138_95

def AllocBody138_97 : StackLang.HolProg 64 :=
.seq AllocBody138_81 AllocBody138_96

def AllocBody138_98 : StackLang.HolProg 64 :=
.seq AllocBody138_80 AllocBody138_97

def AllocBody138_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody138_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody138_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody138_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody138_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody138_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody138_107 : StackLang.HolProg 64 :=
.seq AllocBody138_105 AllocBody138_106

def AllocBody138_108 : StackLang.HolProg 64 :=
.seq AllocBody138_104 AllocBody138_107

def AllocBody138_109 : StackLang.HolProg 64 :=
.seq AllocBody138_103 AllocBody138_108

def AllocBody138_110 : StackLang.HolProg 64 :=
.seq AllocBody138_102 AllocBody138_109

def AllocBody138_111 : StackLang.HolProg 64 :=
.seq AllocBody138_101 AllocBody138_110

def AllocBody138_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody138_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody138_114 : StackLang.HolProg 64 :=
.seq AllocBody138_112 AllocBody138_113

def AllocBody138_115 : StackLang.HolProg 64 :=
.call (some (AllocBody138_111, 0, 138, 4)) (Sum.inl 137) (some (AllocBody138_114, 138, 5))

def AllocBody138_116 : StackLang.HolProg 64 :=
.seq AllocBody138_100 AllocBody138_115

def AllocBody138_117 : StackLang.HolProg 64 :=
.seq AllocBody138_99 AllocBody138_116

def AllocBody138_118 : StackLang.HolProg 64 :=
.seq AllocBody138_98 AllocBody138_117

def AllocBody138_119 : StackLang.HolProg 64 :=
.seq AllocBody138_79 AllocBody138_118

def AllocBody138_120 : StackLang.HolProg 64 :=
.seq AllocBody138_76 AllocBody138_119

def AllocBody138_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody138_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody138_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody138_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody138_127 : StackLang.HolProg 64 :=
.seq AllocBody138_125 AllocBody138_126

def AllocBody138_128 : StackLang.HolProg 64 :=
.seq AllocBody138_124 AllocBody138_127

def AllocBody138_129 : StackLang.HolProg 64 :=
.seq AllocBody138_123 AllocBody138_128

def AllocBody138_130 : StackLang.HolProg 64 :=
.seq AllocBody138_122 AllocBody138_129

def AllocBody138_131 : StackLang.HolProg 64 :=
.seq AllocBody138_121 AllocBody138_130

def AllocBody138_132 : StackLang.HolProg 64 :=
.seq AllocBody138_120 AllocBody138_131

def AllocBody138_133 : StackLang.HolProg 64 :=
.seq AllocBody138_75 AllocBody138_132

def AllocBody138_134 : StackLang.HolProg 64 :=
.seq AllocBody138_72 AllocBody138_133

def AllocBody138_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody138_134 AllocBody138_135

def AllocBody138_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody138_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody138_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody138_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody138_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody138_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 99#64)

def AllocBody138_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody138_146 : StackLang.HolProg 64 :=
.seq AllocBody138_144 AllocBody138_145

def AllocBody138_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody138_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody138_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody138_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 138 7

def AllocBody138_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody138_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody138_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody138_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody138_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody138_157 : StackLang.HolProg 64 :=
.seq AllocBody138_155 AllocBody138_156

def AllocBody138_158 : StackLang.HolProg 64 :=
.seq AllocBody138_154 AllocBody138_157

def AllocBody138_159 : StackLang.HolProg 64 :=
.seq AllocBody138_153 AllocBody138_158

def AllocBody138_160 : StackLang.HolProg 64 :=
.seq AllocBody138_152 AllocBody138_159

def AllocBody138_161 : StackLang.HolProg 64 :=
.seq AllocBody138_151 AllocBody138_160

def AllocBody138_162 : StackLang.HolProg 64 :=
.seq AllocBody138_150 AllocBody138_161

def AllocBody138_163 : StackLang.HolProg 64 :=
.seq AllocBody138_149 AllocBody138_162

def AllocBody138_164 : StackLang.HolProg 64 :=
.seq AllocBody138_148 AllocBody138_163

def AllocBody138_165 : StackLang.HolProg 64 :=
.seq AllocBody138_147 AllocBody138_164

def AllocBody138_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody138_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody138_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody138_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody138_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody138_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody138_174 : StackLang.HolProg 64 :=
.seq AllocBody138_172 AllocBody138_173

def AllocBody138_175 : StackLang.HolProg 64 :=
.seq AllocBody138_171 AllocBody138_174

def AllocBody138_176 : StackLang.HolProg 64 :=
.seq AllocBody138_170 AllocBody138_175

def AllocBody138_177 : StackLang.HolProg 64 :=
.seq AllocBody138_169 AllocBody138_176

def AllocBody138_178 : StackLang.HolProg 64 :=
.seq AllocBody138_168 AllocBody138_177

def AllocBody138_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody138_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody138_181 : StackLang.HolProg 64 :=
.seq AllocBody138_179 AllocBody138_180

def AllocBody138_182 : StackLang.HolProg 64 :=
.call (some (AllocBody138_178, 0, 138, 6)) (Sum.inl 137) (some (AllocBody138_181, 138, 7))

def AllocBody138_183 : StackLang.HolProg 64 :=
.seq AllocBody138_167 AllocBody138_182

def AllocBody138_184 : StackLang.HolProg 64 :=
.seq AllocBody138_166 AllocBody138_183

def AllocBody138_185 : StackLang.HolProg 64 :=
.seq AllocBody138_165 AllocBody138_184

def AllocBody138_186 : StackLang.HolProg 64 :=
.seq AllocBody138_146 AllocBody138_185

def AllocBody138_187 : StackLang.HolProg 64 :=
.seq AllocBody138_143 AllocBody138_186

def AllocBody138_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody138_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody138_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody138_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody138_194 : StackLang.HolProg 64 :=
.seq AllocBody138_192 AllocBody138_193

def AllocBody138_195 : StackLang.HolProg 64 :=
.seq AllocBody138_191 AllocBody138_194

def AllocBody138_196 : StackLang.HolProg 64 :=
.seq AllocBody138_190 AllocBody138_195

def AllocBody138_197 : StackLang.HolProg 64 :=
.seq AllocBody138_189 AllocBody138_196

def AllocBody138_198 : StackLang.HolProg 64 :=
.seq AllocBody138_188 AllocBody138_197

def AllocBody138_199 : StackLang.HolProg 64 :=
.seq AllocBody138_187 AllocBody138_198

def AllocBody138_200 : StackLang.HolProg 64 :=
.seq AllocBody138_142 AllocBody138_199

def AllocBody138_201 : StackLang.HolProg 64 :=
.seq AllocBody138_141 AllocBody138_200

def AllocBody138_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody138_203 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody138_201 AllocBody138_202

def AllocBody138_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody138_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody138_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody138_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody138_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody138_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 137

def AllocBody138_210 : StackLang.HolProg 64 :=
.seq AllocBody138_208 AllocBody138_209

def AllocBody138_211 : StackLang.HolProg 64 :=
.seq AllocBody138_207 AllocBody138_210

def AllocBody138_212 : StackLang.HolProg 64 :=
.seq AllocBody138_206 AllocBody138_211

def AllocBody138_213 : StackLang.HolProg 64 :=
.seq AllocBody138_205 AllocBody138_212

def AllocBody138_214 : StackLang.HolProg 64 :=
.seq AllocBody138_204 AllocBody138_213

def AllocBody138_215 : StackLang.HolProg 64 :=
.seq AllocBody138_203 AllocBody138_214

def AllocBody138_216 : StackLang.HolProg 64 :=
.seq AllocBody138_140 AllocBody138_215

def AllocBody138_217 : StackLang.HolProg 64 :=
.seq AllocBody138_139 AllocBody138_216

def AllocBody138_218 : StackLang.HolProg 64 :=
.seq AllocBody138_138 AllocBody138_217

def AllocBody138_219 : StackLang.HolProg 64 :=
.seq AllocBody138_137 AllocBody138_218

def AllocBody138_220 : StackLang.HolProg 64 :=
.seq AllocBody138_136 AllocBody138_219

def AllocBody138_221 : StackLang.HolProg 64 :=
.seq AllocBody138_71 AllocBody138_220

def AllocBody138_222 : StackLang.HolProg 64 :=
.seq AllocBody138_70 AllocBody138_221

def AllocBody138_223 : StackLang.HolProg 64 :=
.seq AllocBody138_69 AllocBody138_222

def AllocBody138_224 : StackLang.HolProg 64 :=
.seq AllocBody138_68 AllocBody138_223

def AllocBody138_225 : StackLang.HolProg 64 :=
.seq AllocBody138_67 AllocBody138_224

def AllocBody138_226 : StackLang.HolProg 64 :=
.seq AllocBody138_2 AllocBody138_225

def AllocBody138_227 : StackLang.HolProg 64 :=
.seq AllocBody138_1 AllocBody138_226

def AllocBody138_228 : StackLang.HolProg 64 :=
.seq AllocBody138_0 AllocBody138_227

def Alloc138 : Nat × StackLang.HolProg 64 := (138, AllocBody138_228)
theorem Alloc138_eq : StackAlloc.progComp (138, raw138) = Alloc138 := by
  kernel_rfl
#print axioms Alloc138_eq
end InitECandidate.Proofs.BackendStages
