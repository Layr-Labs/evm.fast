import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc769
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody769_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody769_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody769_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody769_3 : StackLang.HolProg 64 :=
.seq RemovedBody769_1 RemovedBody769_2

def RemovedBody769_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody769_3 RemovedBody769_4

def RemovedBody769_6 : StackLang.HolProg 64 :=
.seq RemovedBody769_0 RemovedBody769_5

def RemovedBody769_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody769_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def RemovedBody769_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody769_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 56#64))

def RemovedBody769_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 64#64))

def RemovedBody769_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 72#64))

def RemovedBody769_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 80#64))

def RemovedBody769_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 88#64))

def RemovedBody769_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody769_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody769_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody769_22 : StackLang.HolProg 64 :=
.seq RemovedBody769_20 RemovedBody769_21

def RemovedBody769_23 : StackLang.HolProg 64 :=
.seq RemovedBody769_19 RemovedBody769_22

def RemovedBody769_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3455#64)

def RemovedBody769_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody769_27 : StackLang.HolProg 64 :=
.seq RemovedBody769_25 RemovedBody769_26

def RemovedBody769_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody769_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody769_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody769_31 : StackLang.HolProg 64 :=
.seq RemovedBody769_29 RemovedBody769_30

def RemovedBody769_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody769_31 RemovedBody769_32

def RemovedBody769_34 : StackLang.HolProg 64 :=
.seq RemovedBody769_28 RemovedBody769_33

def RemovedBody769_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody769_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody769_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 769 3

def RemovedBody769_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody769_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody769_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody769_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody769_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody769_44 : StackLang.HolProg 64 :=
.seq RemovedBody769_42 RemovedBody769_43

def RemovedBody769_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody769_46 : StackLang.HolProg 64 :=
.seq RemovedBody769_44 RemovedBody769_45

def RemovedBody769_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody769_48 : StackLang.HolProg 64 :=
.seq RemovedBody769_46 RemovedBody769_47

def RemovedBody769_49 : StackLang.HolProg 64 :=
.seq RemovedBody769_41 RemovedBody769_48

def RemovedBody769_50 : StackLang.HolProg 64 :=
.seq RemovedBody769_40 RemovedBody769_49

def RemovedBody769_51 : StackLang.HolProg 64 :=
.seq RemovedBody769_39 RemovedBody769_50

def RemovedBody769_52 : StackLang.HolProg 64 :=
.seq RemovedBody769_38 RemovedBody769_51

def RemovedBody769_53 : StackLang.HolProg 64 :=
.seq RemovedBody769_37 RemovedBody769_52

def RemovedBody769_54 : StackLang.HolProg 64 :=
.seq RemovedBody769_36 RemovedBody769_53

def RemovedBody769_55 : StackLang.HolProg 64 :=
.seq RemovedBody769_35 RemovedBody769_54

def RemovedBody769_56 : StackLang.HolProg 64 :=
.seq RemovedBody769_34 RemovedBody769_55

def RemovedBody769_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody769_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody769_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody769_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody769_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody769_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody769_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody769_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 17 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody769_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody769_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody769_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody769_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody769_72 : StackLang.HolProg 64 :=
.seq RemovedBody769_70 RemovedBody769_71

def RemovedBody769_73 : StackLang.HolProg 64 :=
.seq RemovedBody769_69 RemovedBody769_72

def RemovedBody769_74 : StackLang.HolProg 64 :=
.seq RemovedBody769_68 RemovedBody769_73

def RemovedBody769_75 : StackLang.HolProg 64 :=
.seq RemovedBody769_67 RemovedBody769_74

def RemovedBody769_76 : StackLang.HolProg 64 :=
.seq RemovedBody769_66 RemovedBody769_75

def RemovedBody769_77 : StackLang.HolProg 64 :=
.seq RemovedBody769_65 RemovedBody769_76

def RemovedBody769_78 : StackLang.HolProg 64 :=
.seq RemovedBody769_64 RemovedBody769_77

def RemovedBody769_79 : StackLang.HolProg 64 :=
.seq RemovedBody769_63 RemovedBody769_78

def RemovedBody769_80 : StackLang.HolProg 64 :=
.seq RemovedBody769_62 RemovedBody769_79

def RemovedBody769_81 : StackLang.HolProg 64 :=
.seq RemovedBody769_61 RemovedBody769_80

def RemovedBody769_82 : StackLang.HolProg 64 :=
.seq RemovedBody769_60 RemovedBody769_81

def RemovedBody769_83 : StackLang.HolProg 64 :=
.seq RemovedBody769_59 RemovedBody769_82

def RemovedBody769_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody769_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody769_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody769_87 : StackLang.HolProg 64 :=
.seq RemovedBody769_85 RemovedBody769_86

def RemovedBody769_88 : StackLang.HolProg 64 :=
.seq RemovedBody769_84 RemovedBody769_87

def RemovedBody769_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody769_90 : StackLang.HolProg 64 :=
.seq RemovedBody769_88 RemovedBody769_89

def RemovedBody769_91 : StackLang.HolProg 64 :=
.call (some (RemovedBody769_83, 0, 769, 2)) (Sum.inl 712) (some (RemovedBody769_90, 769, 3))

def RemovedBody769_92 : StackLang.HolProg 64 :=
.seq RemovedBody769_58 RemovedBody769_91

def RemovedBody769_93 : StackLang.HolProg 64 :=
.seq RemovedBody769_57 RemovedBody769_92

def RemovedBody769_94 : StackLang.HolProg 64 :=
.seq RemovedBody769_56 RemovedBody769_93

def RemovedBody769_95 : StackLang.HolProg 64 :=
.seq RemovedBody769_27 RemovedBody769_94

def RemovedBody769_96 : StackLang.HolProg 64 :=
.seq RemovedBody769_24 RemovedBody769_95

def RemovedBody769_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody769_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody769_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody769_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody769_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody769_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody769_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody769_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def RemovedBody769_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def RemovedBody769_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 104#64))

def RemovedBody769_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def RemovedBody769_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 120#64))

def RemovedBody769_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 128#64))

def RemovedBody769_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 136#64))

def RemovedBody769_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 0#64))

def RemovedBody769_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 8#64))

def RemovedBody769_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 16#64))

def RemovedBody769_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 24#64))

def RemovedBody769_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 32#64))

def RemovedBody769_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 40#64))

def RemovedBody769_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 18
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody769_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody769_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def RemovedBody769_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def RemovedBody769_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def RemovedBody769_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 32#64))

def RemovedBody769_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 40#64))

def RemovedBody769_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_151 : StackLang.HolProg 64 :=
.seq RemovedBody769_149 RemovedBody769_150

def RemovedBody769_152 : StackLang.HolProg 64 :=
.seq RemovedBody769_148 RemovedBody769_151

def RemovedBody769_153 : StackLang.HolProg 64 :=
.seq RemovedBody769_147 RemovedBody769_152

def RemovedBody769_154 : StackLang.HolProg 64 :=
.seq RemovedBody769_146 RemovedBody769_153

def RemovedBody769_155 : StackLang.HolProg 64 :=
.seq RemovedBody769_145 RemovedBody769_154

def RemovedBody769_156 : StackLang.HolProg 64 :=
.seq RemovedBody769_144 RemovedBody769_155

def RemovedBody769_157 : StackLang.HolProg 64 :=
.seq RemovedBody769_143 RemovedBody769_156

def RemovedBody769_158 : StackLang.HolProg 64 :=
.seq RemovedBody769_142 RemovedBody769_157

def RemovedBody769_159 : StackLang.HolProg 64 :=
.seq RemovedBody769_141 RemovedBody769_158

def RemovedBody769_160 : StackLang.HolProg 64 :=
.seq RemovedBody769_140 RemovedBody769_159

def RemovedBody769_161 : StackLang.HolProg 64 :=
.seq RemovedBody769_139 RemovedBody769_160

def RemovedBody769_162 : StackLang.HolProg 64 :=
.seq RemovedBody769_138 RemovedBody769_161

def RemovedBody769_163 : StackLang.HolProg 64 :=
.seq RemovedBody769_137 RemovedBody769_162

def RemovedBody769_164 : StackLang.HolProg 64 :=
.seq RemovedBody769_136 RemovedBody769_163

def RemovedBody769_165 : StackLang.HolProg 64 :=
.seq RemovedBody769_135 RemovedBody769_164

def RemovedBody769_166 : StackLang.HolProg 64 :=
.seq RemovedBody769_134 RemovedBody769_165

def RemovedBody769_167 : StackLang.HolProg 64 :=
.seq RemovedBody769_133 RemovedBody769_166

def RemovedBody769_168 : StackLang.HolProg 64 :=
.seq RemovedBody769_132 RemovedBody769_167

def RemovedBody769_169 : StackLang.HolProg 64 :=
.seq RemovedBody769_131 RemovedBody769_168

def RemovedBody769_170 : StackLang.HolProg 64 :=
.seq RemovedBody769_130 RemovedBody769_169

def RemovedBody769_171 : StackLang.HolProg 64 :=
.seq RemovedBody769_129 RemovedBody769_170

def RemovedBody769_172 : StackLang.HolProg 64 :=
.seq RemovedBody769_128 RemovedBody769_171

def RemovedBody769_173 : StackLang.HolProg 64 :=
.seq RemovedBody769_127 RemovedBody769_172

def RemovedBody769_174 : StackLang.HolProg 64 :=
.seq RemovedBody769_126 RemovedBody769_173

def RemovedBody769_175 : StackLang.HolProg 64 :=
.seq RemovedBody769_125 RemovedBody769_174

def RemovedBody769_176 : StackLang.HolProg 64 :=
.seq RemovedBody769_124 RemovedBody769_175

def RemovedBody769_177 : StackLang.HolProg 64 :=
.seq RemovedBody769_123 RemovedBody769_176

def RemovedBody769_178 : StackLang.HolProg 64 :=
.seq RemovedBody769_122 RemovedBody769_177

def RemovedBody769_179 : StackLang.HolProg 64 :=
.seq RemovedBody769_121 RemovedBody769_178

def RemovedBody769_180 : StackLang.HolProg 64 :=
.seq RemovedBody769_120 RemovedBody769_179

def RemovedBody769_181 : StackLang.HolProg 64 :=
.seq RemovedBody769_119 RemovedBody769_180

def RemovedBody769_182 : StackLang.HolProg 64 :=
.seq RemovedBody769_118 RemovedBody769_181

def RemovedBody769_183 : StackLang.HolProg 64 :=
.seq RemovedBody769_117 RemovedBody769_182

def RemovedBody769_184 : StackLang.HolProg 64 :=
.seq RemovedBody769_116 RemovedBody769_183

def RemovedBody769_185 : StackLang.HolProg 64 :=
.seq RemovedBody769_115 RemovedBody769_184

def RemovedBody769_186 : StackLang.HolProg 64 :=
.seq RemovedBody769_114 RemovedBody769_185

def RemovedBody769_187 : StackLang.HolProg 64 :=
.seq RemovedBody769_113 RemovedBody769_186

def RemovedBody769_188 : StackLang.HolProg 64 :=
.seq RemovedBody769_112 RemovedBody769_187

def RemovedBody769_189 : StackLang.HolProg 64 :=
.seq RemovedBody769_111 RemovedBody769_188

def RemovedBody769_190 : StackLang.HolProg 64 :=
.seq RemovedBody769_110 RemovedBody769_189

def RemovedBody769_191 : StackLang.HolProg 64 :=
.seq RemovedBody769_109 RemovedBody769_190

def RemovedBody769_192 : StackLang.HolProg 64 :=
.seq RemovedBody769_108 RemovedBody769_191

def RemovedBody769_193 : StackLang.HolProg 64 :=
.seq RemovedBody769_107 RemovedBody769_192

def RemovedBody769_194 : StackLang.HolProg 64 :=
.seq RemovedBody769_106 RemovedBody769_193

def RemovedBody769_195 : StackLang.HolProg 64 :=
.seq RemovedBody769_105 RemovedBody769_194

def RemovedBody769_196 : StackLang.HolProg 64 :=
.seq RemovedBody769_104 RemovedBody769_195

def RemovedBody769_197 : StackLang.HolProg 64 :=
.seq RemovedBody769_103 RemovedBody769_196

def RemovedBody769_198 : StackLang.HolProg 64 :=
.seq RemovedBody769_102 RemovedBody769_197

def RemovedBody769_199 : StackLang.HolProg 64 :=
.seq RemovedBody769_101 RemovedBody769_198

def RemovedBody769_200 : StackLang.HolProg 64 :=
.seq RemovedBody769_100 RemovedBody769_199

def RemovedBody769_201 : StackLang.HolProg 64 :=
.seq RemovedBody769_99 RemovedBody769_200

def RemovedBody769_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody769_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_204 : StackLang.HolProg 64 :=
.seq RemovedBody769_202 RemovedBody769_203

def RemovedBody769_205 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody769_201 RemovedBody769_204

def RemovedBody769_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody769_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 18
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody769_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody769_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody769_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody769_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody769_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody769_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def RemovedBody769_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody769_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody769_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody769_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 19

def RemovedBody769_225 : StackLang.HolProg 64 :=
.seq RemovedBody769_223 RemovedBody769_224

def RemovedBody769_226 : StackLang.HolProg 64 :=
.seq RemovedBody769_222 RemovedBody769_225

def RemovedBody769_227 : StackLang.HolProg 64 :=
.seq RemovedBody769_221 RemovedBody769_226

def RemovedBody769_228 : StackLang.HolProg 64 :=
.seq RemovedBody769_220 RemovedBody769_227

def RemovedBody769_229 : StackLang.HolProg 64 :=
.seq RemovedBody769_219 RemovedBody769_228

def RemovedBody769_230 : StackLang.HolProg 64 :=
.seq RemovedBody769_218 RemovedBody769_229

def RemovedBody769_231 : StackLang.HolProg 64 :=
.seq RemovedBody769_217 RemovedBody769_230

def RemovedBody769_232 : StackLang.HolProg 64 :=
.seq RemovedBody769_216 RemovedBody769_231

def RemovedBody769_233 : StackLang.HolProg 64 :=
.seq RemovedBody769_215 RemovedBody769_232

def RemovedBody769_234 : StackLang.HolProg 64 :=
.seq RemovedBody769_214 RemovedBody769_233

def RemovedBody769_235 : StackLang.HolProg 64 :=
.seq RemovedBody769_213 RemovedBody769_234

def RemovedBody769_236 : StackLang.HolProg 64 :=
.seq RemovedBody769_212 RemovedBody769_235

def RemovedBody769_237 : StackLang.HolProg 64 :=
.seq RemovedBody769_211 RemovedBody769_236

def RemovedBody769_238 : StackLang.HolProg 64 :=
.seq RemovedBody769_210 RemovedBody769_237

def RemovedBody769_239 : StackLang.HolProg 64 :=
.seq RemovedBody769_209 RemovedBody769_238

def RemovedBody769_240 : StackLang.HolProg 64 :=
.seq RemovedBody769_208 RemovedBody769_239

def RemovedBody769_241 : StackLang.HolProg 64 :=
.seq RemovedBody769_207 RemovedBody769_240

def RemovedBody769_242 : StackLang.HolProg 64 :=
.seq RemovedBody769_206 RemovedBody769_241

def RemovedBody769_243 : StackLang.HolProg 64 :=
.seq RemovedBody769_205 RemovedBody769_242

def RemovedBody769_244 : StackLang.HolProg 64 :=
.seq RemovedBody769_98 RemovedBody769_243

def RemovedBody769_245 : StackLang.HolProg 64 :=
.seq RemovedBody769_97 RemovedBody769_244

def RemovedBody769_246 : StackLang.HolProg 64 :=
.seq RemovedBody769_96 RemovedBody769_245

def RemovedBody769_247 : StackLang.HolProg 64 :=
.seq RemovedBody769_23 RemovedBody769_246

def RemovedBody769_248 : StackLang.HolProg 64 :=
.seq RemovedBody769_18 RemovedBody769_247

def RemovedBody769_249 : StackLang.HolProg 64 :=
.seq RemovedBody769_17 RemovedBody769_248

def RemovedBody769_250 : StackLang.HolProg 64 :=
.seq RemovedBody769_16 RemovedBody769_249

def RemovedBody769_251 : StackLang.HolProg 64 :=
.seq RemovedBody769_15 RemovedBody769_250

def RemovedBody769_252 : StackLang.HolProg 64 :=
.seq RemovedBody769_14 RemovedBody769_251

def RemovedBody769_253 : StackLang.HolProg 64 :=
.seq RemovedBody769_13 RemovedBody769_252

def RemovedBody769_254 : StackLang.HolProg 64 :=
.seq RemovedBody769_12 RemovedBody769_253

def RemovedBody769_255 : StackLang.HolProg 64 :=
.seq RemovedBody769_11 RemovedBody769_254

def RemovedBody769_256 : StackLang.HolProg 64 :=
.seq RemovedBody769_10 RemovedBody769_255

def RemovedBody769_257 : StackLang.HolProg 64 :=
.seq RemovedBody769_9 RemovedBody769_256

def RemovedBody769_258 : StackLang.HolProg 64 :=
.seq RemovedBody769_8 RemovedBody769_257

def RemovedBody769_259 : StackLang.HolProg 64 :=
.seq RemovedBody769_7 RemovedBody769_258

def RemovedBody769_260 : StackLang.HolProg 64 :=
.seq RemovedBody769_6 RemovedBody769_259

def Removed769 : Nat × StackLang.HolProg 64 := (769, RemovedBody769_260)
theorem Removed769_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc769 = Removed769 := by
  kernel_rfl
#print axioms Removed769_eq
end InitECandidate.Proofs.BackendStages
