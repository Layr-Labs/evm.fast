import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc157
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody157_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody157_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody157_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody157_3 : StackLang.HolProg 64 :=
.seq RemovedBody157_1 RemovedBody157_2

def RemovedBody157_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody157_3 RemovedBody157_4

def RemovedBody157_6 : StackLang.HolProg 64 :=
.seq RemovedBody157_0 RemovedBody157_5

def RemovedBody157_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody157_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody157_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody157_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody157_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 136#64)

def RemovedBody157_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody157_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody157_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody157_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody157_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody157_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody157_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody157_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody157_32 : StackLang.HolProg 64 :=
.seq RemovedBody157_30 RemovedBody157_31

def RemovedBody157_33 : StackLang.HolProg 64 :=
.seq RemovedBody157_29 RemovedBody157_32

def RemovedBody157_34 : StackLang.HolProg 64 :=
.seq RemovedBody157_28 RemovedBody157_33

def RemovedBody157_35 : StackLang.HolProg 64 :=
.seq RemovedBody157_27 RemovedBody157_34

def RemovedBody157_36 : StackLang.HolProg 64 :=
.seq RemovedBody157_26 RemovedBody157_35

def RemovedBody157_37 : StackLang.HolProg 64 :=
.seq RemovedBody157_25 RemovedBody157_36

def RemovedBody157_38 : StackLang.HolProg 64 :=
.seq RemovedBody157_24 RemovedBody157_37

def RemovedBody157_39 : StackLang.HolProg 64 :=
.seq RemovedBody157_23 RemovedBody157_38

def RemovedBody157_40 : StackLang.HolProg 64 :=
.seq RemovedBody157_22 RemovedBody157_39

def RemovedBody157_41 : StackLang.HolProg 64 :=
.seq RemovedBody157_21 RemovedBody157_40

def RemovedBody157_42 : StackLang.HolProg 64 :=
.seq RemovedBody157_20 RemovedBody157_41

def RemovedBody157_43 : StackLang.HolProg 64 :=
.seq RemovedBody157_19 RemovedBody157_42

def RemovedBody157_44 : StackLang.HolProg 64 :=
.seq RemovedBody157_18 RemovedBody157_43

def RemovedBody157_45 : StackLang.HolProg 64 :=
.seq RemovedBody157_17 RemovedBody157_44

def RemovedBody157_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody157_48 : StackLang.HolProg 64 :=
.seq RemovedBody157_46 RemovedBody157_47

def RemovedBody157_49 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody157_45 RemovedBody157_48

def RemovedBody157_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_52 : StackLang.HolProg 64 :=
.seq RemovedBody157_50 RemovedBody157_51

def RemovedBody157_53 : StackLang.HolProg 64 :=
.seq RemovedBody157_49 RemovedBody157_52

def RemovedBody157_54 : StackLang.HolProg 64 :=
.seq RemovedBody157_16 RemovedBody157_53

def RemovedBody157_55 : StackLang.HolProg 64 :=
.seq RemovedBody157_15 RemovedBody157_54

def RemovedBody157_56 : StackLang.HolProg 64 :=
.loop RemovedBody157_55

def RemovedBody157_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_59 : StackLang.HolProg 64 :=
.seq RemovedBody157_57 RemovedBody157_58

def RemovedBody157_60 : StackLang.HolProg 64 :=
.seq RemovedBody157_56 RemovedBody157_59

def RemovedBody157_61 : StackLang.HolProg 64 :=
.seq RemovedBody157_14 RemovedBody157_60

def RemovedBody157_62 : StackLang.HolProg 64 :=
.seq RemovedBody157_13 RemovedBody157_61

def RemovedBody157_63 : StackLang.HolProg 64 :=
.seq RemovedBody157_12 RemovedBody157_62

def RemovedBody157_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody157_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 136#64)

def RemovedBody157_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody157_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody157_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def RemovedBody157_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody157_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody157_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody157_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody157_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody157_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody157_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody157_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody157_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody157_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def RemovedBody157_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody157_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def RemovedBody157_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody157_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def RemovedBody157_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody157_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody157_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody157_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody157_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody157_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody157_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody157_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody157_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody157_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody157_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody157_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody157_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody157_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody157_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody157_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody157_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody157_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody157_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody157_127 : StackLang.HolProg 64 :=
.seq RemovedBody157_125 RemovedBody157_126

def RemovedBody157_128 : StackLang.HolProg 64 :=
.seq RemovedBody157_124 RemovedBody157_127

def RemovedBody157_129 : StackLang.HolProg 64 :=
.seq RemovedBody157_123 RemovedBody157_128

def RemovedBody157_130 : StackLang.HolProg 64 :=
.seq RemovedBody157_122 RemovedBody157_129

def RemovedBody157_131 : StackLang.HolProg 64 :=
.seq RemovedBody157_121 RemovedBody157_130

def RemovedBody157_132 : StackLang.HolProg 64 :=
.seq RemovedBody157_120 RemovedBody157_131

def RemovedBody157_133 : StackLang.HolProg 64 :=
.seq RemovedBody157_119 RemovedBody157_132

def RemovedBody157_134 : StackLang.HolProg 64 :=
.seq RemovedBody157_118 RemovedBody157_133

def RemovedBody157_135 : StackLang.HolProg 64 :=
.seq RemovedBody157_117 RemovedBody157_134

def RemovedBody157_136 : StackLang.HolProg 64 :=
.seq RemovedBody157_116 RemovedBody157_135

def RemovedBody157_137 : StackLang.HolProg 64 :=
.seq RemovedBody157_115 RemovedBody157_136

def RemovedBody157_138 : StackLang.HolProg 64 :=
.seq RemovedBody157_114 RemovedBody157_137

def RemovedBody157_139 : StackLang.HolProg 64 :=
.seq RemovedBody157_113 RemovedBody157_138

def RemovedBody157_140 : StackLang.HolProg 64 :=
.seq RemovedBody157_112 RemovedBody157_139

def RemovedBody157_141 : StackLang.HolProg 64 :=
.seq RemovedBody157_111 RemovedBody157_140

def RemovedBody157_142 : StackLang.HolProg 64 :=
.seq RemovedBody157_110 RemovedBody157_141

def RemovedBody157_143 : StackLang.HolProg 64 :=
.seq RemovedBody157_109 RemovedBody157_142

def RemovedBody157_144 : StackLang.HolProg 64 :=
.seq RemovedBody157_108 RemovedBody157_143

def RemovedBody157_145 : StackLang.HolProg 64 :=
.seq RemovedBody157_107 RemovedBody157_144

def RemovedBody157_146 : StackLang.HolProg 64 :=
.seq RemovedBody157_106 RemovedBody157_145

def RemovedBody157_147 : StackLang.HolProg 64 :=
.seq RemovedBody157_105 RemovedBody157_146

def RemovedBody157_148 : StackLang.HolProg 64 :=
.seq RemovedBody157_104 RemovedBody157_147

def RemovedBody157_149 : StackLang.HolProg 64 :=
.seq RemovedBody157_103 RemovedBody157_148

def RemovedBody157_150 : StackLang.HolProg 64 :=
.seq RemovedBody157_102 RemovedBody157_149

def RemovedBody157_151 : StackLang.HolProg 64 :=
.seq RemovedBody157_101 RemovedBody157_150

def RemovedBody157_152 : StackLang.HolProg 64 :=
.seq RemovedBody157_100 RemovedBody157_151

def RemovedBody157_153 : StackLang.HolProg 64 :=
.seq RemovedBody157_99 RemovedBody157_152

def RemovedBody157_154 : StackLang.HolProg 64 :=
.seq RemovedBody157_98 RemovedBody157_153

def RemovedBody157_155 : StackLang.HolProg 64 :=
.seq RemovedBody157_97 RemovedBody157_154

def RemovedBody157_156 : StackLang.HolProg 64 :=
.seq RemovedBody157_96 RemovedBody157_155

def RemovedBody157_157 : StackLang.HolProg 64 :=
.seq RemovedBody157_95 RemovedBody157_156

def RemovedBody157_158 : StackLang.HolProg 64 :=
.seq RemovedBody157_94 RemovedBody157_157

def RemovedBody157_159 : StackLang.HolProg 64 :=
.seq RemovedBody157_93 RemovedBody157_158

def RemovedBody157_160 : StackLang.HolProg 64 :=
.seq RemovedBody157_92 RemovedBody157_159

def RemovedBody157_161 : StackLang.HolProg 64 :=
.seq RemovedBody157_91 RemovedBody157_160

def RemovedBody157_162 : StackLang.HolProg 64 :=
.seq RemovedBody157_90 RemovedBody157_161

def RemovedBody157_163 : StackLang.HolProg 64 :=
.seq RemovedBody157_89 RemovedBody157_162

def RemovedBody157_164 : StackLang.HolProg 64 :=
.seq RemovedBody157_88 RemovedBody157_163

def RemovedBody157_165 : StackLang.HolProg 64 :=
.seq RemovedBody157_87 RemovedBody157_164

def RemovedBody157_166 : StackLang.HolProg 64 :=
.seq RemovedBody157_86 RemovedBody157_165

def RemovedBody157_167 : StackLang.HolProg 64 :=
.seq RemovedBody157_85 RemovedBody157_166

def RemovedBody157_168 : StackLang.HolProg 64 :=
.seq RemovedBody157_84 RemovedBody157_167

def RemovedBody157_169 : StackLang.HolProg 64 :=
.seq RemovedBody157_83 RemovedBody157_168

def RemovedBody157_170 : StackLang.HolProg 64 :=
.seq RemovedBody157_82 RemovedBody157_169

def RemovedBody157_171 : StackLang.HolProg 64 :=
.seq RemovedBody157_81 RemovedBody157_170

def RemovedBody157_172 : StackLang.HolProg 64 :=
.seq RemovedBody157_80 RemovedBody157_171

def RemovedBody157_173 : StackLang.HolProg 64 :=
.seq RemovedBody157_79 RemovedBody157_172

def RemovedBody157_174 : StackLang.HolProg 64 :=
.seq RemovedBody157_78 RemovedBody157_173

def RemovedBody157_175 : StackLang.HolProg 64 :=
.seq RemovedBody157_77 RemovedBody157_174

def RemovedBody157_176 : StackLang.HolProg 64 :=
.seq RemovedBody157_76 RemovedBody157_175

def RemovedBody157_177 : StackLang.HolProg 64 :=
.seq RemovedBody157_75 RemovedBody157_176

def RemovedBody157_178 : StackLang.HolProg 64 :=
.seq RemovedBody157_74 RemovedBody157_177

def RemovedBody157_179 : StackLang.HolProg 64 :=
.seq RemovedBody157_73 RemovedBody157_178

def RemovedBody157_180 : StackLang.HolProg 64 :=
.seq RemovedBody157_72 RemovedBody157_179

def RemovedBody157_181 : StackLang.HolProg 64 :=
.seq RemovedBody157_71 RemovedBody157_180

def RemovedBody157_182 : StackLang.HolProg 64 :=
.seq RemovedBody157_70 RemovedBody157_181

def RemovedBody157_183 : StackLang.HolProg 64 :=
.seq RemovedBody157_69 RemovedBody157_182

def RemovedBody157_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody157_186 : StackLang.HolProg 64 :=
.seq RemovedBody157_184 RemovedBody157_185

def RemovedBody157_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody157_183 RemovedBody157_186

def RemovedBody157_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_190 : StackLang.HolProg 64 :=
.seq RemovedBody157_188 RemovedBody157_189

def RemovedBody157_191 : StackLang.HolProg 64 :=
.seq RemovedBody157_187 RemovedBody157_190

def RemovedBody157_192 : StackLang.HolProg 64 :=
.seq RemovedBody157_68 RemovedBody157_191

def RemovedBody157_193 : StackLang.HolProg 64 :=
.seq RemovedBody157_67 RemovedBody157_192

def RemovedBody157_194 : StackLang.HolProg 64 :=
.loop RemovedBody157_193

def RemovedBody157_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_197 : StackLang.HolProg 64 :=
.seq RemovedBody157_195 RemovedBody157_196

def RemovedBody157_198 : StackLang.HolProg 64 :=
.seq RemovedBody157_194 RemovedBody157_197

def RemovedBody157_199 : StackLang.HolProg 64 :=
.seq RemovedBody157_66 RemovedBody157_198

def RemovedBody157_200 : StackLang.HolProg 64 :=
.seq RemovedBody157_65 RemovedBody157_199

def RemovedBody157_201 : StackLang.HolProg 64 :=
.seq RemovedBody157_64 RemovedBody157_200

def RemovedBody157_202 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody157_63 RemovedBody157_201

def RemovedBody157_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 140#64)

def RemovedBody157_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody157_208 : StackLang.HolProg 64 :=
.seq RemovedBody157_206 RemovedBody157_207

def RemovedBody157_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody157_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody157_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody157_212 : StackLang.HolProg 64 :=
.seq RemovedBody157_210 RemovedBody157_211

def RemovedBody157_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody157_212 RemovedBody157_213

def RemovedBody157_215 : StackLang.HolProg 64 :=
.seq RemovedBody157_209 RemovedBody157_214

def RemovedBody157_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody157_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody157_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 157 3

def RemovedBody157_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody157_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody157_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody157_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody157_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody157_225 : StackLang.HolProg 64 :=
.seq RemovedBody157_223 RemovedBody157_224

def RemovedBody157_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody157_227 : StackLang.HolProg 64 :=
.seq RemovedBody157_225 RemovedBody157_226

def RemovedBody157_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody157_229 : StackLang.HolProg 64 :=
.seq RemovedBody157_227 RemovedBody157_228

def RemovedBody157_230 : StackLang.HolProg 64 :=
.seq RemovedBody157_222 RemovedBody157_229

def RemovedBody157_231 : StackLang.HolProg 64 :=
.seq RemovedBody157_221 RemovedBody157_230

def RemovedBody157_232 : StackLang.HolProg 64 :=
.seq RemovedBody157_220 RemovedBody157_231

def RemovedBody157_233 : StackLang.HolProg 64 :=
.seq RemovedBody157_219 RemovedBody157_232

def RemovedBody157_234 : StackLang.HolProg 64 :=
.seq RemovedBody157_218 RemovedBody157_233

def RemovedBody157_235 : StackLang.HolProg 64 :=
.seq RemovedBody157_217 RemovedBody157_234

def RemovedBody157_236 : StackLang.HolProg 64 :=
.seq RemovedBody157_216 RemovedBody157_235

def RemovedBody157_237 : StackLang.HolProg 64 :=
.seq RemovedBody157_215 RemovedBody157_236

def RemovedBody157_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody157_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody157_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody157_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody157_245 : StackLang.HolProg 64 :=
.seq RemovedBody157_243 RemovedBody157_244

def RemovedBody157_246 : StackLang.HolProg 64 :=
.seq RemovedBody157_242 RemovedBody157_245

def RemovedBody157_247 : StackLang.HolProg 64 :=
.seq RemovedBody157_241 RemovedBody157_246

def RemovedBody157_248 : StackLang.HolProg 64 :=
.seq RemovedBody157_240 RemovedBody157_247

def RemovedBody157_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody157_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody157_251 : StackLang.HolProg 64 :=
.seq RemovedBody157_249 RemovedBody157_250

def RemovedBody157_252 : StackLang.HolProg 64 :=
.call (some (RemovedBody157_248, 0, 157, 2)) (Sum.inl 156) (some (RemovedBody157_251, 157, 3))

def RemovedBody157_253 : StackLang.HolProg 64 :=
.seq RemovedBody157_239 RemovedBody157_252

def RemovedBody157_254 : StackLang.HolProg 64 :=
.seq RemovedBody157_238 RemovedBody157_253

def RemovedBody157_255 : StackLang.HolProg 64 :=
.seq RemovedBody157_237 RemovedBody157_254

def RemovedBody157_256 : StackLang.HolProg 64 :=
.seq RemovedBody157_208 RemovedBody157_255

def RemovedBody157_257 : StackLang.HolProg 64 :=
.seq RemovedBody157_205 RemovedBody157_256

def RemovedBody157_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody157_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody157_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody157_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody157_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody157_263 : StackLang.HolProg 64 :=
.seq RemovedBody157_261 RemovedBody157_262

def RemovedBody157_264 : StackLang.HolProg 64 :=
.seq RemovedBody157_260 RemovedBody157_263

def RemovedBody157_265 : StackLang.HolProg 64 :=
.seq RemovedBody157_259 RemovedBody157_264

def RemovedBody157_266 : StackLang.HolProg 64 :=
.seq RemovedBody157_258 RemovedBody157_265

def RemovedBody157_267 : StackLang.HolProg 64 :=
.seq RemovedBody157_257 RemovedBody157_266

def RemovedBody157_268 : StackLang.HolProg 64 :=
.seq RemovedBody157_204 RemovedBody157_267

def RemovedBody157_269 : StackLang.HolProg 64 :=
.seq RemovedBody157_203 RemovedBody157_268

def RemovedBody157_270 : StackLang.HolProg 64 :=
.seq RemovedBody157_202 RemovedBody157_269

def RemovedBody157_271 : StackLang.HolProg 64 :=
.seq RemovedBody157_11 RemovedBody157_270

def RemovedBody157_272 : StackLang.HolProg 64 :=
.seq RemovedBody157_10 RemovedBody157_271

def RemovedBody157_273 : StackLang.HolProg 64 :=
.seq RemovedBody157_9 RemovedBody157_272

def RemovedBody157_274 : StackLang.HolProg 64 :=
.seq RemovedBody157_8 RemovedBody157_273

def RemovedBody157_275 : StackLang.HolProg 64 :=
.seq RemovedBody157_7 RemovedBody157_274

def RemovedBody157_276 : StackLang.HolProg 64 :=
.seq RemovedBody157_6 RemovedBody157_275

def Removed157 : Nat × StackLang.HolProg 64 := (157, RemovedBody157_276)
theorem Removed157_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc157 = Removed157 := by
  kernel_rfl
#print axioms Removed157_eq
end InitECandidate.Proofs.BackendStages
