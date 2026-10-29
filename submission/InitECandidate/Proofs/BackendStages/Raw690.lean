import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function690
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody690_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 11

def rawBody690_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def rawBody690_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody690_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def rawBody690_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody690_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody690_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody690_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody690_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def rawBody690_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody690_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody690_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 8

def rawBody690_13 : StackLang.HolProg 64 :=
.seq rawBody690_11 rawBody690_12

def rawBody690_14 : StackLang.HolProg 64 :=
.seq rawBody690_10 rawBody690_13

def rawBody690_15 : StackLang.HolProg 64 :=
.seq rawBody690_9 rawBody690_14

def rawBody690_16 : StackLang.HolProg 64 :=
.seq rawBody690_8 rawBody690_15

def rawBody690_17 : StackLang.HolProg 64 :=
.seq rawBody690_7 rawBody690_16

def rawBody690_18 : StackLang.HolProg 64 :=
.seq rawBody690_6 rawBody690_17

def rawBody690_19 : StackLang.HolProg 64 :=
.seq rawBody690_5 rawBody690_18

def rawBody690_20 : StackLang.HolProg 64 :=
.seq rawBody690_4 rawBody690_19

def rawBody690_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody690_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody690_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody690_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody690_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 7

def rawBody690_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody690_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody690_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody690_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody690_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody690_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14)))

def rawBody690_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody690_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def rawBody690_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def rawBody690_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody690_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody690_41 : StackLang.HolProg 64 :=
.seq rawBody690_39 rawBody690_40

def rawBody690_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 9

def rawBody690_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody690_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody690_45 : StackLang.HolProg 64 :=
.seq rawBody690_43 rawBody690_44

def rawBody690_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 8

def rawBody690_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 5

def rawBody690_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 3

def rawBody690_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 14 2

def rawBody690_50 : StackLang.HolProg 64 :=
.seq rawBody690_48 rawBody690_49

def rawBody690_51 : StackLang.HolProg 64 :=
.seq rawBody690_47 rawBody690_50

def rawBody690_52 : StackLang.HolProg 64 :=
.seq rawBody690_46 rawBody690_51

def rawBody690_53 : StackLang.HolProg 64 :=
.seq rawBody690_45 rawBody690_52

def rawBody690_54 : StackLang.HolProg 64 :=
.seq rawBody690_42 rawBody690_53

def rawBody690_55 : StackLang.HolProg 64 :=
.seq rawBody690_41 rawBody690_54

def rawBody690_56 : StackLang.HolProg 64 :=
.seq rawBody690_38 rawBody690_55

def rawBody690_57 : StackLang.HolProg 64 :=
.seq rawBody690_37 rawBody690_56

def rawBody690_58 : StackLang.HolProg 64 :=
.seq rawBody690_36 rawBody690_57

def rawBody690_59 : StackLang.HolProg 64 :=
.seq rawBody690_35 rawBody690_58

def rawBody690_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2939#64)

def rawBody690_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody690_63 : StackLang.HolProg 64 :=
.seq rawBody690_61 rawBody690_62

def rawBody690_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody690_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody690_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody690_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 690 3

def rawBody690_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody690_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody690_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody690_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody690_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody690_74 : StackLang.HolProg 64 :=
.seq rawBody690_72 rawBody690_73

def rawBody690_75 : StackLang.HolProg 64 :=
.seq rawBody690_71 rawBody690_74

def rawBody690_76 : StackLang.HolProg 64 :=
.seq rawBody690_70 rawBody690_75

def rawBody690_77 : StackLang.HolProg 64 :=
.seq rawBody690_69 rawBody690_76

def rawBody690_78 : StackLang.HolProg 64 :=
.seq rawBody690_68 rawBody690_77

def rawBody690_79 : StackLang.HolProg 64 :=
.seq rawBody690_67 rawBody690_78

def rawBody690_80 : StackLang.HolProg 64 :=
.seq rawBody690_66 rawBody690_79

def rawBody690_81 : StackLang.HolProg 64 :=
.seq rawBody690_65 rawBody690_80

def rawBody690_82 : StackLang.HolProg 64 :=
.seq rawBody690_64 rawBody690_81

def rawBody690_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody690_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody690_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody690_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody690_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody690_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody690_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody690_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody690_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody690_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody690_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody690_96 : StackLang.HolProg 64 :=
.seq rawBody690_94 rawBody690_95

def rawBody690_97 : StackLang.HolProg 64 :=
.seq rawBody690_93 rawBody690_96

def rawBody690_98 : StackLang.HolProg 64 :=
.seq rawBody690_92 rawBody690_97

def rawBody690_99 : StackLang.HolProg 64 :=
.seq rawBody690_91 rawBody690_98

def rawBody690_100 : StackLang.HolProg 64 :=
.seq rawBody690_90 rawBody690_99

def rawBody690_101 : StackLang.HolProg 64 :=
.seq rawBody690_89 rawBody690_100

def rawBody690_102 : StackLang.HolProg 64 :=
.seq rawBody690_88 rawBody690_101

def rawBody690_103 : StackLang.HolProg 64 :=
.seq rawBody690_87 rawBody690_102

def rawBody690_104 : StackLang.HolProg 64 :=
.seq rawBody690_86 rawBody690_103

def rawBody690_105 : StackLang.HolProg 64 :=
.seq rawBody690_85 rawBody690_104

def rawBody690_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody690_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody690_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody690_109 : StackLang.HolProg 64 :=
.seq rawBody690_107 rawBody690_108

def rawBody690_110 : StackLang.HolProg 64 :=
.seq rawBody690_106 rawBody690_109

def rawBody690_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody690_112 : StackLang.HolProg 64 :=
.seq rawBody690_110 rawBody690_111

def rawBody690_113 : StackLang.HolProg 64 :=
.call (some (rawBody690_105, 0, 690, 2)) (Sum.inl 661) (some (rawBody690_112, 690, 3))

def rawBody690_114 : StackLang.HolProg 64 :=
.seq rawBody690_84 rawBody690_113

def rawBody690_115 : StackLang.HolProg 64 :=
.seq rawBody690_83 rawBody690_114

def rawBody690_116 : StackLang.HolProg 64 :=
.seq rawBody690_82 rawBody690_115

def rawBody690_117 : StackLang.HolProg 64 :=
.seq rawBody690_63 rawBody690_116

def rawBody690_118 : StackLang.HolProg 64 :=
.seq rawBody690_60 rawBody690_117

def rawBody690_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody690_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody690_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody690_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody690_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody690_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody690_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody690_128 : StackLang.HolProg 64 :=
.seq rawBody690_126 rawBody690_127

def rawBody690_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody690_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody690_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody690_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody690_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody690_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2940#64)

def rawBody690_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody690_139 : StackLang.HolProg 64 :=
.seq rawBody690_137 rawBody690_138

def rawBody690_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody690_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody690_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody690_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 690 5

def rawBody690_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody690_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody690_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody690_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody690_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody690_150 : StackLang.HolProg 64 :=
.seq rawBody690_148 rawBody690_149

def rawBody690_151 : StackLang.HolProg 64 :=
.seq rawBody690_147 rawBody690_150

def rawBody690_152 : StackLang.HolProg 64 :=
.seq rawBody690_146 rawBody690_151

def rawBody690_153 : StackLang.HolProg 64 :=
.seq rawBody690_145 rawBody690_152

def rawBody690_154 : StackLang.HolProg 64 :=
.seq rawBody690_144 rawBody690_153

def rawBody690_155 : StackLang.HolProg 64 :=
.seq rawBody690_143 rawBody690_154

def rawBody690_156 : StackLang.HolProg 64 :=
.seq rawBody690_142 rawBody690_155

def rawBody690_157 : StackLang.HolProg 64 :=
.seq rawBody690_141 rawBody690_156

def rawBody690_158 : StackLang.HolProg 64 :=
.seq rawBody690_140 rawBody690_157

def rawBody690_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody690_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody690_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody690_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody690_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody690_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 15 10

def rawBody690_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 9

def rawBody690_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 8

def rawBody690_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody690_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody690_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 5

def rawBody690_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody690_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 3

def rawBody690_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 2

def rawBody690_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody690_176 : StackLang.HolProg 64 :=
.seq rawBody690_174 rawBody690_175

def rawBody690_177 : StackLang.HolProg 64 :=
.seq rawBody690_173 rawBody690_176

def rawBody690_178 : StackLang.HolProg 64 :=
.seq rawBody690_172 rawBody690_177

def rawBody690_179 : StackLang.HolProg 64 :=
.seq rawBody690_171 rawBody690_178

def rawBody690_180 : StackLang.HolProg 64 :=
.seq rawBody690_170 rawBody690_179

def rawBody690_181 : StackLang.HolProg 64 :=
.seq rawBody690_169 rawBody690_180

def rawBody690_182 : StackLang.HolProg 64 :=
.seq rawBody690_168 rawBody690_181

def rawBody690_183 : StackLang.HolProg 64 :=
.seq rawBody690_167 rawBody690_182

def rawBody690_184 : StackLang.HolProg 64 :=
.seq rawBody690_166 rawBody690_183

def rawBody690_185 : StackLang.HolProg 64 :=
.seq rawBody690_165 rawBody690_184

def rawBody690_186 : StackLang.HolProg 64 :=
.seq rawBody690_164 rawBody690_185

def rawBody690_187 : StackLang.HolProg 64 :=
.seq rawBody690_163 rawBody690_186

def rawBody690_188 : StackLang.HolProg 64 :=
.seq rawBody690_162 rawBody690_187

def rawBody690_189 : StackLang.HolProg 64 :=
.seq rawBody690_161 rawBody690_188

def rawBody690_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 15 10

def rawBody690_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 9

def rawBody690_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 8

def rawBody690_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody690_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody690_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 5

def rawBody690_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody690_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 3

def rawBody690_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 2

def rawBody690_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody690_200 : StackLang.HolProg 64 :=
.seq rawBody690_198 rawBody690_199

def rawBody690_201 : StackLang.HolProg 64 :=
.seq rawBody690_197 rawBody690_200

def rawBody690_202 : StackLang.HolProg 64 :=
.seq rawBody690_196 rawBody690_201

def rawBody690_203 : StackLang.HolProg 64 :=
.seq rawBody690_195 rawBody690_202

def rawBody690_204 : StackLang.HolProg 64 :=
.seq rawBody690_194 rawBody690_203

def rawBody690_205 : StackLang.HolProg 64 :=
.seq rawBody690_193 rawBody690_204

def rawBody690_206 : StackLang.HolProg 64 :=
.seq rawBody690_192 rawBody690_205

def rawBody690_207 : StackLang.HolProg 64 :=
.seq rawBody690_191 rawBody690_206

def rawBody690_208 : StackLang.HolProg 64 :=
.seq rawBody690_190 rawBody690_207

def rawBody690_209 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody690_210 : StackLang.HolProg 64 :=
.seq rawBody690_208 rawBody690_209

def rawBody690_211 : StackLang.HolProg 64 :=
.call (some (rawBody690_189, 0, 690, 4)) (Sum.inl 659) (some (rawBody690_210, 690, 5))

def rawBody690_212 : StackLang.HolProg 64 :=
.seq rawBody690_160 rawBody690_211

def rawBody690_213 : StackLang.HolProg 64 :=
.seq rawBody690_159 rawBody690_212

def rawBody690_214 : StackLang.HolProg 64 :=
.seq rawBody690_158 rawBody690_213

def rawBody690_215 : StackLang.HolProg 64 :=
.seq rawBody690_139 rawBody690_214

def rawBody690_216 : StackLang.HolProg 64 :=
.seq rawBody690_136 rawBody690_215

def rawBody690_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody690_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody690_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody690_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody690_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody690_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody690_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody690_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody690_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody690_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 15 10

def rawBody690_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 9

def rawBody690_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 8

def rawBody690_236 : StackLang.HolProg 64 :=
.seq rawBody690_234 rawBody690_235

def rawBody690_237 : StackLang.HolProg 64 :=
.seq rawBody690_233 rawBody690_236

def rawBody690_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody690_239 : StackLang.HolProg 64 :=
.seq rawBody690_237 rawBody690_238

def rawBody690_240 : StackLang.HolProg 64 :=
.seq rawBody690_232 rawBody690_239

def rawBody690_241 : StackLang.HolProg 64 :=
.seq rawBody690_231 rawBody690_240

def rawBody690_242 : StackLang.HolProg 64 :=
.seq rawBody690_230 rawBody690_241

def rawBody690_243 : StackLang.HolProg 64 :=
.seq rawBody690_229 rawBody690_242

def rawBody690_244 : StackLang.HolProg 64 :=
.seq rawBody690_228 rawBody690_243

def rawBody690_245 : StackLang.HolProg 64 :=
.seq rawBody690_227 rawBody690_244

def rawBody690_246 : StackLang.HolProg 64 :=
.seq rawBody690_226 rawBody690_245

def rawBody690_247 : StackLang.HolProg 64 :=
.seq rawBody690_225 rawBody690_246

def rawBody690_248 : StackLang.HolProg 64 :=
.seq rawBody690_224 rawBody690_247

def rawBody690_249 : StackLang.HolProg 64 :=
.seq rawBody690_223 rawBody690_248

def rawBody690_250 : StackLang.HolProg 64 :=
.seq rawBody690_222 rawBody690_249

def rawBody690_251 : StackLang.HolProg 64 :=
.seq rawBody690_221 rawBody690_250

def rawBody690_252 : StackLang.HolProg 64 :=
.seq rawBody690_220 rawBody690_251

def rawBody690_253 : StackLang.HolProg 64 :=
.seq rawBody690_219 rawBody690_252

def rawBody690_254 : StackLang.HolProg 64 :=
.seq rawBody690_218 rawBody690_253

def rawBody690_255 : StackLang.HolProg 64 :=
.seq rawBody690_217 rawBody690_254

def rawBody690_256 : StackLang.HolProg 64 :=
.seq rawBody690_216 rawBody690_255

def rawBody690_257 : StackLang.HolProg 64 :=
.seq rawBody690_135 rawBody690_256

def rawBody690_258 : StackLang.HolProg 64 :=
.seq rawBody690_134 rawBody690_257

def rawBody690_259 : StackLang.HolProg 64 :=
.seq rawBody690_133 rawBody690_258

def rawBody690_260 : StackLang.HolProg 64 :=
.seq rawBody690_132 rawBody690_259

def rawBody690_261 : StackLang.HolProg 64 :=
.seq rawBody690_131 rawBody690_260

def rawBody690_262 : StackLang.HolProg 64 :=
.seq rawBody690_130 rawBody690_261

def rawBody690_263 : StackLang.HolProg 64 :=
.seq rawBody690_129 rawBody690_262

def rawBody690_264 : StackLang.HolProg 64 :=
.seq rawBody690_128 rawBody690_263

def rawBody690_265 : StackLang.HolProg 64 :=
.seq rawBody690_125 rawBody690_264

def rawBody690_266 : StackLang.HolProg 64 :=
.seq rawBody690_124 rawBody690_265

def rawBody690_267 : StackLang.HolProg 64 :=
.seq rawBody690_123 rawBody690_266

def rawBody690_268 : StackLang.HolProg 64 :=
.seq rawBody690_122 rawBody690_267

def rawBody690_269 : StackLang.HolProg 64 :=
.seq rawBody690_121 rawBody690_268

def rawBody690_270 : StackLang.HolProg 64 :=
.seq rawBody690_120 rawBody690_269

def rawBody690_271 : StackLang.HolProg 64 :=
.seq rawBody690_119 rawBody690_270

def rawBody690_272 : StackLang.HolProg 64 :=
.seq rawBody690_118 rawBody690_271

def rawBody690_273 : StackLang.HolProg 64 :=
.seq rawBody690_59 rawBody690_272

def rawBody690_274 : StackLang.HolProg 64 :=
.seq rawBody690_34 rawBody690_273

def rawBody690_275 : StackLang.HolProg 64 :=
.seq rawBody690_33 rawBody690_274

def rawBody690_276 : StackLang.HolProg 64 :=
.seq rawBody690_32 rawBody690_275

def rawBody690_277 : StackLang.HolProg 64 :=
.seq rawBody690_31 rawBody690_276

def rawBody690_278 : StackLang.HolProg 64 :=
.seq rawBody690_30 rawBody690_277

def rawBody690_279 : StackLang.HolProg 64 :=
.seq rawBody690_29 rawBody690_278

def rawBody690_280 : StackLang.HolProg 64 :=
.seq rawBody690_28 rawBody690_279

def rawBody690_281 : StackLang.HolProg 64 :=
.seq rawBody690_27 rawBody690_280

def rawBody690_282 : StackLang.HolProg 64 :=
.seq rawBody690_26 rawBody690_281

def rawBody690_283 : StackLang.HolProg 64 :=
.seq rawBody690_25 rawBody690_282

def rawBody690_284 : StackLang.HolProg 64 :=
.seq rawBody690_24 rawBody690_283

def rawBody690_285 : StackLang.HolProg 64 :=
.seq rawBody690_23 rawBody690_284

def rawBody690_286 : StackLang.HolProg 64 :=
.seq rawBody690_22 rawBody690_285

def rawBody690_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody690_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody690_289 : StackLang.HolProg 64 :=
.seq rawBody690_287 rawBody690_288

def rawBody690_290 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) rawBody690_286 rawBody690_289

def rawBody690_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody690_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 10

def rawBody690_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def rawBody690_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 8

def rawBody690_295 : StackLang.HolProg 64 :=
.seq rawBody690_293 rawBody690_294

def rawBody690_296 : StackLang.HolProg 64 :=
.seq rawBody690_292 rawBody690_295

def rawBody690_297 : StackLang.HolProg 64 :=
.seq rawBody690_291 rawBody690_296

def rawBody690_298 : StackLang.HolProg 64 :=
.seq rawBody690_290 rawBody690_297

def rawBody690_299 : StackLang.HolProg 64 :=
.seq rawBody690_21 rawBody690_298

def rawBody690_300 : StackLang.HolProg 64 :=
.loop rawBody690_299

def rawBody690_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody690_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody690_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody690_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody690_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 11

def rawBody690_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody690_307 : StackLang.HolProg 64 :=
.seq rawBody690_305 rawBody690_306

def rawBody690_308 : StackLang.HolProg 64 :=
.seq rawBody690_304 rawBody690_307

def rawBody690_309 : StackLang.HolProg 64 :=
.seq rawBody690_303 rawBody690_308

def rawBody690_310 : StackLang.HolProg 64 :=
.seq rawBody690_302 rawBody690_309

def rawBody690_311 : StackLang.HolProg 64 :=
.seq rawBody690_301 rawBody690_310

def rawBody690_312 : StackLang.HolProg 64 :=
.seq rawBody690_300 rawBody690_311

def rawBody690_313 : StackLang.HolProg 64 :=
.seq rawBody690_20 rawBody690_312

def rawBody690_314 : StackLang.HolProg 64 :=
.seq rawBody690_3 rawBody690_313

def rawBody690_315 : StackLang.HolProg 64 :=
.seq rawBody690_2 rawBody690_314

def rawBody690_316 : StackLang.HolProg 64 :=
.seq rawBody690_1 rawBody690_315

def rawBody690_317 : StackLang.HolProg 64 :=
.seq rawBody690_0 rawBody690_316

def raw690 : StackLang.HolProg 64 := rawBody690_317
theorem raw690_eq : StackRawCall.compTop RawInfo.rawInfo (function690 (.list [])).1 = raw690 := by
  kernel_rfl
#print axioms raw690_eq
end InitECandidate.Proofs.BackendStages
