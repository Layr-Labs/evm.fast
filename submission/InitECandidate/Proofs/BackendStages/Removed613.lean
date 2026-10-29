import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc613
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody613_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody613_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody613_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody613_3 : StackLang.HolProg 64 :=
.seq RemovedBody613_1 RemovedBody613_2

def RemovedBody613_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody613_3 RemovedBody613_4

def RemovedBody613_6 : StackLang.HolProg 64 :=
.seq RemovedBody613_0 RemovedBody613_5

def RemovedBody613_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody613_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody613_9 : StackLang.HolProg 64 :=
.seq RemovedBody613_7 RemovedBody613_8

def RemovedBody613_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody613_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody613_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody613_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody613_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody613_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody613_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def RemovedBody613_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551352#64))

def RemovedBody613_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody613_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody613_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def RemovedBody613_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody613_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody613_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody613_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 216#64)))

def RemovedBody613_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody613_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody613_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody613_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody613_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody613_37 : StackLang.HolProg 64 :=
.seq RemovedBody613_35 RemovedBody613_36

def RemovedBody613_38 : StackLang.HolProg 64 :=
.seq RemovedBody613_34 RemovedBody613_37

def RemovedBody613_39 : StackLang.HolProg 64 :=
.seq RemovedBody613_33 RemovedBody613_38

def RemovedBody613_40 : StackLang.HolProg 64 :=
.seq RemovedBody613_32 RemovedBody613_39

def RemovedBody613_41 : StackLang.HolProg 64 :=
.seq RemovedBody613_31 RemovedBody613_40

def RemovedBody613_42 : StackLang.HolProg 64 :=
.seq RemovedBody613_30 RemovedBody613_41

def RemovedBody613_43 : StackLang.HolProg 64 :=
.seq RemovedBody613_29 RemovedBody613_42

def RemovedBody613_44 : StackLang.HolProg 64 :=
.seq RemovedBody613_28 RemovedBody613_43

def RemovedBody613_45 : StackLang.HolProg 64 :=
.seq RemovedBody613_27 RemovedBody613_44

def RemovedBody613_46 : StackLang.HolProg 64 :=
.seq RemovedBody613_26 RemovedBody613_45

def RemovedBody613_47 : StackLang.HolProg 64 :=
.seq RemovedBody613_25 RemovedBody613_46

def RemovedBody613_48 : StackLang.HolProg 64 :=
.seq RemovedBody613_24 RemovedBody613_47

def RemovedBody613_49 : StackLang.HolProg 64 :=
.seq RemovedBody613_23 RemovedBody613_48

def RemovedBody613_50 : StackLang.HolProg 64 :=
.seq RemovedBody613_22 RemovedBody613_49

def RemovedBody613_51 : StackLang.HolProg 64 :=
.seq RemovedBody613_21 RemovedBody613_50

def RemovedBody613_52 : StackLang.HolProg 64 :=
.seq RemovedBody613_20 RemovedBody613_51

def RemovedBody613_53 : StackLang.HolProg 64 :=
.seq RemovedBody613_19 RemovedBody613_52

def RemovedBody613_54 : StackLang.HolProg 64 :=
.seq RemovedBody613_18 RemovedBody613_53

def RemovedBody613_55 : StackLang.HolProg 64 :=
.seq RemovedBody613_17 RemovedBody613_54

def RemovedBody613_56 : StackLang.HolProg 64 :=
.seq RemovedBody613_16 RemovedBody613_55

def RemovedBody613_57 : StackLang.HolProg 64 :=
.seq RemovedBody613_15 RemovedBody613_56

def RemovedBody613_58 : StackLang.HolProg 64 :=
.seq RemovedBody613_14 RemovedBody613_57

def RemovedBody613_59 : StackLang.HolProg 64 :=
.seq RemovedBody613_13 RemovedBody613_58

def RemovedBody613_60 : StackLang.HolProg 64 :=
.seq RemovedBody613_12 RemovedBody613_59

def RemovedBody613_61 : StackLang.HolProg 64 :=
.seq RemovedBody613_11 RemovedBody613_60

def RemovedBody613_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_63 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody613_61 RemovedBody613_62

def RemovedBody613_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody613_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody613_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody613_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody613_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody613_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody613_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 216#64))

def RemovedBody613_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 144#64))

def RemovedBody613_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody613_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody613_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody613_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody613_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody613_80 : StackLang.HolProg 64 :=
.seq RemovedBody613_78 RemovedBody613_79

def RemovedBody613_81 : StackLang.HolProg 64 :=
.seq RemovedBody613_77 RemovedBody613_80

def RemovedBody613_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2351#64)

def RemovedBody613_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody613_85 : StackLang.HolProg 64 :=
.seq RemovedBody613_83 RemovedBody613_84

def RemovedBody613_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody613_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody613_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody613_89 : StackLang.HolProg 64 :=
.seq RemovedBody613_87 RemovedBody613_88

def RemovedBody613_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody613_89 RemovedBody613_90

def RemovedBody613_92 : StackLang.HolProg 64 :=
.seq RemovedBody613_86 RemovedBody613_91

def RemovedBody613_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody613_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody613_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 613 3

def RemovedBody613_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody613_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody613_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody613_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody613_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody613_102 : StackLang.HolProg 64 :=
.seq RemovedBody613_100 RemovedBody613_101

def RemovedBody613_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody613_104 : StackLang.HolProg 64 :=
.seq RemovedBody613_102 RemovedBody613_103

def RemovedBody613_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody613_106 : StackLang.HolProg 64 :=
.seq RemovedBody613_104 RemovedBody613_105

def RemovedBody613_107 : StackLang.HolProg 64 :=
.seq RemovedBody613_99 RemovedBody613_106

def RemovedBody613_108 : StackLang.HolProg 64 :=
.seq RemovedBody613_98 RemovedBody613_107

def RemovedBody613_109 : StackLang.HolProg 64 :=
.seq RemovedBody613_97 RemovedBody613_108

def RemovedBody613_110 : StackLang.HolProg 64 :=
.seq RemovedBody613_96 RemovedBody613_109

def RemovedBody613_111 : StackLang.HolProg 64 :=
.seq RemovedBody613_95 RemovedBody613_110

def RemovedBody613_112 : StackLang.HolProg 64 :=
.seq RemovedBody613_94 RemovedBody613_111

def RemovedBody613_113 : StackLang.HolProg 64 :=
.seq RemovedBody613_93 RemovedBody613_112

def RemovedBody613_114 : StackLang.HolProg 64 :=
.seq RemovedBody613_92 RemovedBody613_113

def RemovedBody613_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody613_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody613_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody613_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody613_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody613_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody613_124 : StackLang.HolProg 64 :=
.seq RemovedBody613_122 RemovedBody613_123

def RemovedBody613_125 : StackLang.HolProg 64 :=
.seq RemovedBody613_121 RemovedBody613_124

def RemovedBody613_126 : StackLang.HolProg 64 :=
.seq RemovedBody613_120 RemovedBody613_125

def RemovedBody613_127 : StackLang.HolProg 64 :=
.seq RemovedBody613_119 RemovedBody613_126

def RemovedBody613_128 : StackLang.HolProg 64 :=
.seq RemovedBody613_118 RemovedBody613_127

def RemovedBody613_129 : StackLang.HolProg 64 :=
.seq RemovedBody613_117 RemovedBody613_128

def RemovedBody613_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody613_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody613_132 : StackLang.HolProg 64 :=
.seq RemovedBody613_130 RemovedBody613_131

def RemovedBody613_133 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody613_134 : StackLang.HolProg 64 :=
.seq RemovedBody613_132 RemovedBody613_133

def RemovedBody613_135 : StackLang.HolProg 64 :=
.call (some (RemovedBody613_129, 0, 613, 2)) (Sum.inl 68) (some (RemovedBody613_134, 613, 3))

def RemovedBody613_136 : StackLang.HolProg 64 :=
.seq RemovedBody613_116 RemovedBody613_135

def RemovedBody613_137 : StackLang.HolProg 64 :=
.seq RemovedBody613_115 RemovedBody613_136

def RemovedBody613_138 : StackLang.HolProg 64 :=
.seq RemovedBody613_114 RemovedBody613_137

def RemovedBody613_139 : StackLang.HolProg 64 :=
.seq RemovedBody613_85 RemovedBody613_138

def RemovedBody613_140 : StackLang.HolProg 64 :=
.seq RemovedBody613_82 RemovedBody613_139

def RemovedBody613_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody613_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody613_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody613_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody613_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody613_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def RemovedBody613_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody613_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody613_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody613_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 216#64)))

def RemovedBody613_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody613_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_155 : StackLang.HolProg 64 :=
.seq RemovedBody613_153 RemovedBody613_154

def RemovedBody613_156 : StackLang.HolProg 64 :=
.seq RemovedBody613_152 RemovedBody613_155

def RemovedBody613_157 : StackLang.HolProg 64 :=
.seq RemovedBody613_151 RemovedBody613_156

def RemovedBody613_158 : StackLang.HolProg 64 :=
.seq RemovedBody613_150 RemovedBody613_157

def RemovedBody613_159 : StackLang.HolProg 64 :=
.seq RemovedBody613_149 RemovedBody613_158

def RemovedBody613_160 : StackLang.HolProg 64 :=
.seq RemovedBody613_148 RemovedBody613_159

def RemovedBody613_161 : StackLang.HolProg 64 :=
.seq RemovedBody613_147 RemovedBody613_160

def RemovedBody613_162 : StackLang.HolProg 64 :=
.seq RemovedBody613_146 RemovedBody613_161

def RemovedBody613_163 : StackLang.HolProg 64 :=
.seq RemovedBody613_145 RemovedBody613_162

def RemovedBody613_164 : StackLang.HolProg 64 :=
.seq RemovedBody613_144 RemovedBody613_163

def RemovedBody613_165 : StackLang.HolProg 64 :=
.seq RemovedBody613_143 RemovedBody613_164

def RemovedBody613_166 : StackLang.HolProg 64 :=
.seq RemovedBody613_142 RemovedBody613_165

def RemovedBody613_167 : StackLang.HolProg 64 :=
.seq RemovedBody613_141 RemovedBody613_166

def RemovedBody613_168 : StackLang.HolProg 64 :=
.seq RemovedBody613_140 RemovedBody613_167

def RemovedBody613_169 : StackLang.HolProg 64 :=
.seq RemovedBody613_81 RemovedBody613_168

def RemovedBody613_170 : StackLang.HolProg 64 :=
.seq RemovedBody613_76 RemovedBody613_169

def RemovedBody613_171 : StackLang.HolProg 64 :=
.seq RemovedBody613_75 RemovedBody613_170

def RemovedBody613_172 : StackLang.HolProg 64 :=
.seq RemovedBody613_74 RemovedBody613_171

def RemovedBody613_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody613_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody613_175 : StackLang.HolProg 64 :=
.seq RemovedBody613_173 RemovedBody613_174

def RemovedBody613_176 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody613_172 RemovedBody613_175

def RemovedBody613_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody613_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody613_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2352#64)

def RemovedBody613_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody613_182 : StackLang.HolProg 64 :=
.seq RemovedBody613_180 RemovedBody613_181

def RemovedBody613_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody613_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody613_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody613_186 : StackLang.HolProg 64 :=
.seq RemovedBody613_184 RemovedBody613_185

def RemovedBody613_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_188 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody613_186 RemovedBody613_187

def RemovedBody613_189 : StackLang.HolProg 64 :=
.seq RemovedBody613_183 RemovedBody613_188

def RemovedBody613_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody613_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody613_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 613 5

def RemovedBody613_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody613_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody613_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody613_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody613_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody613_199 : StackLang.HolProg 64 :=
.seq RemovedBody613_197 RemovedBody613_198

def RemovedBody613_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody613_201 : StackLang.HolProg 64 :=
.seq RemovedBody613_199 RemovedBody613_200

def RemovedBody613_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody613_203 : StackLang.HolProg 64 :=
.seq RemovedBody613_201 RemovedBody613_202

def RemovedBody613_204 : StackLang.HolProg 64 :=
.seq RemovedBody613_196 RemovedBody613_203

def RemovedBody613_205 : StackLang.HolProg 64 :=
.seq RemovedBody613_195 RemovedBody613_204

def RemovedBody613_206 : StackLang.HolProg 64 :=
.seq RemovedBody613_194 RemovedBody613_205

def RemovedBody613_207 : StackLang.HolProg 64 :=
.seq RemovedBody613_193 RemovedBody613_206

def RemovedBody613_208 : StackLang.HolProg 64 :=
.seq RemovedBody613_192 RemovedBody613_207

def RemovedBody613_209 : StackLang.HolProg 64 :=
.seq RemovedBody613_191 RemovedBody613_208

def RemovedBody613_210 : StackLang.HolProg 64 :=
.seq RemovedBody613_190 RemovedBody613_209

def RemovedBody613_211 : StackLang.HolProg 64 :=
.seq RemovedBody613_189 RemovedBody613_210

def RemovedBody613_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody613_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody613_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody613_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody613_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody613_220 : StackLang.HolProg 64 :=
.seq RemovedBody613_218 RemovedBody613_219

def RemovedBody613_221 : StackLang.HolProg 64 :=
.seq RemovedBody613_217 RemovedBody613_220

def RemovedBody613_222 : StackLang.HolProg 64 :=
.seq RemovedBody613_216 RemovedBody613_221

def RemovedBody613_223 : StackLang.HolProg 64 :=
.seq RemovedBody613_215 RemovedBody613_222

def RemovedBody613_224 : StackLang.HolProg 64 :=
.seq RemovedBody613_214 RemovedBody613_223

def RemovedBody613_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody613_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody613_227 : StackLang.HolProg 64 :=
.seq RemovedBody613_225 RemovedBody613_226

def RemovedBody613_228 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody613_229 : StackLang.HolProg 64 :=
.seq RemovedBody613_227 RemovedBody613_228

def RemovedBody613_230 : StackLang.HolProg 64 :=
.call (some (RemovedBody613_224, 0, 613, 4)) (Sum.inl 77) (some (RemovedBody613_229, 613, 5))

def RemovedBody613_231 : StackLang.HolProg 64 :=
.seq RemovedBody613_213 RemovedBody613_230

def RemovedBody613_232 : StackLang.HolProg 64 :=
.seq RemovedBody613_212 RemovedBody613_231

def RemovedBody613_233 : StackLang.HolProg 64 :=
.seq RemovedBody613_211 RemovedBody613_232

def RemovedBody613_234 : StackLang.HolProg 64 :=
.seq RemovedBody613_182 RemovedBody613_233

def RemovedBody613_235 : StackLang.HolProg 64 :=
.seq RemovedBody613_179 RemovedBody613_234

def RemovedBody613_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody613_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody613_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody613_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody613_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody613_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def RemovedBody613_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody613_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody613_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody613_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody613_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody613_248 : StackLang.HolProg 64 :=
.seq RemovedBody613_246 RemovedBody613_247

def RemovedBody613_249 : StackLang.HolProg 64 :=
.seq RemovedBody613_245 RemovedBody613_248

def RemovedBody613_250 : StackLang.HolProg 64 :=
.seq RemovedBody613_244 RemovedBody613_249

def RemovedBody613_251 : StackLang.HolProg 64 :=
.seq RemovedBody613_243 RemovedBody613_250

def RemovedBody613_252 : StackLang.HolProg 64 :=
.seq RemovedBody613_242 RemovedBody613_251

def RemovedBody613_253 : StackLang.HolProg 64 :=
.seq RemovedBody613_241 RemovedBody613_252

def RemovedBody613_254 : StackLang.HolProg 64 :=
.seq RemovedBody613_240 RemovedBody613_253

def RemovedBody613_255 : StackLang.HolProg 64 :=
.seq RemovedBody613_239 RemovedBody613_254

def RemovedBody613_256 : StackLang.HolProg 64 :=
.seq RemovedBody613_238 RemovedBody613_255

def RemovedBody613_257 : StackLang.HolProg 64 :=
.seq RemovedBody613_237 RemovedBody613_256

def RemovedBody613_258 : StackLang.HolProg 64 :=
.seq RemovedBody613_236 RemovedBody613_257

def RemovedBody613_259 : StackLang.HolProg 64 :=
.seq RemovedBody613_235 RemovedBody613_258

def RemovedBody613_260 : StackLang.HolProg 64 :=
.seq RemovedBody613_178 RemovedBody613_259

def RemovedBody613_261 : StackLang.HolProg 64 :=
.seq RemovedBody613_177 RemovedBody613_260

def RemovedBody613_262 : StackLang.HolProg 64 :=
.seq RemovedBody613_176 RemovedBody613_261

def RemovedBody613_263 : StackLang.HolProg 64 :=
.seq RemovedBody613_73 RemovedBody613_262

def RemovedBody613_264 : StackLang.HolProg 64 :=
.seq RemovedBody613_72 RemovedBody613_263

def RemovedBody613_265 : StackLang.HolProg 64 :=
.seq RemovedBody613_71 RemovedBody613_264

def RemovedBody613_266 : StackLang.HolProg 64 :=
.seq RemovedBody613_70 RemovedBody613_265

def RemovedBody613_267 : StackLang.HolProg 64 :=
.seq RemovedBody613_69 RemovedBody613_266

def RemovedBody613_268 : StackLang.HolProg 64 :=
.seq RemovedBody613_68 RemovedBody613_267

def RemovedBody613_269 : StackLang.HolProg 64 :=
.seq RemovedBody613_67 RemovedBody613_268

def RemovedBody613_270 : StackLang.HolProg 64 :=
.seq RemovedBody613_66 RemovedBody613_269

def RemovedBody613_271 : StackLang.HolProg 64 :=
.seq RemovedBody613_65 RemovedBody613_270

def RemovedBody613_272 : StackLang.HolProg 64 :=
.seq RemovedBody613_64 RemovedBody613_271

def RemovedBody613_273 : StackLang.HolProg 64 :=
.seq RemovedBody613_63 RemovedBody613_272

def RemovedBody613_274 : StackLang.HolProg 64 :=
.seq RemovedBody613_10 RemovedBody613_273

def RemovedBody613_275 : StackLang.HolProg 64 :=
.seq RemovedBody613_9 RemovedBody613_274

def RemovedBody613_276 : StackLang.HolProg 64 :=
.seq RemovedBody613_6 RemovedBody613_275

def Removed613 : Nat × StackLang.HolProg 64 := (613, RemovedBody613_276)
theorem Removed613_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc613 = Removed613 := by
  kernel_rfl
#print axioms Removed613_eq
end InitECandidate.Proofs.BackendStages
