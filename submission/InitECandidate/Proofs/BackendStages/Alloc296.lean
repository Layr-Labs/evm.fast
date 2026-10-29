import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw296
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody296_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody296_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody296_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody296_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody296_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody296_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody296_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody296_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody296_8 : StackLang.HolProg 64 :=
.seq AllocBody296_6 AllocBody296_7

def AllocBody296_9 : StackLang.HolProg 64 :=
.seq AllocBody296_5 AllocBody296_8

def AllocBody296_10 : StackLang.HolProg 64 :=
.seq AllocBody296_4 AllocBody296_9

def AllocBody296_11 : StackLang.HolProg 64 :=
.seq AllocBody296_3 AllocBody296_10

def AllocBody296_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 802#64)

def AllocBody296_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody296_15 : StackLang.HolProg 64 :=
.seq AllocBody296_13 AllocBody296_14

def AllocBody296_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody296_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody296_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody296_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 296 3

def AllocBody296_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody296_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody296_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody296_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody296_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody296_26 : StackLang.HolProg 64 :=
.seq AllocBody296_24 AllocBody296_25

def AllocBody296_27 : StackLang.HolProg 64 :=
.seq AllocBody296_23 AllocBody296_26

def AllocBody296_28 : StackLang.HolProg 64 :=
.seq AllocBody296_22 AllocBody296_27

def AllocBody296_29 : StackLang.HolProg 64 :=
.seq AllocBody296_21 AllocBody296_28

def AllocBody296_30 : StackLang.HolProg 64 :=
.seq AllocBody296_20 AllocBody296_29

def AllocBody296_31 : StackLang.HolProg 64 :=
.seq AllocBody296_19 AllocBody296_30

def AllocBody296_32 : StackLang.HolProg 64 :=
.seq AllocBody296_18 AllocBody296_31

def AllocBody296_33 : StackLang.HolProg 64 :=
.seq AllocBody296_17 AllocBody296_32

def AllocBody296_34 : StackLang.HolProg 64 :=
.seq AllocBody296_16 AllocBody296_33

def AllocBody296_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody296_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody296_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody296_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody296_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody296_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody296_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody296_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody296_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody296_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody296_47 : StackLang.HolProg 64 :=
.seq AllocBody296_45 AllocBody296_46

def AllocBody296_48 : StackLang.HolProg 64 :=
.seq AllocBody296_44 AllocBody296_47

def AllocBody296_49 : StackLang.HolProg 64 :=
.seq AllocBody296_43 AllocBody296_48

def AllocBody296_50 : StackLang.HolProg 64 :=
.seq AllocBody296_42 AllocBody296_49

def AllocBody296_51 : StackLang.HolProg 64 :=
.seq AllocBody296_41 AllocBody296_50

def AllocBody296_52 : StackLang.HolProg 64 :=
.seq AllocBody296_40 AllocBody296_51

def AllocBody296_53 : StackLang.HolProg 64 :=
.seq AllocBody296_39 AllocBody296_52

def AllocBody296_54 : StackLang.HolProg 64 :=
.seq AllocBody296_38 AllocBody296_53

def AllocBody296_55 : StackLang.HolProg 64 :=
.seq AllocBody296_37 AllocBody296_54

def AllocBody296_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody296_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody296_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody296_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody296_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody296_61 : StackLang.HolProg 64 :=
.seq AllocBody296_59 AllocBody296_60

def AllocBody296_62 : StackLang.HolProg 64 :=
.seq AllocBody296_58 AllocBody296_61

def AllocBody296_63 : StackLang.HolProg 64 :=
.seq AllocBody296_57 AllocBody296_62

def AllocBody296_64 : StackLang.HolProg 64 :=
.seq AllocBody296_56 AllocBody296_63

def AllocBody296_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody296_66 : StackLang.HolProg 64 :=
.seq AllocBody296_64 AllocBody296_65

def AllocBody296_67 : StackLang.HolProg 64 :=
.call (some (AllocBody296_55, 0, 296, 2)) (Sum.inl 68) (some (AllocBody296_66, 296, 3))

def AllocBody296_68 : StackLang.HolProg 64 :=
.seq AllocBody296_36 AllocBody296_67

def AllocBody296_69 : StackLang.HolProg 64 :=
.seq AllocBody296_35 AllocBody296_68

def AllocBody296_70 : StackLang.HolProg 64 :=
.seq AllocBody296_34 AllocBody296_69

def AllocBody296_71 : StackLang.HolProg 64 :=
.seq AllocBody296_15 AllocBody296_70

def AllocBody296_72 : StackLang.HolProg 64 :=
.seq AllocBody296_12 AllocBody296_71

def AllocBody296_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody296_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody296_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody296_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody296_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody296_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody296_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody296_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody296_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody296_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody296_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody296_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody296_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody296_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody296_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def AllocBody296_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody296_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody296_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody296_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def AllocBody296_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody296_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody296_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody296_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody296_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody296_112 : StackLang.HolProg 64 :=
.seq AllocBody296_110 AllocBody296_111

def AllocBody296_113 : StackLang.HolProg 64 :=
.seq AllocBody296_109 AllocBody296_112

def AllocBody296_114 : StackLang.HolProg 64 :=
.seq AllocBody296_108 AllocBody296_113

def AllocBody296_115 : StackLang.HolProg 64 :=
.seq AllocBody296_107 AllocBody296_114

def AllocBody296_116 : StackLang.HolProg 64 :=
.seq AllocBody296_106 AllocBody296_115

def AllocBody296_117 : StackLang.HolProg 64 :=
.seq AllocBody296_105 AllocBody296_116

def AllocBody296_118 : StackLang.HolProg 64 :=
.seq AllocBody296_104 AllocBody296_117

def AllocBody296_119 : StackLang.HolProg 64 :=
.seq AllocBody296_103 AllocBody296_118

def AllocBody296_120 : StackLang.HolProg 64 :=
.seq AllocBody296_102 AllocBody296_119

def AllocBody296_121 : StackLang.HolProg 64 :=
.seq AllocBody296_101 AllocBody296_120

def AllocBody296_122 : StackLang.HolProg 64 :=
.seq AllocBody296_100 AllocBody296_121

def AllocBody296_123 : StackLang.HolProg 64 :=
.seq AllocBody296_99 AllocBody296_122

def AllocBody296_124 : StackLang.HolProg 64 :=
.seq AllocBody296_98 AllocBody296_123

def AllocBody296_125 : StackLang.HolProg 64 :=
.seq AllocBody296_97 AllocBody296_124

def AllocBody296_126 : StackLang.HolProg 64 :=
.seq AllocBody296_96 AllocBody296_125

def AllocBody296_127 : StackLang.HolProg 64 :=
.seq AllocBody296_95 AllocBody296_126

def AllocBody296_128 : StackLang.HolProg 64 :=
.seq AllocBody296_94 AllocBody296_127

def AllocBody296_129 : StackLang.HolProg 64 :=
.seq AllocBody296_93 AllocBody296_128

def AllocBody296_130 : StackLang.HolProg 64 :=
.seq AllocBody296_92 AllocBody296_129

def AllocBody296_131 : StackLang.HolProg 64 :=
.seq AllocBody296_91 AllocBody296_130

def AllocBody296_132 : StackLang.HolProg 64 :=
.seq AllocBody296_90 AllocBody296_131

def AllocBody296_133 : StackLang.HolProg 64 :=
.seq AllocBody296_89 AllocBody296_132

def AllocBody296_134 : StackLang.HolProg 64 :=
.seq AllocBody296_88 AllocBody296_133

def AllocBody296_135 : StackLang.HolProg 64 :=
.seq AllocBody296_87 AllocBody296_134

def AllocBody296_136 : StackLang.HolProg 64 :=
.seq AllocBody296_86 AllocBody296_135

def AllocBody296_137 : StackLang.HolProg 64 :=
.seq AllocBody296_85 AllocBody296_136

def AllocBody296_138 : StackLang.HolProg 64 :=
.seq AllocBody296_84 AllocBody296_137

def AllocBody296_139 : StackLang.HolProg 64 :=
.seq AllocBody296_83 AllocBody296_138

def AllocBody296_140 : StackLang.HolProg 64 :=
.seq AllocBody296_82 AllocBody296_139

def AllocBody296_141 : StackLang.HolProg 64 :=
.seq AllocBody296_81 AllocBody296_140

def AllocBody296_142 : StackLang.HolProg 64 :=
.seq AllocBody296_80 AllocBody296_141

def AllocBody296_143 : StackLang.HolProg 64 :=
.seq AllocBody296_79 AllocBody296_142

def AllocBody296_144 : StackLang.HolProg 64 :=
.seq AllocBody296_78 AllocBody296_143

def AllocBody296_145 : StackLang.HolProg 64 :=
.seq AllocBody296_77 AllocBody296_144

def AllocBody296_146 : StackLang.HolProg 64 :=
.seq AllocBody296_76 AllocBody296_145

def AllocBody296_147 : StackLang.HolProg 64 :=
.seq AllocBody296_75 AllocBody296_146

def AllocBody296_148 : StackLang.HolProg 64 :=
.seq AllocBody296_74 AllocBody296_147

def AllocBody296_149 : StackLang.HolProg 64 :=
.seq AllocBody296_73 AllocBody296_148

def AllocBody296_150 : StackLang.HolProg 64 :=
.seq AllocBody296_72 AllocBody296_149

def AllocBody296_151 : StackLang.HolProg 64 :=
.seq AllocBody296_11 AllocBody296_150

def AllocBody296_152 : StackLang.HolProg 64 :=
.seq AllocBody296_2 AllocBody296_151

def AllocBody296_153 : StackLang.HolProg 64 :=
.seq AllocBody296_1 AllocBody296_152

def AllocBody296_154 : StackLang.HolProg 64 :=
.seq AllocBody296_0 AllocBody296_153

def Alloc296 : Nat × StackLang.HolProg 64 := (296, AllocBody296_154)
theorem Alloc296_eq : StackAlloc.progComp (296, raw296) = Alloc296 := by
  kernel_rfl
#print axioms Alloc296_eq
end InitECandidate.Proofs.BackendStages
