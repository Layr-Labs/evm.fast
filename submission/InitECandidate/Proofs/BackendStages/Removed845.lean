import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc845
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody845_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody845_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody845_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody845_3 : StackLang.HolProg 64 :=
.seq RemovedBody845_1 RemovedBody845_2

def RemovedBody845_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody845_3 RemovedBody845_4

def RemovedBody845_6 : StackLang.HolProg 64 :=
.seq RemovedBody845_0 RemovedBody845_5

def RemovedBody845_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody845_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody845_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody845_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_11 : StackLang.HolProg 64 :=
.seq RemovedBody845_9 RemovedBody845_10

def RemovedBody845_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4227#64)

def RemovedBody845_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody845_15 : StackLang.HolProg 64 :=
.seq RemovedBody845_13 RemovedBody845_14

def RemovedBody845_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody845_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody845_19 : StackLang.HolProg 64 :=
.seq RemovedBody845_17 RemovedBody845_18

def RemovedBody845_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody845_19 RemovedBody845_20

def RemovedBody845_22 : StackLang.HolProg 64 :=
.seq RemovedBody845_16 RemovedBody845_21

def RemovedBody845_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody845_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody845_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 845 3

def RemovedBody845_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody845_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody845_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody845_32 : StackLang.HolProg 64 :=
.seq RemovedBody845_30 RemovedBody845_31

def RemovedBody845_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody845_34 : StackLang.HolProg 64 :=
.seq RemovedBody845_32 RemovedBody845_33

def RemovedBody845_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_36 : StackLang.HolProg 64 :=
.seq RemovedBody845_34 RemovedBody845_35

def RemovedBody845_37 : StackLang.HolProg 64 :=
.seq RemovedBody845_29 RemovedBody845_36

def RemovedBody845_38 : StackLang.HolProg 64 :=
.seq RemovedBody845_28 RemovedBody845_37

def RemovedBody845_39 : StackLang.HolProg 64 :=
.seq RemovedBody845_27 RemovedBody845_38

def RemovedBody845_40 : StackLang.HolProg 64 :=
.seq RemovedBody845_26 RemovedBody845_39

def RemovedBody845_41 : StackLang.HolProg 64 :=
.seq RemovedBody845_25 RemovedBody845_40

def RemovedBody845_42 : StackLang.HolProg 64 :=
.seq RemovedBody845_24 RemovedBody845_41

def RemovedBody845_43 : StackLang.HolProg 64 :=
.seq RemovedBody845_23 RemovedBody845_42

def RemovedBody845_44 : StackLang.HolProg 64 :=
.seq RemovedBody845_22 RemovedBody845_43

def RemovedBody845_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody845_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_53 : StackLang.HolProg 64 :=
.seq RemovedBody845_51 RemovedBody845_52

def RemovedBody845_54 : StackLang.HolProg 64 :=
.seq RemovedBody845_50 RemovedBody845_53

def RemovedBody845_55 : StackLang.HolProg 64 :=
.seq RemovedBody845_49 RemovedBody845_54

def RemovedBody845_56 : StackLang.HolProg 64 :=
.seq RemovedBody845_48 RemovedBody845_55

def RemovedBody845_57 : StackLang.HolProg 64 :=
.seq RemovedBody845_47 RemovedBody845_56

def RemovedBody845_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody845_60 : StackLang.HolProg 64 :=
.seq RemovedBody845_58 RemovedBody845_59

def RemovedBody845_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody845_57, 0, 845, 2)) (Sum.inl 68) (some (RemovedBody845_60, 845, 3))

def RemovedBody845_62 : StackLang.HolProg 64 :=
.seq RemovedBody845_46 RemovedBody845_61

def RemovedBody845_63 : StackLang.HolProg 64 :=
.seq RemovedBody845_45 RemovedBody845_62

def RemovedBody845_64 : StackLang.HolProg 64 :=
.seq RemovedBody845_44 RemovedBody845_63

def RemovedBody845_65 : StackLang.HolProg 64 :=
.seq RemovedBody845_15 RemovedBody845_64

def RemovedBody845_66 : StackLang.HolProg 64 :=
.seq RemovedBody845_12 RemovedBody845_65

def RemovedBody845_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody845_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def RemovedBody845_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def RemovedBody845_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody845_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody845_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody845_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody845_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody845_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody845_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody845_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody845_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody845_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody845_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody845_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody845_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody845_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody845_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody845_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody845_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody845_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody845_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody845_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody845_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody845_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody845_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody845_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody845_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody845_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody845_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody845_118 : StackLang.HolProg 64 :=
.seq RemovedBody845_116 RemovedBody845_117

def RemovedBody845_119 : StackLang.HolProg 64 :=
.seq RemovedBody845_115 RemovedBody845_118

def RemovedBody845_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4228#64)

def RemovedBody845_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody845_123 : StackLang.HolProg 64 :=
.seq RemovedBody845_121 RemovedBody845_122

def RemovedBody845_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody845_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody845_127 : StackLang.HolProg 64 :=
.seq RemovedBody845_125 RemovedBody845_126

def RemovedBody845_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody845_127 RemovedBody845_128

def RemovedBody845_130 : StackLang.HolProg 64 :=
.seq RemovedBody845_124 RemovedBody845_129

def RemovedBody845_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody845_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody845_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 845 5

def RemovedBody845_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody845_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody845_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody845_140 : StackLang.HolProg 64 :=
.seq RemovedBody845_138 RemovedBody845_139

def RemovedBody845_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody845_142 : StackLang.HolProg 64 :=
.seq RemovedBody845_140 RemovedBody845_141

def RemovedBody845_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_144 : StackLang.HolProg 64 :=
.seq RemovedBody845_142 RemovedBody845_143

def RemovedBody845_145 : StackLang.HolProg 64 :=
.seq RemovedBody845_137 RemovedBody845_144

def RemovedBody845_146 : StackLang.HolProg 64 :=
.seq RemovedBody845_136 RemovedBody845_145

def RemovedBody845_147 : StackLang.HolProg 64 :=
.seq RemovedBody845_135 RemovedBody845_146

def RemovedBody845_148 : StackLang.HolProg 64 :=
.seq RemovedBody845_134 RemovedBody845_147

def RemovedBody845_149 : StackLang.HolProg 64 :=
.seq RemovedBody845_133 RemovedBody845_148

def RemovedBody845_150 : StackLang.HolProg 64 :=
.seq RemovedBody845_132 RemovedBody845_149

def RemovedBody845_151 : StackLang.HolProg 64 :=
.seq RemovedBody845_131 RemovedBody845_150

def RemovedBody845_152 : StackLang.HolProg 64 :=
.seq RemovedBody845_130 RemovedBody845_151

def RemovedBody845_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody845_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_162 : StackLang.HolProg 64 :=
.seq RemovedBody845_160 RemovedBody845_161

def RemovedBody845_163 : StackLang.HolProg 64 :=
.seq RemovedBody845_159 RemovedBody845_162

def RemovedBody845_164 : StackLang.HolProg 64 :=
.seq RemovedBody845_158 RemovedBody845_163

def RemovedBody845_165 : StackLang.HolProg 64 :=
.seq RemovedBody845_157 RemovedBody845_164

def RemovedBody845_166 : StackLang.HolProg 64 :=
.seq RemovedBody845_156 RemovedBody845_165

def RemovedBody845_167 : StackLang.HolProg 64 :=
.seq RemovedBody845_155 RemovedBody845_166

def RemovedBody845_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_170 : StackLang.HolProg 64 :=
.seq RemovedBody845_168 RemovedBody845_169

def RemovedBody845_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody845_172 : StackLang.HolProg 64 :=
.seq RemovedBody845_170 RemovedBody845_171

def RemovedBody845_173 : StackLang.HolProg 64 :=
.call (some (RemovedBody845_167, 0, 845, 4)) (Sum.inl 177) (some (RemovedBody845_172, 845, 5))

def RemovedBody845_174 : StackLang.HolProg 64 :=
.seq RemovedBody845_154 RemovedBody845_173

def RemovedBody845_175 : StackLang.HolProg 64 :=
.seq RemovedBody845_153 RemovedBody845_174

def RemovedBody845_176 : StackLang.HolProg 64 :=
.seq RemovedBody845_152 RemovedBody845_175

def RemovedBody845_177 : StackLang.HolProg 64 :=
.seq RemovedBody845_123 RemovedBody845_176

def RemovedBody845_178 : StackLang.HolProg 64 :=
.seq RemovedBody845_120 RemovedBody845_177

def RemovedBody845_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody845_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody845_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody845_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody845_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def RemovedBody845_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody845_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 10#64)))

def RemovedBody845_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody845_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 11#64)))

def RemovedBody845_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody845_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def RemovedBody845_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody845_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 13#64)))

def RemovedBody845_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody845_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 14#64)))

def RemovedBody845_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody845_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def RemovedBody845_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody845_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody845_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody845_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody845_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody845_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody845_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody845_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody845_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody845_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody845_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody845_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody845_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody845_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_230 : StackLang.HolProg 64 :=
.seq RemovedBody845_228 RemovedBody845_229

def RemovedBody845_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4229#64)

def RemovedBody845_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody845_234 : StackLang.HolProg 64 :=
.seq RemovedBody845_232 RemovedBody845_233

def RemovedBody845_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody845_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody845_238 : StackLang.HolProg 64 :=
.seq RemovedBody845_236 RemovedBody845_237

def RemovedBody845_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_240 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody845_238 RemovedBody845_239

def RemovedBody845_241 : StackLang.HolProg 64 :=
.seq RemovedBody845_235 RemovedBody845_240

def RemovedBody845_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody845_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody845_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 845 7

def RemovedBody845_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody845_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody845_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody845_251 : StackLang.HolProg 64 :=
.seq RemovedBody845_249 RemovedBody845_250

def RemovedBody845_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody845_253 : StackLang.HolProg 64 :=
.seq RemovedBody845_251 RemovedBody845_252

def RemovedBody845_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_255 : StackLang.HolProg 64 :=
.seq RemovedBody845_253 RemovedBody845_254

def RemovedBody845_256 : StackLang.HolProg 64 :=
.seq RemovedBody845_248 RemovedBody845_255

def RemovedBody845_257 : StackLang.HolProg 64 :=
.seq RemovedBody845_247 RemovedBody845_256

def RemovedBody845_258 : StackLang.HolProg 64 :=
.seq RemovedBody845_246 RemovedBody845_257

def RemovedBody845_259 : StackLang.HolProg 64 :=
.seq RemovedBody845_245 RemovedBody845_258

def RemovedBody845_260 : StackLang.HolProg 64 :=
.seq RemovedBody845_244 RemovedBody845_259

def RemovedBody845_261 : StackLang.HolProg 64 :=
.seq RemovedBody845_243 RemovedBody845_260

def RemovedBody845_262 : StackLang.HolProg 64 :=
.seq RemovedBody845_242 RemovedBody845_261

def RemovedBody845_263 : StackLang.HolProg 64 :=
.seq RemovedBody845_241 RemovedBody845_262

def RemovedBody845_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody845_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_273 : StackLang.HolProg 64 :=
.seq RemovedBody845_271 RemovedBody845_272

def RemovedBody845_274 : StackLang.HolProg 64 :=
.seq RemovedBody845_270 RemovedBody845_273

def RemovedBody845_275 : StackLang.HolProg 64 :=
.seq RemovedBody845_269 RemovedBody845_274

def RemovedBody845_276 : StackLang.HolProg 64 :=
.seq RemovedBody845_268 RemovedBody845_275

def RemovedBody845_277 : StackLang.HolProg 64 :=
.seq RemovedBody845_267 RemovedBody845_276

def RemovedBody845_278 : StackLang.HolProg 64 :=
.seq RemovedBody845_266 RemovedBody845_277

def RemovedBody845_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_281 : StackLang.HolProg 64 :=
.seq RemovedBody845_279 RemovedBody845_280

def RemovedBody845_282 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody845_283 : StackLang.HolProg 64 :=
.seq RemovedBody845_281 RemovedBody845_282

def RemovedBody845_284 : StackLang.HolProg 64 :=
.call (some (RemovedBody845_278, 0, 845, 6)) (Sum.inl 177) (some (RemovedBody845_283, 845, 7))

def RemovedBody845_285 : StackLang.HolProg 64 :=
.seq RemovedBody845_265 RemovedBody845_284

def RemovedBody845_286 : StackLang.HolProg 64 :=
.seq RemovedBody845_264 RemovedBody845_285

def RemovedBody845_287 : StackLang.HolProg 64 :=
.seq RemovedBody845_263 RemovedBody845_286

def RemovedBody845_288 : StackLang.HolProg 64 :=
.seq RemovedBody845_234 RemovedBody845_287

def RemovedBody845_289 : StackLang.HolProg 64 :=
.seq RemovedBody845_231 RemovedBody845_288

def RemovedBody845_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody845_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody845_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody845_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def RemovedBody845_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_298 : StackLang.HolProg 64 :=
.seq RemovedBody845_296 RemovedBody845_297

def RemovedBody845_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4230#64)

def RemovedBody845_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody845_302 : StackLang.HolProg 64 :=
.seq RemovedBody845_300 RemovedBody845_301

def RemovedBody845_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody845_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody845_306 : StackLang.HolProg 64 :=
.seq RemovedBody845_304 RemovedBody845_305

def RemovedBody845_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_308 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody845_306 RemovedBody845_307

def RemovedBody845_309 : StackLang.HolProg 64 :=
.seq RemovedBody845_303 RemovedBody845_308

def RemovedBody845_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody845_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody845_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 845 9

def RemovedBody845_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody845_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody845_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody845_319 : StackLang.HolProg 64 :=
.seq RemovedBody845_317 RemovedBody845_318

def RemovedBody845_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody845_321 : StackLang.HolProg 64 :=
.seq RemovedBody845_319 RemovedBody845_320

def RemovedBody845_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_323 : StackLang.HolProg 64 :=
.seq RemovedBody845_321 RemovedBody845_322

def RemovedBody845_324 : StackLang.HolProg 64 :=
.seq RemovedBody845_316 RemovedBody845_323

def RemovedBody845_325 : StackLang.HolProg 64 :=
.seq RemovedBody845_315 RemovedBody845_324

def RemovedBody845_326 : StackLang.HolProg 64 :=
.seq RemovedBody845_314 RemovedBody845_325

def RemovedBody845_327 : StackLang.HolProg 64 :=
.seq RemovedBody845_313 RemovedBody845_326

def RemovedBody845_328 : StackLang.HolProg 64 :=
.seq RemovedBody845_312 RemovedBody845_327

def RemovedBody845_329 : StackLang.HolProg 64 :=
.seq RemovedBody845_311 RemovedBody845_328

def RemovedBody845_330 : StackLang.HolProg 64 :=
.seq RemovedBody845_310 RemovedBody845_329

def RemovedBody845_331 : StackLang.HolProg 64 :=
.seq RemovedBody845_309 RemovedBody845_330

def RemovedBody845_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody845_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody845_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_343 : StackLang.HolProg 64 :=
.seq RemovedBody845_341 RemovedBody845_342

def RemovedBody845_344 : StackLang.HolProg 64 :=
.seq RemovedBody845_340 RemovedBody845_343

def RemovedBody845_345 : StackLang.HolProg 64 :=
.seq RemovedBody845_339 RemovedBody845_344

def RemovedBody845_346 : StackLang.HolProg 64 :=
.seq RemovedBody845_338 RemovedBody845_345

def RemovedBody845_347 : StackLang.HolProg 64 :=
.seq RemovedBody845_337 RemovedBody845_346

def RemovedBody845_348 : StackLang.HolProg 64 :=
.seq RemovedBody845_336 RemovedBody845_347

def RemovedBody845_349 : StackLang.HolProg 64 :=
.seq RemovedBody845_335 RemovedBody845_348

def RemovedBody845_350 : StackLang.HolProg 64 :=
.seq RemovedBody845_334 RemovedBody845_349

def RemovedBody845_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody845_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_355 : StackLang.HolProg 64 :=
.seq RemovedBody845_353 RemovedBody845_354

def RemovedBody845_356 : StackLang.HolProg 64 :=
.seq RemovedBody845_352 RemovedBody845_355

def RemovedBody845_357 : StackLang.HolProg 64 :=
.seq RemovedBody845_351 RemovedBody845_356

def RemovedBody845_358 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody845_359 : StackLang.HolProg 64 :=
.seq RemovedBody845_357 RemovedBody845_358

def RemovedBody845_360 : StackLang.HolProg 64 :=
.call (some (RemovedBody845_350, 0, 845, 8)) (Sum.inl 176) (some (RemovedBody845_359, 845, 9))

def RemovedBody845_361 : StackLang.HolProg 64 :=
.seq RemovedBody845_333 RemovedBody845_360

def RemovedBody845_362 : StackLang.HolProg 64 :=
.seq RemovedBody845_332 RemovedBody845_361

def RemovedBody845_363 : StackLang.HolProg 64 :=
.seq RemovedBody845_331 RemovedBody845_362

def RemovedBody845_364 : StackLang.HolProg 64 :=
.seq RemovedBody845_302 RemovedBody845_363

def RemovedBody845_365 : StackLang.HolProg 64 :=
.seq RemovedBody845_299 RemovedBody845_364

def RemovedBody845_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody845_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody845_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 36#64)))

def RemovedBody845_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody845_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 37#64)))

def RemovedBody845_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody845_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 38#64)))

def RemovedBody845_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody845_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 39#64)))

def RemovedBody845_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody845_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody845_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody845_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 41#64)))

def RemovedBody845_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody845_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 42#64)))

def RemovedBody845_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody845_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 43#64)))

def RemovedBody845_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody845_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody845_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody845_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody845_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody845_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody845_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody845_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody845_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody845_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody845_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody845_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody845_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody845_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4231#64)

def RemovedBody845_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody845_419 : StackLang.HolProg 64 :=
.seq RemovedBody845_417 RemovedBody845_418

def RemovedBody845_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody845_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody845_423 : StackLang.HolProg 64 :=
.seq RemovedBody845_421 RemovedBody845_422

def RemovedBody845_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_425 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody845_423 RemovedBody845_424

def RemovedBody845_426 : StackLang.HolProg 64 :=
.seq RemovedBody845_420 RemovedBody845_425

def RemovedBody845_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody845_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody845_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 845 11

def RemovedBody845_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody845_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody845_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody845_436 : StackLang.HolProg 64 :=
.seq RemovedBody845_434 RemovedBody845_435

def RemovedBody845_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody845_438 : StackLang.HolProg 64 :=
.seq RemovedBody845_436 RemovedBody845_437

def RemovedBody845_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_440 : StackLang.HolProg 64 :=
.seq RemovedBody845_438 RemovedBody845_439

def RemovedBody845_441 : StackLang.HolProg 64 :=
.seq RemovedBody845_433 RemovedBody845_440

def RemovedBody845_442 : StackLang.HolProg 64 :=
.seq RemovedBody845_432 RemovedBody845_441

def RemovedBody845_443 : StackLang.HolProg 64 :=
.seq RemovedBody845_431 RemovedBody845_442

def RemovedBody845_444 : StackLang.HolProg 64 :=
.seq RemovedBody845_430 RemovedBody845_443

def RemovedBody845_445 : StackLang.HolProg 64 :=
.seq RemovedBody845_429 RemovedBody845_444

def RemovedBody845_446 : StackLang.HolProg 64 :=
.seq RemovedBody845_428 RemovedBody845_445

def RemovedBody845_447 : StackLang.HolProg 64 :=
.seq RemovedBody845_427 RemovedBody845_446

def RemovedBody845_448 : StackLang.HolProg 64 :=
.seq RemovedBody845_426 RemovedBody845_447

def RemovedBody845_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody845_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_458 : StackLang.HolProg 64 :=
.seq RemovedBody845_456 RemovedBody845_457

def RemovedBody845_459 : StackLang.HolProg 64 :=
.seq RemovedBody845_455 RemovedBody845_458

def RemovedBody845_460 : StackLang.HolProg 64 :=
.seq RemovedBody845_454 RemovedBody845_459

def RemovedBody845_461 : StackLang.HolProg 64 :=
.seq RemovedBody845_453 RemovedBody845_460

def RemovedBody845_462 : StackLang.HolProg 64 :=
.seq RemovedBody845_452 RemovedBody845_461

def RemovedBody845_463 : StackLang.HolProg 64 :=
.seq RemovedBody845_451 RemovedBody845_462

def RemovedBody845_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_466 : StackLang.HolProg 64 :=
.seq RemovedBody845_464 RemovedBody845_465

def RemovedBody845_467 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody845_468 : StackLang.HolProg 64 :=
.seq RemovedBody845_466 RemovedBody845_467

def RemovedBody845_469 : StackLang.HolProg 64 :=
.call (some (RemovedBody845_463, 0, 845, 10)) (Sum.inl 177) (some (RemovedBody845_468, 845, 11))

def RemovedBody845_470 : StackLang.HolProg 64 :=
.seq RemovedBody845_450 RemovedBody845_469

def RemovedBody845_471 : StackLang.HolProg 64 :=
.seq RemovedBody845_449 RemovedBody845_470

def RemovedBody845_472 : StackLang.HolProg 64 :=
.seq RemovedBody845_448 RemovedBody845_471

def RemovedBody845_473 : StackLang.HolProg 64 :=
.seq RemovedBody845_419 RemovedBody845_472

def RemovedBody845_474 : StackLang.HolProg 64 :=
.seq RemovedBody845_416 RemovedBody845_473

def RemovedBody845_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody845_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody845_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody845_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_480 : StackLang.HolProg 64 :=
.seq RemovedBody845_478 RemovedBody845_479

def RemovedBody845_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4232#64)

def RemovedBody845_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody845_484 : StackLang.HolProg 64 :=
.seq RemovedBody845_482 RemovedBody845_483

def RemovedBody845_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody845_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody845_488 : StackLang.HolProg 64 :=
.seq RemovedBody845_486 RemovedBody845_487

def RemovedBody845_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_490 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody845_488 RemovedBody845_489

def RemovedBody845_491 : StackLang.HolProg 64 :=
.seq RemovedBody845_485 RemovedBody845_490

def RemovedBody845_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody845_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody845_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 845 13

def RemovedBody845_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody845_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody845_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody845_501 : StackLang.HolProg 64 :=
.seq RemovedBody845_499 RemovedBody845_500

def RemovedBody845_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody845_503 : StackLang.HolProg 64 :=
.seq RemovedBody845_501 RemovedBody845_502

def RemovedBody845_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_505 : StackLang.HolProg 64 :=
.seq RemovedBody845_503 RemovedBody845_504

def RemovedBody845_506 : StackLang.HolProg 64 :=
.seq RemovedBody845_498 RemovedBody845_505

def RemovedBody845_507 : StackLang.HolProg 64 :=
.seq RemovedBody845_497 RemovedBody845_506

def RemovedBody845_508 : StackLang.HolProg 64 :=
.seq RemovedBody845_496 RemovedBody845_507

def RemovedBody845_509 : StackLang.HolProg 64 :=
.seq RemovedBody845_495 RemovedBody845_508

def RemovedBody845_510 : StackLang.HolProg 64 :=
.seq RemovedBody845_494 RemovedBody845_509

def RemovedBody845_511 : StackLang.HolProg 64 :=
.seq RemovedBody845_493 RemovedBody845_510

def RemovedBody845_512 : StackLang.HolProg 64 :=
.seq RemovedBody845_492 RemovedBody845_511

def RemovedBody845_513 : StackLang.HolProg 64 :=
.seq RemovedBody845_491 RemovedBody845_512

def RemovedBody845_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody845_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody845_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody845_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody845_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody845_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody845_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_523 : StackLang.HolProg 64 :=
.seq RemovedBody845_521 RemovedBody845_522

def RemovedBody845_524 : StackLang.HolProg 64 :=
.seq RemovedBody845_520 RemovedBody845_523

def RemovedBody845_525 : StackLang.HolProg 64 :=
.seq RemovedBody845_519 RemovedBody845_524

def RemovedBody845_526 : StackLang.HolProg 64 :=
.seq RemovedBody845_518 RemovedBody845_525

def RemovedBody845_527 : StackLang.HolProg 64 :=
.seq RemovedBody845_517 RemovedBody845_526

def RemovedBody845_528 : StackLang.HolProg 64 :=
.seq RemovedBody845_516 RemovedBody845_527

def RemovedBody845_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody845_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody845_531 : StackLang.HolProg 64 :=
.seq RemovedBody845_529 RemovedBody845_530

def RemovedBody845_532 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody845_533 : StackLang.HolProg 64 :=
.seq RemovedBody845_531 RemovedBody845_532

def RemovedBody845_534 : StackLang.HolProg 64 :=
.call (some (RemovedBody845_528, 0, 845, 12)) (Sum.inl 840) (some (RemovedBody845_533, 845, 13))

def RemovedBody845_535 : StackLang.HolProg 64 :=
.seq RemovedBody845_515 RemovedBody845_534

def RemovedBody845_536 : StackLang.HolProg 64 :=
.seq RemovedBody845_514 RemovedBody845_535

def RemovedBody845_537 : StackLang.HolProg 64 :=
.seq RemovedBody845_513 RemovedBody845_536

def RemovedBody845_538 : StackLang.HolProg 64 :=
.seq RemovedBody845_484 RemovedBody845_537

def RemovedBody845_539 : StackLang.HolProg 64 :=
.seq RemovedBody845_481 RemovedBody845_538

def RemovedBody845_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody845_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody845_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody845_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody845_544 : StackLang.HolProg 64 :=
.seq RemovedBody845_542 RemovedBody845_543

def RemovedBody845_545 : StackLang.HolProg 64 :=
.seq RemovedBody845_541 RemovedBody845_544

def RemovedBody845_546 : StackLang.HolProg 64 :=
.seq RemovedBody845_540 RemovedBody845_545

def RemovedBody845_547 : StackLang.HolProg 64 :=
.seq RemovedBody845_539 RemovedBody845_546

def RemovedBody845_548 : StackLang.HolProg 64 :=
.seq RemovedBody845_480 RemovedBody845_547

def RemovedBody845_549 : StackLang.HolProg 64 :=
.seq RemovedBody845_477 RemovedBody845_548

def RemovedBody845_550 : StackLang.HolProg 64 :=
.seq RemovedBody845_476 RemovedBody845_549

def RemovedBody845_551 : StackLang.HolProg 64 :=
.seq RemovedBody845_475 RemovedBody845_550

def RemovedBody845_552 : StackLang.HolProg 64 :=
.seq RemovedBody845_474 RemovedBody845_551

def RemovedBody845_553 : StackLang.HolProg 64 :=
.seq RemovedBody845_415 RemovedBody845_552

def RemovedBody845_554 : StackLang.HolProg 64 :=
.seq RemovedBody845_414 RemovedBody845_553

def RemovedBody845_555 : StackLang.HolProg 64 :=
.seq RemovedBody845_413 RemovedBody845_554

def RemovedBody845_556 : StackLang.HolProg 64 :=
.seq RemovedBody845_412 RemovedBody845_555

def RemovedBody845_557 : StackLang.HolProg 64 :=
.seq RemovedBody845_411 RemovedBody845_556

def RemovedBody845_558 : StackLang.HolProg 64 :=
.seq RemovedBody845_410 RemovedBody845_557

def RemovedBody845_559 : StackLang.HolProg 64 :=
.seq RemovedBody845_409 RemovedBody845_558

def RemovedBody845_560 : StackLang.HolProg 64 :=
.seq RemovedBody845_408 RemovedBody845_559

def RemovedBody845_561 : StackLang.HolProg 64 :=
.seq RemovedBody845_407 RemovedBody845_560

def RemovedBody845_562 : StackLang.HolProg 64 :=
.seq RemovedBody845_406 RemovedBody845_561

def RemovedBody845_563 : StackLang.HolProg 64 :=
.seq RemovedBody845_405 RemovedBody845_562

def RemovedBody845_564 : StackLang.HolProg 64 :=
.seq RemovedBody845_404 RemovedBody845_563

def RemovedBody845_565 : StackLang.HolProg 64 :=
.seq RemovedBody845_403 RemovedBody845_564

def RemovedBody845_566 : StackLang.HolProg 64 :=
.seq RemovedBody845_402 RemovedBody845_565

def RemovedBody845_567 : StackLang.HolProg 64 :=
.seq RemovedBody845_401 RemovedBody845_566

def RemovedBody845_568 : StackLang.HolProg 64 :=
.seq RemovedBody845_400 RemovedBody845_567

def RemovedBody845_569 : StackLang.HolProg 64 :=
.seq RemovedBody845_399 RemovedBody845_568

def RemovedBody845_570 : StackLang.HolProg 64 :=
.seq RemovedBody845_398 RemovedBody845_569

def RemovedBody845_571 : StackLang.HolProg 64 :=
.seq RemovedBody845_397 RemovedBody845_570

def RemovedBody845_572 : StackLang.HolProg 64 :=
.seq RemovedBody845_396 RemovedBody845_571

def RemovedBody845_573 : StackLang.HolProg 64 :=
.seq RemovedBody845_395 RemovedBody845_572

def RemovedBody845_574 : StackLang.HolProg 64 :=
.seq RemovedBody845_394 RemovedBody845_573

def RemovedBody845_575 : StackLang.HolProg 64 :=
.seq RemovedBody845_393 RemovedBody845_574

def RemovedBody845_576 : StackLang.HolProg 64 :=
.seq RemovedBody845_392 RemovedBody845_575

def RemovedBody845_577 : StackLang.HolProg 64 :=
.seq RemovedBody845_391 RemovedBody845_576

def RemovedBody845_578 : StackLang.HolProg 64 :=
.seq RemovedBody845_390 RemovedBody845_577

def RemovedBody845_579 : StackLang.HolProg 64 :=
.seq RemovedBody845_389 RemovedBody845_578

def RemovedBody845_580 : StackLang.HolProg 64 :=
.seq RemovedBody845_388 RemovedBody845_579

def RemovedBody845_581 : StackLang.HolProg 64 :=
.seq RemovedBody845_387 RemovedBody845_580

def RemovedBody845_582 : StackLang.HolProg 64 :=
.seq RemovedBody845_386 RemovedBody845_581

def RemovedBody845_583 : StackLang.HolProg 64 :=
.seq RemovedBody845_385 RemovedBody845_582

def RemovedBody845_584 : StackLang.HolProg 64 :=
.seq RemovedBody845_384 RemovedBody845_583

def RemovedBody845_585 : StackLang.HolProg 64 :=
.seq RemovedBody845_383 RemovedBody845_584

def RemovedBody845_586 : StackLang.HolProg 64 :=
.seq RemovedBody845_382 RemovedBody845_585

def RemovedBody845_587 : StackLang.HolProg 64 :=
.seq RemovedBody845_381 RemovedBody845_586

def RemovedBody845_588 : StackLang.HolProg 64 :=
.seq RemovedBody845_380 RemovedBody845_587

def RemovedBody845_589 : StackLang.HolProg 64 :=
.seq RemovedBody845_379 RemovedBody845_588

def RemovedBody845_590 : StackLang.HolProg 64 :=
.seq RemovedBody845_378 RemovedBody845_589

def RemovedBody845_591 : StackLang.HolProg 64 :=
.seq RemovedBody845_377 RemovedBody845_590

def RemovedBody845_592 : StackLang.HolProg 64 :=
.seq RemovedBody845_376 RemovedBody845_591

def RemovedBody845_593 : StackLang.HolProg 64 :=
.seq RemovedBody845_375 RemovedBody845_592

def RemovedBody845_594 : StackLang.HolProg 64 :=
.seq RemovedBody845_374 RemovedBody845_593

def RemovedBody845_595 : StackLang.HolProg 64 :=
.seq RemovedBody845_373 RemovedBody845_594

def RemovedBody845_596 : StackLang.HolProg 64 :=
.seq RemovedBody845_372 RemovedBody845_595

def RemovedBody845_597 : StackLang.HolProg 64 :=
.seq RemovedBody845_371 RemovedBody845_596

def RemovedBody845_598 : StackLang.HolProg 64 :=
.seq RemovedBody845_370 RemovedBody845_597

def RemovedBody845_599 : StackLang.HolProg 64 :=
.seq RemovedBody845_369 RemovedBody845_598

def RemovedBody845_600 : StackLang.HolProg 64 :=
.seq RemovedBody845_368 RemovedBody845_599

def RemovedBody845_601 : StackLang.HolProg 64 :=
.seq RemovedBody845_367 RemovedBody845_600

def RemovedBody845_602 : StackLang.HolProg 64 :=
.seq RemovedBody845_366 RemovedBody845_601

def RemovedBody845_603 : StackLang.HolProg 64 :=
.seq RemovedBody845_365 RemovedBody845_602

def RemovedBody845_604 : StackLang.HolProg 64 :=
.seq RemovedBody845_298 RemovedBody845_603

def RemovedBody845_605 : StackLang.HolProg 64 :=
.seq RemovedBody845_295 RemovedBody845_604

def RemovedBody845_606 : StackLang.HolProg 64 :=
.seq RemovedBody845_294 RemovedBody845_605

def RemovedBody845_607 : StackLang.HolProg 64 :=
.seq RemovedBody845_293 RemovedBody845_606

def RemovedBody845_608 : StackLang.HolProg 64 :=
.seq RemovedBody845_292 RemovedBody845_607

def RemovedBody845_609 : StackLang.HolProg 64 :=
.seq RemovedBody845_291 RemovedBody845_608

def RemovedBody845_610 : StackLang.HolProg 64 :=
.seq RemovedBody845_290 RemovedBody845_609

def RemovedBody845_611 : StackLang.HolProg 64 :=
.seq RemovedBody845_289 RemovedBody845_610

def RemovedBody845_612 : StackLang.HolProg 64 :=
.seq RemovedBody845_230 RemovedBody845_611

def RemovedBody845_613 : StackLang.HolProg 64 :=
.seq RemovedBody845_227 RemovedBody845_612

def RemovedBody845_614 : StackLang.HolProg 64 :=
.seq RemovedBody845_226 RemovedBody845_613

def RemovedBody845_615 : StackLang.HolProg 64 :=
.seq RemovedBody845_225 RemovedBody845_614

def RemovedBody845_616 : StackLang.HolProg 64 :=
.seq RemovedBody845_224 RemovedBody845_615

def RemovedBody845_617 : StackLang.HolProg 64 :=
.seq RemovedBody845_223 RemovedBody845_616

def RemovedBody845_618 : StackLang.HolProg 64 :=
.seq RemovedBody845_222 RemovedBody845_617

def RemovedBody845_619 : StackLang.HolProg 64 :=
.seq RemovedBody845_221 RemovedBody845_618

def RemovedBody845_620 : StackLang.HolProg 64 :=
.seq RemovedBody845_220 RemovedBody845_619

def RemovedBody845_621 : StackLang.HolProg 64 :=
.seq RemovedBody845_219 RemovedBody845_620

def RemovedBody845_622 : StackLang.HolProg 64 :=
.seq RemovedBody845_218 RemovedBody845_621

def RemovedBody845_623 : StackLang.HolProg 64 :=
.seq RemovedBody845_217 RemovedBody845_622

def RemovedBody845_624 : StackLang.HolProg 64 :=
.seq RemovedBody845_216 RemovedBody845_623

def RemovedBody845_625 : StackLang.HolProg 64 :=
.seq RemovedBody845_215 RemovedBody845_624

def RemovedBody845_626 : StackLang.HolProg 64 :=
.seq RemovedBody845_214 RemovedBody845_625

def RemovedBody845_627 : StackLang.HolProg 64 :=
.seq RemovedBody845_213 RemovedBody845_626

def RemovedBody845_628 : StackLang.HolProg 64 :=
.seq RemovedBody845_212 RemovedBody845_627

def RemovedBody845_629 : StackLang.HolProg 64 :=
.seq RemovedBody845_211 RemovedBody845_628

def RemovedBody845_630 : StackLang.HolProg 64 :=
.seq RemovedBody845_210 RemovedBody845_629

def RemovedBody845_631 : StackLang.HolProg 64 :=
.seq RemovedBody845_209 RemovedBody845_630

def RemovedBody845_632 : StackLang.HolProg 64 :=
.seq RemovedBody845_208 RemovedBody845_631

def RemovedBody845_633 : StackLang.HolProg 64 :=
.seq RemovedBody845_207 RemovedBody845_632

def RemovedBody845_634 : StackLang.HolProg 64 :=
.seq RemovedBody845_206 RemovedBody845_633

def RemovedBody845_635 : StackLang.HolProg 64 :=
.seq RemovedBody845_205 RemovedBody845_634

def RemovedBody845_636 : StackLang.HolProg 64 :=
.seq RemovedBody845_204 RemovedBody845_635

def RemovedBody845_637 : StackLang.HolProg 64 :=
.seq RemovedBody845_203 RemovedBody845_636

def RemovedBody845_638 : StackLang.HolProg 64 :=
.seq RemovedBody845_202 RemovedBody845_637

def RemovedBody845_639 : StackLang.HolProg 64 :=
.seq RemovedBody845_201 RemovedBody845_638

def RemovedBody845_640 : StackLang.HolProg 64 :=
.seq RemovedBody845_200 RemovedBody845_639

def RemovedBody845_641 : StackLang.HolProg 64 :=
.seq RemovedBody845_199 RemovedBody845_640

def RemovedBody845_642 : StackLang.HolProg 64 :=
.seq RemovedBody845_198 RemovedBody845_641

def RemovedBody845_643 : StackLang.HolProg 64 :=
.seq RemovedBody845_197 RemovedBody845_642

def RemovedBody845_644 : StackLang.HolProg 64 :=
.seq RemovedBody845_196 RemovedBody845_643

def RemovedBody845_645 : StackLang.HolProg 64 :=
.seq RemovedBody845_195 RemovedBody845_644

def RemovedBody845_646 : StackLang.HolProg 64 :=
.seq RemovedBody845_194 RemovedBody845_645

def RemovedBody845_647 : StackLang.HolProg 64 :=
.seq RemovedBody845_193 RemovedBody845_646

def RemovedBody845_648 : StackLang.HolProg 64 :=
.seq RemovedBody845_192 RemovedBody845_647

def RemovedBody845_649 : StackLang.HolProg 64 :=
.seq RemovedBody845_191 RemovedBody845_648

def RemovedBody845_650 : StackLang.HolProg 64 :=
.seq RemovedBody845_190 RemovedBody845_649

def RemovedBody845_651 : StackLang.HolProg 64 :=
.seq RemovedBody845_189 RemovedBody845_650

def RemovedBody845_652 : StackLang.HolProg 64 :=
.seq RemovedBody845_188 RemovedBody845_651

def RemovedBody845_653 : StackLang.HolProg 64 :=
.seq RemovedBody845_187 RemovedBody845_652

def RemovedBody845_654 : StackLang.HolProg 64 :=
.seq RemovedBody845_186 RemovedBody845_653

def RemovedBody845_655 : StackLang.HolProg 64 :=
.seq RemovedBody845_185 RemovedBody845_654

def RemovedBody845_656 : StackLang.HolProg 64 :=
.seq RemovedBody845_184 RemovedBody845_655

def RemovedBody845_657 : StackLang.HolProg 64 :=
.seq RemovedBody845_183 RemovedBody845_656

def RemovedBody845_658 : StackLang.HolProg 64 :=
.seq RemovedBody845_182 RemovedBody845_657

def RemovedBody845_659 : StackLang.HolProg 64 :=
.seq RemovedBody845_181 RemovedBody845_658

def RemovedBody845_660 : StackLang.HolProg 64 :=
.seq RemovedBody845_180 RemovedBody845_659

def RemovedBody845_661 : StackLang.HolProg 64 :=
.seq RemovedBody845_179 RemovedBody845_660

def RemovedBody845_662 : StackLang.HolProg 64 :=
.seq RemovedBody845_178 RemovedBody845_661

def RemovedBody845_663 : StackLang.HolProg 64 :=
.seq RemovedBody845_119 RemovedBody845_662

def RemovedBody845_664 : StackLang.HolProg 64 :=
.seq RemovedBody845_114 RemovedBody845_663

def RemovedBody845_665 : StackLang.HolProg 64 :=
.seq RemovedBody845_113 RemovedBody845_664

def RemovedBody845_666 : StackLang.HolProg 64 :=
.seq RemovedBody845_112 RemovedBody845_665

def RemovedBody845_667 : StackLang.HolProg 64 :=
.seq RemovedBody845_111 RemovedBody845_666

def RemovedBody845_668 : StackLang.HolProg 64 :=
.seq RemovedBody845_110 RemovedBody845_667

def RemovedBody845_669 : StackLang.HolProg 64 :=
.seq RemovedBody845_109 RemovedBody845_668

def RemovedBody845_670 : StackLang.HolProg 64 :=
.seq RemovedBody845_108 RemovedBody845_669

def RemovedBody845_671 : StackLang.HolProg 64 :=
.seq RemovedBody845_107 RemovedBody845_670

def RemovedBody845_672 : StackLang.HolProg 64 :=
.seq RemovedBody845_106 RemovedBody845_671

def RemovedBody845_673 : StackLang.HolProg 64 :=
.seq RemovedBody845_105 RemovedBody845_672

def RemovedBody845_674 : StackLang.HolProg 64 :=
.seq RemovedBody845_104 RemovedBody845_673

def RemovedBody845_675 : StackLang.HolProg 64 :=
.seq RemovedBody845_103 RemovedBody845_674

def RemovedBody845_676 : StackLang.HolProg 64 :=
.seq RemovedBody845_102 RemovedBody845_675

def RemovedBody845_677 : StackLang.HolProg 64 :=
.seq RemovedBody845_101 RemovedBody845_676

def RemovedBody845_678 : StackLang.HolProg 64 :=
.seq RemovedBody845_100 RemovedBody845_677

def RemovedBody845_679 : StackLang.HolProg 64 :=
.seq RemovedBody845_99 RemovedBody845_678

def RemovedBody845_680 : StackLang.HolProg 64 :=
.seq RemovedBody845_98 RemovedBody845_679

def RemovedBody845_681 : StackLang.HolProg 64 :=
.seq RemovedBody845_97 RemovedBody845_680

def RemovedBody845_682 : StackLang.HolProg 64 :=
.seq RemovedBody845_96 RemovedBody845_681

def RemovedBody845_683 : StackLang.HolProg 64 :=
.seq RemovedBody845_95 RemovedBody845_682

def RemovedBody845_684 : StackLang.HolProg 64 :=
.seq RemovedBody845_94 RemovedBody845_683

def RemovedBody845_685 : StackLang.HolProg 64 :=
.seq RemovedBody845_93 RemovedBody845_684

def RemovedBody845_686 : StackLang.HolProg 64 :=
.seq RemovedBody845_92 RemovedBody845_685

def RemovedBody845_687 : StackLang.HolProg 64 :=
.seq RemovedBody845_91 RemovedBody845_686

def RemovedBody845_688 : StackLang.HolProg 64 :=
.seq RemovedBody845_90 RemovedBody845_687

def RemovedBody845_689 : StackLang.HolProg 64 :=
.seq RemovedBody845_89 RemovedBody845_688

def RemovedBody845_690 : StackLang.HolProg 64 :=
.seq RemovedBody845_88 RemovedBody845_689

def RemovedBody845_691 : StackLang.HolProg 64 :=
.seq RemovedBody845_87 RemovedBody845_690

def RemovedBody845_692 : StackLang.HolProg 64 :=
.seq RemovedBody845_86 RemovedBody845_691

def RemovedBody845_693 : StackLang.HolProg 64 :=
.seq RemovedBody845_85 RemovedBody845_692

def RemovedBody845_694 : StackLang.HolProg 64 :=
.seq RemovedBody845_84 RemovedBody845_693

def RemovedBody845_695 : StackLang.HolProg 64 :=
.seq RemovedBody845_83 RemovedBody845_694

def RemovedBody845_696 : StackLang.HolProg 64 :=
.seq RemovedBody845_82 RemovedBody845_695

def RemovedBody845_697 : StackLang.HolProg 64 :=
.seq RemovedBody845_81 RemovedBody845_696

def RemovedBody845_698 : StackLang.HolProg 64 :=
.seq RemovedBody845_80 RemovedBody845_697

def RemovedBody845_699 : StackLang.HolProg 64 :=
.seq RemovedBody845_79 RemovedBody845_698

def RemovedBody845_700 : StackLang.HolProg 64 :=
.seq RemovedBody845_78 RemovedBody845_699

def RemovedBody845_701 : StackLang.HolProg 64 :=
.seq RemovedBody845_77 RemovedBody845_700

def RemovedBody845_702 : StackLang.HolProg 64 :=
.seq RemovedBody845_76 RemovedBody845_701

def RemovedBody845_703 : StackLang.HolProg 64 :=
.seq RemovedBody845_75 RemovedBody845_702

def RemovedBody845_704 : StackLang.HolProg 64 :=
.seq RemovedBody845_74 RemovedBody845_703

def RemovedBody845_705 : StackLang.HolProg 64 :=
.seq RemovedBody845_73 RemovedBody845_704

def RemovedBody845_706 : StackLang.HolProg 64 :=
.seq RemovedBody845_72 RemovedBody845_705

def RemovedBody845_707 : StackLang.HolProg 64 :=
.seq RemovedBody845_71 RemovedBody845_706

def RemovedBody845_708 : StackLang.HolProg 64 :=
.seq RemovedBody845_70 RemovedBody845_707

def RemovedBody845_709 : StackLang.HolProg 64 :=
.seq RemovedBody845_69 RemovedBody845_708

def RemovedBody845_710 : StackLang.HolProg 64 :=
.seq RemovedBody845_68 RemovedBody845_709

def RemovedBody845_711 : StackLang.HolProg 64 :=
.seq RemovedBody845_67 RemovedBody845_710

def RemovedBody845_712 : StackLang.HolProg 64 :=
.seq RemovedBody845_66 RemovedBody845_711

def RemovedBody845_713 : StackLang.HolProg 64 :=
.seq RemovedBody845_11 RemovedBody845_712

def RemovedBody845_714 : StackLang.HolProg 64 :=
.seq RemovedBody845_8 RemovedBody845_713

def RemovedBody845_715 : StackLang.HolProg 64 :=
.seq RemovedBody845_7 RemovedBody845_714

def RemovedBody845_716 : StackLang.HolProg 64 :=
.seq RemovedBody845_6 RemovedBody845_715

def Removed845 : Nat × StackLang.HolProg 64 := (845, RemovedBody845_716)
theorem Removed845_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc845 = Removed845 := by
  kernel_rfl
#print axioms Removed845_eq
end InitECandidate.Proofs.BackendStages
