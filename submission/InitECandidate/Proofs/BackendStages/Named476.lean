import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed476
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody476_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody476_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody476_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody476_3 : StackLang.HolProg 64 :=
.seq NamedBody476_1 NamedBody476_2

def NamedBody476_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody476_3 NamedBody476_4

def NamedBody476_6 : StackLang.HolProg 64 :=
.seq NamedBody476_0 NamedBody476_5

def NamedBody476_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody476_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody476_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody476_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody476_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody476_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody476_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 232#64))

def NamedBody476_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1024#64)

def NamedBody476_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody476_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody476_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody476_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_25 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody476_26 : StackLang.HolProg 64 :=
.seq NamedBody476_24 NamedBody476_25

def NamedBody476_27 : StackLang.HolProg 64 :=
.seq NamedBody476_23 NamedBody476_26

def NamedBody476_28 : StackLang.HolProg 64 :=
.seq NamedBody476_22 NamedBody476_27

def NamedBody476_29 : StackLang.HolProg 64 :=
.seq NamedBody476_21 NamedBody476_28

def NamedBody476_30 : StackLang.HolProg 64 :=
.seq NamedBody476_20 NamedBody476_29

def NamedBody476_31 : StackLang.HolProg 64 :=
.seq NamedBody476_19 NamedBody476_30

def NamedBody476_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody476_31 NamedBody476_32

def NamedBody476_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody476_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1024#64)

def NamedBody476_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1024#64)

def NamedBody476_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_43 : StackLang.HolProg 64 :=
.seq NamedBody476_41 NamedBody476_42

def NamedBody476_44 : StackLang.HolProg 64 :=
.seq NamedBody476_40 NamedBody476_43

def NamedBody476_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_47 : StackLang.HolProg 64 :=
.seq NamedBody476_45 NamedBody476_46

def NamedBody476_48 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody476_44 NamedBody476_47

def NamedBody476_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody476_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody476_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody476_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody476_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody476_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody476_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody476_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody476_59 : StackLang.HolProg 64 :=
.seq NamedBody476_57 NamedBody476_58

def NamedBody476_60 : StackLang.HolProg 64 :=
.seq NamedBody476_56 NamedBody476_59

def NamedBody476_61 : StackLang.HolProg 64 :=
.seq NamedBody476_55 NamedBody476_60

def NamedBody476_62 : StackLang.HolProg 64 :=
.seq NamedBody476_54 NamedBody476_61

def NamedBody476_63 : StackLang.HolProg 64 :=
.seq NamedBody476_53 NamedBody476_62

def NamedBody476_64 : StackLang.HolProg 64 :=
.seq NamedBody476_52 NamedBody476_63

def NamedBody476_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1496#64)

def NamedBody476_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody476_68 : StackLang.HolProg 64 :=
.seq NamedBody476_66 NamedBody476_67

def NamedBody476_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody476_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody476_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody476_72 : StackLang.HolProg 64 :=
.seq NamedBody476_70 NamedBody476_71

def NamedBody476_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody476_72 NamedBody476_73

def NamedBody476_75 : StackLang.HolProg 64 :=
.seq NamedBody476_69 NamedBody476_74

def NamedBody476_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody476_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody476_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 476 3

def NamedBody476_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody476_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody476_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody476_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody476_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody476_85 : StackLang.HolProg 64 :=
.seq NamedBody476_83 NamedBody476_84

def NamedBody476_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody476_87 : StackLang.HolProg 64 :=
.seq NamedBody476_85 NamedBody476_86

def NamedBody476_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody476_89 : StackLang.HolProg 64 :=
.seq NamedBody476_87 NamedBody476_88

def NamedBody476_90 : StackLang.HolProg 64 :=
.seq NamedBody476_82 NamedBody476_89

def NamedBody476_91 : StackLang.HolProg 64 :=
.seq NamedBody476_81 NamedBody476_90

def NamedBody476_92 : StackLang.HolProg 64 :=
.seq NamedBody476_80 NamedBody476_91

def NamedBody476_93 : StackLang.HolProg 64 :=
.seq NamedBody476_79 NamedBody476_92

def NamedBody476_94 : StackLang.HolProg 64 :=
.seq NamedBody476_78 NamedBody476_93

def NamedBody476_95 : StackLang.HolProg 64 :=
.seq NamedBody476_77 NamedBody476_94

def NamedBody476_96 : StackLang.HolProg 64 :=
.seq NamedBody476_76 NamedBody476_95

def NamedBody476_97 : StackLang.HolProg 64 :=
.seq NamedBody476_75 NamedBody476_96

def NamedBody476_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody476_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody476_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody476_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody476_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody476_106 : StackLang.HolProg 64 :=
.seq NamedBody476_104 NamedBody476_105

def NamedBody476_107 : StackLang.HolProg 64 :=
.seq NamedBody476_103 NamedBody476_106

def NamedBody476_108 : StackLang.HolProg 64 :=
.seq NamedBody476_102 NamedBody476_107

def NamedBody476_109 : StackLang.HolProg 64 :=
.seq NamedBody476_101 NamedBody476_108

def NamedBody476_110 : StackLang.HolProg 64 :=
.seq NamedBody476_100 NamedBody476_109

def NamedBody476_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody476_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody476_113 : StackLang.HolProg 64 :=
.seq NamedBody476_111 NamedBody476_112

def NamedBody476_114 : StackLang.HolProg 64 :=
.call (some (NamedBody476_110, 1, 476, 2)) (Sum.inl 74) (some (NamedBody476_113, 476, 3))

def NamedBody476_115 : StackLang.HolProg 64 :=
.seq NamedBody476_99 NamedBody476_114

def NamedBody476_116 : StackLang.HolProg 64 :=
.seq NamedBody476_98 NamedBody476_115

def NamedBody476_117 : StackLang.HolProg 64 :=
.seq NamedBody476_97 NamedBody476_116

def NamedBody476_118 : StackLang.HolProg 64 :=
.seq NamedBody476_68 NamedBody476_117

def NamedBody476_119 : StackLang.HolProg 64 :=
.seq NamedBody476_65 NamedBody476_118

def NamedBody476_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody476_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody476_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody476_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody476_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody476_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody476_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody476_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody476_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody476_131 : StackLang.HolProg 64 :=
.seq NamedBody476_129 NamedBody476_130

def NamedBody476_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1497#64)

def NamedBody476_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody476_135 : StackLang.HolProg 64 :=
.seq NamedBody476_133 NamedBody476_134

def NamedBody476_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody476_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody476_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody476_139 : StackLang.HolProg 64 :=
.seq NamedBody476_137 NamedBody476_138

def NamedBody476_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_141 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody476_139 NamedBody476_140

def NamedBody476_142 : StackLang.HolProg 64 :=
.seq NamedBody476_136 NamedBody476_141

def NamedBody476_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody476_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody476_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 476 5

def NamedBody476_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody476_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody476_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody476_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody476_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody476_152 : StackLang.HolProg 64 :=
.seq NamedBody476_150 NamedBody476_151

def NamedBody476_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody476_154 : StackLang.HolProg 64 :=
.seq NamedBody476_152 NamedBody476_153

def NamedBody476_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody476_156 : StackLang.HolProg 64 :=
.seq NamedBody476_154 NamedBody476_155

def NamedBody476_157 : StackLang.HolProg 64 :=
.seq NamedBody476_149 NamedBody476_156

def NamedBody476_158 : StackLang.HolProg 64 :=
.seq NamedBody476_148 NamedBody476_157

def NamedBody476_159 : StackLang.HolProg 64 :=
.seq NamedBody476_147 NamedBody476_158

def NamedBody476_160 : StackLang.HolProg 64 :=
.seq NamedBody476_146 NamedBody476_159

def NamedBody476_161 : StackLang.HolProg 64 :=
.seq NamedBody476_145 NamedBody476_160

def NamedBody476_162 : StackLang.HolProg 64 :=
.seq NamedBody476_144 NamedBody476_161

def NamedBody476_163 : StackLang.HolProg 64 :=
.seq NamedBody476_143 NamedBody476_162

def NamedBody476_164 : StackLang.HolProg 64 :=
.seq NamedBody476_142 NamedBody476_163

def NamedBody476_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody476_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody476_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody476_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody476_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody476_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody476_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody476_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody476_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody476_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody476_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody476_179 : StackLang.HolProg 64 :=
.seq NamedBody476_177 NamedBody476_178

def NamedBody476_180 : StackLang.HolProg 64 :=
.seq NamedBody476_176 NamedBody476_179

def NamedBody476_181 : StackLang.HolProg 64 :=
.seq NamedBody476_175 NamedBody476_180

def NamedBody476_182 : StackLang.HolProg 64 :=
.seq NamedBody476_174 NamedBody476_181

def NamedBody476_183 : StackLang.HolProg 64 :=
.seq NamedBody476_173 NamedBody476_182

def NamedBody476_184 : StackLang.HolProg 64 :=
.seq NamedBody476_172 NamedBody476_183

def NamedBody476_185 : StackLang.HolProg 64 :=
.seq NamedBody476_171 NamedBody476_184

def NamedBody476_186 : StackLang.HolProg 64 :=
.seq NamedBody476_170 NamedBody476_185

def NamedBody476_187 : StackLang.HolProg 64 :=
.seq NamedBody476_169 NamedBody476_186

def NamedBody476_188 : StackLang.HolProg 64 :=
.seq NamedBody476_168 NamedBody476_187

def NamedBody476_189 : StackLang.HolProg 64 :=
.seq NamedBody476_167 NamedBody476_188

def NamedBody476_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody476_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody476_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody476_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody476_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody476_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody476_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody476_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody476_198 : StackLang.HolProg 64 :=
.seq NamedBody476_196 NamedBody476_197

def NamedBody476_199 : StackLang.HolProg 64 :=
.seq NamedBody476_195 NamedBody476_198

def NamedBody476_200 : StackLang.HolProg 64 :=
.seq NamedBody476_194 NamedBody476_199

def NamedBody476_201 : StackLang.HolProg 64 :=
.seq NamedBody476_193 NamedBody476_200

def NamedBody476_202 : StackLang.HolProg 64 :=
.seq NamedBody476_192 NamedBody476_201

def NamedBody476_203 : StackLang.HolProg 64 :=
.seq NamedBody476_191 NamedBody476_202

def NamedBody476_204 : StackLang.HolProg 64 :=
.seq NamedBody476_190 NamedBody476_203

def NamedBody476_205 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody476_206 : StackLang.HolProg 64 :=
.seq NamedBody476_204 NamedBody476_205

def NamedBody476_207 : StackLang.HolProg 64 :=
.call (some (NamedBody476_189, 1, 476, 4)) (Sum.inl 77) (some (NamedBody476_206, 476, 5))

def NamedBody476_208 : StackLang.HolProg 64 :=
.seq NamedBody476_166 NamedBody476_207

def NamedBody476_209 : StackLang.HolProg 64 :=
.seq NamedBody476_165 NamedBody476_208

def NamedBody476_210 : StackLang.HolProg 64 :=
.seq NamedBody476_164 NamedBody476_209

def NamedBody476_211 : StackLang.HolProg 64 :=
.seq NamedBody476_135 NamedBody476_210

def NamedBody476_212 : StackLang.HolProg 64 :=
.seq NamedBody476_132 NamedBody476_211

def NamedBody476_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody476_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody476_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody476_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody476_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody476_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def NamedBody476_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody476_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 232#64)))

def NamedBody476_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody476_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_227 : StackLang.HolProg 64 :=
.seq NamedBody476_225 NamedBody476_226

def NamedBody476_228 : StackLang.HolProg 64 :=
.seq NamedBody476_224 NamedBody476_227

def NamedBody476_229 : StackLang.HolProg 64 :=
.seq NamedBody476_223 NamedBody476_228

def NamedBody476_230 : StackLang.HolProg 64 :=
.seq NamedBody476_222 NamedBody476_229

def NamedBody476_231 : StackLang.HolProg 64 :=
.seq NamedBody476_221 NamedBody476_230

def NamedBody476_232 : StackLang.HolProg 64 :=
.seq NamedBody476_220 NamedBody476_231

def NamedBody476_233 : StackLang.HolProg 64 :=
.seq NamedBody476_219 NamedBody476_232

def NamedBody476_234 : StackLang.HolProg 64 :=
.seq NamedBody476_218 NamedBody476_233

def NamedBody476_235 : StackLang.HolProg 64 :=
.seq NamedBody476_217 NamedBody476_234

def NamedBody476_236 : StackLang.HolProg 64 :=
.seq NamedBody476_216 NamedBody476_235

def NamedBody476_237 : StackLang.HolProg 64 :=
.seq NamedBody476_215 NamedBody476_236

def NamedBody476_238 : StackLang.HolProg 64 :=
.seq NamedBody476_214 NamedBody476_237

def NamedBody476_239 : StackLang.HolProg 64 :=
.seq NamedBody476_213 NamedBody476_238

def NamedBody476_240 : StackLang.HolProg 64 :=
.seq NamedBody476_212 NamedBody476_239

def NamedBody476_241 : StackLang.HolProg 64 :=
.seq NamedBody476_131 NamedBody476_240

def NamedBody476_242 : StackLang.HolProg 64 :=
.seq NamedBody476_128 NamedBody476_241

def NamedBody476_243 : StackLang.HolProg 64 :=
.seq NamedBody476_127 NamedBody476_242

def NamedBody476_244 : StackLang.HolProg 64 :=
.seq NamedBody476_126 NamedBody476_243

def NamedBody476_245 : StackLang.HolProg 64 :=
.seq NamedBody476_125 NamedBody476_244

def NamedBody476_246 : StackLang.HolProg 64 :=
.seq NamedBody476_124 NamedBody476_245

def NamedBody476_247 : StackLang.HolProg 64 :=
.seq NamedBody476_123 NamedBody476_246

def NamedBody476_248 : StackLang.HolProg 64 :=
.seq NamedBody476_122 NamedBody476_247

def NamedBody476_249 : StackLang.HolProg 64 :=
.seq NamedBody476_121 NamedBody476_248

def NamedBody476_250 : StackLang.HolProg 64 :=
.seq NamedBody476_120 NamedBody476_249

def NamedBody476_251 : StackLang.HolProg 64 :=
.seq NamedBody476_119 NamedBody476_250

def NamedBody476_252 : StackLang.HolProg 64 :=
.seq NamedBody476_64 NamedBody476_251

def NamedBody476_253 : StackLang.HolProg 64 :=
.seq NamedBody476_51 NamedBody476_252

def NamedBody476_254 : StackLang.HolProg 64 :=
.seq NamedBody476_50 NamedBody476_253

def NamedBody476_255 : StackLang.HolProg 64 :=
.seq NamedBody476_49 NamedBody476_254

def NamedBody476_256 : StackLang.HolProg 64 :=
.seq NamedBody476_48 NamedBody476_255

def NamedBody476_257 : StackLang.HolProg 64 :=
.seq NamedBody476_39 NamedBody476_256

def NamedBody476_258 : StackLang.HolProg 64 :=
.seq NamedBody476_38 NamedBody476_257

def NamedBody476_259 : StackLang.HolProg 64 :=
.seq NamedBody476_37 NamedBody476_258

def NamedBody476_260 : StackLang.HolProg 64 :=
.seq NamedBody476_36 NamedBody476_259

def NamedBody476_261 : StackLang.HolProg 64 :=
.seq NamedBody476_35 NamedBody476_260

def NamedBody476_262 : StackLang.HolProg 64 :=
.seq NamedBody476_34 NamedBody476_261

def NamedBody476_263 : StackLang.HolProg 64 :=
.seq NamedBody476_33 NamedBody476_262

def NamedBody476_264 : StackLang.HolProg 64 :=
.seq NamedBody476_18 NamedBody476_263

def NamedBody476_265 : StackLang.HolProg 64 :=
.seq NamedBody476_17 NamedBody476_264

def NamedBody476_266 : StackLang.HolProg 64 :=
.seq NamedBody476_16 NamedBody476_265

def NamedBody476_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_269 : StackLang.HolProg 64 :=
.seq NamedBody476_267 NamedBody476_268

def NamedBody476_270 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody476_266 NamedBody476_269

def NamedBody476_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1024#64)

def NamedBody476_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody476_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody476_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody476_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_280 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody476_281 : StackLang.HolProg 64 :=
.seq NamedBody476_279 NamedBody476_280

def NamedBody476_282 : StackLang.HolProg 64 :=
.seq NamedBody476_278 NamedBody476_281

def NamedBody476_283 : StackLang.HolProg 64 :=
.seq NamedBody476_277 NamedBody476_282

def NamedBody476_284 : StackLang.HolProg 64 :=
.seq NamedBody476_276 NamedBody476_283

def NamedBody476_285 : StackLang.HolProg 64 :=
.seq NamedBody476_275 NamedBody476_284

def NamedBody476_286 : StackLang.HolProg 64 :=
.seq NamedBody476_274 NamedBody476_285

def NamedBody476_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_288 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody476_286 NamedBody476_287

def NamedBody476_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody476_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody476_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody476_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody476_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody476_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody476_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def NamedBody476_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody476_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody476_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 8#64))

def NamedBody476_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 16#64))

def NamedBody476_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def NamedBody476_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody476_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody476_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody476_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody476_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody476_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody476_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody476_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody476_318 : StackLang.HolProg 64 :=
.seq NamedBody476_316 NamedBody476_317

def NamedBody476_319 : StackLang.HolProg 64 :=
.seq NamedBody476_315 NamedBody476_318

def NamedBody476_320 : StackLang.HolProg 64 :=
.seq NamedBody476_314 NamedBody476_319

def NamedBody476_321 : StackLang.HolProg 64 :=
.seq NamedBody476_313 NamedBody476_320

def NamedBody476_322 : StackLang.HolProg 64 :=
.seq NamedBody476_312 NamedBody476_321

def NamedBody476_323 : StackLang.HolProg 64 :=
.seq NamedBody476_311 NamedBody476_322

def NamedBody476_324 : StackLang.HolProg 64 :=
.seq NamedBody476_310 NamedBody476_323

def NamedBody476_325 : StackLang.HolProg 64 :=
.seq NamedBody476_309 NamedBody476_324

def NamedBody476_326 : StackLang.HolProg 64 :=
.seq NamedBody476_308 NamedBody476_325

def NamedBody476_327 : StackLang.HolProg 64 :=
.seq NamedBody476_307 NamedBody476_326

def NamedBody476_328 : StackLang.HolProg 64 :=
.seq NamedBody476_306 NamedBody476_327

def NamedBody476_329 : StackLang.HolProg 64 :=
.seq NamedBody476_305 NamedBody476_328

def NamedBody476_330 : StackLang.HolProg 64 :=
.seq NamedBody476_304 NamedBody476_329

def NamedBody476_331 : StackLang.HolProg 64 :=
.seq NamedBody476_303 NamedBody476_330

def NamedBody476_332 : StackLang.HolProg 64 :=
.seq NamedBody476_302 NamedBody476_331

def NamedBody476_333 : StackLang.HolProg 64 :=
.seq NamedBody476_301 NamedBody476_332

def NamedBody476_334 : StackLang.HolProg 64 :=
.seq NamedBody476_300 NamedBody476_333

def NamedBody476_335 : StackLang.HolProg 64 :=
.seq NamedBody476_299 NamedBody476_334

def NamedBody476_336 : StackLang.HolProg 64 :=
.seq NamedBody476_298 NamedBody476_335

def NamedBody476_337 : StackLang.HolProg 64 :=
.seq NamedBody476_297 NamedBody476_336

def NamedBody476_338 : StackLang.HolProg 64 :=
.seq NamedBody476_296 NamedBody476_337

def NamedBody476_339 : StackLang.HolProg 64 :=
.seq NamedBody476_295 NamedBody476_338

def NamedBody476_340 : StackLang.HolProg 64 :=
.seq NamedBody476_294 NamedBody476_339

def NamedBody476_341 : StackLang.HolProg 64 :=
.seq NamedBody476_293 NamedBody476_340

def NamedBody476_342 : StackLang.HolProg 64 :=
.seq NamedBody476_292 NamedBody476_341

def NamedBody476_343 : StackLang.HolProg 64 :=
.seq NamedBody476_291 NamedBody476_342

def NamedBody476_344 : StackLang.HolProg 64 :=
.seq NamedBody476_290 NamedBody476_343

def NamedBody476_345 : StackLang.HolProg 64 :=
.seq NamedBody476_289 NamedBody476_344

def NamedBody476_346 : StackLang.HolProg 64 :=
.seq NamedBody476_288 NamedBody476_345

def NamedBody476_347 : StackLang.HolProg 64 :=
.seq NamedBody476_273 NamedBody476_346

def NamedBody476_348 : StackLang.HolProg 64 :=
.seq NamedBody476_272 NamedBody476_347

def NamedBody476_349 : StackLang.HolProg 64 :=
.seq NamedBody476_271 NamedBody476_348

def NamedBody476_350 : StackLang.HolProg 64 :=
.seq NamedBody476_270 NamedBody476_349

def NamedBody476_351 : StackLang.HolProg 64 :=
.seq NamedBody476_15 NamedBody476_350

def NamedBody476_352 : StackLang.HolProg 64 :=
.seq NamedBody476_14 NamedBody476_351

def NamedBody476_353 : StackLang.HolProg 64 :=
.seq NamedBody476_13 NamedBody476_352

def NamedBody476_354 : StackLang.HolProg 64 :=
.seq NamedBody476_12 NamedBody476_353

def NamedBody476_355 : StackLang.HolProg 64 :=
.seq NamedBody476_11 NamedBody476_354

def NamedBody476_356 : StackLang.HolProg 64 :=
.seq NamedBody476_10 NamedBody476_355

def NamedBody476_357 : StackLang.HolProg 64 :=
.seq NamedBody476_9 NamedBody476_356

def NamedBody476_358 : StackLang.HolProg 64 :=
.seq NamedBody476_8 NamedBody476_357

def NamedBody476_359 : StackLang.HolProg 64 :=
.seq NamedBody476_7 NamedBody476_358

def NamedBody476_360 : StackLang.HolProg 64 :=
.seq NamedBody476_6 NamedBody476_359

def Named476 : Nat × StackLang.HolProg 64 := (476, NamedBody476_360)
theorem Named476_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed476 = Named476 := by
  kernel_rfl
#print axioms Named476_eq
end InitECandidate.Proofs.BackendStages
