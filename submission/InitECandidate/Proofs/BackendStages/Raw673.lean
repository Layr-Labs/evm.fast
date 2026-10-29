import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function673
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody673_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody673_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody673_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody673_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody673_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody673_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody673_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody673_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody673_9 : StackLang.HolProg 64 :=
.seq rawBody673_7 rawBody673_8

def rawBody673_10 : StackLang.HolProg 64 :=
.seq rawBody673_6 rawBody673_9

def rawBody673_11 : StackLang.HolProg 64 :=
.seq rawBody673_5 rawBody673_10

def rawBody673_12 : StackLang.HolProg 64 :=
.seq rawBody673_4 rawBody673_11

def rawBody673_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody673_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody673_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody673_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody673_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody673_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody673_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def rawBody673_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 1

def rawBody673_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def rawBody673_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def rawBody673_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody673_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody673_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody673_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def rawBody673_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def rawBody673_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def rawBody673_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def rawBody673_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 23 4

def rawBody673_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody673_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody673_40 : StackLang.HolProg 64 :=
.seq rawBody673_38 rawBody673_39

def rawBody673_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 23 5

def rawBody673_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody673_43 : StackLang.HolProg 64 :=
.seq rawBody673_41 rawBody673_42

def rawBody673_44 : StackLang.HolProg 64 :=
.seq rawBody673_40 rawBody673_43

def rawBody673_45 : StackLang.HolProg 64 :=
.seq rawBody673_37 rawBody673_44

def rawBody673_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2789#64)

def rawBody673_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody673_49 : StackLang.HolProg 64 :=
.seq rawBody673_47 rawBody673_48

def rawBody673_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody673_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody673_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody673_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 673 3

def rawBody673_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody673_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody673_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody673_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody673_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody673_60 : StackLang.HolProg 64 :=
.seq rawBody673_58 rawBody673_59

def rawBody673_61 : StackLang.HolProg 64 :=
.seq rawBody673_57 rawBody673_60

def rawBody673_62 : StackLang.HolProg 64 :=
.seq rawBody673_56 rawBody673_61

def rawBody673_63 : StackLang.HolProg 64 :=
.seq rawBody673_55 rawBody673_62

def rawBody673_64 : StackLang.HolProg 64 :=
.seq rawBody673_54 rawBody673_63

def rawBody673_65 : StackLang.HolProg 64 :=
.seq rawBody673_53 rawBody673_64

def rawBody673_66 : StackLang.HolProg 64 :=
.seq rawBody673_52 rawBody673_65

def rawBody673_67 : StackLang.HolProg 64 :=
.seq rawBody673_51 rawBody673_66

def rawBody673_68 : StackLang.HolProg 64 :=
.seq rawBody673_50 rawBody673_67

def rawBody673_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody673_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody673_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody673_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody673_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody673_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def rawBody673_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody673_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody673_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody673_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody673_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def rawBody673_82 : StackLang.HolProg 64 :=
.seq rawBody673_80 rawBody673_81

def rawBody673_83 : StackLang.HolProg 64 :=
.seq rawBody673_79 rawBody673_82

def rawBody673_84 : StackLang.HolProg 64 :=
.seq rawBody673_78 rawBody673_83

def rawBody673_85 : StackLang.HolProg 64 :=
.seq rawBody673_77 rawBody673_84

def rawBody673_86 : StackLang.HolProg 64 :=
.seq rawBody673_76 rawBody673_85

def rawBody673_87 : StackLang.HolProg 64 :=
.seq rawBody673_75 rawBody673_86

def rawBody673_88 : StackLang.HolProg 64 :=
.seq rawBody673_74 rawBody673_87

def rawBody673_89 : StackLang.HolProg 64 :=
.seq rawBody673_73 rawBody673_88

def rawBody673_90 : StackLang.HolProg 64 :=
.seq rawBody673_72 rawBody673_89

def rawBody673_91 : StackLang.HolProg 64 :=
.seq rawBody673_71 rawBody673_90

def rawBody673_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def rawBody673_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody673_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody673_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody673_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody673_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def rawBody673_98 : StackLang.HolProg 64 :=
.seq rawBody673_96 rawBody673_97

def rawBody673_99 : StackLang.HolProg 64 :=
.seq rawBody673_95 rawBody673_98

def rawBody673_100 : StackLang.HolProg 64 :=
.seq rawBody673_94 rawBody673_99

def rawBody673_101 : StackLang.HolProg 64 :=
.seq rawBody673_93 rawBody673_100

def rawBody673_102 : StackLang.HolProg 64 :=
.seq rawBody673_92 rawBody673_101

def rawBody673_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody673_104 : StackLang.HolProg 64 :=
.seq rawBody673_102 rawBody673_103

def rawBody673_105 : StackLang.HolProg 64 :=
.call (some (rawBody673_91, 0, 673, 2)) (Sum.inl 659) (some (rawBody673_104, 673, 3))

def rawBody673_106 : StackLang.HolProg 64 :=
.seq rawBody673_70 rawBody673_105

def rawBody673_107 : StackLang.HolProg 64 :=
.seq rawBody673_69 rawBody673_106

def rawBody673_108 : StackLang.HolProg 64 :=
.seq rawBody673_68 rawBody673_107

def rawBody673_109 : StackLang.HolProg 64 :=
.seq rawBody673_49 rawBody673_108

def rawBody673_110 : StackLang.HolProg 64 :=
.seq rawBody673_46 rawBody673_109

def rawBody673_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody673_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody673_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody673_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody673_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody673_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody673_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody673_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody673_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 6

def rawBody673_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody673_128 : StackLang.HolProg 64 :=
.seq rawBody673_126 rawBody673_127

def rawBody673_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody673_130 : StackLang.HolProg 64 :=
.seq rawBody673_128 rawBody673_129

def rawBody673_131 : StackLang.HolProg 64 :=
.seq rawBody673_125 rawBody673_130

def rawBody673_132 : StackLang.HolProg 64 :=
.seq rawBody673_124 rawBody673_131

def rawBody673_133 : StackLang.HolProg 64 :=
.seq rawBody673_123 rawBody673_132

def rawBody673_134 : StackLang.HolProg 64 :=
.seq rawBody673_122 rawBody673_133

def rawBody673_135 : StackLang.HolProg 64 :=
.seq rawBody673_121 rawBody673_134

def rawBody673_136 : StackLang.HolProg 64 :=
.seq rawBody673_120 rawBody673_135

def rawBody673_137 : StackLang.HolProg 64 :=
.seq rawBody673_119 rawBody673_136

def rawBody673_138 : StackLang.HolProg 64 :=
.seq rawBody673_118 rawBody673_137

def rawBody673_139 : StackLang.HolProg 64 :=
.seq rawBody673_117 rawBody673_138

def rawBody673_140 : StackLang.HolProg 64 :=
.seq rawBody673_116 rawBody673_139

def rawBody673_141 : StackLang.HolProg 64 :=
.seq rawBody673_115 rawBody673_140

def rawBody673_142 : StackLang.HolProg 64 :=
.seq rawBody673_114 rawBody673_141

def rawBody673_143 : StackLang.HolProg 64 :=
.seq rawBody673_113 rawBody673_142

def rawBody673_144 : StackLang.HolProg 64 :=
.seq rawBody673_112 rawBody673_143

def rawBody673_145 : StackLang.HolProg 64 :=
.seq rawBody673_111 rawBody673_144

def rawBody673_146 : StackLang.HolProg 64 :=
.seq rawBody673_110 rawBody673_145

def rawBody673_147 : StackLang.HolProg 64 :=
.seq rawBody673_45 rawBody673_146

def rawBody673_148 : StackLang.HolProg 64 :=
.seq rawBody673_36 rawBody673_147

def rawBody673_149 : StackLang.HolProg 64 :=
.seq rawBody673_35 rawBody673_148

def rawBody673_150 : StackLang.HolProg 64 :=
.seq rawBody673_34 rawBody673_149

def rawBody673_151 : StackLang.HolProg 64 :=
.seq rawBody673_33 rawBody673_150

def rawBody673_152 : StackLang.HolProg 64 :=
.seq rawBody673_32 rawBody673_151

def rawBody673_153 : StackLang.HolProg 64 :=
.seq rawBody673_31 rawBody673_152

def rawBody673_154 : StackLang.HolProg 64 :=
.seq rawBody673_30 rawBody673_153

def rawBody673_155 : StackLang.HolProg 64 :=
.seq rawBody673_29 rawBody673_154

def rawBody673_156 : StackLang.HolProg 64 :=
.seq rawBody673_28 rawBody673_155

def rawBody673_157 : StackLang.HolProg 64 :=
.seq rawBody673_27 rawBody673_156

def rawBody673_158 : StackLang.HolProg 64 :=
.seq rawBody673_26 rawBody673_157

def rawBody673_159 : StackLang.HolProg 64 :=
.seq rawBody673_25 rawBody673_158

def rawBody673_160 : StackLang.HolProg 64 :=
.seq rawBody673_24 rawBody673_159

def rawBody673_161 : StackLang.HolProg 64 :=
.seq rawBody673_23 rawBody673_160

def rawBody673_162 : StackLang.HolProg 64 :=
.seq rawBody673_22 rawBody673_161

def rawBody673_163 : StackLang.HolProg 64 :=
.seq rawBody673_21 rawBody673_162

def rawBody673_164 : StackLang.HolProg 64 :=
.seq rawBody673_20 rawBody673_163

def rawBody673_165 : StackLang.HolProg 64 :=
.seq rawBody673_19 rawBody673_164

def rawBody673_166 : StackLang.HolProg 64 :=
.seq rawBody673_18 rawBody673_165

def rawBody673_167 : StackLang.HolProg 64 :=
.seq rawBody673_17 rawBody673_166

def rawBody673_168 : StackLang.HolProg 64 :=
.seq rawBody673_16 rawBody673_167

def rawBody673_169 : StackLang.HolProg 64 :=
.seq rawBody673_15 rawBody673_168

def rawBody673_170 : StackLang.HolProg 64 :=
.seq rawBody673_14 rawBody673_169

def rawBody673_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody673_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody673_173 : StackLang.HolProg 64 :=
.seq rawBody673_171 rawBody673_172

def rawBody673_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody673_170 rawBody673_173

def rawBody673_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody673_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody673_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody673_178 : StackLang.HolProg 64 :=
.seq rawBody673_176 rawBody673_177

def rawBody673_179 : StackLang.HolProg 64 :=
.seq rawBody673_175 rawBody673_178

def rawBody673_180 : StackLang.HolProg 64 :=
.seq rawBody673_174 rawBody673_179

def rawBody673_181 : StackLang.HolProg 64 :=
.seq rawBody673_13 rawBody673_180

def rawBody673_182 : StackLang.HolProg 64 :=
.loop rawBody673_181

def rawBody673_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody673_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody673_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody673_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody673_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody673_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody673_189 : StackLang.HolProg 64 :=
.seq rawBody673_187 rawBody673_188

def rawBody673_190 : StackLang.HolProg 64 :=
.seq rawBody673_186 rawBody673_189

def rawBody673_191 : StackLang.HolProg 64 :=
.seq rawBody673_185 rawBody673_190

def rawBody673_192 : StackLang.HolProg 64 :=
.seq rawBody673_184 rawBody673_191

def rawBody673_193 : StackLang.HolProg 64 :=
.seq rawBody673_183 rawBody673_192

def rawBody673_194 : StackLang.HolProg 64 :=
.seq rawBody673_182 rawBody673_193

def rawBody673_195 : StackLang.HolProg 64 :=
.seq rawBody673_12 rawBody673_194

def rawBody673_196 : StackLang.HolProg 64 :=
.seq rawBody673_3 rawBody673_195

def rawBody673_197 : StackLang.HolProg 64 :=
.seq rawBody673_2 rawBody673_196

def rawBody673_198 : StackLang.HolProg 64 :=
.seq rawBody673_1 rawBody673_197

def rawBody673_199 : StackLang.HolProg 64 :=
.seq rawBody673_0 rawBody673_198

def raw673 : StackLang.HolProg 64 := rawBody673_199
theorem raw673_eq : StackRawCall.compTop RawInfo.rawInfo (function673 (.list [])).1 = raw673 := by
  kernel_rfl
#print axioms raw673_eq
end InitECandidate.Proofs.BackendStages
