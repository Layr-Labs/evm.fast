import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function168
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody168_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody168_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody168_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody168_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def rawBody168_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody168_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody168_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody168_10 : StackLang.HolProg 64 :=
.seq rawBody168_8 rawBody168_9

def rawBody168_11 : StackLang.HolProg 64 :=
.seq rawBody168_7 rawBody168_10

def rawBody168_12 : StackLang.HolProg 64 :=
.seq rawBody168_6 rawBody168_11

def rawBody168_13 : StackLang.HolProg 64 :=
.seq rawBody168_5 rawBody168_12

def rawBody168_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_15 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody168_13 rawBody168_14

def rawBody168_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 183#64)

def rawBody168_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody168_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551488#64)))

def rawBody168_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody168_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody168_27 : StackLang.HolProg 64 :=
.seq rawBody168_25 rawBody168_26

def rawBody168_28 : StackLang.HolProg 64 :=
.seq rawBody168_24 rawBody168_27

def rawBody168_29 : StackLang.HolProg 64 :=
.seq rawBody168_23 rawBody168_28

def rawBody168_30 : StackLang.HolProg 64 :=
.seq rawBody168_22 rawBody168_29

def rawBody168_31 : StackLang.HolProg 64 :=
.seq rawBody168_21 rawBody168_30

def rawBody168_32 : StackLang.HolProg 64 :=
.seq rawBody168_20 rawBody168_31

def rawBody168_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody168_34 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody168_32 rawBody168_33

def rawBody168_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 191#64)

def rawBody168_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551433#64)))

def rawBody168_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody168_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody168_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody168_46 : StackLang.HolProg 64 :=
.seq rawBody168_44 rawBody168_45

def rawBody168_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 185#64)

def rawBody168_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody168_50 : StackLang.HolProg 64 :=
.seq rawBody168_48 rawBody168_49

def rawBody168_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody168_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody168_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody168_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 168 3

def rawBody168_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody168_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody168_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody168_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody168_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody168_61 : StackLang.HolProg 64 :=
.seq rawBody168_59 rawBody168_60

def rawBody168_62 : StackLang.HolProg 64 :=
.seq rawBody168_58 rawBody168_61

def rawBody168_63 : StackLang.HolProg 64 :=
.seq rawBody168_57 rawBody168_62

def rawBody168_64 : StackLang.HolProg 64 :=
.seq rawBody168_56 rawBody168_63

def rawBody168_65 : StackLang.HolProg 64 :=
.seq rawBody168_55 rawBody168_64

def rawBody168_66 : StackLang.HolProg 64 :=
.seq rawBody168_54 rawBody168_65

def rawBody168_67 : StackLang.HolProg 64 :=
.seq rawBody168_53 rawBody168_66

def rawBody168_68 : StackLang.HolProg 64 :=
.seq rawBody168_52 rawBody168_67

def rawBody168_69 : StackLang.HolProg 64 :=
.seq rawBody168_51 rawBody168_68

def rawBody168_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody168_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody168_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody168_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody168_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody168_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody168_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody168_79 : StackLang.HolProg 64 :=
.seq rawBody168_77 rawBody168_78

def rawBody168_80 : StackLang.HolProg 64 :=
.seq rawBody168_76 rawBody168_79

def rawBody168_81 : StackLang.HolProg 64 :=
.seq rawBody168_75 rawBody168_80

def rawBody168_82 : StackLang.HolProg 64 :=
.seq rawBody168_74 rawBody168_81

def rawBody168_83 : StackLang.HolProg 64 :=
.seq rawBody168_73 rawBody168_82

def rawBody168_84 : StackLang.HolProg 64 :=
.seq rawBody168_72 rawBody168_83

def rawBody168_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody168_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody168_87 : StackLang.HolProg 64 :=
.seq rawBody168_85 rawBody168_86

def rawBody168_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody168_89 : StackLang.HolProg 64 :=
.seq rawBody168_87 rawBody168_88

def rawBody168_90 : StackLang.HolProg 64 :=
.call (some (rawBody168_84, 0, 168, 2)) (Sum.inl 160) (some (rawBody168_89, 168, 3))

def rawBody168_91 : StackLang.HolProg 64 :=
.seq rawBody168_71 rawBody168_90

def rawBody168_92 : StackLang.HolProg 64 :=
.seq rawBody168_70 rawBody168_91

def rawBody168_93 : StackLang.HolProg 64 :=
.seq rawBody168_69 rawBody168_92

def rawBody168_94 : StackLang.HolProg 64 :=
.seq rawBody168_50 rawBody168_93

def rawBody168_95 : StackLang.HolProg 64 :=
.seq rawBody168_47 rawBody168_94

def rawBody168_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody168_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody168_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody168_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def rawBody168_103 : StackLang.HolProg 64 :=
.seq rawBody168_101 rawBody168_102

def rawBody168_104 : StackLang.HolProg 64 :=
.seq rawBody168_100 rawBody168_103

def rawBody168_105 : StackLang.HolProg 64 :=
.seq rawBody168_99 rawBody168_104

def rawBody168_106 : StackLang.HolProg 64 :=
.seq rawBody168_98 rawBody168_105

def rawBody168_107 : StackLang.HolProg 64 :=
.seq rawBody168_97 rawBody168_106

def rawBody168_108 : StackLang.HolProg 64 :=
.seq rawBody168_96 rawBody168_107

def rawBody168_109 : StackLang.HolProg 64 :=
.seq rawBody168_95 rawBody168_108

def rawBody168_110 : StackLang.HolProg 64 :=
.seq rawBody168_46 rawBody168_109

def rawBody168_111 : StackLang.HolProg 64 :=
.seq rawBody168_43 rawBody168_110

def rawBody168_112 : StackLang.HolProg 64 :=
.seq rawBody168_42 rawBody168_111

def rawBody168_113 : StackLang.HolProg 64 :=
.seq rawBody168_41 rawBody168_112

def rawBody168_114 : StackLang.HolProg 64 :=
.seq rawBody168_40 rawBody168_113

def rawBody168_115 : StackLang.HolProg 64 :=
.seq rawBody168_39 rawBody168_114

def rawBody168_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody168_115 rawBody168_116

def rawBody168_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 247#64)

def rawBody168_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody168_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551424#64)))

def rawBody168_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody168_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody168_129 : StackLang.HolProg 64 :=
.seq rawBody168_127 rawBody168_128

def rawBody168_130 : StackLang.HolProg 64 :=
.seq rawBody168_126 rawBody168_129

def rawBody168_131 : StackLang.HolProg 64 :=
.seq rawBody168_125 rawBody168_130

def rawBody168_132 : StackLang.HolProg 64 :=
.seq rawBody168_124 rawBody168_131

def rawBody168_133 : StackLang.HolProg 64 :=
.seq rawBody168_123 rawBody168_132

def rawBody168_134 : StackLang.HolProg 64 :=
.seq rawBody168_122 rawBody168_133

def rawBody168_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody168_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody168_134 rawBody168_135

def rawBody168_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551369#64)))

def rawBody168_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody168_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody168_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody168_145 : StackLang.HolProg 64 :=
.seq rawBody168_143 rawBody168_144

def rawBody168_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 186#64)

def rawBody168_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody168_149 : StackLang.HolProg 64 :=
.seq rawBody168_147 rawBody168_148

def rawBody168_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody168_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody168_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody168_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 168 5

def rawBody168_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody168_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody168_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody168_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody168_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody168_160 : StackLang.HolProg 64 :=
.seq rawBody168_158 rawBody168_159

def rawBody168_161 : StackLang.HolProg 64 :=
.seq rawBody168_157 rawBody168_160

def rawBody168_162 : StackLang.HolProg 64 :=
.seq rawBody168_156 rawBody168_161

def rawBody168_163 : StackLang.HolProg 64 :=
.seq rawBody168_155 rawBody168_162

def rawBody168_164 : StackLang.HolProg 64 :=
.seq rawBody168_154 rawBody168_163

def rawBody168_165 : StackLang.HolProg 64 :=
.seq rawBody168_153 rawBody168_164

def rawBody168_166 : StackLang.HolProg 64 :=
.seq rawBody168_152 rawBody168_165

def rawBody168_167 : StackLang.HolProg 64 :=
.seq rawBody168_151 rawBody168_166

def rawBody168_168 : StackLang.HolProg 64 :=
.seq rawBody168_150 rawBody168_167

def rawBody168_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody168_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody168_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody168_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody168_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody168_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody168_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody168_178 : StackLang.HolProg 64 :=
.seq rawBody168_176 rawBody168_177

def rawBody168_179 : StackLang.HolProg 64 :=
.seq rawBody168_175 rawBody168_178

def rawBody168_180 : StackLang.HolProg 64 :=
.seq rawBody168_174 rawBody168_179

def rawBody168_181 : StackLang.HolProg 64 :=
.seq rawBody168_173 rawBody168_180

def rawBody168_182 : StackLang.HolProg 64 :=
.seq rawBody168_172 rawBody168_181

def rawBody168_183 : StackLang.HolProg 64 :=
.seq rawBody168_171 rawBody168_182

def rawBody168_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody168_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody168_186 : StackLang.HolProg 64 :=
.seq rawBody168_184 rawBody168_185

def rawBody168_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody168_188 : StackLang.HolProg 64 :=
.seq rawBody168_186 rawBody168_187

def rawBody168_189 : StackLang.HolProg 64 :=
.call (some (rawBody168_183, 0, 168, 4)) (Sum.inl 160) (some (rawBody168_188, 168, 5))

def rawBody168_190 : StackLang.HolProg 64 :=
.seq rawBody168_170 rawBody168_189

def rawBody168_191 : StackLang.HolProg 64 :=
.seq rawBody168_169 rawBody168_190

def rawBody168_192 : StackLang.HolProg 64 :=
.seq rawBody168_168 rawBody168_191

def rawBody168_193 : StackLang.HolProg 64 :=
.seq rawBody168_149 rawBody168_192

def rawBody168_194 : StackLang.HolProg 64 :=
.seq rawBody168_146 rawBody168_193

def rawBody168_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody168_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody168_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody168_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody168_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody168_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody168_202 : StackLang.HolProg 64 :=
.seq rawBody168_200 rawBody168_201

def rawBody168_203 : StackLang.HolProg 64 :=
.seq rawBody168_199 rawBody168_202

def rawBody168_204 : StackLang.HolProg 64 :=
.seq rawBody168_198 rawBody168_203

def rawBody168_205 : StackLang.HolProg 64 :=
.seq rawBody168_197 rawBody168_204

def rawBody168_206 : StackLang.HolProg 64 :=
.seq rawBody168_196 rawBody168_205

def rawBody168_207 : StackLang.HolProg 64 :=
.seq rawBody168_195 rawBody168_206

def rawBody168_208 : StackLang.HolProg 64 :=
.seq rawBody168_194 rawBody168_207

def rawBody168_209 : StackLang.HolProg 64 :=
.seq rawBody168_145 rawBody168_208

def rawBody168_210 : StackLang.HolProg 64 :=
.seq rawBody168_142 rawBody168_209

def rawBody168_211 : StackLang.HolProg 64 :=
.seq rawBody168_141 rawBody168_210

def rawBody168_212 : StackLang.HolProg 64 :=
.seq rawBody168_140 rawBody168_211

def rawBody168_213 : StackLang.HolProg 64 :=
.seq rawBody168_139 rawBody168_212

def rawBody168_214 : StackLang.HolProg 64 :=
.seq rawBody168_138 rawBody168_213

def rawBody168_215 : StackLang.HolProg 64 :=
.seq rawBody168_137 rawBody168_214

def rawBody168_216 : StackLang.HolProg 64 :=
.seq rawBody168_136 rawBody168_215

def rawBody168_217 : StackLang.HolProg 64 :=
.seq rawBody168_121 rawBody168_216

def rawBody168_218 : StackLang.HolProg 64 :=
.seq rawBody168_120 rawBody168_217

def rawBody168_219 : StackLang.HolProg 64 :=
.seq rawBody168_119 rawBody168_218

def rawBody168_220 : StackLang.HolProg 64 :=
.seq rawBody168_118 rawBody168_219

def rawBody168_221 : StackLang.HolProg 64 :=
.seq rawBody168_117 rawBody168_220

def rawBody168_222 : StackLang.HolProg 64 :=
.seq rawBody168_38 rawBody168_221

def rawBody168_223 : StackLang.HolProg 64 :=
.seq rawBody168_37 rawBody168_222

def rawBody168_224 : StackLang.HolProg 64 :=
.seq rawBody168_36 rawBody168_223

def rawBody168_225 : StackLang.HolProg 64 :=
.seq rawBody168_35 rawBody168_224

def rawBody168_226 : StackLang.HolProg 64 :=
.seq rawBody168_34 rawBody168_225

def rawBody168_227 : StackLang.HolProg 64 :=
.seq rawBody168_19 rawBody168_226

def rawBody168_228 : StackLang.HolProg 64 :=
.seq rawBody168_18 rawBody168_227

def rawBody168_229 : StackLang.HolProg 64 :=
.seq rawBody168_17 rawBody168_228

def rawBody168_230 : StackLang.HolProg 64 :=
.seq rawBody168_16 rawBody168_229

def rawBody168_231 : StackLang.HolProg 64 :=
.seq rawBody168_15 rawBody168_230

def rawBody168_232 : StackLang.HolProg 64 :=
.seq rawBody168_4 rawBody168_231

def rawBody168_233 : StackLang.HolProg 64 :=
.seq rawBody168_3 rawBody168_232

def rawBody168_234 : StackLang.HolProg 64 :=
.seq rawBody168_2 rawBody168_233

def rawBody168_235 : StackLang.HolProg 64 :=
.seq rawBody168_1 rawBody168_234

def rawBody168_236 : StackLang.HolProg 64 :=
.seq rawBody168_0 rawBody168_235

def raw168 : StackLang.HolProg 64 := rawBody168_236
theorem raw168_eq : StackRawCall.compTop RawInfo.rawInfo (function168 (.list [])).1 = raw168 := by
  kernel_rfl
#print axioms raw168_eq
end InitECandidate.Proofs.BackendStages
