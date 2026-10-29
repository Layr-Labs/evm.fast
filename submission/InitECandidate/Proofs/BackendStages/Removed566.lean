import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc566
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody566_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody566_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody566_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody566_3 : StackLang.HolProg 64 :=
.seq RemovedBody566_1 RemovedBody566_2

def RemovedBody566_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody566_3 RemovedBody566_4

def RemovedBody566_6 : StackLang.HolProg 64 :=
.seq RemovedBody566_0 RemovedBody566_5

def RemovedBody566_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody566_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1934#64)

def RemovedBody566_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_11 : StackLang.HolProg 64 :=
.seq RemovedBody566_9 RemovedBody566_10

def RemovedBody566_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody566_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody566_15 : StackLang.HolProg 64 :=
.seq RemovedBody566_13 RemovedBody566_14

def RemovedBody566_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody566_15 RemovedBody566_16

def RemovedBody566_18 : StackLang.HolProg 64 :=
.seq RemovedBody566_12 RemovedBody566_17

def RemovedBody566_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody566_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 3

def RemovedBody566_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody566_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody566_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody566_28 : StackLang.HolProg 64 :=
.seq RemovedBody566_26 RemovedBody566_27

def RemovedBody566_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody566_30 : StackLang.HolProg 64 :=
.seq RemovedBody566_28 RemovedBody566_29

def RemovedBody566_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_32 : StackLang.HolProg 64 :=
.seq RemovedBody566_30 RemovedBody566_31

def RemovedBody566_33 : StackLang.HolProg 64 :=
.seq RemovedBody566_25 RemovedBody566_32

def RemovedBody566_34 : StackLang.HolProg 64 :=
.seq RemovedBody566_24 RemovedBody566_33

def RemovedBody566_35 : StackLang.HolProg 64 :=
.seq RemovedBody566_23 RemovedBody566_34

def RemovedBody566_36 : StackLang.HolProg 64 :=
.seq RemovedBody566_22 RemovedBody566_35

def RemovedBody566_37 : StackLang.HolProg 64 :=
.seq RemovedBody566_21 RemovedBody566_36

def RemovedBody566_38 : StackLang.HolProg 64 :=
.seq RemovedBody566_20 RemovedBody566_37

def RemovedBody566_39 : StackLang.HolProg 64 :=
.seq RemovedBody566_19 RemovedBody566_38

def RemovedBody566_40 : StackLang.HolProg 64 :=
.seq RemovedBody566_18 RemovedBody566_39

def RemovedBody566_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody566_48 : StackLang.HolProg 64 :=
.seq RemovedBody566_46 RemovedBody566_47

def RemovedBody566_49 : StackLang.HolProg 64 :=
.seq RemovedBody566_45 RemovedBody566_48

def RemovedBody566_50 : StackLang.HolProg 64 :=
.seq RemovedBody566_44 RemovedBody566_49

def RemovedBody566_51 : StackLang.HolProg 64 :=
.seq RemovedBody566_43 RemovedBody566_50

def RemovedBody566_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody566_54 : StackLang.HolProg 64 :=
.seq RemovedBody566_52 RemovedBody566_53

def RemovedBody566_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody566_51, 0, 566, 2)) (Sum.inl 475) (some (RemovedBody566_54, 566, 3))

def RemovedBody566_56 : StackLang.HolProg 64 :=
.seq RemovedBody566_42 RemovedBody566_55

def RemovedBody566_57 : StackLang.HolProg 64 :=
.seq RemovedBody566_41 RemovedBody566_56

def RemovedBody566_58 : StackLang.HolProg 64 :=
.seq RemovedBody566_40 RemovedBody566_57

def RemovedBody566_59 : StackLang.HolProg 64 :=
.seq RemovedBody566_11 RemovedBody566_58

def RemovedBody566_60 : StackLang.HolProg 64 :=
.seq RemovedBody566_8 RemovedBody566_59

def RemovedBody566_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody566_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody566_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1935#64)

def RemovedBody566_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_66 : StackLang.HolProg 64 :=
.seq RemovedBody566_64 RemovedBody566_65

def RemovedBody566_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody566_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody566_70 : StackLang.HolProg 64 :=
.seq RemovedBody566_68 RemovedBody566_69

def RemovedBody566_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody566_70 RemovedBody566_71

def RemovedBody566_73 : StackLang.HolProg 64 :=
.seq RemovedBody566_67 RemovedBody566_72

def RemovedBody566_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody566_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 5

def RemovedBody566_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody566_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody566_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody566_83 : StackLang.HolProg 64 :=
.seq RemovedBody566_81 RemovedBody566_82

def RemovedBody566_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody566_85 : StackLang.HolProg 64 :=
.seq RemovedBody566_83 RemovedBody566_84

def RemovedBody566_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_87 : StackLang.HolProg 64 :=
.seq RemovedBody566_85 RemovedBody566_86

def RemovedBody566_88 : StackLang.HolProg 64 :=
.seq RemovedBody566_80 RemovedBody566_87

def RemovedBody566_89 : StackLang.HolProg 64 :=
.seq RemovedBody566_79 RemovedBody566_88

def RemovedBody566_90 : StackLang.HolProg 64 :=
.seq RemovedBody566_78 RemovedBody566_89

def RemovedBody566_91 : StackLang.HolProg 64 :=
.seq RemovedBody566_77 RemovedBody566_90

def RemovedBody566_92 : StackLang.HolProg 64 :=
.seq RemovedBody566_76 RemovedBody566_91

def RemovedBody566_93 : StackLang.HolProg 64 :=
.seq RemovedBody566_75 RemovedBody566_92

def RemovedBody566_94 : StackLang.HolProg 64 :=
.seq RemovedBody566_74 RemovedBody566_93

def RemovedBody566_95 : StackLang.HolProg 64 :=
.seq RemovedBody566_73 RemovedBody566_94

def RemovedBody566_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody566_103 : StackLang.HolProg 64 :=
.seq RemovedBody566_101 RemovedBody566_102

def RemovedBody566_104 : StackLang.HolProg 64 :=
.seq RemovedBody566_100 RemovedBody566_103

def RemovedBody566_105 : StackLang.HolProg 64 :=
.seq RemovedBody566_99 RemovedBody566_104

def RemovedBody566_106 : StackLang.HolProg 64 :=
.seq RemovedBody566_98 RemovedBody566_105

def RemovedBody566_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody566_109 : StackLang.HolProg 64 :=
.seq RemovedBody566_107 RemovedBody566_108

def RemovedBody566_110 : StackLang.HolProg 64 :=
.call (some (RemovedBody566_106, 0, 566, 4)) (Sum.inl 466) (some (RemovedBody566_109, 566, 5))

def RemovedBody566_111 : StackLang.HolProg 64 :=
.seq RemovedBody566_97 RemovedBody566_110

def RemovedBody566_112 : StackLang.HolProg 64 :=
.seq RemovedBody566_96 RemovedBody566_111

def RemovedBody566_113 : StackLang.HolProg 64 :=
.seq RemovedBody566_95 RemovedBody566_112

def RemovedBody566_114 : StackLang.HolProg 64 :=
.seq RemovedBody566_66 RemovedBody566_113

def RemovedBody566_115 : StackLang.HolProg 64 :=
.seq RemovedBody566_63 RemovedBody566_114

def RemovedBody566_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody566_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody566_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody566_119 : StackLang.HolProg 64 :=
.seq RemovedBody566_117 RemovedBody566_118

def RemovedBody566_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1936#64)

def RemovedBody566_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_123 : StackLang.HolProg 64 :=
.seq RemovedBody566_121 RemovedBody566_122

def RemovedBody566_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody566_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody566_127 : StackLang.HolProg 64 :=
.seq RemovedBody566_125 RemovedBody566_126

def RemovedBody566_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody566_127 RemovedBody566_128

def RemovedBody566_130 : StackLang.HolProg 64 :=
.seq RemovedBody566_124 RemovedBody566_129

def RemovedBody566_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody566_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 7

def RemovedBody566_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody566_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody566_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody566_140 : StackLang.HolProg 64 :=
.seq RemovedBody566_138 RemovedBody566_139

def RemovedBody566_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody566_142 : StackLang.HolProg 64 :=
.seq RemovedBody566_140 RemovedBody566_141

def RemovedBody566_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_144 : StackLang.HolProg 64 :=
.seq RemovedBody566_142 RemovedBody566_143

def RemovedBody566_145 : StackLang.HolProg 64 :=
.seq RemovedBody566_137 RemovedBody566_144

def RemovedBody566_146 : StackLang.HolProg 64 :=
.seq RemovedBody566_136 RemovedBody566_145

def RemovedBody566_147 : StackLang.HolProg 64 :=
.seq RemovedBody566_135 RemovedBody566_146

def RemovedBody566_148 : StackLang.HolProg 64 :=
.seq RemovedBody566_134 RemovedBody566_147

def RemovedBody566_149 : StackLang.HolProg 64 :=
.seq RemovedBody566_133 RemovedBody566_148

def RemovedBody566_150 : StackLang.HolProg 64 :=
.seq RemovedBody566_132 RemovedBody566_149

def RemovedBody566_151 : StackLang.HolProg 64 :=
.seq RemovedBody566_131 RemovedBody566_150

def RemovedBody566_152 : StackLang.HolProg 64 :=
.seq RemovedBody566_130 RemovedBody566_151

def RemovedBody566_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody566_160 : StackLang.HolProg 64 :=
.seq RemovedBody566_158 RemovedBody566_159

def RemovedBody566_161 : StackLang.HolProg 64 :=
.seq RemovedBody566_157 RemovedBody566_160

def RemovedBody566_162 : StackLang.HolProg 64 :=
.seq RemovedBody566_156 RemovedBody566_161

def RemovedBody566_163 : StackLang.HolProg 64 :=
.seq RemovedBody566_155 RemovedBody566_162

def RemovedBody566_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody566_166 : StackLang.HolProg 64 :=
.seq RemovedBody566_164 RemovedBody566_165

def RemovedBody566_167 : StackLang.HolProg 64 :=
.call (some (RemovedBody566_163, 0, 566, 6)) (Sum.inl 495) (some (RemovedBody566_166, 566, 7))

def RemovedBody566_168 : StackLang.HolProg 64 :=
.seq RemovedBody566_154 RemovedBody566_167

def RemovedBody566_169 : StackLang.HolProg 64 :=
.seq RemovedBody566_153 RemovedBody566_168

def RemovedBody566_170 : StackLang.HolProg 64 :=
.seq RemovedBody566_152 RemovedBody566_169

def RemovedBody566_171 : StackLang.HolProg 64 :=
.seq RemovedBody566_123 RemovedBody566_170

def RemovedBody566_172 : StackLang.HolProg 64 :=
.seq RemovedBody566_120 RemovedBody566_171

def RemovedBody566_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody566_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 100#64)))

def RemovedBody566_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1937#64)

def RemovedBody566_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_180 : StackLang.HolProg 64 :=
.seq RemovedBody566_178 RemovedBody566_179

def RemovedBody566_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody566_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody566_184 : StackLang.HolProg 64 :=
.seq RemovedBody566_182 RemovedBody566_183

def RemovedBody566_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody566_184 RemovedBody566_185

def RemovedBody566_187 : StackLang.HolProg 64 :=
.seq RemovedBody566_181 RemovedBody566_186

def RemovedBody566_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody566_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 9

def RemovedBody566_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody566_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody566_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody566_197 : StackLang.HolProg 64 :=
.seq RemovedBody566_195 RemovedBody566_196

def RemovedBody566_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody566_199 : StackLang.HolProg 64 :=
.seq RemovedBody566_197 RemovedBody566_198

def RemovedBody566_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_201 : StackLang.HolProg 64 :=
.seq RemovedBody566_199 RemovedBody566_200

def RemovedBody566_202 : StackLang.HolProg 64 :=
.seq RemovedBody566_194 RemovedBody566_201

def RemovedBody566_203 : StackLang.HolProg 64 :=
.seq RemovedBody566_193 RemovedBody566_202

def RemovedBody566_204 : StackLang.HolProg 64 :=
.seq RemovedBody566_192 RemovedBody566_203

def RemovedBody566_205 : StackLang.HolProg 64 :=
.seq RemovedBody566_191 RemovedBody566_204

def RemovedBody566_206 : StackLang.HolProg 64 :=
.seq RemovedBody566_190 RemovedBody566_205

def RemovedBody566_207 : StackLang.HolProg 64 :=
.seq RemovedBody566_189 RemovedBody566_206

def RemovedBody566_208 : StackLang.HolProg 64 :=
.seq RemovedBody566_188 RemovedBody566_207

def RemovedBody566_209 : StackLang.HolProg 64 :=
.seq RemovedBody566_187 RemovedBody566_208

def RemovedBody566_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody566_218 : StackLang.HolProg 64 :=
.seq RemovedBody566_216 RemovedBody566_217

def RemovedBody566_219 : StackLang.HolProg 64 :=
.seq RemovedBody566_215 RemovedBody566_218

def RemovedBody566_220 : StackLang.HolProg 64 :=
.seq RemovedBody566_214 RemovedBody566_219

def RemovedBody566_221 : StackLang.HolProg 64 :=
.seq RemovedBody566_213 RemovedBody566_220

def RemovedBody566_222 : StackLang.HolProg 64 :=
.seq RemovedBody566_212 RemovedBody566_221

def RemovedBody566_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody566_225 : StackLang.HolProg 64 :=
.seq RemovedBody566_223 RemovedBody566_224

def RemovedBody566_226 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody566_227 : StackLang.HolProg 64 :=
.seq RemovedBody566_225 RemovedBody566_226

def RemovedBody566_228 : StackLang.HolProg 64 :=
.call (some (RemovedBody566_222, 0, 566, 8)) (Sum.inl 470) (some (RemovedBody566_227, 566, 9))

def RemovedBody566_229 : StackLang.HolProg 64 :=
.seq RemovedBody566_211 RemovedBody566_228

def RemovedBody566_230 : StackLang.HolProg 64 :=
.seq RemovedBody566_210 RemovedBody566_229

def RemovedBody566_231 : StackLang.HolProg 64 :=
.seq RemovedBody566_209 RemovedBody566_230

def RemovedBody566_232 : StackLang.HolProg 64 :=
.seq RemovedBody566_180 RemovedBody566_231

def RemovedBody566_233 : StackLang.HolProg 64 :=
.seq RemovedBody566_177 RemovedBody566_232

def RemovedBody566_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody566_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody566_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_237 : StackLang.HolProg 64 :=
.seq RemovedBody566_235 RemovedBody566_236

def RemovedBody566_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1938#64)

def RemovedBody566_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_241 : StackLang.HolProg 64 :=
.seq RemovedBody566_239 RemovedBody566_240

def RemovedBody566_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody566_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody566_245 : StackLang.HolProg 64 :=
.seq RemovedBody566_243 RemovedBody566_244

def RemovedBody566_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_247 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody566_245 RemovedBody566_246

def RemovedBody566_248 : StackLang.HolProg 64 :=
.seq RemovedBody566_242 RemovedBody566_247

def RemovedBody566_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody566_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 11

def RemovedBody566_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody566_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody566_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody566_258 : StackLang.HolProg 64 :=
.seq RemovedBody566_256 RemovedBody566_257

def RemovedBody566_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody566_260 : StackLang.HolProg 64 :=
.seq RemovedBody566_258 RemovedBody566_259

def RemovedBody566_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_262 : StackLang.HolProg 64 :=
.seq RemovedBody566_260 RemovedBody566_261

def RemovedBody566_263 : StackLang.HolProg 64 :=
.seq RemovedBody566_255 RemovedBody566_262

def RemovedBody566_264 : StackLang.HolProg 64 :=
.seq RemovedBody566_254 RemovedBody566_263

def RemovedBody566_265 : StackLang.HolProg 64 :=
.seq RemovedBody566_253 RemovedBody566_264

def RemovedBody566_266 : StackLang.HolProg 64 :=
.seq RemovedBody566_252 RemovedBody566_265

def RemovedBody566_267 : StackLang.HolProg 64 :=
.seq RemovedBody566_251 RemovedBody566_266

def RemovedBody566_268 : StackLang.HolProg 64 :=
.seq RemovedBody566_250 RemovedBody566_267

def RemovedBody566_269 : StackLang.HolProg 64 :=
.seq RemovedBody566_249 RemovedBody566_268

def RemovedBody566_270 : StackLang.HolProg 64 :=
.seq RemovedBody566_248 RemovedBody566_269

def RemovedBody566_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_278 : StackLang.HolProg 64 :=
.seq RemovedBody566_276 RemovedBody566_277

def RemovedBody566_279 : StackLang.HolProg 64 :=
.seq RemovedBody566_275 RemovedBody566_278

def RemovedBody566_280 : StackLang.HolProg 64 :=
.seq RemovedBody566_274 RemovedBody566_279

def RemovedBody566_281 : StackLang.HolProg 64 :=
.seq RemovedBody566_273 RemovedBody566_280

def RemovedBody566_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody566_284 : StackLang.HolProg 64 :=
.seq RemovedBody566_282 RemovedBody566_283

def RemovedBody566_285 : StackLang.HolProg 64 :=
.call (some (RemovedBody566_281, 0, 566, 10)) (Sum.inl 496) (some (RemovedBody566_284, 566, 11))

def RemovedBody566_286 : StackLang.HolProg 64 :=
.seq RemovedBody566_272 RemovedBody566_285

def RemovedBody566_287 : StackLang.HolProg 64 :=
.seq RemovedBody566_271 RemovedBody566_286

def RemovedBody566_288 : StackLang.HolProg 64 :=
.seq RemovedBody566_270 RemovedBody566_287

def RemovedBody566_289 : StackLang.HolProg 64 :=
.seq RemovedBody566_241 RemovedBody566_288

def RemovedBody566_290 : StackLang.HolProg 64 :=
.seq RemovedBody566_238 RemovedBody566_289

def RemovedBody566_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody566_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody566_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1939#64)

def RemovedBody566_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_296 : StackLang.HolProg 64 :=
.seq RemovedBody566_294 RemovedBody566_295

def RemovedBody566_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody566_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody566_300 : StackLang.HolProg 64 :=
.seq RemovedBody566_298 RemovedBody566_299

def RemovedBody566_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody566_300 RemovedBody566_301

def RemovedBody566_303 : StackLang.HolProg 64 :=
.seq RemovedBody566_297 RemovedBody566_302

def RemovedBody566_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody566_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 13

def RemovedBody566_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody566_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody566_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody566_313 : StackLang.HolProg 64 :=
.seq RemovedBody566_311 RemovedBody566_312

def RemovedBody566_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody566_315 : StackLang.HolProg 64 :=
.seq RemovedBody566_313 RemovedBody566_314

def RemovedBody566_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_317 : StackLang.HolProg 64 :=
.seq RemovedBody566_315 RemovedBody566_316

def RemovedBody566_318 : StackLang.HolProg 64 :=
.seq RemovedBody566_310 RemovedBody566_317

def RemovedBody566_319 : StackLang.HolProg 64 :=
.seq RemovedBody566_309 RemovedBody566_318

def RemovedBody566_320 : StackLang.HolProg 64 :=
.seq RemovedBody566_308 RemovedBody566_319

def RemovedBody566_321 : StackLang.HolProg 64 :=
.seq RemovedBody566_307 RemovedBody566_320

def RemovedBody566_322 : StackLang.HolProg 64 :=
.seq RemovedBody566_306 RemovedBody566_321

def RemovedBody566_323 : StackLang.HolProg 64 :=
.seq RemovedBody566_305 RemovedBody566_322

def RemovedBody566_324 : StackLang.HolProg 64 :=
.seq RemovedBody566_304 RemovedBody566_323

def RemovedBody566_325 : StackLang.HolProg 64 :=
.seq RemovedBody566_303 RemovedBody566_324

def RemovedBody566_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_333 : StackLang.HolProg 64 :=
.seq RemovedBody566_331 RemovedBody566_332

def RemovedBody566_334 : StackLang.HolProg 64 :=
.seq RemovedBody566_330 RemovedBody566_333

def RemovedBody566_335 : StackLang.HolProg 64 :=
.seq RemovedBody566_329 RemovedBody566_334

def RemovedBody566_336 : StackLang.HolProg 64 :=
.seq RemovedBody566_328 RemovedBody566_335

def RemovedBody566_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_338 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody566_339 : StackLang.HolProg 64 :=
.seq RemovedBody566_337 RemovedBody566_338

def RemovedBody566_340 : StackLang.HolProg 64 :=
.call (some (RemovedBody566_336, 0, 566, 12)) (Sum.inl 565) (some (RemovedBody566_339, 566, 13))

def RemovedBody566_341 : StackLang.HolProg 64 :=
.seq RemovedBody566_327 RemovedBody566_340

def RemovedBody566_342 : StackLang.HolProg 64 :=
.seq RemovedBody566_326 RemovedBody566_341

def RemovedBody566_343 : StackLang.HolProg 64 :=
.seq RemovedBody566_325 RemovedBody566_342

def RemovedBody566_344 : StackLang.HolProg 64 :=
.seq RemovedBody566_296 RemovedBody566_343

def RemovedBody566_345 : StackLang.HolProg 64 :=
.seq RemovedBody566_293 RemovedBody566_344

def RemovedBody566_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody566_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody566_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1940#64)

def RemovedBody566_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_351 : StackLang.HolProg 64 :=
.seq RemovedBody566_349 RemovedBody566_350

def RemovedBody566_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody566_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody566_355 : StackLang.HolProg 64 :=
.seq RemovedBody566_353 RemovedBody566_354

def RemovedBody566_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_357 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody566_355 RemovedBody566_356

def RemovedBody566_358 : StackLang.HolProg 64 :=
.seq RemovedBody566_352 RemovedBody566_357

def RemovedBody566_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody566_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 15

def RemovedBody566_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody566_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody566_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody566_368 : StackLang.HolProg 64 :=
.seq RemovedBody566_366 RemovedBody566_367

def RemovedBody566_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody566_370 : StackLang.HolProg 64 :=
.seq RemovedBody566_368 RemovedBody566_369

def RemovedBody566_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_372 : StackLang.HolProg 64 :=
.seq RemovedBody566_370 RemovedBody566_371

def RemovedBody566_373 : StackLang.HolProg 64 :=
.seq RemovedBody566_365 RemovedBody566_372

def RemovedBody566_374 : StackLang.HolProg 64 :=
.seq RemovedBody566_364 RemovedBody566_373

def RemovedBody566_375 : StackLang.HolProg 64 :=
.seq RemovedBody566_363 RemovedBody566_374

def RemovedBody566_376 : StackLang.HolProg 64 :=
.seq RemovedBody566_362 RemovedBody566_375

def RemovedBody566_377 : StackLang.HolProg 64 :=
.seq RemovedBody566_361 RemovedBody566_376

def RemovedBody566_378 : StackLang.HolProg 64 :=
.seq RemovedBody566_360 RemovedBody566_377

def RemovedBody566_379 : StackLang.HolProg 64 :=
.seq RemovedBody566_359 RemovedBody566_378

def RemovedBody566_380 : StackLang.HolProg 64 :=
.seq RemovedBody566_358 RemovedBody566_379

def RemovedBody566_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_388 : StackLang.HolProg 64 :=
.seq RemovedBody566_386 RemovedBody566_387

def RemovedBody566_389 : StackLang.HolProg 64 :=
.seq RemovedBody566_385 RemovedBody566_388

def RemovedBody566_390 : StackLang.HolProg 64 :=
.seq RemovedBody566_384 RemovedBody566_389

def RemovedBody566_391 : StackLang.HolProg 64 :=
.seq RemovedBody566_383 RemovedBody566_390

def RemovedBody566_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_393 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody566_394 : StackLang.HolProg 64 :=
.seq RemovedBody566_392 RemovedBody566_393

def RemovedBody566_395 : StackLang.HolProg 64 :=
.call (some (RemovedBody566_391, 0, 566, 14)) (Sum.inl 477) (some (RemovedBody566_394, 566, 15))

def RemovedBody566_396 : StackLang.HolProg 64 :=
.seq RemovedBody566_382 RemovedBody566_395

def RemovedBody566_397 : StackLang.HolProg 64 :=
.seq RemovedBody566_381 RemovedBody566_396

def RemovedBody566_398 : StackLang.HolProg 64 :=
.seq RemovedBody566_380 RemovedBody566_397

def RemovedBody566_399 : StackLang.HolProg 64 :=
.seq RemovedBody566_351 RemovedBody566_398

def RemovedBody566_400 : StackLang.HolProg 64 :=
.seq RemovedBody566_348 RemovedBody566_399

def RemovedBody566_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody566_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody566_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1941#64)

def RemovedBody566_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_407 : StackLang.HolProg 64 :=
.seq RemovedBody566_405 RemovedBody566_406

def RemovedBody566_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody566_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody566_411 : StackLang.HolProg 64 :=
.seq RemovedBody566_409 RemovedBody566_410

def RemovedBody566_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_413 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody566_411 RemovedBody566_412

def RemovedBody566_414 : StackLang.HolProg 64 :=
.seq RemovedBody566_408 RemovedBody566_413

def RemovedBody566_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody566_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody566_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 17

def RemovedBody566_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody566_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody566_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody566_424 : StackLang.HolProg 64 :=
.seq RemovedBody566_422 RemovedBody566_423

def RemovedBody566_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody566_426 : StackLang.HolProg 64 :=
.seq RemovedBody566_424 RemovedBody566_425

def RemovedBody566_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_428 : StackLang.HolProg 64 :=
.seq RemovedBody566_426 RemovedBody566_427

def RemovedBody566_429 : StackLang.HolProg 64 :=
.seq RemovedBody566_421 RemovedBody566_428

def RemovedBody566_430 : StackLang.HolProg 64 :=
.seq RemovedBody566_420 RemovedBody566_429

def RemovedBody566_431 : StackLang.HolProg 64 :=
.seq RemovedBody566_419 RemovedBody566_430

def RemovedBody566_432 : StackLang.HolProg 64 :=
.seq RemovedBody566_418 RemovedBody566_431

def RemovedBody566_433 : StackLang.HolProg 64 :=
.seq RemovedBody566_417 RemovedBody566_432

def RemovedBody566_434 : StackLang.HolProg 64 :=
.seq RemovedBody566_416 RemovedBody566_433

def RemovedBody566_435 : StackLang.HolProg 64 :=
.seq RemovedBody566_415 RemovedBody566_434

def RemovedBody566_436 : StackLang.HolProg 64 :=
.seq RemovedBody566_414 RemovedBody566_435

def RemovedBody566_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody566_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody566_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody566_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody566_444 : StackLang.HolProg 64 :=
.seq RemovedBody566_442 RemovedBody566_443

def RemovedBody566_445 : StackLang.HolProg 64 :=
.seq RemovedBody566_441 RemovedBody566_444

def RemovedBody566_446 : StackLang.HolProg 64 :=
.seq RemovedBody566_440 RemovedBody566_445

def RemovedBody566_447 : StackLang.HolProg 64 :=
.seq RemovedBody566_439 RemovedBody566_446

def RemovedBody566_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody566_449 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody566_450 : StackLang.HolProg 64 :=
.seq RemovedBody566_448 RemovedBody566_449

def RemovedBody566_451 : StackLang.HolProg 64 :=
.call (some (RemovedBody566_447, 0, 566, 16)) (Sum.inl 490) (some (RemovedBody566_450, 566, 17))

def RemovedBody566_452 : StackLang.HolProg 64 :=
.seq RemovedBody566_438 RemovedBody566_451

def RemovedBody566_453 : StackLang.HolProg 64 :=
.seq RemovedBody566_437 RemovedBody566_452

def RemovedBody566_454 : StackLang.HolProg 64 :=
.seq RemovedBody566_436 RemovedBody566_453

def RemovedBody566_455 : StackLang.HolProg 64 :=
.seq RemovedBody566_407 RemovedBody566_454

def RemovedBody566_456 : StackLang.HolProg 64 :=
.seq RemovedBody566_404 RemovedBody566_455

def RemovedBody566_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody566_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody566_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody566_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody566_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody566_462 : StackLang.HolProg 64 :=
.seq RemovedBody566_460 RemovedBody566_461

def RemovedBody566_463 : StackLang.HolProg 64 :=
.seq RemovedBody566_459 RemovedBody566_462

def RemovedBody566_464 : StackLang.HolProg 64 :=
.seq RemovedBody566_458 RemovedBody566_463

def RemovedBody566_465 : StackLang.HolProg 64 :=
.seq RemovedBody566_457 RemovedBody566_464

def RemovedBody566_466 : StackLang.HolProg 64 :=
.seq RemovedBody566_456 RemovedBody566_465

def RemovedBody566_467 : StackLang.HolProg 64 :=
.seq RemovedBody566_403 RemovedBody566_466

def RemovedBody566_468 : StackLang.HolProg 64 :=
.seq RemovedBody566_402 RemovedBody566_467

def RemovedBody566_469 : StackLang.HolProg 64 :=
.seq RemovedBody566_401 RemovedBody566_468

def RemovedBody566_470 : StackLang.HolProg 64 :=
.seq RemovedBody566_400 RemovedBody566_469

def RemovedBody566_471 : StackLang.HolProg 64 :=
.seq RemovedBody566_347 RemovedBody566_470

def RemovedBody566_472 : StackLang.HolProg 64 :=
.seq RemovedBody566_346 RemovedBody566_471

def RemovedBody566_473 : StackLang.HolProg 64 :=
.seq RemovedBody566_345 RemovedBody566_472

def RemovedBody566_474 : StackLang.HolProg 64 :=
.seq RemovedBody566_292 RemovedBody566_473

def RemovedBody566_475 : StackLang.HolProg 64 :=
.seq RemovedBody566_291 RemovedBody566_474

def RemovedBody566_476 : StackLang.HolProg 64 :=
.seq RemovedBody566_290 RemovedBody566_475

def RemovedBody566_477 : StackLang.HolProg 64 :=
.seq RemovedBody566_237 RemovedBody566_476

def RemovedBody566_478 : StackLang.HolProg 64 :=
.seq RemovedBody566_234 RemovedBody566_477

def RemovedBody566_479 : StackLang.HolProg 64 :=
.seq RemovedBody566_233 RemovedBody566_478

def RemovedBody566_480 : StackLang.HolProg 64 :=
.seq RemovedBody566_176 RemovedBody566_479

def RemovedBody566_481 : StackLang.HolProg 64 :=
.seq RemovedBody566_175 RemovedBody566_480

def RemovedBody566_482 : StackLang.HolProg 64 :=
.seq RemovedBody566_174 RemovedBody566_481

def RemovedBody566_483 : StackLang.HolProg 64 :=
.seq RemovedBody566_173 RemovedBody566_482

def RemovedBody566_484 : StackLang.HolProg 64 :=
.seq RemovedBody566_172 RemovedBody566_483

def RemovedBody566_485 : StackLang.HolProg 64 :=
.seq RemovedBody566_119 RemovedBody566_484

def RemovedBody566_486 : StackLang.HolProg 64 :=
.seq RemovedBody566_116 RemovedBody566_485

def RemovedBody566_487 : StackLang.HolProg 64 :=
.seq RemovedBody566_115 RemovedBody566_486

def RemovedBody566_488 : StackLang.HolProg 64 :=
.seq RemovedBody566_62 RemovedBody566_487

def RemovedBody566_489 : StackLang.HolProg 64 :=
.seq RemovedBody566_61 RemovedBody566_488

def RemovedBody566_490 : StackLang.HolProg 64 :=
.seq RemovedBody566_60 RemovedBody566_489

def RemovedBody566_491 : StackLang.HolProg 64 :=
.seq RemovedBody566_7 RemovedBody566_490

def RemovedBody566_492 : StackLang.HolProg 64 :=
.seq RemovedBody566_6 RemovedBody566_491

def Removed566 : Nat × StackLang.HolProg 64 := (566, RemovedBody566_492)
theorem Removed566_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc566 = Removed566 := by
  kernel_rfl
#print axioms Removed566_eq
end InitECandidate.Proofs.BackendStages
