import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw89
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody89_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody89_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody89_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody89_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody89_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody89_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody89_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody89_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody89_8 : StackLang.HolProg 64 :=
.seq AllocBody89_6 AllocBody89_7

def AllocBody89_9 : StackLang.HolProg 64 :=
.seq AllocBody89_5 AllocBody89_8

def AllocBody89_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 35#64)

def AllocBody89_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody89_13 : StackLang.HolProg 64 :=
.seq AllocBody89_11 AllocBody89_12

def AllocBody89_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody89_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody89_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody89_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 89 3

def AllocBody89_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody89_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody89_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody89_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody89_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody89_24 : StackLang.HolProg 64 :=
.seq AllocBody89_22 AllocBody89_23

def AllocBody89_25 : StackLang.HolProg 64 :=
.seq AllocBody89_21 AllocBody89_24

def AllocBody89_26 : StackLang.HolProg 64 :=
.seq AllocBody89_20 AllocBody89_25

def AllocBody89_27 : StackLang.HolProg 64 :=
.seq AllocBody89_19 AllocBody89_26

def AllocBody89_28 : StackLang.HolProg 64 :=
.seq AllocBody89_18 AllocBody89_27

def AllocBody89_29 : StackLang.HolProg 64 :=
.seq AllocBody89_17 AllocBody89_28

def AllocBody89_30 : StackLang.HolProg 64 :=
.seq AllocBody89_16 AllocBody89_29

def AllocBody89_31 : StackLang.HolProg 64 :=
.seq AllocBody89_15 AllocBody89_30

def AllocBody89_32 : StackLang.HolProg 64 :=
.seq AllocBody89_14 AllocBody89_31

def AllocBody89_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody89_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody89_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody89_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody89_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody89_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody89_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody89_42 : StackLang.HolProg 64 :=
.seq AllocBody89_40 AllocBody89_41

def AllocBody89_43 : StackLang.HolProg 64 :=
.seq AllocBody89_39 AllocBody89_42

def AllocBody89_44 : StackLang.HolProg 64 :=
.seq AllocBody89_38 AllocBody89_43

def AllocBody89_45 : StackLang.HolProg 64 :=
.seq AllocBody89_37 AllocBody89_44

def AllocBody89_46 : StackLang.HolProg 64 :=
.seq AllocBody89_36 AllocBody89_45

def AllocBody89_47 : StackLang.HolProg 64 :=
.seq AllocBody89_35 AllocBody89_46

def AllocBody89_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody89_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody89_50 : StackLang.HolProg 64 :=
.seq AllocBody89_48 AllocBody89_49

def AllocBody89_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody89_52 : StackLang.HolProg 64 :=
.seq AllocBody89_50 AllocBody89_51

def AllocBody89_53 : StackLang.HolProg 64 :=
.call (some (AllocBody89_47, 0, 89, 2)) (Sum.inl 84) (some (AllocBody89_52, 89, 3))

def AllocBody89_54 : StackLang.HolProg 64 :=
.seq AllocBody89_34 AllocBody89_53

def AllocBody89_55 : StackLang.HolProg 64 :=
.seq AllocBody89_33 AllocBody89_54

def AllocBody89_56 : StackLang.HolProg 64 :=
.seq AllocBody89_32 AllocBody89_55

def AllocBody89_57 : StackLang.HolProg 64 :=
.seq AllocBody89_13 AllocBody89_56

def AllocBody89_58 : StackLang.HolProg 64 :=
.seq AllocBody89_10 AllocBody89_57

def AllocBody89_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody89_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody89_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody89_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody89_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody89_66 : StackLang.HolProg 64 :=
.seq AllocBody89_64 AllocBody89_65

def AllocBody89_67 : StackLang.HolProg 64 :=
.seq AllocBody89_63 AllocBody89_66

def AllocBody89_68 : StackLang.HolProg 64 :=
.seq AllocBody89_62 AllocBody89_67

def AllocBody89_69 : StackLang.HolProg 64 :=
.seq AllocBody89_61 AllocBody89_68

def AllocBody89_70 : StackLang.HolProg 64 :=
.seq AllocBody89_60 AllocBody89_69

def AllocBody89_71 : StackLang.HolProg 64 :=
.seq AllocBody89_59 AllocBody89_70

def AllocBody89_72 : StackLang.HolProg 64 :=
.seq AllocBody89_58 AllocBody89_71

def AllocBody89_73 : StackLang.HolProg 64 :=
.seq AllocBody89_9 AllocBody89_72

def AllocBody89_74 : StackLang.HolProg 64 :=
.seq AllocBody89_4 AllocBody89_73

def AllocBody89_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody89_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody89_74 AllocBody89_75

def AllocBody89_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody89_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody89_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody89_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody89_81 : StackLang.HolProg 64 :=
.seq AllocBody89_79 AllocBody89_80

def AllocBody89_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody89_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody89_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody89_85 : StackLang.HolProg 64 :=
.seq AllocBody89_83 AllocBody89_84

def AllocBody89_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 36#64)

def AllocBody89_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody89_89 : StackLang.HolProg 64 :=
.seq AllocBody89_87 AllocBody89_88

def AllocBody89_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody89_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody89_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody89_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 89 5

def AllocBody89_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody89_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody89_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody89_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody89_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody89_100 : StackLang.HolProg 64 :=
.seq AllocBody89_98 AllocBody89_99

def AllocBody89_101 : StackLang.HolProg 64 :=
.seq AllocBody89_97 AllocBody89_100

def AllocBody89_102 : StackLang.HolProg 64 :=
.seq AllocBody89_96 AllocBody89_101

def AllocBody89_103 : StackLang.HolProg 64 :=
.seq AllocBody89_95 AllocBody89_102

def AllocBody89_104 : StackLang.HolProg 64 :=
.seq AllocBody89_94 AllocBody89_103

def AllocBody89_105 : StackLang.HolProg 64 :=
.seq AllocBody89_93 AllocBody89_104

def AllocBody89_106 : StackLang.HolProg 64 :=
.seq AllocBody89_92 AllocBody89_105

def AllocBody89_107 : StackLang.HolProg 64 :=
.seq AllocBody89_91 AllocBody89_106

def AllocBody89_108 : StackLang.HolProg 64 :=
.seq AllocBody89_90 AllocBody89_107

def AllocBody89_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody89_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody89_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody89_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody89_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody89_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody89_117 : StackLang.HolProg 64 :=
.seq AllocBody89_115 AllocBody89_116

def AllocBody89_118 : StackLang.HolProg 64 :=
.seq AllocBody89_114 AllocBody89_117

def AllocBody89_119 : StackLang.HolProg 64 :=
.seq AllocBody89_113 AllocBody89_118

def AllocBody89_120 : StackLang.HolProg 64 :=
.seq AllocBody89_112 AllocBody89_119

def AllocBody89_121 : StackLang.HolProg 64 :=
.seq AllocBody89_111 AllocBody89_120

def AllocBody89_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody89_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody89_124 : StackLang.HolProg 64 :=
.seq AllocBody89_122 AllocBody89_123

def AllocBody89_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody89_126 : StackLang.HolProg 64 :=
.seq AllocBody89_124 AllocBody89_125

def AllocBody89_127 : StackLang.HolProg 64 :=
.call (some (AllocBody89_121, 0, 89, 4)) (Sum.inl 88) (some (AllocBody89_126, 89, 5))

def AllocBody89_128 : StackLang.HolProg 64 :=
.seq AllocBody89_110 AllocBody89_127

def AllocBody89_129 : StackLang.HolProg 64 :=
.seq AllocBody89_109 AllocBody89_128

def AllocBody89_130 : StackLang.HolProg 64 :=
.seq AllocBody89_108 AllocBody89_129

def AllocBody89_131 : StackLang.HolProg 64 :=
.seq AllocBody89_89 AllocBody89_130

def AllocBody89_132 : StackLang.HolProg 64 :=
.seq AllocBody89_86 AllocBody89_131

def AllocBody89_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody89_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody89_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 37#64)

def AllocBody89_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody89_140 : StackLang.HolProg 64 :=
.seq AllocBody89_138 AllocBody89_139

def AllocBody89_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody89_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody89_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody89_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 89 7

def AllocBody89_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody89_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody89_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody89_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody89_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody89_151 : StackLang.HolProg 64 :=
.seq AllocBody89_149 AllocBody89_150

def AllocBody89_152 : StackLang.HolProg 64 :=
.seq AllocBody89_148 AllocBody89_151

def AllocBody89_153 : StackLang.HolProg 64 :=
.seq AllocBody89_147 AllocBody89_152

def AllocBody89_154 : StackLang.HolProg 64 :=
.seq AllocBody89_146 AllocBody89_153

def AllocBody89_155 : StackLang.HolProg 64 :=
.seq AllocBody89_145 AllocBody89_154

def AllocBody89_156 : StackLang.HolProg 64 :=
.seq AllocBody89_144 AllocBody89_155

def AllocBody89_157 : StackLang.HolProg 64 :=
.seq AllocBody89_143 AllocBody89_156

def AllocBody89_158 : StackLang.HolProg 64 :=
.seq AllocBody89_142 AllocBody89_157

def AllocBody89_159 : StackLang.HolProg 64 :=
.seq AllocBody89_141 AllocBody89_158

def AllocBody89_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody89_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody89_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody89_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody89_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody89_167 : StackLang.HolProg 64 :=
.seq AllocBody89_165 AllocBody89_166

def AllocBody89_168 : StackLang.HolProg 64 :=
.seq AllocBody89_164 AllocBody89_167

def AllocBody89_169 : StackLang.HolProg 64 :=
.seq AllocBody89_163 AllocBody89_168

def AllocBody89_170 : StackLang.HolProg 64 :=
.seq AllocBody89_162 AllocBody89_169

def AllocBody89_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody89_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody89_173 : StackLang.HolProg 64 :=
.seq AllocBody89_171 AllocBody89_172

def AllocBody89_174 : StackLang.HolProg 64 :=
.call (some (AllocBody89_170, 0, 89, 6)) (Sum.inl 88) (some (AllocBody89_173, 89, 7))

def AllocBody89_175 : StackLang.HolProg 64 :=
.seq AllocBody89_161 AllocBody89_174

def AllocBody89_176 : StackLang.HolProg 64 :=
.seq AllocBody89_160 AllocBody89_175

def AllocBody89_177 : StackLang.HolProg 64 :=
.seq AllocBody89_159 AllocBody89_176

def AllocBody89_178 : StackLang.HolProg 64 :=
.seq AllocBody89_140 AllocBody89_177

def AllocBody89_179 : StackLang.HolProg 64 :=
.seq AllocBody89_137 AllocBody89_178

def AllocBody89_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody89_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody89_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody89_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody89_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody89_185 : StackLang.HolProg 64 :=
.seq AllocBody89_183 AllocBody89_184

def AllocBody89_186 : StackLang.HolProg 64 :=
.seq AllocBody89_182 AllocBody89_185

def AllocBody89_187 : StackLang.HolProg 64 :=
.seq AllocBody89_181 AllocBody89_186

def AllocBody89_188 : StackLang.HolProg 64 :=
.seq AllocBody89_180 AllocBody89_187

def AllocBody89_189 : StackLang.HolProg 64 :=
.seq AllocBody89_179 AllocBody89_188

def AllocBody89_190 : StackLang.HolProg 64 :=
.seq AllocBody89_136 AllocBody89_189

def AllocBody89_191 : StackLang.HolProg 64 :=
.seq AllocBody89_135 AllocBody89_190

def AllocBody89_192 : StackLang.HolProg 64 :=
.seq AllocBody89_134 AllocBody89_191

def AllocBody89_193 : StackLang.HolProg 64 :=
.seq AllocBody89_133 AllocBody89_192

def AllocBody89_194 : StackLang.HolProg 64 :=
.seq AllocBody89_132 AllocBody89_193

def AllocBody89_195 : StackLang.HolProg 64 :=
.seq AllocBody89_85 AllocBody89_194

def AllocBody89_196 : StackLang.HolProg 64 :=
.seq AllocBody89_82 AllocBody89_195

def AllocBody89_197 : StackLang.HolProg 64 :=
.seq AllocBody89_81 AllocBody89_196

def AllocBody89_198 : StackLang.HolProg 64 :=
.seq AllocBody89_78 AllocBody89_197

def AllocBody89_199 : StackLang.HolProg 64 :=
.seq AllocBody89_77 AllocBody89_198

def AllocBody89_200 : StackLang.HolProg 64 :=
.seq AllocBody89_76 AllocBody89_199

def AllocBody89_201 : StackLang.HolProg 64 :=
.seq AllocBody89_3 AllocBody89_200

def AllocBody89_202 : StackLang.HolProg 64 :=
.seq AllocBody89_2 AllocBody89_201

def AllocBody89_203 : StackLang.HolProg 64 :=
.seq AllocBody89_1 AllocBody89_202

def AllocBody89_204 : StackLang.HolProg 64 :=
.seq AllocBody89_0 AllocBody89_203

def Alloc89 : Nat × StackLang.HolProg 64 := (89, AllocBody89_204)
theorem Alloc89_eq : StackAlloc.progComp (89, raw89) = Alloc89 := by
  kernel_rfl
#print axioms Alloc89_eq
end InitECandidate.Proofs.BackendStages
