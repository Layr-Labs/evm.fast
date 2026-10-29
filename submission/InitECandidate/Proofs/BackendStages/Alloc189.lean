import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw189
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody189_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody189_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody189_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody189_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody189_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody189_5 : StackLang.HolProg 64 :=
.seq AllocBody189_3 AllocBody189_4

def AllocBody189_6 : StackLang.HolProg 64 :=
.seq AllocBody189_2 AllocBody189_5

def AllocBody189_7 : StackLang.HolProg 64 :=
.seq AllocBody189_1 AllocBody189_6

def AllocBody189_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 216#64)

def AllocBody189_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody189_11 : StackLang.HolProg 64 :=
.seq AllocBody189_9 AllocBody189_10

def AllocBody189_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody189_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody189_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody189_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 189 3

def AllocBody189_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody189_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody189_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody189_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody189_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody189_22 : StackLang.HolProg 64 :=
.seq AllocBody189_20 AllocBody189_21

def AllocBody189_23 : StackLang.HolProg 64 :=
.seq AllocBody189_19 AllocBody189_22

def AllocBody189_24 : StackLang.HolProg 64 :=
.seq AllocBody189_18 AllocBody189_23

def AllocBody189_25 : StackLang.HolProg 64 :=
.seq AllocBody189_17 AllocBody189_24

def AllocBody189_26 : StackLang.HolProg 64 :=
.seq AllocBody189_16 AllocBody189_25

def AllocBody189_27 : StackLang.HolProg 64 :=
.seq AllocBody189_15 AllocBody189_26

def AllocBody189_28 : StackLang.HolProg 64 :=
.seq AllocBody189_14 AllocBody189_27

def AllocBody189_29 : StackLang.HolProg 64 :=
.seq AllocBody189_13 AllocBody189_28

def AllocBody189_30 : StackLang.HolProg 64 :=
.seq AllocBody189_12 AllocBody189_29

def AllocBody189_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody189_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody189_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody189_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody189_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody189_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody189_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody189_40 : StackLang.HolProg 64 :=
.seq AllocBody189_38 AllocBody189_39

def AllocBody189_41 : StackLang.HolProg 64 :=
.seq AllocBody189_37 AllocBody189_40

def AllocBody189_42 : StackLang.HolProg 64 :=
.seq AllocBody189_36 AllocBody189_41

def AllocBody189_43 : StackLang.HolProg 64 :=
.seq AllocBody189_35 AllocBody189_42

def AllocBody189_44 : StackLang.HolProg 64 :=
.seq AllocBody189_34 AllocBody189_43

def AllocBody189_45 : StackLang.HolProg 64 :=
.seq AllocBody189_33 AllocBody189_44

def AllocBody189_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody189_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody189_48 : StackLang.HolProg 64 :=
.seq AllocBody189_46 AllocBody189_47

def AllocBody189_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody189_50 : StackLang.HolProg 64 :=
.seq AllocBody189_48 AllocBody189_49

def AllocBody189_51 : StackLang.HolProg 64 :=
.call (some (AllocBody189_45, 0, 189, 2)) (Sum.inl 188) (some (AllocBody189_50, 189, 3))

def AllocBody189_52 : StackLang.HolProg 64 :=
.seq AllocBody189_32 AllocBody189_51

def AllocBody189_53 : StackLang.HolProg 64 :=
.seq AllocBody189_31 AllocBody189_52

def AllocBody189_54 : StackLang.HolProg 64 :=
.seq AllocBody189_30 AllocBody189_53

def AllocBody189_55 : StackLang.HolProg 64 :=
.seq AllocBody189_11 AllocBody189_54

def AllocBody189_56 : StackLang.HolProg 64 :=
.seq AllocBody189_8 AllocBody189_55

def AllocBody189_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody189_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody189_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody189_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody189_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody189_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 32#64))

def AllocBody189_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody189_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody189_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody189_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody189_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody189_71 : StackLang.HolProg 64 :=
.seq AllocBody189_69 AllocBody189_70

def AllocBody189_72 : StackLang.HolProg 64 :=
.seq AllocBody189_68 AllocBody189_71

def AllocBody189_73 : StackLang.HolProg 64 :=
.seq AllocBody189_67 AllocBody189_72

def AllocBody189_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 217#64)

def AllocBody189_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody189_77 : StackLang.HolProg 64 :=
.seq AllocBody189_75 AllocBody189_76

def AllocBody189_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody189_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody189_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody189_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 189 5

def AllocBody189_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody189_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody189_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody189_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody189_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody189_88 : StackLang.HolProg 64 :=
.seq AllocBody189_86 AllocBody189_87

def AllocBody189_89 : StackLang.HolProg 64 :=
.seq AllocBody189_85 AllocBody189_88

def AllocBody189_90 : StackLang.HolProg 64 :=
.seq AllocBody189_84 AllocBody189_89

def AllocBody189_91 : StackLang.HolProg 64 :=
.seq AllocBody189_83 AllocBody189_90

def AllocBody189_92 : StackLang.HolProg 64 :=
.seq AllocBody189_82 AllocBody189_91

def AllocBody189_93 : StackLang.HolProg 64 :=
.seq AllocBody189_81 AllocBody189_92

def AllocBody189_94 : StackLang.HolProg 64 :=
.seq AllocBody189_80 AllocBody189_93

def AllocBody189_95 : StackLang.HolProg 64 :=
.seq AllocBody189_79 AllocBody189_94

def AllocBody189_96 : StackLang.HolProg 64 :=
.seq AllocBody189_78 AllocBody189_95

def AllocBody189_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody189_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody189_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody189_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody189_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody189_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody189_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody189_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody189_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody189_108 : StackLang.HolProg 64 :=
.seq AllocBody189_106 AllocBody189_107

def AllocBody189_109 : StackLang.HolProg 64 :=
.seq AllocBody189_105 AllocBody189_108

def AllocBody189_110 : StackLang.HolProg 64 :=
.seq AllocBody189_104 AllocBody189_109

def AllocBody189_111 : StackLang.HolProg 64 :=
.seq AllocBody189_103 AllocBody189_110

def AllocBody189_112 : StackLang.HolProg 64 :=
.seq AllocBody189_102 AllocBody189_111

def AllocBody189_113 : StackLang.HolProg 64 :=
.seq AllocBody189_101 AllocBody189_112

def AllocBody189_114 : StackLang.HolProg 64 :=
.seq AllocBody189_100 AllocBody189_113

def AllocBody189_115 : StackLang.HolProg 64 :=
.seq AllocBody189_99 AllocBody189_114

def AllocBody189_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody189_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody189_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody189_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody189_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody189_121 : StackLang.HolProg 64 :=
.seq AllocBody189_119 AllocBody189_120

def AllocBody189_122 : StackLang.HolProg 64 :=
.seq AllocBody189_118 AllocBody189_121

def AllocBody189_123 : StackLang.HolProg 64 :=
.seq AllocBody189_117 AllocBody189_122

def AllocBody189_124 : StackLang.HolProg 64 :=
.seq AllocBody189_116 AllocBody189_123

def AllocBody189_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody189_126 : StackLang.HolProg 64 :=
.seq AllocBody189_124 AllocBody189_125

def AllocBody189_127 : StackLang.HolProg 64 :=
.call (some (AllocBody189_115, 0, 189, 4)) (Sum.inl 77) (some (AllocBody189_126, 189, 5))

def AllocBody189_128 : StackLang.HolProg 64 :=
.seq AllocBody189_98 AllocBody189_127

def AllocBody189_129 : StackLang.HolProg 64 :=
.seq AllocBody189_97 AllocBody189_128

def AllocBody189_130 : StackLang.HolProg 64 :=
.seq AllocBody189_96 AllocBody189_129

def AllocBody189_131 : StackLang.HolProg 64 :=
.seq AllocBody189_77 AllocBody189_130

def AllocBody189_132 : StackLang.HolProg 64 :=
.seq AllocBody189_74 AllocBody189_131

def AllocBody189_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody189_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 40#64))

def AllocBody189_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody189_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody189_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody189_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody189_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody189_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody189_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody189_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody189_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody189_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody189_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody189_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody189_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody189_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def AllocBody189_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody189_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody189_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody189_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody189_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody189_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody189_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody189_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody189_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody189_175 : StackLang.HolProg 64 :=
.seq AllocBody189_173 AllocBody189_174

def AllocBody189_176 : StackLang.HolProg 64 :=
.seq AllocBody189_172 AllocBody189_175

def AllocBody189_177 : StackLang.HolProg 64 :=
.seq AllocBody189_171 AllocBody189_176

def AllocBody189_178 : StackLang.HolProg 64 :=
.seq AllocBody189_170 AllocBody189_177

def AllocBody189_179 : StackLang.HolProg 64 :=
.seq AllocBody189_169 AllocBody189_178

def AllocBody189_180 : StackLang.HolProg 64 :=
.seq AllocBody189_168 AllocBody189_179

def AllocBody189_181 : StackLang.HolProg 64 :=
.seq AllocBody189_167 AllocBody189_180

def AllocBody189_182 : StackLang.HolProg 64 :=
.seq AllocBody189_166 AllocBody189_181

def AllocBody189_183 : StackLang.HolProg 64 :=
.seq AllocBody189_165 AllocBody189_182

def AllocBody189_184 : StackLang.HolProg 64 :=
.seq AllocBody189_164 AllocBody189_183

def AllocBody189_185 : StackLang.HolProg 64 :=
.seq AllocBody189_163 AllocBody189_184

def AllocBody189_186 : StackLang.HolProg 64 :=
.seq AllocBody189_162 AllocBody189_185

def AllocBody189_187 : StackLang.HolProg 64 :=
.seq AllocBody189_161 AllocBody189_186

def AllocBody189_188 : StackLang.HolProg 64 :=
.seq AllocBody189_160 AllocBody189_187

def AllocBody189_189 : StackLang.HolProg 64 :=
.seq AllocBody189_159 AllocBody189_188

def AllocBody189_190 : StackLang.HolProg 64 :=
.seq AllocBody189_158 AllocBody189_189

def AllocBody189_191 : StackLang.HolProg 64 :=
.seq AllocBody189_157 AllocBody189_190

def AllocBody189_192 : StackLang.HolProg 64 :=
.seq AllocBody189_156 AllocBody189_191

def AllocBody189_193 : StackLang.HolProg 64 :=
.seq AllocBody189_155 AllocBody189_192

def AllocBody189_194 : StackLang.HolProg 64 :=
.seq AllocBody189_154 AllocBody189_193

def AllocBody189_195 : StackLang.HolProg 64 :=
.seq AllocBody189_153 AllocBody189_194

def AllocBody189_196 : StackLang.HolProg 64 :=
.seq AllocBody189_152 AllocBody189_195

def AllocBody189_197 : StackLang.HolProg 64 :=
.seq AllocBody189_151 AllocBody189_196

def AllocBody189_198 : StackLang.HolProg 64 :=
.seq AllocBody189_150 AllocBody189_197

def AllocBody189_199 : StackLang.HolProg 64 :=
.seq AllocBody189_149 AllocBody189_198

def AllocBody189_200 : StackLang.HolProg 64 :=
.seq AllocBody189_148 AllocBody189_199

def AllocBody189_201 : StackLang.HolProg 64 :=
.seq AllocBody189_147 AllocBody189_200

def AllocBody189_202 : StackLang.HolProg 64 :=
.seq AllocBody189_146 AllocBody189_201

def AllocBody189_203 : StackLang.HolProg 64 :=
.seq AllocBody189_145 AllocBody189_202

def AllocBody189_204 : StackLang.HolProg 64 :=
.seq AllocBody189_144 AllocBody189_203

def AllocBody189_205 : StackLang.HolProg 64 :=
.seq AllocBody189_143 AllocBody189_204

def AllocBody189_206 : StackLang.HolProg 64 :=
.seq AllocBody189_142 AllocBody189_205

def AllocBody189_207 : StackLang.HolProg 64 :=
.seq AllocBody189_141 AllocBody189_206

def AllocBody189_208 : StackLang.HolProg 64 :=
.seq AllocBody189_140 AllocBody189_207

def AllocBody189_209 : StackLang.HolProg 64 :=
.seq AllocBody189_139 AllocBody189_208

def AllocBody189_210 : StackLang.HolProg 64 :=
.seq AllocBody189_138 AllocBody189_209

def AllocBody189_211 : StackLang.HolProg 64 :=
.seq AllocBody189_137 AllocBody189_210

def AllocBody189_212 : StackLang.HolProg 64 :=
.seq AllocBody189_136 AllocBody189_211

def AllocBody189_213 : StackLang.HolProg 64 :=
.seq AllocBody189_135 AllocBody189_212

def AllocBody189_214 : StackLang.HolProg 64 :=
.seq AllocBody189_134 AllocBody189_213

def AllocBody189_215 : StackLang.HolProg 64 :=
.seq AllocBody189_133 AllocBody189_214

def AllocBody189_216 : StackLang.HolProg 64 :=
.seq AllocBody189_132 AllocBody189_215

def AllocBody189_217 : StackLang.HolProg 64 :=
.seq AllocBody189_73 AllocBody189_216

def AllocBody189_218 : StackLang.HolProg 64 :=
.seq AllocBody189_66 AllocBody189_217

def AllocBody189_219 : StackLang.HolProg 64 :=
.seq AllocBody189_65 AllocBody189_218

def AllocBody189_220 : StackLang.HolProg 64 :=
.seq AllocBody189_64 AllocBody189_219

def AllocBody189_221 : StackLang.HolProg 64 :=
.seq AllocBody189_63 AllocBody189_220

def AllocBody189_222 : StackLang.HolProg 64 :=
.seq AllocBody189_62 AllocBody189_221

def AllocBody189_223 : StackLang.HolProg 64 :=
.seq AllocBody189_61 AllocBody189_222

def AllocBody189_224 : StackLang.HolProg 64 :=
.seq AllocBody189_60 AllocBody189_223

def AllocBody189_225 : StackLang.HolProg 64 :=
.seq AllocBody189_59 AllocBody189_224

def AllocBody189_226 : StackLang.HolProg 64 :=
.seq AllocBody189_58 AllocBody189_225

def AllocBody189_227 : StackLang.HolProg 64 :=
.seq AllocBody189_57 AllocBody189_226

def AllocBody189_228 : StackLang.HolProg 64 :=
.seq AllocBody189_56 AllocBody189_227

def AllocBody189_229 : StackLang.HolProg 64 :=
.seq AllocBody189_7 AllocBody189_228

def AllocBody189_230 : StackLang.HolProg 64 :=
.seq AllocBody189_0 AllocBody189_229

def Alloc189 : Nat × StackLang.HolProg 64 := (189, AllocBody189_230)
theorem Alloc189_eq : StackAlloc.progComp (189, raw189) = Alloc189 := by
  kernel_rfl
#print axioms Alloc189_eq
end InitECandidate.Proofs.BackendStages
