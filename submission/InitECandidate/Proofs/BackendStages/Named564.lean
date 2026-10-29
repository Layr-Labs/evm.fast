import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed564
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody564_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody564_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody564_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody564_3 : StackLang.HolProg 64 :=
.seq NamedBody564_1 NamedBody564_2

def NamedBody564_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody564_3 NamedBody564_4

def NamedBody564_6 : StackLang.HolProg 64 :=
.seq NamedBody564_0 NamedBody564_5

def NamedBody564_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody564_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody564_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1929#64)

def NamedBody564_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody564_13 : StackLang.HolProg 64 :=
.seq NamedBody564_11 NamedBody564_12

def NamedBody564_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody564_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody564_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody564_17 : StackLang.HolProg 64 :=
.seq NamedBody564_15 NamedBody564_16

def NamedBody564_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody564_17 NamedBody564_18

def NamedBody564_20 : StackLang.HolProg 64 :=
.seq NamedBody564_14 NamedBody564_19

def NamedBody564_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody564_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody564_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 564 3

def NamedBody564_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody564_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody564_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody564_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody564_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody564_30 : StackLang.HolProg 64 :=
.seq NamedBody564_28 NamedBody564_29

def NamedBody564_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody564_32 : StackLang.HolProg 64 :=
.seq NamedBody564_30 NamedBody564_31

def NamedBody564_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody564_34 : StackLang.HolProg 64 :=
.seq NamedBody564_32 NamedBody564_33

def NamedBody564_35 : StackLang.HolProg 64 :=
.seq NamedBody564_27 NamedBody564_34

def NamedBody564_36 : StackLang.HolProg 64 :=
.seq NamedBody564_26 NamedBody564_35

def NamedBody564_37 : StackLang.HolProg 64 :=
.seq NamedBody564_25 NamedBody564_36

def NamedBody564_38 : StackLang.HolProg 64 :=
.seq NamedBody564_24 NamedBody564_37

def NamedBody564_39 : StackLang.HolProg 64 :=
.seq NamedBody564_23 NamedBody564_38

def NamedBody564_40 : StackLang.HolProg 64 :=
.seq NamedBody564_22 NamedBody564_39

def NamedBody564_41 : StackLang.HolProg 64 :=
.seq NamedBody564_21 NamedBody564_40

def NamedBody564_42 : StackLang.HolProg 64 :=
.seq NamedBody564_20 NamedBody564_41

def NamedBody564_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody564_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody564_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody564_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_50 : StackLang.HolProg 64 :=
.seq NamedBody564_48 NamedBody564_49

def NamedBody564_51 : StackLang.HolProg 64 :=
.seq NamedBody564_47 NamedBody564_50

def NamedBody564_52 : StackLang.HolProg 64 :=
.seq NamedBody564_46 NamedBody564_51

def NamedBody564_53 : StackLang.HolProg 64 :=
.seq NamedBody564_45 NamedBody564_52

def NamedBody564_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody564_56 : StackLang.HolProg 64 :=
.seq NamedBody564_54 NamedBody564_55

def NamedBody564_57 : StackLang.HolProg 64 :=
.call (some (NamedBody564_53, 1, 564, 2)) (Sum.inl 470) (some (NamedBody564_56, 564, 3))

def NamedBody564_58 : StackLang.HolProg 64 :=
.seq NamedBody564_44 NamedBody564_57

def NamedBody564_59 : StackLang.HolProg 64 :=
.seq NamedBody564_43 NamedBody564_58

def NamedBody564_60 : StackLang.HolProg 64 :=
.seq NamedBody564_42 NamedBody564_59

def NamedBody564_61 : StackLang.HolProg 64 :=
.seq NamedBody564_13 NamedBody564_60

def NamedBody564_62 : StackLang.HolProg 64 :=
.seq NamedBody564_10 NamedBody564_61

def NamedBody564_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody564_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody564_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody564_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody564_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody564_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def NamedBody564_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody564_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody564_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def NamedBody564_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def NamedBody564_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def NamedBody564_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1930#64)

def NamedBody564_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody564_82 : StackLang.HolProg 64 :=
.seq NamedBody564_80 NamedBody564_81

def NamedBody564_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody564_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody564_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody564_86 : StackLang.HolProg 64 :=
.seq NamedBody564_84 NamedBody564_85

def NamedBody564_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody564_86 NamedBody564_87

def NamedBody564_89 : StackLang.HolProg 64 :=
.seq NamedBody564_83 NamedBody564_88

def NamedBody564_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody564_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody564_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 564 5

def NamedBody564_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody564_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody564_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody564_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody564_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody564_99 : StackLang.HolProg 64 :=
.seq NamedBody564_97 NamedBody564_98

def NamedBody564_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody564_101 : StackLang.HolProg 64 :=
.seq NamedBody564_99 NamedBody564_100

def NamedBody564_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody564_103 : StackLang.HolProg 64 :=
.seq NamedBody564_101 NamedBody564_102

def NamedBody564_104 : StackLang.HolProg 64 :=
.seq NamedBody564_96 NamedBody564_103

def NamedBody564_105 : StackLang.HolProg 64 :=
.seq NamedBody564_95 NamedBody564_104

def NamedBody564_106 : StackLang.HolProg 64 :=
.seq NamedBody564_94 NamedBody564_105

def NamedBody564_107 : StackLang.HolProg 64 :=
.seq NamedBody564_93 NamedBody564_106

def NamedBody564_108 : StackLang.HolProg 64 :=
.seq NamedBody564_92 NamedBody564_107

def NamedBody564_109 : StackLang.HolProg 64 :=
.seq NamedBody564_91 NamedBody564_108

def NamedBody564_110 : StackLang.HolProg 64 :=
.seq NamedBody564_90 NamedBody564_109

def NamedBody564_111 : StackLang.HolProg 64 :=
.seq NamedBody564_89 NamedBody564_110

def NamedBody564_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody564_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody564_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody564_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_119 : StackLang.HolProg 64 :=
.seq NamedBody564_117 NamedBody564_118

def NamedBody564_120 : StackLang.HolProg 64 :=
.seq NamedBody564_116 NamedBody564_119

def NamedBody564_121 : StackLang.HolProg 64 :=
.seq NamedBody564_115 NamedBody564_120

def NamedBody564_122 : StackLang.HolProg 64 :=
.seq NamedBody564_114 NamedBody564_121

def NamedBody564_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_124 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody564_125 : StackLang.HolProg 64 :=
.seq NamedBody564_123 NamedBody564_124

def NamedBody564_126 : StackLang.HolProg 64 :=
.call (some (NamedBody564_122, 1, 564, 4)) (Sum.inl 476) (some (NamedBody564_125, 564, 5))

def NamedBody564_127 : StackLang.HolProg 64 :=
.seq NamedBody564_113 NamedBody564_126

def NamedBody564_128 : StackLang.HolProg 64 :=
.seq NamedBody564_112 NamedBody564_127

def NamedBody564_129 : StackLang.HolProg 64 :=
.seq NamedBody564_111 NamedBody564_128

def NamedBody564_130 : StackLang.HolProg 64 :=
.seq NamedBody564_82 NamedBody564_129

def NamedBody564_131 : StackLang.HolProg 64 :=
.seq NamedBody564_79 NamedBody564_130

def NamedBody564_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody564_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody564_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1931#64)

def NamedBody564_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody564_138 : StackLang.HolProg 64 :=
.seq NamedBody564_136 NamedBody564_137

def NamedBody564_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody564_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody564_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody564_142 : StackLang.HolProg 64 :=
.seq NamedBody564_140 NamedBody564_141

def NamedBody564_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_144 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody564_142 NamedBody564_143

def NamedBody564_145 : StackLang.HolProg 64 :=
.seq NamedBody564_139 NamedBody564_144

def NamedBody564_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody564_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody564_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 564 7

def NamedBody564_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody564_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody564_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody564_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody564_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody564_155 : StackLang.HolProg 64 :=
.seq NamedBody564_153 NamedBody564_154

def NamedBody564_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody564_157 : StackLang.HolProg 64 :=
.seq NamedBody564_155 NamedBody564_156

def NamedBody564_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody564_159 : StackLang.HolProg 64 :=
.seq NamedBody564_157 NamedBody564_158

def NamedBody564_160 : StackLang.HolProg 64 :=
.seq NamedBody564_152 NamedBody564_159

def NamedBody564_161 : StackLang.HolProg 64 :=
.seq NamedBody564_151 NamedBody564_160

def NamedBody564_162 : StackLang.HolProg 64 :=
.seq NamedBody564_150 NamedBody564_161

def NamedBody564_163 : StackLang.HolProg 64 :=
.seq NamedBody564_149 NamedBody564_162

def NamedBody564_164 : StackLang.HolProg 64 :=
.seq NamedBody564_148 NamedBody564_163

def NamedBody564_165 : StackLang.HolProg 64 :=
.seq NamedBody564_147 NamedBody564_164

def NamedBody564_166 : StackLang.HolProg 64 :=
.seq NamedBody564_146 NamedBody564_165

def NamedBody564_167 : StackLang.HolProg 64 :=
.seq NamedBody564_145 NamedBody564_166

def NamedBody564_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody564_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody564_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody564_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody564_175 : StackLang.HolProg 64 :=
.seq NamedBody564_173 NamedBody564_174

def NamedBody564_176 : StackLang.HolProg 64 :=
.seq NamedBody564_172 NamedBody564_175

def NamedBody564_177 : StackLang.HolProg 64 :=
.seq NamedBody564_171 NamedBody564_176

def NamedBody564_178 : StackLang.HolProg 64 :=
.seq NamedBody564_170 NamedBody564_177

def NamedBody564_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody564_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody564_181 : StackLang.HolProg 64 :=
.seq NamedBody564_179 NamedBody564_180

def NamedBody564_182 : StackLang.HolProg 64 :=
.call (some (NamedBody564_178, 1, 564, 6)) (Sum.inl 490) (some (NamedBody564_181, 564, 7))

def NamedBody564_183 : StackLang.HolProg 64 :=
.seq NamedBody564_169 NamedBody564_182

def NamedBody564_184 : StackLang.HolProg 64 :=
.seq NamedBody564_168 NamedBody564_183

def NamedBody564_185 : StackLang.HolProg 64 :=
.seq NamedBody564_167 NamedBody564_184

def NamedBody564_186 : StackLang.HolProg 64 :=
.seq NamedBody564_138 NamedBody564_185

def NamedBody564_187 : StackLang.HolProg 64 :=
.seq NamedBody564_135 NamedBody564_186

def NamedBody564_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody564_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody564_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody564_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody564_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody564_193 : StackLang.HolProg 64 :=
.seq NamedBody564_191 NamedBody564_192

def NamedBody564_194 : StackLang.HolProg 64 :=
.seq NamedBody564_190 NamedBody564_193

def NamedBody564_195 : StackLang.HolProg 64 :=
.seq NamedBody564_189 NamedBody564_194

def NamedBody564_196 : StackLang.HolProg 64 :=
.seq NamedBody564_188 NamedBody564_195

def NamedBody564_197 : StackLang.HolProg 64 :=
.seq NamedBody564_187 NamedBody564_196

def NamedBody564_198 : StackLang.HolProg 64 :=
.seq NamedBody564_134 NamedBody564_197

def NamedBody564_199 : StackLang.HolProg 64 :=
.seq NamedBody564_133 NamedBody564_198

def NamedBody564_200 : StackLang.HolProg 64 :=
.seq NamedBody564_132 NamedBody564_199

def NamedBody564_201 : StackLang.HolProg 64 :=
.seq NamedBody564_131 NamedBody564_200

def NamedBody564_202 : StackLang.HolProg 64 :=
.seq NamedBody564_78 NamedBody564_201

def NamedBody564_203 : StackLang.HolProg 64 :=
.seq NamedBody564_77 NamedBody564_202

def NamedBody564_204 : StackLang.HolProg 64 :=
.seq NamedBody564_76 NamedBody564_203

def NamedBody564_205 : StackLang.HolProg 64 :=
.seq NamedBody564_75 NamedBody564_204

def NamedBody564_206 : StackLang.HolProg 64 :=
.seq NamedBody564_74 NamedBody564_205

def NamedBody564_207 : StackLang.HolProg 64 :=
.seq NamedBody564_73 NamedBody564_206

def NamedBody564_208 : StackLang.HolProg 64 :=
.seq NamedBody564_72 NamedBody564_207

def NamedBody564_209 : StackLang.HolProg 64 :=
.seq NamedBody564_71 NamedBody564_208

def NamedBody564_210 : StackLang.HolProg 64 :=
.seq NamedBody564_70 NamedBody564_209

def NamedBody564_211 : StackLang.HolProg 64 :=
.seq NamedBody564_69 NamedBody564_210

def NamedBody564_212 : StackLang.HolProg 64 :=
.seq NamedBody564_68 NamedBody564_211

def NamedBody564_213 : StackLang.HolProg 64 :=
.seq NamedBody564_67 NamedBody564_212

def NamedBody564_214 : StackLang.HolProg 64 :=
.seq NamedBody564_66 NamedBody564_213

def NamedBody564_215 : StackLang.HolProg 64 :=
.seq NamedBody564_65 NamedBody564_214

def NamedBody564_216 : StackLang.HolProg 64 :=
.seq NamedBody564_64 NamedBody564_215

def NamedBody564_217 : StackLang.HolProg 64 :=
.seq NamedBody564_63 NamedBody564_216

def NamedBody564_218 : StackLang.HolProg 64 :=
.seq NamedBody564_62 NamedBody564_217

def NamedBody564_219 : StackLang.HolProg 64 :=
.seq NamedBody564_9 NamedBody564_218

def NamedBody564_220 : StackLang.HolProg 64 :=
.seq NamedBody564_8 NamedBody564_219

def NamedBody564_221 : StackLang.HolProg 64 :=
.seq NamedBody564_7 NamedBody564_220

def NamedBody564_222 : StackLang.HolProg 64 :=
.seq NamedBody564_6 NamedBody564_221

def Named564 : Nat × StackLang.HolProg 64 := (564, NamedBody564_222)
theorem Named564_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed564 = Named564 := by
  kernel_rfl
#print axioms Named564_eq
end InitECandidate.Proofs.BackendStages
