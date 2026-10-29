import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function672
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody672_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody672_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody672_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody672_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody672_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody672_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody672_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody672_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody672_9 : StackLang.HolProg 64 :=
.seq rawBody672_7 rawBody672_8

def rawBody672_10 : StackLang.HolProg 64 :=
.seq rawBody672_6 rawBody672_9

def rawBody672_11 : StackLang.HolProg 64 :=
.seq rawBody672_5 rawBody672_10

def rawBody672_12 : StackLang.HolProg 64 :=
.seq rawBody672_4 rawBody672_11

def rawBody672_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody672_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody672_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody672_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody672_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody672_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody672_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def rawBody672_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 1

def rawBody672_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def rawBody672_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def rawBody672_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody672_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody672_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody672_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def rawBody672_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def rawBody672_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def rawBody672_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def rawBody672_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 23 4

def rawBody672_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody672_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody672_40 : StackLang.HolProg 64 :=
.seq rawBody672_38 rawBody672_39

def rawBody672_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 23 5

def rawBody672_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody672_43 : StackLang.HolProg 64 :=
.seq rawBody672_41 rawBody672_42

def rawBody672_44 : StackLang.HolProg 64 :=
.seq rawBody672_40 rawBody672_43

def rawBody672_45 : StackLang.HolProg 64 :=
.seq rawBody672_37 rawBody672_44

def rawBody672_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2788#64)

def rawBody672_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody672_49 : StackLang.HolProg 64 :=
.seq rawBody672_47 rawBody672_48

def rawBody672_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody672_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody672_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody672_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 672 3

def rawBody672_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody672_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody672_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody672_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody672_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody672_60 : StackLang.HolProg 64 :=
.seq rawBody672_58 rawBody672_59

def rawBody672_61 : StackLang.HolProg 64 :=
.seq rawBody672_57 rawBody672_60

def rawBody672_62 : StackLang.HolProg 64 :=
.seq rawBody672_56 rawBody672_61

def rawBody672_63 : StackLang.HolProg 64 :=
.seq rawBody672_55 rawBody672_62

def rawBody672_64 : StackLang.HolProg 64 :=
.seq rawBody672_54 rawBody672_63

def rawBody672_65 : StackLang.HolProg 64 :=
.seq rawBody672_53 rawBody672_64

def rawBody672_66 : StackLang.HolProg 64 :=
.seq rawBody672_52 rawBody672_65

def rawBody672_67 : StackLang.HolProg 64 :=
.seq rawBody672_51 rawBody672_66

def rawBody672_68 : StackLang.HolProg 64 :=
.seq rawBody672_50 rawBody672_67

def rawBody672_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody672_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody672_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody672_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody672_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody672_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def rawBody672_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody672_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody672_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody672_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody672_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def rawBody672_82 : StackLang.HolProg 64 :=
.seq rawBody672_80 rawBody672_81

def rawBody672_83 : StackLang.HolProg 64 :=
.seq rawBody672_79 rawBody672_82

def rawBody672_84 : StackLang.HolProg 64 :=
.seq rawBody672_78 rawBody672_83

def rawBody672_85 : StackLang.HolProg 64 :=
.seq rawBody672_77 rawBody672_84

def rawBody672_86 : StackLang.HolProg 64 :=
.seq rawBody672_76 rawBody672_85

def rawBody672_87 : StackLang.HolProg 64 :=
.seq rawBody672_75 rawBody672_86

def rawBody672_88 : StackLang.HolProg 64 :=
.seq rawBody672_74 rawBody672_87

def rawBody672_89 : StackLang.HolProg 64 :=
.seq rawBody672_73 rawBody672_88

def rawBody672_90 : StackLang.HolProg 64 :=
.seq rawBody672_72 rawBody672_89

def rawBody672_91 : StackLang.HolProg 64 :=
.seq rawBody672_71 rawBody672_90

def rawBody672_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def rawBody672_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody672_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody672_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody672_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody672_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def rawBody672_98 : StackLang.HolProg 64 :=
.seq rawBody672_96 rawBody672_97

def rawBody672_99 : StackLang.HolProg 64 :=
.seq rawBody672_95 rawBody672_98

def rawBody672_100 : StackLang.HolProg 64 :=
.seq rawBody672_94 rawBody672_99

def rawBody672_101 : StackLang.HolProg 64 :=
.seq rawBody672_93 rawBody672_100

def rawBody672_102 : StackLang.HolProg 64 :=
.seq rawBody672_92 rawBody672_101

def rawBody672_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody672_104 : StackLang.HolProg 64 :=
.seq rawBody672_102 rawBody672_103

def rawBody672_105 : StackLang.HolProg 64 :=
.call (some (rawBody672_91, 0, 672, 2)) (Sum.inl 658) (some (rawBody672_104, 672, 3))

def rawBody672_106 : StackLang.HolProg 64 :=
.seq rawBody672_70 rawBody672_105

def rawBody672_107 : StackLang.HolProg 64 :=
.seq rawBody672_69 rawBody672_106

def rawBody672_108 : StackLang.HolProg 64 :=
.seq rawBody672_68 rawBody672_107

def rawBody672_109 : StackLang.HolProg 64 :=
.seq rawBody672_49 rawBody672_108

def rawBody672_110 : StackLang.HolProg 64 :=
.seq rawBody672_46 rawBody672_109

def rawBody672_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody672_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody672_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody672_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody672_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody672_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody672_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody672_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody672_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 6

def rawBody672_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody672_128 : StackLang.HolProg 64 :=
.seq rawBody672_126 rawBody672_127

def rawBody672_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody672_130 : StackLang.HolProg 64 :=
.seq rawBody672_128 rawBody672_129

def rawBody672_131 : StackLang.HolProg 64 :=
.seq rawBody672_125 rawBody672_130

def rawBody672_132 : StackLang.HolProg 64 :=
.seq rawBody672_124 rawBody672_131

def rawBody672_133 : StackLang.HolProg 64 :=
.seq rawBody672_123 rawBody672_132

def rawBody672_134 : StackLang.HolProg 64 :=
.seq rawBody672_122 rawBody672_133

def rawBody672_135 : StackLang.HolProg 64 :=
.seq rawBody672_121 rawBody672_134

def rawBody672_136 : StackLang.HolProg 64 :=
.seq rawBody672_120 rawBody672_135

def rawBody672_137 : StackLang.HolProg 64 :=
.seq rawBody672_119 rawBody672_136

def rawBody672_138 : StackLang.HolProg 64 :=
.seq rawBody672_118 rawBody672_137

def rawBody672_139 : StackLang.HolProg 64 :=
.seq rawBody672_117 rawBody672_138

def rawBody672_140 : StackLang.HolProg 64 :=
.seq rawBody672_116 rawBody672_139

def rawBody672_141 : StackLang.HolProg 64 :=
.seq rawBody672_115 rawBody672_140

def rawBody672_142 : StackLang.HolProg 64 :=
.seq rawBody672_114 rawBody672_141

def rawBody672_143 : StackLang.HolProg 64 :=
.seq rawBody672_113 rawBody672_142

def rawBody672_144 : StackLang.HolProg 64 :=
.seq rawBody672_112 rawBody672_143

def rawBody672_145 : StackLang.HolProg 64 :=
.seq rawBody672_111 rawBody672_144

def rawBody672_146 : StackLang.HolProg 64 :=
.seq rawBody672_110 rawBody672_145

def rawBody672_147 : StackLang.HolProg 64 :=
.seq rawBody672_45 rawBody672_146

def rawBody672_148 : StackLang.HolProg 64 :=
.seq rawBody672_36 rawBody672_147

def rawBody672_149 : StackLang.HolProg 64 :=
.seq rawBody672_35 rawBody672_148

def rawBody672_150 : StackLang.HolProg 64 :=
.seq rawBody672_34 rawBody672_149

def rawBody672_151 : StackLang.HolProg 64 :=
.seq rawBody672_33 rawBody672_150

def rawBody672_152 : StackLang.HolProg 64 :=
.seq rawBody672_32 rawBody672_151

def rawBody672_153 : StackLang.HolProg 64 :=
.seq rawBody672_31 rawBody672_152

def rawBody672_154 : StackLang.HolProg 64 :=
.seq rawBody672_30 rawBody672_153

def rawBody672_155 : StackLang.HolProg 64 :=
.seq rawBody672_29 rawBody672_154

def rawBody672_156 : StackLang.HolProg 64 :=
.seq rawBody672_28 rawBody672_155

def rawBody672_157 : StackLang.HolProg 64 :=
.seq rawBody672_27 rawBody672_156

def rawBody672_158 : StackLang.HolProg 64 :=
.seq rawBody672_26 rawBody672_157

def rawBody672_159 : StackLang.HolProg 64 :=
.seq rawBody672_25 rawBody672_158

def rawBody672_160 : StackLang.HolProg 64 :=
.seq rawBody672_24 rawBody672_159

def rawBody672_161 : StackLang.HolProg 64 :=
.seq rawBody672_23 rawBody672_160

def rawBody672_162 : StackLang.HolProg 64 :=
.seq rawBody672_22 rawBody672_161

def rawBody672_163 : StackLang.HolProg 64 :=
.seq rawBody672_21 rawBody672_162

def rawBody672_164 : StackLang.HolProg 64 :=
.seq rawBody672_20 rawBody672_163

def rawBody672_165 : StackLang.HolProg 64 :=
.seq rawBody672_19 rawBody672_164

def rawBody672_166 : StackLang.HolProg 64 :=
.seq rawBody672_18 rawBody672_165

def rawBody672_167 : StackLang.HolProg 64 :=
.seq rawBody672_17 rawBody672_166

def rawBody672_168 : StackLang.HolProg 64 :=
.seq rawBody672_16 rawBody672_167

def rawBody672_169 : StackLang.HolProg 64 :=
.seq rawBody672_15 rawBody672_168

def rawBody672_170 : StackLang.HolProg 64 :=
.seq rawBody672_14 rawBody672_169

def rawBody672_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody672_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody672_173 : StackLang.HolProg 64 :=
.seq rawBody672_171 rawBody672_172

def rawBody672_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody672_170 rawBody672_173

def rawBody672_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody672_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody672_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody672_178 : StackLang.HolProg 64 :=
.seq rawBody672_176 rawBody672_177

def rawBody672_179 : StackLang.HolProg 64 :=
.seq rawBody672_175 rawBody672_178

def rawBody672_180 : StackLang.HolProg 64 :=
.seq rawBody672_174 rawBody672_179

def rawBody672_181 : StackLang.HolProg 64 :=
.seq rawBody672_13 rawBody672_180

def rawBody672_182 : StackLang.HolProg 64 :=
.loop rawBody672_181

def rawBody672_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody672_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody672_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody672_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody672_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody672_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody672_189 : StackLang.HolProg 64 :=
.seq rawBody672_187 rawBody672_188

def rawBody672_190 : StackLang.HolProg 64 :=
.seq rawBody672_186 rawBody672_189

def rawBody672_191 : StackLang.HolProg 64 :=
.seq rawBody672_185 rawBody672_190

def rawBody672_192 : StackLang.HolProg 64 :=
.seq rawBody672_184 rawBody672_191

def rawBody672_193 : StackLang.HolProg 64 :=
.seq rawBody672_183 rawBody672_192

def rawBody672_194 : StackLang.HolProg 64 :=
.seq rawBody672_182 rawBody672_193

def rawBody672_195 : StackLang.HolProg 64 :=
.seq rawBody672_12 rawBody672_194

def rawBody672_196 : StackLang.HolProg 64 :=
.seq rawBody672_3 rawBody672_195

def rawBody672_197 : StackLang.HolProg 64 :=
.seq rawBody672_2 rawBody672_196

def rawBody672_198 : StackLang.HolProg 64 :=
.seq rawBody672_1 rawBody672_197

def rawBody672_199 : StackLang.HolProg 64 :=
.seq rawBody672_0 rawBody672_198

def raw672 : StackLang.HolProg 64 := rawBody672_199
theorem raw672_eq : StackRawCall.compTop RawInfo.rawInfo (function672 (.list [])).1 = raw672 := by
  kernel_rfl
#print axioms raw672_eq
end InitECandidate.Proofs.BackendStages
