import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw241
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody241_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody241_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody241_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def AllocBody241_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody241_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody241_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody241_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody241_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody241_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody241_10 : StackLang.HolProg 64 :=
.seq AllocBody241_8 AllocBody241_9

def AllocBody241_11 : StackLang.HolProg 64 :=
.seq AllocBody241_7 AllocBody241_10

def AllocBody241_12 : StackLang.HolProg 64 :=
.seq AllocBody241_6 AllocBody241_11

def AllocBody241_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 467#64)

def AllocBody241_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody241_16 : StackLang.HolProg 64 :=
.seq AllocBody241_14 AllocBody241_15

def AllocBody241_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody241_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody241_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody241_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 241 3

def AllocBody241_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody241_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody241_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody241_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody241_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody241_27 : StackLang.HolProg 64 :=
.seq AllocBody241_25 AllocBody241_26

def AllocBody241_28 : StackLang.HolProg 64 :=
.seq AllocBody241_24 AllocBody241_27

def AllocBody241_29 : StackLang.HolProg 64 :=
.seq AllocBody241_23 AllocBody241_28

def AllocBody241_30 : StackLang.HolProg 64 :=
.seq AllocBody241_22 AllocBody241_29

def AllocBody241_31 : StackLang.HolProg 64 :=
.seq AllocBody241_21 AllocBody241_30

def AllocBody241_32 : StackLang.HolProg 64 :=
.seq AllocBody241_20 AllocBody241_31

def AllocBody241_33 : StackLang.HolProg 64 :=
.seq AllocBody241_19 AllocBody241_32

def AllocBody241_34 : StackLang.HolProg 64 :=
.seq AllocBody241_18 AllocBody241_33

def AllocBody241_35 : StackLang.HolProg 64 :=
.seq AllocBody241_17 AllocBody241_34

def AllocBody241_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody241_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody241_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody241_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody241_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody241_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody241_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody241_45 : StackLang.HolProg 64 :=
.seq AllocBody241_43 AllocBody241_44

def AllocBody241_46 : StackLang.HolProg 64 :=
.seq AllocBody241_42 AllocBody241_45

def AllocBody241_47 : StackLang.HolProg 64 :=
.seq AllocBody241_41 AllocBody241_46

def AllocBody241_48 : StackLang.HolProg 64 :=
.seq AllocBody241_40 AllocBody241_47

def AllocBody241_49 : StackLang.HolProg 64 :=
.seq AllocBody241_39 AllocBody241_48

def AllocBody241_50 : StackLang.HolProg 64 :=
.seq AllocBody241_38 AllocBody241_49

def AllocBody241_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody241_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody241_53 : StackLang.HolProg 64 :=
.seq AllocBody241_51 AllocBody241_52

def AllocBody241_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody241_55 : StackLang.HolProg 64 :=
.seq AllocBody241_53 AllocBody241_54

def AllocBody241_56 : StackLang.HolProg 64 :=
.call (some (AllocBody241_50, 0, 241, 2)) (Sum.inl 68) (some (AllocBody241_55, 241, 3))

def AllocBody241_57 : StackLang.HolProg 64 :=
.seq AllocBody241_37 AllocBody241_56

def AllocBody241_58 : StackLang.HolProg 64 :=
.seq AllocBody241_36 AllocBody241_57

def AllocBody241_59 : StackLang.HolProg 64 :=
.seq AllocBody241_35 AllocBody241_58

def AllocBody241_60 : StackLang.HolProg 64 :=
.seq AllocBody241_16 AllocBody241_59

def AllocBody241_61 : StackLang.HolProg 64 :=
.seq AllocBody241_13 AllocBody241_60

def AllocBody241_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody241_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody241_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody241_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody241_66 : StackLang.HolProg 64 :=
.seq AllocBody241_64 AllocBody241_65

def AllocBody241_67 : StackLang.HolProg 64 :=
.seq AllocBody241_63 AllocBody241_66

def AllocBody241_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 468#64)

def AllocBody241_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody241_71 : StackLang.HolProg 64 :=
.seq AllocBody241_69 AllocBody241_70

def AllocBody241_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody241_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody241_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody241_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 241 5

def AllocBody241_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody241_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody241_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody241_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody241_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody241_82 : StackLang.HolProg 64 :=
.seq AllocBody241_80 AllocBody241_81

def AllocBody241_83 : StackLang.HolProg 64 :=
.seq AllocBody241_79 AllocBody241_82

def AllocBody241_84 : StackLang.HolProg 64 :=
.seq AllocBody241_78 AllocBody241_83

def AllocBody241_85 : StackLang.HolProg 64 :=
.seq AllocBody241_77 AllocBody241_84

def AllocBody241_86 : StackLang.HolProg 64 :=
.seq AllocBody241_76 AllocBody241_85

def AllocBody241_87 : StackLang.HolProg 64 :=
.seq AllocBody241_75 AllocBody241_86

def AllocBody241_88 : StackLang.HolProg 64 :=
.seq AllocBody241_74 AllocBody241_87

def AllocBody241_89 : StackLang.HolProg 64 :=
.seq AllocBody241_73 AllocBody241_88

def AllocBody241_90 : StackLang.HolProg 64 :=
.seq AllocBody241_72 AllocBody241_89

def AllocBody241_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody241_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody241_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody241_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody241_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody241_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody241_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody241_100 : StackLang.HolProg 64 :=
.seq AllocBody241_98 AllocBody241_99

def AllocBody241_101 : StackLang.HolProg 64 :=
.seq AllocBody241_97 AllocBody241_100

def AllocBody241_102 : StackLang.HolProg 64 :=
.seq AllocBody241_96 AllocBody241_101

def AllocBody241_103 : StackLang.HolProg 64 :=
.seq AllocBody241_95 AllocBody241_102

def AllocBody241_104 : StackLang.HolProg 64 :=
.seq AllocBody241_94 AllocBody241_103

def AllocBody241_105 : StackLang.HolProg 64 :=
.seq AllocBody241_93 AllocBody241_104

def AllocBody241_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody241_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody241_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody241_109 : StackLang.HolProg 64 :=
.seq AllocBody241_107 AllocBody241_108

def AllocBody241_110 : StackLang.HolProg 64 :=
.seq AllocBody241_106 AllocBody241_109

def AllocBody241_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody241_112 : StackLang.HolProg 64 :=
.seq AllocBody241_110 AllocBody241_111

def AllocBody241_113 : StackLang.HolProg 64 :=
.call (some (AllocBody241_105, 0, 241, 4)) (Sum.inl 77) (some (AllocBody241_112, 241, 5))

def AllocBody241_114 : StackLang.HolProg 64 :=
.seq AllocBody241_92 AllocBody241_113

def AllocBody241_115 : StackLang.HolProg 64 :=
.seq AllocBody241_91 AllocBody241_114

def AllocBody241_116 : StackLang.HolProg 64 :=
.seq AllocBody241_90 AllocBody241_115

def AllocBody241_117 : StackLang.HolProg 64 :=
.seq AllocBody241_71 AllocBody241_116

def AllocBody241_118 : StackLang.HolProg 64 :=
.seq AllocBody241_68 AllocBody241_117

def AllocBody241_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody241_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody241_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody241_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody241_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody241_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody241_128 : StackLang.HolProg 64 :=
.seq AllocBody241_126 AllocBody241_127

def AllocBody241_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 469#64)

def AllocBody241_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody241_132 : StackLang.HolProg 64 :=
.seq AllocBody241_130 AllocBody241_131

def AllocBody241_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody241_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody241_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody241_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 241 7

def AllocBody241_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody241_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody241_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody241_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody241_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody241_143 : StackLang.HolProg 64 :=
.seq AllocBody241_141 AllocBody241_142

def AllocBody241_144 : StackLang.HolProg 64 :=
.seq AllocBody241_140 AllocBody241_143

def AllocBody241_145 : StackLang.HolProg 64 :=
.seq AllocBody241_139 AllocBody241_144

def AllocBody241_146 : StackLang.HolProg 64 :=
.seq AllocBody241_138 AllocBody241_145

def AllocBody241_147 : StackLang.HolProg 64 :=
.seq AllocBody241_137 AllocBody241_146

def AllocBody241_148 : StackLang.HolProg 64 :=
.seq AllocBody241_136 AllocBody241_147

def AllocBody241_149 : StackLang.HolProg 64 :=
.seq AllocBody241_135 AllocBody241_148

def AllocBody241_150 : StackLang.HolProg 64 :=
.seq AllocBody241_134 AllocBody241_149

def AllocBody241_151 : StackLang.HolProg 64 :=
.seq AllocBody241_133 AllocBody241_150

def AllocBody241_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody241_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody241_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody241_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody241_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody241_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody241_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody241_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody241_161 : StackLang.HolProg 64 :=
.seq AllocBody241_159 AllocBody241_160

def AllocBody241_162 : StackLang.HolProg 64 :=
.seq AllocBody241_158 AllocBody241_161

def AllocBody241_163 : StackLang.HolProg 64 :=
.seq AllocBody241_157 AllocBody241_162

def AllocBody241_164 : StackLang.HolProg 64 :=
.seq AllocBody241_156 AllocBody241_163

def AllocBody241_165 : StackLang.HolProg 64 :=
.seq AllocBody241_155 AllocBody241_164

def AllocBody241_166 : StackLang.HolProg 64 :=
.seq AllocBody241_154 AllocBody241_165

def AllocBody241_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody241_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody241_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody241_170 : StackLang.HolProg 64 :=
.seq AllocBody241_168 AllocBody241_169

def AllocBody241_171 : StackLang.HolProg 64 :=
.seq AllocBody241_167 AllocBody241_170

def AllocBody241_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody241_173 : StackLang.HolProg 64 :=
.seq AllocBody241_171 AllocBody241_172

def AllocBody241_174 : StackLang.HolProg 64 :=
.call (some (AllocBody241_166, 0, 241, 6)) (Sum.inl 78) (some (AllocBody241_173, 241, 7))

def AllocBody241_175 : StackLang.HolProg 64 :=
.seq AllocBody241_153 AllocBody241_174

def AllocBody241_176 : StackLang.HolProg 64 :=
.seq AllocBody241_152 AllocBody241_175

def AllocBody241_177 : StackLang.HolProg 64 :=
.seq AllocBody241_151 AllocBody241_176

def AllocBody241_178 : StackLang.HolProg 64 :=
.seq AllocBody241_132 AllocBody241_177

def AllocBody241_179 : StackLang.HolProg 64 :=
.seq AllocBody241_129 AllocBody241_178

def AllocBody241_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody241_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody241_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody241_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody241_184 : StackLang.HolProg 64 :=
.seq AllocBody241_182 AllocBody241_183

def AllocBody241_185 : StackLang.HolProg 64 :=
.seq AllocBody241_181 AllocBody241_184

def AllocBody241_186 : StackLang.HolProg 64 :=
.seq AllocBody241_180 AllocBody241_185

def AllocBody241_187 : StackLang.HolProg 64 :=
.seq AllocBody241_179 AllocBody241_186

def AllocBody241_188 : StackLang.HolProg 64 :=
.seq AllocBody241_128 AllocBody241_187

def AllocBody241_189 : StackLang.HolProg 64 :=
.seq AllocBody241_125 AllocBody241_188

def AllocBody241_190 : StackLang.HolProg 64 :=
.seq AllocBody241_124 AllocBody241_189

def AllocBody241_191 : StackLang.HolProg 64 :=
.seq AllocBody241_123 AllocBody241_190

def AllocBody241_192 : StackLang.HolProg 64 :=
.seq AllocBody241_122 AllocBody241_191

def AllocBody241_193 : StackLang.HolProg 64 :=
.seq AllocBody241_121 AllocBody241_192

def AllocBody241_194 : StackLang.HolProg 64 :=
.seq AllocBody241_120 AllocBody241_193

def AllocBody241_195 : StackLang.HolProg 64 :=
.seq AllocBody241_119 AllocBody241_194

def AllocBody241_196 : StackLang.HolProg 64 :=
.seq AllocBody241_118 AllocBody241_195

def AllocBody241_197 : StackLang.HolProg 64 :=
.seq AllocBody241_67 AllocBody241_196

def AllocBody241_198 : StackLang.HolProg 64 :=
.seq AllocBody241_62 AllocBody241_197

def AllocBody241_199 : StackLang.HolProg 64 :=
.seq AllocBody241_61 AllocBody241_198

def AllocBody241_200 : StackLang.HolProg 64 :=
.seq AllocBody241_12 AllocBody241_199

def AllocBody241_201 : StackLang.HolProg 64 :=
.seq AllocBody241_5 AllocBody241_200

def AllocBody241_202 : StackLang.HolProg 64 :=
.seq AllocBody241_4 AllocBody241_201

def AllocBody241_203 : StackLang.HolProg 64 :=
.seq AllocBody241_3 AllocBody241_202

def AllocBody241_204 : StackLang.HolProg 64 :=
.seq AllocBody241_2 AllocBody241_203

def AllocBody241_205 : StackLang.HolProg 64 :=
.seq AllocBody241_1 AllocBody241_204

def AllocBody241_206 : StackLang.HolProg 64 :=
.seq AllocBody241_0 AllocBody241_205

def Alloc241 : Nat × StackLang.HolProg 64 := (241, AllocBody241_206)
theorem Alloc241_eq : StackAlloc.progComp (241, raw241) = Alloc241 := by
  kernel_rfl
#print axioms Alloc241_eq
end InitECandidate.Proofs.BackendStages
