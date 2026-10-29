import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed710
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody710_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody710_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody710_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody710_3 : StackLang.HolProg 64 :=
.seq NamedBody710_1 NamedBody710_2

def NamedBody710_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody710_3 NamedBody710_4

def NamedBody710_6 : StackLang.HolProg 64 :=
.seq NamedBody710_0 NamedBody710_5

def NamedBody710_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody710_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3152#64)

def NamedBody710_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody710_11 : StackLang.HolProg 64 :=
.seq NamedBody710_9 NamedBody710_10

def NamedBody710_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody710_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody710_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody710_15 : StackLang.HolProg 64 :=
.seq NamedBody710_13 NamedBody710_14

def NamedBody710_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody710_15 NamedBody710_16

def NamedBody710_18 : StackLang.HolProg 64 :=
.seq NamedBody710_12 NamedBody710_17

def NamedBody710_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody710_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody710_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 710 3

def NamedBody710_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody710_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody710_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody710_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody710_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody710_28 : StackLang.HolProg 64 :=
.seq NamedBody710_26 NamedBody710_27

def NamedBody710_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody710_30 : StackLang.HolProg 64 :=
.seq NamedBody710_28 NamedBody710_29

def NamedBody710_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody710_32 : StackLang.HolProg 64 :=
.seq NamedBody710_30 NamedBody710_31

def NamedBody710_33 : StackLang.HolProg 64 :=
.seq NamedBody710_25 NamedBody710_32

def NamedBody710_34 : StackLang.HolProg 64 :=
.seq NamedBody710_24 NamedBody710_33

def NamedBody710_35 : StackLang.HolProg 64 :=
.seq NamedBody710_23 NamedBody710_34

def NamedBody710_36 : StackLang.HolProg 64 :=
.seq NamedBody710_22 NamedBody710_35

def NamedBody710_37 : StackLang.HolProg 64 :=
.seq NamedBody710_21 NamedBody710_36

def NamedBody710_38 : StackLang.HolProg 64 :=
.seq NamedBody710_20 NamedBody710_37

def NamedBody710_39 : StackLang.HolProg 64 :=
.seq NamedBody710_19 NamedBody710_38

def NamedBody710_40 : StackLang.HolProg 64 :=
.seq NamedBody710_18 NamedBody710_39

def NamedBody710_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody710_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody710_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody710_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody710_48 : StackLang.HolProg 64 :=
.seq NamedBody710_46 NamedBody710_47

def NamedBody710_49 : StackLang.HolProg 64 :=
.seq NamedBody710_45 NamedBody710_48

def NamedBody710_50 : StackLang.HolProg 64 :=
.seq NamedBody710_44 NamedBody710_49

def NamedBody710_51 : StackLang.HolProg 64 :=
.seq NamedBody710_43 NamedBody710_50

def NamedBody710_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody710_54 : StackLang.HolProg 64 :=
.seq NamedBody710_52 NamedBody710_53

def NamedBody710_55 : StackLang.HolProg 64 :=
.call (some (NamedBody710_51, 1, 710, 2)) (Sum.inl 708) (some (NamedBody710_54, 710, 3))

def NamedBody710_56 : StackLang.HolProg 64 :=
.seq NamedBody710_42 NamedBody710_55

def NamedBody710_57 : StackLang.HolProg 64 :=
.seq NamedBody710_41 NamedBody710_56

def NamedBody710_58 : StackLang.HolProg 64 :=
.seq NamedBody710_40 NamedBody710_57

def NamedBody710_59 : StackLang.HolProg 64 :=
.seq NamedBody710_11 NamedBody710_58

def NamedBody710_60 : StackLang.HolProg 64 :=
.seq NamedBody710_8 NamedBody710_59

def NamedBody710_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody710_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody710_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 1873798617647539866#64)

def NamedBody710_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 5412103778470702295#64)

def NamedBody710_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 7239337960414712511#64)

def NamedBody710_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7435674573564081700#64)

def NamedBody710_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2210141511517208575#64)

def NamedBody710_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13402431016077863595#64)

def NamedBody710_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody710_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody710_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody710_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody710_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody710_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody710_75 : StackLang.HolProg 64 :=
.seq NamedBody710_73 NamedBody710_74

def NamedBody710_76 : StackLang.HolProg 64 :=
.seq NamedBody710_72 NamedBody710_75

def NamedBody710_77 : StackLang.HolProg 64 :=
.seq NamedBody710_71 NamedBody710_76

def NamedBody710_78 : StackLang.HolProg 64 :=
.seq NamedBody710_70 NamedBody710_77

def NamedBody710_79 : StackLang.HolProg 64 :=
.seq NamedBody710_69 NamedBody710_78

def NamedBody710_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3153#64)

def NamedBody710_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody710_83 : StackLang.HolProg 64 :=
.seq NamedBody710_81 NamedBody710_82

def NamedBody710_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody710_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody710_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody710_87 : StackLang.HolProg 64 :=
.seq NamedBody710_85 NamedBody710_86

def NamedBody710_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_89 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody710_87 NamedBody710_88

def NamedBody710_90 : StackLang.HolProg 64 :=
.seq NamedBody710_84 NamedBody710_89

def NamedBody710_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody710_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody710_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 710 5

def NamedBody710_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody710_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody710_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody710_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody710_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody710_100 : StackLang.HolProg 64 :=
.seq NamedBody710_98 NamedBody710_99

def NamedBody710_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody710_102 : StackLang.HolProg 64 :=
.seq NamedBody710_100 NamedBody710_101

def NamedBody710_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody710_104 : StackLang.HolProg 64 :=
.seq NamedBody710_102 NamedBody710_103

def NamedBody710_105 : StackLang.HolProg 64 :=
.seq NamedBody710_97 NamedBody710_104

def NamedBody710_106 : StackLang.HolProg 64 :=
.seq NamedBody710_96 NamedBody710_105

def NamedBody710_107 : StackLang.HolProg 64 :=
.seq NamedBody710_95 NamedBody710_106

def NamedBody710_108 : StackLang.HolProg 64 :=
.seq NamedBody710_94 NamedBody710_107

def NamedBody710_109 : StackLang.HolProg 64 :=
.seq NamedBody710_93 NamedBody710_108

def NamedBody710_110 : StackLang.HolProg 64 :=
.seq NamedBody710_92 NamedBody710_109

def NamedBody710_111 : StackLang.HolProg 64 :=
.seq NamedBody710_91 NamedBody710_110

def NamedBody710_112 : StackLang.HolProg 64 :=
.seq NamedBody710_90 NamedBody710_111

def NamedBody710_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody710_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody710_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody710_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody710_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody710_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody710_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody710_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody710_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody710_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody710_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody710_127 : StackLang.HolProg 64 :=
.seq NamedBody710_125 NamedBody710_126

def NamedBody710_128 : StackLang.HolProg 64 :=
.seq NamedBody710_124 NamedBody710_127

def NamedBody710_129 : StackLang.HolProg 64 :=
.seq NamedBody710_123 NamedBody710_128

def NamedBody710_130 : StackLang.HolProg 64 :=
.seq NamedBody710_122 NamedBody710_129

def NamedBody710_131 : StackLang.HolProg 64 :=
.seq NamedBody710_121 NamedBody710_130

def NamedBody710_132 : StackLang.HolProg 64 :=
.seq NamedBody710_120 NamedBody710_131

def NamedBody710_133 : StackLang.HolProg 64 :=
.seq NamedBody710_119 NamedBody710_132

def NamedBody710_134 : StackLang.HolProg 64 :=
.seq NamedBody710_118 NamedBody710_133

def NamedBody710_135 : StackLang.HolProg 64 :=
.seq NamedBody710_117 NamedBody710_134

def NamedBody710_136 : StackLang.HolProg 64 :=
.seq NamedBody710_116 NamedBody710_135

def NamedBody710_137 : StackLang.HolProg 64 :=
.seq NamedBody710_115 NamedBody710_136

def NamedBody710_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody710_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody710_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody710_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody710_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody710_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody710_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody710_145 : StackLang.HolProg 64 :=
.seq NamedBody710_143 NamedBody710_144

def NamedBody710_146 : StackLang.HolProg 64 :=
.seq NamedBody710_142 NamedBody710_145

def NamedBody710_147 : StackLang.HolProg 64 :=
.seq NamedBody710_141 NamedBody710_146

def NamedBody710_148 : StackLang.HolProg 64 :=
.seq NamedBody710_140 NamedBody710_147

def NamedBody710_149 : StackLang.HolProg 64 :=
.seq NamedBody710_139 NamedBody710_148

def NamedBody710_150 : StackLang.HolProg 64 :=
.seq NamedBody710_138 NamedBody710_149

def NamedBody710_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody710_152 : StackLang.HolProg 64 :=
.seq NamedBody710_150 NamedBody710_151

def NamedBody710_153 : StackLang.HolProg 64 :=
.call (some (NamedBody710_137, 1, 710, 4)) (Sum.inl 709) (some (NamedBody710_152, 710, 5))

def NamedBody710_154 : StackLang.HolProg 64 :=
.seq NamedBody710_114 NamedBody710_153

def NamedBody710_155 : StackLang.HolProg 64 :=
.seq NamedBody710_113 NamedBody710_154

def NamedBody710_156 : StackLang.HolProg 64 :=
.seq NamedBody710_112 NamedBody710_155

def NamedBody710_157 : StackLang.HolProg 64 :=
.seq NamedBody710_83 NamedBody710_156

def NamedBody710_158 : StackLang.HolProg 64 :=
.seq NamedBody710_80 NamedBody710_157

def NamedBody710_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody710_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody710_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody710_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14)))

def NamedBody710_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody710_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody710_166 : StackLang.HolProg 64 :=
.seq NamedBody710_164 NamedBody710_165

def NamedBody710_167 : StackLang.HolProg 64 :=
.seq NamedBody710_163 NamedBody710_166

def NamedBody710_168 : StackLang.HolProg 64 :=
.seq NamedBody710_162 NamedBody710_167

def NamedBody710_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody710_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody710_168 NamedBody710_169

def NamedBody710_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody710_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody710_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody710_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody710_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody710_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody710_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 29
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 29)))

def NamedBody710_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 30
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 30)))

def NamedBody710_179 : StackLang.HolProg 64 :=
.seq NamedBody710_177 NamedBody710_178

def NamedBody710_180 : StackLang.HolProg 64 :=
.seq NamedBody710_176 NamedBody710_179

def NamedBody710_181 : StackLang.HolProg 64 :=
.seq NamedBody710_175 NamedBody710_180

def NamedBody710_182 : StackLang.HolProg 64 :=
.seq NamedBody710_174 NamedBody710_181

def NamedBody710_183 : StackLang.HolProg 64 :=
.seq NamedBody710_173 NamedBody710_182

def NamedBody710_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody710_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody710_186 : StackLang.HolProg 64 :=
.seq NamedBody710_184 NamedBody710_185

def NamedBody710_187 : StackLang.HolProg 64 :=
.seq NamedBody710_183 NamedBody710_186

def NamedBody710_188 : StackLang.HolProg 64 :=
.seq NamedBody710_172 NamedBody710_187

def NamedBody710_189 : StackLang.HolProg 64 :=
.seq NamedBody710_171 NamedBody710_188

def NamedBody710_190 : StackLang.HolProg 64 :=
.seq NamedBody710_170 NamedBody710_189

def NamedBody710_191 : StackLang.HolProg 64 :=
.seq NamedBody710_161 NamedBody710_190

def NamedBody710_192 : StackLang.HolProg 64 :=
.seq NamedBody710_160 NamedBody710_191

def NamedBody710_193 : StackLang.HolProg 64 :=
.seq NamedBody710_159 NamedBody710_192

def NamedBody710_194 : StackLang.HolProg 64 :=
.seq NamedBody710_158 NamedBody710_193

def NamedBody710_195 : StackLang.HolProg 64 :=
.seq NamedBody710_79 NamedBody710_194

def NamedBody710_196 : StackLang.HolProg 64 :=
.seq NamedBody710_68 NamedBody710_195

def NamedBody710_197 : StackLang.HolProg 64 :=
.seq NamedBody710_67 NamedBody710_196

def NamedBody710_198 : StackLang.HolProg 64 :=
.seq NamedBody710_66 NamedBody710_197

def NamedBody710_199 : StackLang.HolProg 64 :=
.seq NamedBody710_65 NamedBody710_198

def NamedBody710_200 : StackLang.HolProg 64 :=
.seq NamedBody710_64 NamedBody710_199

def NamedBody710_201 : StackLang.HolProg 64 :=
.seq NamedBody710_63 NamedBody710_200

def NamedBody710_202 : StackLang.HolProg 64 :=
.seq NamedBody710_62 NamedBody710_201

def NamedBody710_203 : StackLang.HolProg 64 :=
.seq NamedBody710_61 NamedBody710_202

def NamedBody710_204 : StackLang.HolProg 64 :=
.seq NamedBody710_60 NamedBody710_203

def NamedBody710_205 : StackLang.HolProg 64 :=
.seq NamedBody710_7 NamedBody710_204

def NamedBody710_206 : StackLang.HolProg 64 :=
.seq NamedBody710_6 NamedBody710_205

def Named710 : Nat × StackLang.HolProg 64 := (710, NamedBody710_206)
theorem Named710_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed710 = Named710 := by
  kernel_rfl
#print axioms Named710_eq
end InitECandidate.Proofs.BackendStages
