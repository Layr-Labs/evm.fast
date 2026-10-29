import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw174
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody174_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody174_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 55#64)

def AllocBody174_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody174_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody174_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody174_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody174_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody174_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody174_12 : StackLang.HolProg 64 :=
.seq AllocBody174_10 AllocBody174_11

def AllocBody174_13 : StackLang.HolProg 64 :=
.seq AllocBody174_9 AllocBody174_12

def AllocBody174_14 : StackLang.HolProg 64 :=
.seq AllocBody174_8 AllocBody174_13

def AllocBody174_15 : StackLang.HolProg 64 :=
.seq AllocBody174_7 AllocBody174_14

def AllocBody174_16 : StackLang.HolProg 64 :=
.seq AllocBody174_6 AllocBody174_15

def AllocBody174_17 : StackLang.HolProg 64 :=
.seq AllocBody174_5 AllocBody174_16

def AllocBody174_18 : StackLang.HolProg 64 :=
.seq AllocBody174_4 AllocBody174_17

def AllocBody174_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody174_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody174_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody174_22 : StackLang.HolProg 64 :=
.seq AllocBody174_20 AllocBody174_21

def AllocBody174_23 : StackLang.HolProg 64 :=
.seq AllocBody174_19 AllocBody174_22

def AllocBody174_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody174_18 AllocBody174_23

def AllocBody174_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody174_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody174_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody174_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody174_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody174_30 : StackLang.HolProg 64 :=
.seq AllocBody174_28 AllocBody174_29

def AllocBody174_31 : StackLang.HolProg 64 :=
.seq AllocBody174_27 AllocBody174_30

def AllocBody174_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 194#64)

def AllocBody174_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody174_35 : StackLang.HolProg 64 :=
.seq AllocBody174_33 AllocBody174_34

def AllocBody174_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody174_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody174_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody174_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 174 3

def AllocBody174_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody174_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody174_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody174_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody174_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody174_46 : StackLang.HolProg 64 :=
.seq AllocBody174_44 AllocBody174_45

def AllocBody174_47 : StackLang.HolProg 64 :=
.seq AllocBody174_43 AllocBody174_46

def AllocBody174_48 : StackLang.HolProg 64 :=
.seq AllocBody174_42 AllocBody174_47

def AllocBody174_49 : StackLang.HolProg 64 :=
.seq AllocBody174_41 AllocBody174_48

def AllocBody174_50 : StackLang.HolProg 64 :=
.seq AllocBody174_40 AllocBody174_49

def AllocBody174_51 : StackLang.HolProg 64 :=
.seq AllocBody174_39 AllocBody174_50

def AllocBody174_52 : StackLang.HolProg 64 :=
.seq AllocBody174_38 AllocBody174_51

def AllocBody174_53 : StackLang.HolProg 64 :=
.seq AllocBody174_37 AllocBody174_52

def AllocBody174_54 : StackLang.HolProg 64 :=
.seq AllocBody174_36 AllocBody174_53

def AllocBody174_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody174_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody174_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody174_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody174_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody174_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody174_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody174_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody174_65 : StackLang.HolProg 64 :=
.seq AllocBody174_63 AllocBody174_64

def AllocBody174_66 : StackLang.HolProg 64 :=
.seq AllocBody174_62 AllocBody174_65

def AllocBody174_67 : StackLang.HolProg 64 :=
.seq AllocBody174_61 AllocBody174_66

def AllocBody174_68 : StackLang.HolProg 64 :=
.seq AllocBody174_60 AllocBody174_67

def AllocBody174_69 : StackLang.HolProg 64 :=
.seq AllocBody174_59 AllocBody174_68

def AllocBody174_70 : StackLang.HolProg 64 :=
.seq AllocBody174_58 AllocBody174_69

def AllocBody174_71 : StackLang.HolProg 64 :=
.seq AllocBody174_57 AllocBody174_70

def AllocBody174_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody174_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody174_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody174_75 : StackLang.HolProg 64 :=
.seq AllocBody174_73 AllocBody174_74

def AllocBody174_76 : StackLang.HolProg 64 :=
.seq AllocBody174_72 AllocBody174_75

def AllocBody174_77 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody174_78 : StackLang.HolProg 64 :=
.seq AllocBody174_76 AllocBody174_77

def AllocBody174_79 : StackLang.HolProg 64 :=
.call (some (AllocBody174_71, 0, 174, 2)) (Sum.inl 172) (some (AllocBody174_78, 174, 3))

def AllocBody174_80 : StackLang.HolProg 64 :=
.seq AllocBody174_56 AllocBody174_79

def AllocBody174_81 : StackLang.HolProg 64 :=
.seq AllocBody174_55 AllocBody174_80

def AllocBody174_82 : StackLang.HolProg 64 :=
.seq AllocBody174_54 AllocBody174_81

def AllocBody174_83 : StackLang.HolProg 64 :=
.seq AllocBody174_35 AllocBody174_82

def AllocBody174_84 : StackLang.HolProg 64 :=
.seq AllocBody174_32 AllocBody174_83

def AllocBody174_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody174_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody174_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 55#64)))

def AllocBody174_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody174_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody174_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody174_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 195#64)

def AllocBody174_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody174_96 : StackLang.HolProg 64 :=
.seq AllocBody174_94 AllocBody174_95

def AllocBody174_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody174_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody174_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody174_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 174 5

def AllocBody174_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody174_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody174_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody174_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody174_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody174_107 : StackLang.HolProg 64 :=
.seq AllocBody174_105 AllocBody174_106

def AllocBody174_108 : StackLang.HolProg 64 :=
.seq AllocBody174_104 AllocBody174_107

def AllocBody174_109 : StackLang.HolProg 64 :=
.seq AllocBody174_103 AllocBody174_108

def AllocBody174_110 : StackLang.HolProg 64 :=
.seq AllocBody174_102 AllocBody174_109

def AllocBody174_111 : StackLang.HolProg 64 :=
.seq AllocBody174_101 AllocBody174_110

def AllocBody174_112 : StackLang.HolProg 64 :=
.seq AllocBody174_100 AllocBody174_111

def AllocBody174_113 : StackLang.HolProg 64 :=
.seq AllocBody174_99 AllocBody174_112

def AllocBody174_114 : StackLang.HolProg 64 :=
.seq AllocBody174_98 AllocBody174_113

def AllocBody174_115 : StackLang.HolProg 64 :=
.seq AllocBody174_97 AllocBody174_114

def AllocBody174_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody174_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody174_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody174_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody174_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody174_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody174_124 : StackLang.HolProg 64 :=
.seq AllocBody174_122 AllocBody174_123

def AllocBody174_125 : StackLang.HolProg 64 :=
.seq AllocBody174_121 AllocBody174_124

def AllocBody174_126 : StackLang.HolProg 64 :=
.seq AllocBody174_120 AllocBody174_125

def AllocBody174_127 : StackLang.HolProg 64 :=
.seq AllocBody174_119 AllocBody174_126

def AllocBody174_128 : StackLang.HolProg 64 :=
.seq AllocBody174_118 AllocBody174_127

def AllocBody174_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody174_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody174_131 : StackLang.HolProg 64 :=
.seq AllocBody174_129 AllocBody174_130

def AllocBody174_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody174_133 : StackLang.HolProg 64 :=
.seq AllocBody174_131 AllocBody174_132

def AllocBody174_134 : StackLang.HolProg 64 :=
.call (some (AllocBody174_128, 0, 174, 4)) (Sum.inl 173) (some (AllocBody174_133, 174, 5))

def AllocBody174_135 : StackLang.HolProg 64 :=
.seq AllocBody174_117 AllocBody174_134

def AllocBody174_136 : StackLang.HolProg 64 :=
.seq AllocBody174_116 AllocBody174_135

def AllocBody174_137 : StackLang.HolProg 64 :=
.seq AllocBody174_115 AllocBody174_136

def AllocBody174_138 : StackLang.HolProg 64 :=
.seq AllocBody174_96 AllocBody174_137

def AllocBody174_139 : StackLang.HolProg 64 :=
.seq AllocBody174_93 AllocBody174_138

def AllocBody174_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody174_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody174_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody174_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody174_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody174_146 : StackLang.HolProg 64 :=
.seq AllocBody174_144 AllocBody174_145

def AllocBody174_147 : StackLang.HolProg 64 :=
.seq AllocBody174_143 AllocBody174_146

def AllocBody174_148 : StackLang.HolProg 64 :=
.seq AllocBody174_142 AllocBody174_147

def AllocBody174_149 : StackLang.HolProg 64 :=
.seq AllocBody174_141 AllocBody174_148

def AllocBody174_150 : StackLang.HolProg 64 :=
.seq AllocBody174_140 AllocBody174_149

def AllocBody174_151 : StackLang.HolProg 64 :=
.seq AllocBody174_139 AllocBody174_150

def AllocBody174_152 : StackLang.HolProg 64 :=
.seq AllocBody174_92 AllocBody174_151

def AllocBody174_153 : StackLang.HolProg 64 :=
.seq AllocBody174_91 AllocBody174_152

def AllocBody174_154 : StackLang.HolProg 64 :=
.seq AllocBody174_90 AllocBody174_153

def AllocBody174_155 : StackLang.HolProg 64 :=
.seq AllocBody174_89 AllocBody174_154

def AllocBody174_156 : StackLang.HolProg 64 :=
.seq AllocBody174_88 AllocBody174_155

def AllocBody174_157 : StackLang.HolProg 64 :=
.seq AllocBody174_87 AllocBody174_156

def AllocBody174_158 : StackLang.HolProg 64 :=
.seq AllocBody174_86 AllocBody174_157

def AllocBody174_159 : StackLang.HolProg 64 :=
.seq AllocBody174_85 AllocBody174_158

def AllocBody174_160 : StackLang.HolProg 64 :=
.seq AllocBody174_84 AllocBody174_159

def AllocBody174_161 : StackLang.HolProg 64 :=
.seq AllocBody174_31 AllocBody174_160

def AllocBody174_162 : StackLang.HolProg 64 :=
.seq AllocBody174_26 AllocBody174_161

def AllocBody174_163 : StackLang.HolProg 64 :=
.seq AllocBody174_25 AllocBody174_162

def AllocBody174_164 : StackLang.HolProg 64 :=
.seq AllocBody174_24 AllocBody174_163

def AllocBody174_165 : StackLang.HolProg 64 :=
.seq AllocBody174_3 AllocBody174_164

def AllocBody174_166 : StackLang.HolProg 64 :=
.seq AllocBody174_2 AllocBody174_165

def AllocBody174_167 : StackLang.HolProg 64 :=
.seq AllocBody174_1 AllocBody174_166

def AllocBody174_168 : StackLang.HolProg 64 :=
.seq AllocBody174_0 AllocBody174_167

def Alloc174 : Nat × StackLang.HolProg 64 := (174, AllocBody174_168)
theorem Alloc174_eq : StackAlloc.progComp (174, raw174) = Alloc174 := by
  kernel_rfl
#print axioms Alloc174_eq
end InitECandidate.Proofs.BackendStages
