import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed613
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody613_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody613_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody613_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody613_3 : StackLang.HolProg 64 :=
.seq NamedBody613_1 NamedBody613_2

def NamedBody613_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody613_3 NamedBody613_4

def NamedBody613_6 : StackLang.HolProg 64 :=
.seq NamedBody613_0 NamedBody613_5

def NamedBody613_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody613_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody613_9 : StackLang.HolProg 64 :=
.seq NamedBody613_7 NamedBody613_8

def NamedBody613_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody613_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody613_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody613_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody613_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody613_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody613_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody613_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551352#64))

def NamedBody613_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody613_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody613_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def NamedBody613_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody613_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody613_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody613_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 216#64)))

def NamedBody613_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody613_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody613_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody613_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody613_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody613_37 : StackLang.HolProg 64 :=
.seq NamedBody613_35 NamedBody613_36

def NamedBody613_38 : StackLang.HolProg 64 :=
.seq NamedBody613_34 NamedBody613_37

def NamedBody613_39 : StackLang.HolProg 64 :=
.seq NamedBody613_33 NamedBody613_38

def NamedBody613_40 : StackLang.HolProg 64 :=
.seq NamedBody613_32 NamedBody613_39

def NamedBody613_41 : StackLang.HolProg 64 :=
.seq NamedBody613_31 NamedBody613_40

def NamedBody613_42 : StackLang.HolProg 64 :=
.seq NamedBody613_30 NamedBody613_41

def NamedBody613_43 : StackLang.HolProg 64 :=
.seq NamedBody613_29 NamedBody613_42

def NamedBody613_44 : StackLang.HolProg 64 :=
.seq NamedBody613_28 NamedBody613_43

def NamedBody613_45 : StackLang.HolProg 64 :=
.seq NamedBody613_27 NamedBody613_44

def NamedBody613_46 : StackLang.HolProg 64 :=
.seq NamedBody613_26 NamedBody613_45

def NamedBody613_47 : StackLang.HolProg 64 :=
.seq NamedBody613_25 NamedBody613_46

def NamedBody613_48 : StackLang.HolProg 64 :=
.seq NamedBody613_24 NamedBody613_47

def NamedBody613_49 : StackLang.HolProg 64 :=
.seq NamedBody613_23 NamedBody613_48

def NamedBody613_50 : StackLang.HolProg 64 :=
.seq NamedBody613_22 NamedBody613_49

def NamedBody613_51 : StackLang.HolProg 64 :=
.seq NamedBody613_21 NamedBody613_50

def NamedBody613_52 : StackLang.HolProg 64 :=
.seq NamedBody613_20 NamedBody613_51

def NamedBody613_53 : StackLang.HolProg 64 :=
.seq NamedBody613_19 NamedBody613_52

def NamedBody613_54 : StackLang.HolProg 64 :=
.seq NamedBody613_18 NamedBody613_53

def NamedBody613_55 : StackLang.HolProg 64 :=
.seq NamedBody613_17 NamedBody613_54

def NamedBody613_56 : StackLang.HolProg 64 :=
.seq NamedBody613_16 NamedBody613_55

def NamedBody613_57 : StackLang.HolProg 64 :=
.seq NamedBody613_15 NamedBody613_56

def NamedBody613_58 : StackLang.HolProg 64 :=
.seq NamedBody613_14 NamedBody613_57

def NamedBody613_59 : StackLang.HolProg 64 :=
.seq NamedBody613_13 NamedBody613_58

def NamedBody613_60 : StackLang.HolProg 64 :=
.seq NamedBody613_12 NamedBody613_59

def NamedBody613_61 : StackLang.HolProg 64 :=
.seq NamedBody613_11 NamedBody613_60

def NamedBody613_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_63 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody613_61 NamedBody613_62

def NamedBody613_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody613_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody613_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody613_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody613_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody613_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody613_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 216#64))

def NamedBody613_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 144#64))

def NamedBody613_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody613_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody613_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody613_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody613_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody613_80 : StackLang.HolProg 64 :=
.seq NamedBody613_78 NamedBody613_79

def NamedBody613_81 : StackLang.HolProg 64 :=
.seq NamedBody613_77 NamedBody613_80

def NamedBody613_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2351#64)

def NamedBody613_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody613_85 : StackLang.HolProg 64 :=
.seq NamedBody613_83 NamedBody613_84

def NamedBody613_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody613_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody613_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody613_89 : StackLang.HolProg 64 :=
.seq NamedBody613_87 NamedBody613_88

def NamedBody613_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody613_89 NamedBody613_90

def NamedBody613_92 : StackLang.HolProg 64 :=
.seq NamedBody613_86 NamedBody613_91

def NamedBody613_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody613_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody613_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 613 3

def NamedBody613_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody613_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody613_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody613_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody613_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody613_102 : StackLang.HolProg 64 :=
.seq NamedBody613_100 NamedBody613_101

def NamedBody613_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody613_104 : StackLang.HolProg 64 :=
.seq NamedBody613_102 NamedBody613_103

def NamedBody613_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody613_106 : StackLang.HolProg 64 :=
.seq NamedBody613_104 NamedBody613_105

def NamedBody613_107 : StackLang.HolProg 64 :=
.seq NamedBody613_99 NamedBody613_106

def NamedBody613_108 : StackLang.HolProg 64 :=
.seq NamedBody613_98 NamedBody613_107

def NamedBody613_109 : StackLang.HolProg 64 :=
.seq NamedBody613_97 NamedBody613_108

def NamedBody613_110 : StackLang.HolProg 64 :=
.seq NamedBody613_96 NamedBody613_109

def NamedBody613_111 : StackLang.HolProg 64 :=
.seq NamedBody613_95 NamedBody613_110

def NamedBody613_112 : StackLang.HolProg 64 :=
.seq NamedBody613_94 NamedBody613_111

def NamedBody613_113 : StackLang.HolProg 64 :=
.seq NamedBody613_93 NamedBody613_112

def NamedBody613_114 : StackLang.HolProg 64 :=
.seq NamedBody613_92 NamedBody613_113

def NamedBody613_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody613_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody613_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody613_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody613_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody613_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody613_124 : StackLang.HolProg 64 :=
.seq NamedBody613_122 NamedBody613_123

def NamedBody613_125 : StackLang.HolProg 64 :=
.seq NamedBody613_121 NamedBody613_124

def NamedBody613_126 : StackLang.HolProg 64 :=
.seq NamedBody613_120 NamedBody613_125

def NamedBody613_127 : StackLang.HolProg 64 :=
.seq NamedBody613_119 NamedBody613_126

def NamedBody613_128 : StackLang.HolProg 64 :=
.seq NamedBody613_118 NamedBody613_127

def NamedBody613_129 : StackLang.HolProg 64 :=
.seq NamedBody613_117 NamedBody613_128

def NamedBody613_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody613_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody613_132 : StackLang.HolProg 64 :=
.seq NamedBody613_130 NamedBody613_131

def NamedBody613_133 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody613_134 : StackLang.HolProg 64 :=
.seq NamedBody613_132 NamedBody613_133

def NamedBody613_135 : StackLang.HolProg 64 :=
.call (some (NamedBody613_129, 1, 613, 2)) (Sum.inl 68) (some (NamedBody613_134, 613, 3))

def NamedBody613_136 : StackLang.HolProg 64 :=
.seq NamedBody613_116 NamedBody613_135

def NamedBody613_137 : StackLang.HolProg 64 :=
.seq NamedBody613_115 NamedBody613_136

def NamedBody613_138 : StackLang.HolProg 64 :=
.seq NamedBody613_114 NamedBody613_137

def NamedBody613_139 : StackLang.HolProg 64 :=
.seq NamedBody613_85 NamedBody613_138

def NamedBody613_140 : StackLang.HolProg 64 :=
.seq NamedBody613_82 NamedBody613_139

def NamedBody613_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody613_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody613_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody613_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody613_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody613_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def NamedBody613_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody613_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody613_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody613_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 216#64)))

def NamedBody613_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody613_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_155 : StackLang.HolProg 64 :=
.seq NamedBody613_153 NamedBody613_154

def NamedBody613_156 : StackLang.HolProg 64 :=
.seq NamedBody613_152 NamedBody613_155

def NamedBody613_157 : StackLang.HolProg 64 :=
.seq NamedBody613_151 NamedBody613_156

def NamedBody613_158 : StackLang.HolProg 64 :=
.seq NamedBody613_150 NamedBody613_157

def NamedBody613_159 : StackLang.HolProg 64 :=
.seq NamedBody613_149 NamedBody613_158

def NamedBody613_160 : StackLang.HolProg 64 :=
.seq NamedBody613_148 NamedBody613_159

def NamedBody613_161 : StackLang.HolProg 64 :=
.seq NamedBody613_147 NamedBody613_160

def NamedBody613_162 : StackLang.HolProg 64 :=
.seq NamedBody613_146 NamedBody613_161

def NamedBody613_163 : StackLang.HolProg 64 :=
.seq NamedBody613_145 NamedBody613_162

def NamedBody613_164 : StackLang.HolProg 64 :=
.seq NamedBody613_144 NamedBody613_163

def NamedBody613_165 : StackLang.HolProg 64 :=
.seq NamedBody613_143 NamedBody613_164

def NamedBody613_166 : StackLang.HolProg 64 :=
.seq NamedBody613_142 NamedBody613_165

def NamedBody613_167 : StackLang.HolProg 64 :=
.seq NamedBody613_141 NamedBody613_166

def NamedBody613_168 : StackLang.HolProg 64 :=
.seq NamedBody613_140 NamedBody613_167

def NamedBody613_169 : StackLang.HolProg 64 :=
.seq NamedBody613_81 NamedBody613_168

def NamedBody613_170 : StackLang.HolProg 64 :=
.seq NamedBody613_76 NamedBody613_169

def NamedBody613_171 : StackLang.HolProg 64 :=
.seq NamedBody613_75 NamedBody613_170

def NamedBody613_172 : StackLang.HolProg 64 :=
.seq NamedBody613_74 NamedBody613_171

def NamedBody613_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody613_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody613_175 : StackLang.HolProg 64 :=
.seq NamedBody613_173 NamedBody613_174

def NamedBody613_176 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody613_172 NamedBody613_175

def NamedBody613_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody613_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody613_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2352#64)

def NamedBody613_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody613_182 : StackLang.HolProg 64 :=
.seq NamedBody613_180 NamedBody613_181

def NamedBody613_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody613_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody613_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody613_186 : StackLang.HolProg 64 :=
.seq NamedBody613_184 NamedBody613_185

def NamedBody613_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_188 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody613_186 NamedBody613_187

def NamedBody613_189 : StackLang.HolProg 64 :=
.seq NamedBody613_183 NamedBody613_188

def NamedBody613_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody613_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody613_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 613 5

def NamedBody613_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody613_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody613_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody613_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody613_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody613_199 : StackLang.HolProg 64 :=
.seq NamedBody613_197 NamedBody613_198

def NamedBody613_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody613_201 : StackLang.HolProg 64 :=
.seq NamedBody613_199 NamedBody613_200

def NamedBody613_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody613_203 : StackLang.HolProg 64 :=
.seq NamedBody613_201 NamedBody613_202

def NamedBody613_204 : StackLang.HolProg 64 :=
.seq NamedBody613_196 NamedBody613_203

def NamedBody613_205 : StackLang.HolProg 64 :=
.seq NamedBody613_195 NamedBody613_204

def NamedBody613_206 : StackLang.HolProg 64 :=
.seq NamedBody613_194 NamedBody613_205

def NamedBody613_207 : StackLang.HolProg 64 :=
.seq NamedBody613_193 NamedBody613_206

def NamedBody613_208 : StackLang.HolProg 64 :=
.seq NamedBody613_192 NamedBody613_207

def NamedBody613_209 : StackLang.HolProg 64 :=
.seq NamedBody613_191 NamedBody613_208

def NamedBody613_210 : StackLang.HolProg 64 :=
.seq NamedBody613_190 NamedBody613_209

def NamedBody613_211 : StackLang.HolProg 64 :=
.seq NamedBody613_189 NamedBody613_210

def NamedBody613_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody613_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody613_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody613_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody613_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody613_220 : StackLang.HolProg 64 :=
.seq NamedBody613_218 NamedBody613_219

def NamedBody613_221 : StackLang.HolProg 64 :=
.seq NamedBody613_217 NamedBody613_220

def NamedBody613_222 : StackLang.HolProg 64 :=
.seq NamedBody613_216 NamedBody613_221

def NamedBody613_223 : StackLang.HolProg 64 :=
.seq NamedBody613_215 NamedBody613_222

def NamedBody613_224 : StackLang.HolProg 64 :=
.seq NamedBody613_214 NamedBody613_223

def NamedBody613_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody613_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody613_227 : StackLang.HolProg 64 :=
.seq NamedBody613_225 NamedBody613_226

def NamedBody613_228 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody613_229 : StackLang.HolProg 64 :=
.seq NamedBody613_227 NamedBody613_228

def NamedBody613_230 : StackLang.HolProg 64 :=
.call (some (NamedBody613_224, 1, 613, 4)) (Sum.inl 77) (some (NamedBody613_229, 613, 5))

def NamedBody613_231 : StackLang.HolProg 64 :=
.seq NamedBody613_213 NamedBody613_230

def NamedBody613_232 : StackLang.HolProg 64 :=
.seq NamedBody613_212 NamedBody613_231

def NamedBody613_233 : StackLang.HolProg 64 :=
.seq NamedBody613_211 NamedBody613_232

def NamedBody613_234 : StackLang.HolProg 64 :=
.seq NamedBody613_182 NamedBody613_233

def NamedBody613_235 : StackLang.HolProg 64 :=
.seq NamedBody613_179 NamedBody613_234

def NamedBody613_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody613_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody613_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody613_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody613_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody613_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def NamedBody613_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody613_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody613_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody613_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody613_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody613_248 : StackLang.HolProg 64 :=
.seq NamedBody613_246 NamedBody613_247

def NamedBody613_249 : StackLang.HolProg 64 :=
.seq NamedBody613_245 NamedBody613_248

def NamedBody613_250 : StackLang.HolProg 64 :=
.seq NamedBody613_244 NamedBody613_249

def NamedBody613_251 : StackLang.HolProg 64 :=
.seq NamedBody613_243 NamedBody613_250

def NamedBody613_252 : StackLang.HolProg 64 :=
.seq NamedBody613_242 NamedBody613_251

def NamedBody613_253 : StackLang.HolProg 64 :=
.seq NamedBody613_241 NamedBody613_252

def NamedBody613_254 : StackLang.HolProg 64 :=
.seq NamedBody613_240 NamedBody613_253

def NamedBody613_255 : StackLang.HolProg 64 :=
.seq NamedBody613_239 NamedBody613_254

def NamedBody613_256 : StackLang.HolProg 64 :=
.seq NamedBody613_238 NamedBody613_255

def NamedBody613_257 : StackLang.HolProg 64 :=
.seq NamedBody613_237 NamedBody613_256

def NamedBody613_258 : StackLang.HolProg 64 :=
.seq NamedBody613_236 NamedBody613_257

def NamedBody613_259 : StackLang.HolProg 64 :=
.seq NamedBody613_235 NamedBody613_258

def NamedBody613_260 : StackLang.HolProg 64 :=
.seq NamedBody613_178 NamedBody613_259

def NamedBody613_261 : StackLang.HolProg 64 :=
.seq NamedBody613_177 NamedBody613_260

def NamedBody613_262 : StackLang.HolProg 64 :=
.seq NamedBody613_176 NamedBody613_261

def NamedBody613_263 : StackLang.HolProg 64 :=
.seq NamedBody613_73 NamedBody613_262

def NamedBody613_264 : StackLang.HolProg 64 :=
.seq NamedBody613_72 NamedBody613_263

def NamedBody613_265 : StackLang.HolProg 64 :=
.seq NamedBody613_71 NamedBody613_264

def NamedBody613_266 : StackLang.HolProg 64 :=
.seq NamedBody613_70 NamedBody613_265

def NamedBody613_267 : StackLang.HolProg 64 :=
.seq NamedBody613_69 NamedBody613_266

def NamedBody613_268 : StackLang.HolProg 64 :=
.seq NamedBody613_68 NamedBody613_267

def NamedBody613_269 : StackLang.HolProg 64 :=
.seq NamedBody613_67 NamedBody613_268

def NamedBody613_270 : StackLang.HolProg 64 :=
.seq NamedBody613_66 NamedBody613_269

def NamedBody613_271 : StackLang.HolProg 64 :=
.seq NamedBody613_65 NamedBody613_270

def NamedBody613_272 : StackLang.HolProg 64 :=
.seq NamedBody613_64 NamedBody613_271

def NamedBody613_273 : StackLang.HolProg 64 :=
.seq NamedBody613_63 NamedBody613_272

def NamedBody613_274 : StackLang.HolProg 64 :=
.seq NamedBody613_10 NamedBody613_273

def NamedBody613_275 : StackLang.HolProg 64 :=
.seq NamedBody613_9 NamedBody613_274

def NamedBody613_276 : StackLang.HolProg 64 :=
.seq NamedBody613_6 NamedBody613_275

def Named613 : Nat × StackLang.HolProg 64 := (613, NamedBody613_276)
theorem Named613_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed613 = Named613 := by
  kernel_rfl
#print axioms Named613_eq
end InitECandidate.Proofs.BackendStages
