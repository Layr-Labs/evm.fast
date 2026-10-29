import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed557
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody557_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody557_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody557_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody557_3 : StackLang.HolProg 64 :=
.seq NamedBody557_1 NamedBody557_2

def NamedBody557_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody557_3 NamedBody557_4

def NamedBody557_6 : StackLang.HolProg 64 :=
.seq NamedBody557_0 NamedBody557_5

def NamedBody557_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody557_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody557_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1895#64)

def NamedBody557_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody557_13 : StackLang.HolProg 64 :=
.seq NamedBody557_11 NamedBody557_12

def NamedBody557_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody557_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody557_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody557_17 : StackLang.HolProg 64 :=
.seq NamedBody557_15 NamedBody557_16

def NamedBody557_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody557_17 NamedBody557_18

def NamedBody557_20 : StackLang.HolProg 64 :=
.seq NamedBody557_14 NamedBody557_19

def NamedBody557_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody557_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody557_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 557 3

def NamedBody557_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody557_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody557_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody557_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody557_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody557_30 : StackLang.HolProg 64 :=
.seq NamedBody557_28 NamedBody557_29

def NamedBody557_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody557_32 : StackLang.HolProg 64 :=
.seq NamedBody557_30 NamedBody557_31

def NamedBody557_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody557_34 : StackLang.HolProg 64 :=
.seq NamedBody557_32 NamedBody557_33

def NamedBody557_35 : StackLang.HolProg 64 :=
.seq NamedBody557_27 NamedBody557_34

def NamedBody557_36 : StackLang.HolProg 64 :=
.seq NamedBody557_26 NamedBody557_35

def NamedBody557_37 : StackLang.HolProg 64 :=
.seq NamedBody557_25 NamedBody557_36

def NamedBody557_38 : StackLang.HolProg 64 :=
.seq NamedBody557_24 NamedBody557_37

def NamedBody557_39 : StackLang.HolProg 64 :=
.seq NamedBody557_23 NamedBody557_38

def NamedBody557_40 : StackLang.HolProg 64 :=
.seq NamedBody557_22 NamedBody557_39

def NamedBody557_41 : StackLang.HolProg 64 :=
.seq NamedBody557_21 NamedBody557_40

def NamedBody557_42 : StackLang.HolProg 64 :=
.seq NamedBody557_20 NamedBody557_41

def NamedBody557_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody557_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody557_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody557_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_50 : StackLang.HolProg 64 :=
.seq NamedBody557_48 NamedBody557_49

def NamedBody557_51 : StackLang.HolProg 64 :=
.seq NamedBody557_47 NamedBody557_50

def NamedBody557_52 : StackLang.HolProg 64 :=
.seq NamedBody557_46 NamedBody557_51

def NamedBody557_53 : StackLang.HolProg 64 :=
.seq NamedBody557_45 NamedBody557_52

def NamedBody557_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody557_56 : StackLang.HolProg 64 :=
.seq NamedBody557_54 NamedBody557_55

def NamedBody557_57 : StackLang.HolProg 64 :=
.call (some (NamedBody557_53, 1, 557, 2)) (Sum.inl 470) (some (NamedBody557_56, 557, 3))

def NamedBody557_58 : StackLang.HolProg 64 :=
.seq NamedBody557_44 NamedBody557_57

def NamedBody557_59 : StackLang.HolProg 64 :=
.seq NamedBody557_43 NamedBody557_58

def NamedBody557_60 : StackLang.HolProg 64 :=
.seq NamedBody557_42 NamedBody557_59

def NamedBody557_61 : StackLang.HolProg 64 :=
.seq NamedBody557_13 NamedBody557_60

def NamedBody557_62 : StackLang.HolProg 64 :=
.seq NamedBody557_10 NamedBody557_61

def NamedBody557_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody557_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody557_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody557_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody557_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody557_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def NamedBody557_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def NamedBody557_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def NamedBody557_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def NamedBody557_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 80#64))

def NamedBody557_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1896#64)

def NamedBody557_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody557_80 : StackLang.HolProg 64 :=
.seq NamedBody557_78 NamedBody557_79

def NamedBody557_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody557_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody557_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody557_84 : StackLang.HolProg 64 :=
.seq NamedBody557_82 NamedBody557_83

def NamedBody557_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody557_84 NamedBody557_85

def NamedBody557_87 : StackLang.HolProg 64 :=
.seq NamedBody557_81 NamedBody557_86

def NamedBody557_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody557_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody557_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 557 5

def NamedBody557_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody557_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody557_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody557_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody557_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody557_97 : StackLang.HolProg 64 :=
.seq NamedBody557_95 NamedBody557_96

def NamedBody557_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody557_99 : StackLang.HolProg 64 :=
.seq NamedBody557_97 NamedBody557_98

def NamedBody557_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody557_101 : StackLang.HolProg 64 :=
.seq NamedBody557_99 NamedBody557_100

def NamedBody557_102 : StackLang.HolProg 64 :=
.seq NamedBody557_94 NamedBody557_101

def NamedBody557_103 : StackLang.HolProg 64 :=
.seq NamedBody557_93 NamedBody557_102

def NamedBody557_104 : StackLang.HolProg 64 :=
.seq NamedBody557_92 NamedBody557_103

def NamedBody557_105 : StackLang.HolProg 64 :=
.seq NamedBody557_91 NamedBody557_104

def NamedBody557_106 : StackLang.HolProg 64 :=
.seq NamedBody557_90 NamedBody557_105

def NamedBody557_107 : StackLang.HolProg 64 :=
.seq NamedBody557_89 NamedBody557_106

def NamedBody557_108 : StackLang.HolProg 64 :=
.seq NamedBody557_88 NamedBody557_107

def NamedBody557_109 : StackLang.HolProg 64 :=
.seq NamedBody557_87 NamedBody557_108

def NamedBody557_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody557_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody557_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody557_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_117 : StackLang.HolProg 64 :=
.seq NamedBody557_115 NamedBody557_116

def NamedBody557_118 : StackLang.HolProg 64 :=
.seq NamedBody557_114 NamedBody557_117

def NamedBody557_119 : StackLang.HolProg 64 :=
.seq NamedBody557_113 NamedBody557_118

def NamedBody557_120 : StackLang.HolProg 64 :=
.seq NamedBody557_112 NamedBody557_119

def NamedBody557_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_122 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody557_123 : StackLang.HolProg 64 :=
.seq NamedBody557_121 NamedBody557_122

def NamedBody557_124 : StackLang.HolProg 64 :=
.call (some (NamedBody557_120, 1, 557, 4)) (Sum.inl 476) (some (NamedBody557_123, 557, 5))

def NamedBody557_125 : StackLang.HolProg 64 :=
.seq NamedBody557_111 NamedBody557_124

def NamedBody557_126 : StackLang.HolProg 64 :=
.seq NamedBody557_110 NamedBody557_125

def NamedBody557_127 : StackLang.HolProg 64 :=
.seq NamedBody557_109 NamedBody557_126

def NamedBody557_128 : StackLang.HolProg 64 :=
.seq NamedBody557_80 NamedBody557_127

def NamedBody557_129 : StackLang.HolProg 64 :=
.seq NamedBody557_77 NamedBody557_128

def NamedBody557_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody557_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody557_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1897#64)

def NamedBody557_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody557_136 : StackLang.HolProg 64 :=
.seq NamedBody557_134 NamedBody557_135

def NamedBody557_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody557_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody557_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody557_140 : StackLang.HolProg 64 :=
.seq NamedBody557_138 NamedBody557_139

def NamedBody557_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_142 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody557_140 NamedBody557_141

def NamedBody557_143 : StackLang.HolProg 64 :=
.seq NamedBody557_137 NamedBody557_142

def NamedBody557_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody557_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody557_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 557 7

def NamedBody557_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody557_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody557_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody557_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody557_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody557_153 : StackLang.HolProg 64 :=
.seq NamedBody557_151 NamedBody557_152

def NamedBody557_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody557_155 : StackLang.HolProg 64 :=
.seq NamedBody557_153 NamedBody557_154

def NamedBody557_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody557_157 : StackLang.HolProg 64 :=
.seq NamedBody557_155 NamedBody557_156

def NamedBody557_158 : StackLang.HolProg 64 :=
.seq NamedBody557_150 NamedBody557_157

def NamedBody557_159 : StackLang.HolProg 64 :=
.seq NamedBody557_149 NamedBody557_158

def NamedBody557_160 : StackLang.HolProg 64 :=
.seq NamedBody557_148 NamedBody557_159

def NamedBody557_161 : StackLang.HolProg 64 :=
.seq NamedBody557_147 NamedBody557_160

def NamedBody557_162 : StackLang.HolProg 64 :=
.seq NamedBody557_146 NamedBody557_161

def NamedBody557_163 : StackLang.HolProg 64 :=
.seq NamedBody557_145 NamedBody557_162

def NamedBody557_164 : StackLang.HolProg 64 :=
.seq NamedBody557_144 NamedBody557_163

def NamedBody557_165 : StackLang.HolProg 64 :=
.seq NamedBody557_143 NamedBody557_164

def NamedBody557_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody557_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody557_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody557_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody557_173 : StackLang.HolProg 64 :=
.seq NamedBody557_171 NamedBody557_172

def NamedBody557_174 : StackLang.HolProg 64 :=
.seq NamedBody557_170 NamedBody557_173

def NamedBody557_175 : StackLang.HolProg 64 :=
.seq NamedBody557_169 NamedBody557_174

def NamedBody557_176 : StackLang.HolProg 64 :=
.seq NamedBody557_168 NamedBody557_175

def NamedBody557_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody557_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody557_179 : StackLang.HolProg 64 :=
.seq NamedBody557_177 NamedBody557_178

def NamedBody557_180 : StackLang.HolProg 64 :=
.call (some (NamedBody557_176, 1, 557, 6)) (Sum.inl 490) (some (NamedBody557_179, 557, 7))

def NamedBody557_181 : StackLang.HolProg 64 :=
.seq NamedBody557_167 NamedBody557_180

def NamedBody557_182 : StackLang.HolProg 64 :=
.seq NamedBody557_166 NamedBody557_181

def NamedBody557_183 : StackLang.HolProg 64 :=
.seq NamedBody557_165 NamedBody557_182

def NamedBody557_184 : StackLang.HolProg 64 :=
.seq NamedBody557_136 NamedBody557_183

def NamedBody557_185 : StackLang.HolProg 64 :=
.seq NamedBody557_133 NamedBody557_184

def NamedBody557_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody557_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody557_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody557_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody557_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody557_191 : StackLang.HolProg 64 :=
.seq NamedBody557_189 NamedBody557_190

def NamedBody557_192 : StackLang.HolProg 64 :=
.seq NamedBody557_188 NamedBody557_191

def NamedBody557_193 : StackLang.HolProg 64 :=
.seq NamedBody557_187 NamedBody557_192

def NamedBody557_194 : StackLang.HolProg 64 :=
.seq NamedBody557_186 NamedBody557_193

def NamedBody557_195 : StackLang.HolProg 64 :=
.seq NamedBody557_185 NamedBody557_194

def NamedBody557_196 : StackLang.HolProg 64 :=
.seq NamedBody557_132 NamedBody557_195

def NamedBody557_197 : StackLang.HolProg 64 :=
.seq NamedBody557_131 NamedBody557_196

def NamedBody557_198 : StackLang.HolProg 64 :=
.seq NamedBody557_130 NamedBody557_197

def NamedBody557_199 : StackLang.HolProg 64 :=
.seq NamedBody557_129 NamedBody557_198

def NamedBody557_200 : StackLang.HolProg 64 :=
.seq NamedBody557_76 NamedBody557_199

def NamedBody557_201 : StackLang.HolProg 64 :=
.seq NamedBody557_75 NamedBody557_200

def NamedBody557_202 : StackLang.HolProg 64 :=
.seq NamedBody557_74 NamedBody557_201

def NamedBody557_203 : StackLang.HolProg 64 :=
.seq NamedBody557_73 NamedBody557_202

def NamedBody557_204 : StackLang.HolProg 64 :=
.seq NamedBody557_72 NamedBody557_203

def NamedBody557_205 : StackLang.HolProg 64 :=
.seq NamedBody557_71 NamedBody557_204

def NamedBody557_206 : StackLang.HolProg 64 :=
.seq NamedBody557_70 NamedBody557_205

def NamedBody557_207 : StackLang.HolProg 64 :=
.seq NamedBody557_69 NamedBody557_206

def NamedBody557_208 : StackLang.HolProg 64 :=
.seq NamedBody557_68 NamedBody557_207

def NamedBody557_209 : StackLang.HolProg 64 :=
.seq NamedBody557_67 NamedBody557_208

def NamedBody557_210 : StackLang.HolProg 64 :=
.seq NamedBody557_66 NamedBody557_209

def NamedBody557_211 : StackLang.HolProg 64 :=
.seq NamedBody557_65 NamedBody557_210

def NamedBody557_212 : StackLang.HolProg 64 :=
.seq NamedBody557_64 NamedBody557_211

def NamedBody557_213 : StackLang.HolProg 64 :=
.seq NamedBody557_63 NamedBody557_212

def NamedBody557_214 : StackLang.HolProg 64 :=
.seq NamedBody557_62 NamedBody557_213

def NamedBody557_215 : StackLang.HolProg 64 :=
.seq NamedBody557_9 NamedBody557_214

def NamedBody557_216 : StackLang.HolProg 64 :=
.seq NamedBody557_8 NamedBody557_215

def NamedBody557_217 : StackLang.HolProg 64 :=
.seq NamedBody557_7 NamedBody557_216

def NamedBody557_218 : StackLang.HolProg 64 :=
.seq NamedBody557_6 NamedBody557_217

def Named557 : Nat × StackLang.HolProg 64 := (557, NamedBody557_218)
theorem Named557_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed557 = Named557 := by
  kernel_rfl
#print axioms Named557_eq
end InitECandidate.Proofs.BackendStages
