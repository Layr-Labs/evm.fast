import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function144
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody144_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody144_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody144_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 31#64)

def rawBody144_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody144_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody144_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody144_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody144_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody144_8 : StackLang.HolProg 64 :=
.seq rawBody144_6 rawBody144_7

def rawBody144_9 : StackLang.HolProg 64 :=
.seq rawBody144_5 rawBody144_8

def rawBody144_10 : StackLang.HolProg 64 :=
.seq rawBody144_4 rawBody144_9

def rawBody144_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody144_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody144_13 : StackLang.HolProg 64 :=
.seq rawBody144_11 rawBody144_12

def rawBody144_14 : StackLang.HolProg 64 :=
.seq rawBody144_10 rawBody144_13

def rawBody144_15 : StackLang.HolProg 64 :=
.seq rawBody144_3 rawBody144_14

def rawBody144_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody144_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody144_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody144_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody144_20 : StackLang.HolProg 64 :=
.seq rawBody144_18 rawBody144_19

def rawBody144_21 : StackLang.HolProg 64 :=
.seq rawBody144_17 rawBody144_20

def rawBody144_22 : StackLang.HolProg 64 :=
.seq rawBody144_16 rawBody144_21

def rawBody144_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody144_15 rawBody144_22

def rawBody144_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody144_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody144_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody144_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody144_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody144_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody144_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody144_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody144_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody144_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def rawBody144_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody144_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def rawBody144_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 2

def rawBody144_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 1

def rawBody144_39 : StackLang.HolProg 64 :=
.seq rawBody144_37 rawBody144_38

def rawBody144_40 : StackLang.HolProg 64 :=
.seq rawBody144_36 rawBody144_39

def rawBody144_41 : StackLang.HolProg 64 :=
.seq rawBody144_35 rawBody144_40

def rawBody144_42 : StackLang.HolProg 64 :=
.seq rawBody144_34 rawBody144_41

def rawBody144_43 : StackLang.HolProg 64 :=
.seq rawBody144_33 rawBody144_42

def rawBody144_44 : StackLang.HolProg 64 :=
.seq rawBody144_32 rawBody144_43

def rawBody144_45 : StackLang.HolProg 64 :=
.seq rawBody144_31 rawBody144_44

def rawBody144_46 : StackLang.HolProg 64 :=
.seq rawBody144_30 rawBody144_45

def rawBody144_47 : StackLang.HolProg 64 :=
.seq rawBody144_29 rawBody144_46

def rawBody144_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 108#64)

def rawBody144_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody144_51 : StackLang.HolProg 64 :=
.seq rawBody144_49 rawBody144_50

def rawBody144_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody144_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody144_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody144_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 144 3

def rawBody144_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody144_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody144_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody144_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody144_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody144_62 : StackLang.HolProg 64 :=
.seq rawBody144_60 rawBody144_61

def rawBody144_63 : StackLang.HolProg 64 :=
.seq rawBody144_59 rawBody144_62

def rawBody144_64 : StackLang.HolProg 64 :=
.seq rawBody144_58 rawBody144_63

def rawBody144_65 : StackLang.HolProg 64 :=
.seq rawBody144_57 rawBody144_64

def rawBody144_66 : StackLang.HolProg 64 :=
.seq rawBody144_56 rawBody144_65

def rawBody144_67 : StackLang.HolProg 64 :=
.seq rawBody144_55 rawBody144_66

def rawBody144_68 : StackLang.HolProg 64 :=
.seq rawBody144_54 rawBody144_67

def rawBody144_69 : StackLang.HolProg 64 :=
.seq rawBody144_53 rawBody144_68

def rawBody144_70 : StackLang.HolProg 64 :=
.seq rawBody144_52 rawBody144_69

def rawBody144_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody144_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody144_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody144_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody144_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody144_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody144_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody144_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody144_81 : StackLang.HolProg 64 :=
.seq rawBody144_79 rawBody144_80

def rawBody144_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody144_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody144_84 : StackLang.HolProg 64 :=
.seq rawBody144_82 rawBody144_83

def rawBody144_85 : StackLang.HolProg 64 :=
.seq rawBody144_81 rawBody144_84

def rawBody144_86 : StackLang.HolProg 64 :=
.seq rawBody144_78 rawBody144_85

def rawBody144_87 : StackLang.HolProg 64 :=
.seq rawBody144_77 rawBody144_86

def rawBody144_88 : StackLang.HolProg 64 :=
.seq rawBody144_76 rawBody144_87

def rawBody144_89 : StackLang.HolProg 64 :=
.seq rawBody144_75 rawBody144_88

def rawBody144_90 : StackLang.HolProg 64 :=
.seq rawBody144_74 rawBody144_89

def rawBody144_91 : StackLang.HolProg 64 :=
.seq rawBody144_73 rawBody144_90

def rawBody144_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody144_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody144_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody144_95 : StackLang.HolProg 64 :=
.seq rawBody144_93 rawBody144_94

def rawBody144_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody144_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody144_98 : StackLang.HolProg 64 :=
.seq rawBody144_96 rawBody144_97

def rawBody144_99 : StackLang.HolProg 64 :=
.seq rawBody144_95 rawBody144_98

def rawBody144_100 : StackLang.HolProg 64 :=
.seq rawBody144_92 rawBody144_99

def rawBody144_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody144_102 : StackLang.HolProg 64 :=
.seq rawBody144_100 rawBody144_101

def rawBody144_103 : StackLang.HolProg 64 :=
.call (some (rawBody144_91, 0, 144, 2)) (Sum.inl 104) (some (rawBody144_102, 144, 3))

def rawBody144_104 : StackLang.HolProg 64 :=
.seq rawBody144_72 rawBody144_103

def rawBody144_105 : StackLang.HolProg 64 :=
.seq rawBody144_71 rawBody144_104

def rawBody144_106 : StackLang.HolProg 64 :=
.seq rawBody144_70 rawBody144_105

def rawBody144_107 : StackLang.HolProg 64 :=
.seq rawBody144_51 rawBody144_106

def rawBody144_108 : StackLang.HolProg 64 :=
.seq rawBody144_48 rawBody144_107

def rawBody144_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody144_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody144_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 18446744073709551615#64)

def rawBody144_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 18446744073709551615#64)

def rawBody144_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 18446744073709551615#64)

def rawBody144_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody144_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def rawBody144_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 109#64)

def rawBody144_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody144_120 : StackLang.HolProg 64 :=
.seq rawBody144_118 rawBody144_119

def rawBody144_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody144_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody144_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody144_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 144 5

def rawBody144_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody144_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody144_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody144_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody144_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody144_131 : StackLang.HolProg 64 :=
.seq rawBody144_129 rawBody144_130

def rawBody144_132 : StackLang.HolProg 64 :=
.seq rawBody144_128 rawBody144_131

def rawBody144_133 : StackLang.HolProg 64 :=
.seq rawBody144_127 rawBody144_132

def rawBody144_134 : StackLang.HolProg 64 :=
.seq rawBody144_126 rawBody144_133

def rawBody144_135 : StackLang.HolProg 64 :=
.seq rawBody144_125 rawBody144_134

def rawBody144_136 : StackLang.HolProg 64 :=
.seq rawBody144_124 rawBody144_135

def rawBody144_137 : StackLang.HolProg 64 :=
.seq rawBody144_123 rawBody144_136

def rawBody144_138 : StackLang.HolProg 64 :=
.seq rawBody144_122 rawBody144_137

def rawBody144_139 : StackLang.HolProg 64 :=
.seq rawBody144_121 rawBody144_138

def rawBody144_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody144_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody144_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody144_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody144_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody144_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody144_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody144_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody144_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody144_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody144_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody144_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody144_154 : StackLang.HolProg 64 :=
.seq rawBody144_152 rawBody144_153

def rawBody144_155 : StackLang.HolProg 64 :=
.seq rawBody144_151 rawBody144_154

def rawBody144_156 : StackLang.HolProg 64 :=
.seq rawBody144_150 rawBody144_155

def rawBody144_157 : StackLang.HolProg 64 :=
.seq rawBody144_149 rawBody144_156

def rawBody144_158 : StackLang.HolProg 64 :=
.seq rawBody144_148 rawBody144_157

def rawBody144_159 : StackLang.HolProg 64 :=
.seq rawBody144_147 rawBody144_158

def rawBody144_160 : StackLang.HolProg 64 :=
.seq rawBody144_146 rawBody144_159

def rawBody144_161 : StackLang.HolProg 64 :=
.seq rawBody144_145 rawBody144_160

def rawBody144_162 : StackLang.HolProg 64 :=
.seq rawBody144_144 rawBody144_161

def rawBody144_163 : StackLang.HolProg 64 :=
.seq rawBody144_143 rawBody144_162

def rawBody144_164 : StackLang.HolProg 64 :=
.seq rawBody144_142 rawBody144_163

def rawBody144_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody144_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody144_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody144_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody144_169 : StackLang.HolProg 64 :=
.seq rawBody144_167 rawBody144_168

def rawBody144_170 : StackLang.HolProg 64 :=
.seq rawBody144_166 rawBody144_169

def rawBody144_171 : StackLang.HolProg 64 :=
.seq rawBody144_165 rawBody144_170

def rawBody144_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody144_173 : StackLang.HolProg 64 :=
.seq rawBody144_171 rawBody144_172

def rawBody144_174 : StackLang.HolProg 64 :=
.call (some (rawBody144_164, 0, 144, 4)) (Sum.inl 141) (some (rawBody144_173, 144, 5))

def rawBody144_175 : StackLang.HolProg 64 :=
.seq rawBody144_141 rawBody144_174

def rawBody144_176 : StackLang.HolProg 64 :=
.seq rawBody144_140 rawBody144_175

def rawBody144_177 : StackLang.HolProg 64 :=
.seq rawBody144_139 rawBody144_176

def rawBody144_178 : StackLang.HolProg 64 :=
.seq rawBody144_120 rawBody144_177

def rawBody144_179 : StackLang.HolProg 64 :=
.seq rawBody144_117 rawBody144_178

def rawBody144_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody144_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody144_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody144_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 4

def rawBody144_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody144_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody144_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody144_188 : StackLang.HolProg 64 :=
.seq rawBody144_186 rawBody144_187

def rawBody144_189 : StackLang.HolProg 64 :=
.seq rawBody144_185 rawBody144_188

def rawBody144_190 : StackLang.HolProg 64 :=
.seq rawBody144_184 rawBody144_189

def rawBody144_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody144_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 113

def rawBody144_194 : StackLang.HolProg 64 :=
.seq rawBody144_192 rawBody144_193

def rawBody144_195 : StackLang.HolProg 64 :=
.seq rawBody144_191 rawBody144_194

def rawBody144_196 : StackLang.HolProg 64 :=
.seq rawBody144_190 rawBody144_195

def rawBody144_197 : StackLang.HolProg 64 :=
.seq rawBody144_183 rawBody144_196

def rawBody144_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_199 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody144_197 rawBody144_198

def rawBody144_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody144_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody144_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody144_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody144_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody144_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody144_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody144_207 : StackLang.HolProg 64 :=
.seq rawBody144_205 rawBody144_206

def rawBody144_208 : StackLang.HolProg 64 :=
.seq rawBody144_204 rawBody144_207

def rawBody144_209 : StackLang.HolProg 64 :=
.seq rawBody144_203 rawBody144_208

def rawBody144_210 : StackLang.HolProg 64 :=
.seq rawBody144_202 rawBody144_209

def rawBody144_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 110#64)

def rawBody144_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody144_214 : StackLang.HolProg 64 :=
.seq rawBody144_212 rawBody144_213

def rawBody144_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody144_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody144_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody144_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 144 7

def rawBody144_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody144_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody144_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody144_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody144_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody144_225 : StackLang.HolProg 64 :=
.seq rawBody144_223 rawBody144_224

def rawBody144_226 : StackLang.HolProg 64 :=
.seq rawBody144_222 rawBody144_225

def rawBody144_227 : StackLang.HolProg 64 :=
.seq rawBody144_221 rawBody144_226

def rawBody144_228 : StackLang.HolProg 64 :=
.seq rawBody144_220 rawBody144_227

def rawBody144_229 : StackLang.HolProg 64 :=
.seq rawBody144_219 rawBody144_228

def rawBody144_230 : StackLang.HolProg 64 :=
.seq rawBody144_218 rawBody144_229

def rawBody144_231 : StackLang.HolProg 64 :=
.seq rawBody144_217 rawBody144_230

def rawBody144_232 : StackLang.HolProg 64 :=
.seq rawBody144_216 rawBody144_231

def rawBody144_233 : StackLang.HolProg 64 :=
.seq rawBody144_215 rawBody144_232

def rawBody144_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody144_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody144_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody144_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody144_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody144_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody144_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody144_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody144_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody144_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody144_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 4

def rawBody144_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody144_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody144_249 : StackLang.HolProg 64 :=
.seq rawBody144_247 rawBody144_248

def rawBody144_250 : StackLang.HolProg 64 :=
.seq rawBody144_246 rawBody144_249

def rawBody144_251 : StackLang.HolProg 64 :=
.seq rawBody144_245 rawBody144_250

def rawBody144_252 : StackLang.HolProg 64 :=
.seq rawBody144_244 rawBody144_251

def rawBody144_253 : StackLang.HolProg 64 :=
.seq rawBody144_243 rawBody144_252

def rawBody144_254 : StackLang.HolProg 64 :=
.seq rawBody144_242 rawBody144_253

def rawBody144_255 : StackLang.HolProg 64 :=
.seq rawBody144_241 rawBody144_254

def rawBody144_256 : StackLang.HolProg 64 :=
.seq rawBody144_240 rawBody144_255

def rawBody144_257 : StackLang.HolProg 64 :=
.seq rawBody144_239 rawBody144_256

def rawBody144_258 : StackLang.HolProg 64 :=
.seq rawBody144_238 rawBody144_257

def rawBody144_259 : StackLang.HolProg 64 :=
.seq rawBody144_237 rawBody144_258

def rawBody144_260 : StackLang.HolProg 64 :=
.seq rawBody144_236 rawBody144_259

def rawBody144_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody144_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody144_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 4

def rawBody144_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody144_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody144_266 : StackLang.HolProg 64 :=
.seq rawBody144_264 rawBody144_265

def rawBody144_267 : StackLang.HolProg 64 :=
.seq rawBody144_263 rawBody144_266

def rawBody144_268 : StackLang.HolProg 64 :=
.seq rawBody144_262 rawBody144_267

def rawBody144_269 : StackLang.HolProg 64 :=
.seq rawBody144_261 rawBody144_268

def rawBody144_270 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody144_271 : StackLang.HolProg 64 :=
.seq rawBody144_269 rawBody144_270

def rawBody144_272 : StackLang.HolProg 64 :=
.call (some (rawBody144_260, 0, 144, 6)) (Sum.inl 111) (some (rawBody144_271, 144, 7))

def rawBody144_273 : StackLang.HolProg 64 :=
.seq rawBody144_235 rawBody144_272

def rawBody144_274 : StackLang.HolProg 64 :=
.seq rawBody144_234 rawBody144_273

def rawBody144_275 : StackLang.HolProg 64 :=
.seq rawBody144_233 rawBody144_274

def rawBody144_276 : StackLang.HolProg 64 :=
.seq rawBody144_214 rawBody144_275

def rawBody144_277 : StackLang.HolProg 64 :=
.seq rawBody144_211 rawBody144_276

def rawBody144_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody144_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody144_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody144_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody144_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 112

def rawBody144_283 : StackLang.HolProg 64 :=
.seq rawBody144_281 rawBody144_282

def rawBody144_284 : StackLang.HolProg 64 :=
.seq rawBody144_280 rawBody144_283

def rawBody144_285 : StackLang.HolProg 64 :=
.seq rawBody144_279 rawBody144_284

def rawBody144_286 : StackLang.HolProg 64 :=
.seq rawBody144_278 rawBody144_285

def rawBody144_287 : StackLang.HolProg 64 :=
.seq rawBody144_277 rawBody144_286

def rawBody144_288 : StackLang.HolProg 64 :=
.seq rawBody144_210 rawBody144_287

def rawBody144_289 : StackLang.HolProg 64 :=
.seq rawBody144_201 rawBody144_288

def rawBody144_290 : StackLang.HolProg 64 :=
.seq rawBody144_200 rawBody144_289

def rawBody144_291 : StackLang.HolProg 64 :=
.seq rawBody144_199 rawBody144_290

def rawBody144_292 : StackLang.HolProg 64 :=
.seq rawBody144_182 rawBody144_291

def rawBody144_293 : StackLang.HolProg 64 :=
.seq rawBody144_181 rawBody144_292

def rawBody144_294 : StackLang.HolProg 64 :=
.seq rawBody144_180 rawBody144_293

def rawBody144_295 : StackLang.HolProg 64 :=
.seq rawBody144_179 rawBody144_294

def rawBody144_296 : StackLang.HolProg 64 :=
.seq rawBody144_116 rawBody144_295

def rawBody144_297 : StackLang.HolProg 64 :=
.seq rawBody144_115 rawBody144_296

def rawBody144_298 : StackLang.HolProg 64 :=
.seq rawBody144_114 rawBody144_297

def rawBody144_299 : StackLang.HolProg 64 :=
.seq rawBody144_113 rawBody144_298

def rawBody144_300 : StackLang.HolProg 64 :=
.seq rawBody144_112 rawBody144_299

def rawBody144_301 : StackLang.HolProg 64 :=
.seq rawBody144_111 rawBody144_300

def rawBody144_302 : StackLang.HolProg 64 :=
.seq rawBody144_110 rawBody144_301

def rawBody144_303 : StackLang.HolProg 64 :=
.seq rawBody144_109 rawBody144_302

def rawBody144_304 : StackLang.HolProg 64 :=
.seq rawBody144_108 rawBody144_303

def rawBody144_305 : StackLang.HolProg 64 :=
.seq rawBody144_47 rawBody144_304

def rawBody144_306 : StackLang.HolProg 64 :=
.seq rawBody144_28 rawBody144_305

def rawBody144_307 : StackLang.HolProg 64 :=
.seq rawBody144_27 rawBody144_306

def rawBody144_308 : StackLang.HolProg 64 :=
.seq rawBody144_26 rawBody144_307

def rawBody144_309 : StackLang.HolProg 64 :=
.seq rawBody144_25 rawBody144_308

def rawBody144_310 : StackLang.HolProg 64 :=
.seq rawBody144_24 rawBody144_309

def rawBody144_311 : StackLang.HolProg 64 :=
.seq rawBody144_23 rawBody144_310

def rawBody144_312 : StackLang.HolProg 64 :=
.seq rawBody144_2 rawBody144_311

def rawBody144_313 : StackLang.HolProg 64 :=
.seq rawBody144_1 rawBody144_312

def rawBody144_314 : StackLang.HolProg 64 :=
.seq rawBody144_0 rawBody144_313

def raw144 : StackLang.HolProg 64 := rawBody144_314
theorem raw144_eq : StackRawCall.compTop RawInfo.rawInfo (function144 (.list [])).1 = raw144 := by
  kernel_rfl
#print axioms raw144_eq
end InitECandidate.Proofs.BackendStages
