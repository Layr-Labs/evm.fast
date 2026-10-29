import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw366
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody366_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody366_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody366_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 208#64))

def AllocBody366_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 216#64))

def AllocBody366_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody366_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody366_7 : StackLang.HolProg 64 :=
.seq AllocBody366_5 AllocBody366_6

def AllocBody366_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1061#64)

def AllocBody366_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody366_11 : StackLang.HolProg 64 :=
.seq AllocBody366_9 AllocBody366_10

def AllocBody366_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody366_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody366_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody366_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 366 3

def AllocBody366_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody366_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody366_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody366_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody366_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody366_22 : StackLang.HolProg 64 :=
.seq AllocBody366_20 AllocBody366_21

def AllocBody366_23 : StackLang.HolProg 64 :=
.seq AllocBody366_19 AllocBody366_22

def AllocBody366_24 : StackLang.HolProg 64 :=
.seq AllocBody366_18 AllocBody366_23

def AllocBody366_25 : StackLang.HolProg 64 :=
.seq AllocBody366_17 AllocBody366_24

def AllocBody366_26 : StackLang.HolProg 64 :=
.seq AllocBody366_16 AllocBody366_25

def AllocBody366_27 : StackLang.HolProg 64 :=
.seq AllocBody366_15 AllocBody366_26

def AllocBody366_28 : StackLang.HolProg 64 :=
.seq AllocBody366_14 AllocBody366_27

def AllocBody366_29 : StackLang.HolProg 64 :=
.seq AllocBody366_13 AllocBody366_28

def AllocBody366_30 : StackLang.HolProg 64 :=
.seq AllocBody366_12 AllocBody366_29

def AllocBody366_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody366_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody366_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody366_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody366_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody366_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody366_39 : StackLang.HolProg 64 :=
.seq AllocBody366_37 AllocBody366_38

def AllocBody366_40 : StackLang.HolProg 64 :=
.seq AllocBody366_36 AllocBody366_39

def AllocBody366_41 : StackLang.HolProg 64 :=
.seq AllocBody366_35 AllocBody366_40

def AllocBody366_42 : StackLang.HolProg 64 :=
.seq AllocBody366_34 AllocBody366_41

def AllocBody366_43 : StackLang.HolProg 64 :=
.seq AllocBody366_33 AllocBody366_42

def AllocBody366_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody366_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody366_46 : StackLang.HolProg 64 :=
.seq AllocBody366_44 AllocBody366_45

def AllocBody366_47 : StackLang.HolProg 64 :=
.call (some (AllocBody366_43, 0, 366, 2)) (Sum.inl 360) (some (AllocBody366_46, 366, 3))

def AllocBody366_48 : StackLang.HolProg 64 :=
.seq AllocBody366_32 AllocBody366_47

def AllocBody366_49 : StackLang.HolProg 64 :=
.seq AllocBody366_31 AllocBody366_48

def AllocBody366_50 : StackLang.HolProg 64 :=
.seq AllocBody366_30 AllocBody366_49

def AllocBody366_51 : StackLang.HolProg 64 :=
.seq AllocBody366_11 AllocBody366_50

def AllocBody366_52 : StackLang.HolProg 64 :=
.seq AllocBody366_8 AllocBody366_51

def AllocBody366_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody366_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 272#64))

def AllocBody366_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 280#64))

def AllocBody366_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody366_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody366_60 : StackLang.HolProg 64 :=
.seq AllocBody366_58 AllocBody366_59

def AllocBody366_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1062#64)

def AllocBody366_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody366_64 : StackLang.HolProg 64 :=
.seq AllocBody366_62 AllocBody366_63

def AllocBody366_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody366_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody366_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody366_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 366 5

def AllocBody366_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody366_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody366_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody366_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody366_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody366_75 : StackLang.HolProg 64 :=
.seq AllocBody366_73 AllocBody366_74

def AllocBody366_76 : StackLang.HolProg 64 :=
.seq AllocBody366_72 AllocBody366_75

def AllocBody366_77 : StackLang.HolProg 64 :=
.seq AllocBody366_71 AllocBody366_76

def AllocBody366_78 : StackLang.HolProg 64 :=
.seq AllocBody366_70 AllocBody366_77

def AllocBody366_79 : StackLang.HolProg 64 :=
.seq AllocBody366_69 AllocBody366_78

def AllocBody366_80 : StackLang.HolProg 64 :=
.seq AllocBody366_68 AllocBody366_79

def AllocBody366_81 : StackLang.HolProg 64 :=
.seq AllocBody366_67 AllocBody366_80

def AllocBody366_82 : StackLang.HolProg 64 :=
.seq AllocBody366_66 AllocBody366_81

def AllocBody366_83 : StackLang.HolProg 64 :=
.seq AllocBody366_65 AllocBody366_82

def AllocBody366_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody366_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody366_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody366_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody366_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody366_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody366_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody366_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody366_94 : StackLang.HolProg 64 :=
.seq AllocBody366_92 AllocBody366_93

def AllocBody366_95 : StackLang.HolProg 64 :=
.seq AllocBody366_91 AllocBody366_94

def AllocBody366_96 : StackLang.HolProg 64 :=
.seq AllocBody366_90 AllocBody366_95

def AllocBody366_97 : StackLang.HolProg 64 :=
.seq AllocBody366_89 AllocBody366_96

def AllocBody366_98 : StackLang.HolProg 64 :=
.seq AllocBody366_88 AllocBody366_97

def AllocBody366_99 : StackLang.HolProg 64 :=
.seq AllocBody366_87 AllocBody366_98

def AllocBody366_100 : StackLang.HolProg 64 :=
.seq AllocBody366_86 AllocBody366_99

def AllocBody366_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody366_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody366_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody366_104 : StackLang.HolProg 64 :=
.seq AllocBody366_102 AllocBody366_103

def AllocBody366_105 : StackLang.HolProg 64 :=
.seq AllocBody366_101 AllocBody366_104

def AllocBody366_106 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody366_107 : StackLang.HolProg 64 :=
.seq AllocBody366_105 AllocBody366_106

def AllocBody366_108 : StackLang.HolProg 64 :=
.call (some (AllocBody366_100, 0, 366, 4)) (Sum.inl 364) (some (AllocBody366_107, 366, 5))

def AllocBody366_109 : StackLang.HolProg 64 :=
.seq AllocBody366_85 AllocBody366_108

def AllocBody366_110 : StackLang.HolProg 64 :=
.seq AllocBody366_84 AllocBody366_109

def AllocBody366_111 : StackLang.HolProg 64 :=
.seq AllocBody366_83 AllocBody366_110

def AllocBody366_112 : StackLang.HolProg 64 :=
.seq AllocBody366_64 AllocBody366_111

def AllocBody366_113 : StackLang.HolProg 64 :=
.seq AllocBody366_61 AllocBody366_112

def AllocBody366_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody366_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 264#64))

def AllocBody366_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 33#64)

def AllocBody366_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody366_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody366_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody366_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 200#64))

def AllocBody366_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody366_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 655#64)))

def AllocBody366_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody366_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody366_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def AllocBody366_131 : StackLang.HolProg 64 :=
.seq AllocBody366_129 AllocBody366_130

def AllocBody366_132 : StackLang.HolProg 64 :=
.seq AllocBody366_128 AllocBody366_131

def AllocBody366_133 : StackLang.HolProg 64 :=
.seq AllocBody366_127 AllocBody366_132

def AllocBody366_134 : StackLang.HolProg 64 :=
.seq AllocBody366_126 AllocBody366_133

def AllocBody366_135 : StackLang.HolProg 64 :=
.seq AllocBody366_125 AllocBody366_134

def AllocBody366_136 : StackLang.HolProg 64 :=
.seq AllocBody366_124 AllocBody366_135

def AllocBody366_137 : StackLang.HolProg 64 :=
.seq AllocBody366_123 AllocBody366_136

def AllocBody366_138 : StackLang.HolProg 64 :=
.seq AllocBody366_122 AllocBody366_137

def AllocBody366_139 : StackLang.HolProg 64 :=
.seq AllocBody366_121 AllocBody366_138

def AllocBody366_140 : StackLang.HolProg 64 :=
.seq AllocBody366_120 AllocBody366_139

def AllocBody366_141 : StackLang.HolProg 64 :=
.seq AllocBody366_119 AllocBody366_140

def AllocBody366_142 : StackLang.HolProg 64 :=
.seq AllocBody366_118 AllocBody366_141

def AllocBody366_143 : StackLang.HolProg 64 :=
.seq AllocBody366_117 AllocBody366_142

def AllocBody366_144 : StackLang.HolProg 64 :=
.seq AllocBody366_116 AllocBody366_143

def AllocBody366_145 : StackLang.HolProg 64 :=
.seq AllocBody366_115 AllocBody366_144

def AllocBody366_146 : StackLang.HolProg 64 :=
.seq AllocBody366_114 AllocBody366_145

def AllocBody366_147 : StackLang.HolProg 64 :=
.seq AllocBody366_113 AllocBody366_146

def AllocBody366_148 : StackLang.HolProg 64 :=
.seq AllocBody366_60 AllocBody366_147

def AllocBody366_149 : StackLang.HolProg 64 :=
.seq AllocBody366_57 AllocBody366_148

def AllocBody366_150 : StackLang.HolProg 64 :=
.seq AllocBody366_56 AllocBody366_149

def AllocBody366_151 : StackLang.HolProg 64 :=
.seq AllocBody366_55 AllocBody366_150

def AllocBody366_152 : StackLang.HolProg 64 :=
.seq AllocBody366_54 AllocBody366_151

def AllocBody366_153 : StackLang.HolProg 64 :=
.seq AllocBody366_53 AllocBody366_152

def AllocBody366_154 : StackLang.HolProg 64 :=
.seq AllocBody366_52 AllocBody366_153

def AllocBody366_155 : StackLang.HolProg 64 :=
.seq AllocBody366_7 AllocBody366_154

def AllocBody366_156 : StackLang.HolProg 64 :=
.seq AllocBody366_4 AllocBody366_155

def AllocBody366_157 : StackLang.HolProg 64 :=
.seq AllocBody366_3 AllocBody366_156

def AllocBody366_158 : StackLang.HolProg 64 :=
.seq AllocBody366_2 AllocBody366_157

def AllocBody366_159 : StackLang.HolProg 64 :=
.seq AllocBody366_1 AllocBody366_158

def AllocBody366_160 : StackLang.HolProg 64 :=
.seq AllocBody366_0 AllocBody366_159

def Alloc366 : Nat × StackLang.HolProg 64 := (366, AllocBody366_160)
theorem Alloc366_eq : StackAlloc.progComp (366, raw366) = Alloc366 := by
  kernel_rfl
#print axioms Alloc366_eq
end InitECandidate.Proofs.BackendStages
