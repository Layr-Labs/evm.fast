import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed696
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody696_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def NamedBody696_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_3 : StackLang.HolProg 64 :=
.seq NamedBody696_1 NamedBody696_2

def NamedBody696_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_3 NamedBody696_4

def NamedBody696_6 : StackLang.HolProg 64 :=
.seq NamedBody696_0 NamedBody696_5

def NamedBody696_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody696_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody696_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 176#64))

def NamedBody696_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_12 : StackLang.HolProg 64 :=
.seq NamedBody696_10 NamedBody696_11

def NamedBody696_13 : StackLang.HolProg 64 :=
.seq NamedBody696_9 NamedBody696_12

def NamedBody696_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3043#64)

def NamedBody696_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_17 : StackLang.HolProg 64 :=
.seq NamedBody696_15 NamedBody696_16

def NamedBody696_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_21 : StackLang.HolProg 64 :=
.seq NamedBody696_19 NamedBody696_20

def NamedBody696_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_21 NamedBody696_22

def NamedBody696_24 : StackLang.HolProg 64 :=
.seq NamedBody696_18 NamedBody696_23

def NamedBody696_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 3

def NamedBody696_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_34 : StackLang.HolProg 64 :=
.seq NamedBody696_32 NamedBody696_33

def NamedBody696_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_36 : StackLang.HolProg 64 :=
.seq NamedBody696_34 NamedBody696_35

def NamedBody696_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_38 : StackLang.HolProg 64 :=
.seq NamedBody696_36 NamedBody696_37

def NamedBody696_39 : StackLang.HolProg 64 :=
.seq NamedBody696_31 NamedBody696_38

def NamedBody696_40 : StackLang.HolProg 64 :=
.seq NamedBody696_30 NamedBody696_39

def NamedBody696_41 : StackLang.HolProg 64 :=
.seq NamedBody696_29 NamedBody696_40

def NamedBody696_42 : StackLang.HolProg 64 :=
.seq NamedBody696_28 NamedBody696_41

def NamedBody696_43 : StackLang.HolProg 64 :=
.seq NamedBody696_27 NamedBody696_42

def NamedBody696_44 : StackLang.HolProg 64 :=
.seq NamedBody696_26 NamedBody696_43

def NamedBody696_45 : StackLang.HolProg 64 :=
.seq NamedBody696_25 NamedBody696_44

def NamedBody696_46 : StackLang.HolProg 64 :=
.seq NamedBody696_24 NamedBody696_45

def NamedBody696_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody696_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_56 : StackLang.HolProg 64 :=
.seq NamedBody696_54 NamedBody696_55

def NamedBody696_57 : StackLang.HolProg 64 :=
.seq NamedBody696_53 NamedBody696_56

def NamedBody696_58 : StackLang.HolProg 64 :=
.seq NamedBody696_52 NamedBody696_57

def NamedBody696_59 : StackLang.HolProg 64 :=
.seq NamedBody696_51 NamedBody696_58

def NamedBody696_60 : StackLang.HolProg 64 :=
.seq NamedBody696_50 NamedBody696_59

def NamedBody696_61 : StackLang.HolProg 64 :=
.seq NamedBody696_49 NamedBody696_60

def NamedBody696_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_64 : StackLang.HolProg 64 :=
.seq NamedBody696_62 NamedBody696_63

def NamedBody696_65 : StackLang.HolProg 64 :=
.call (some (NamedBody696_61, 1, 696, 2)) (Sum.inl 146) (some (NamedBody696_64, 696, 3))

def NamedBody696_66 : StackLang.HolProg 64 :=
.seq NamedBody696_48 NamedBody696_65

def NamedBody696_67 : StackLang.HolProg 64 :=
.seq NamedBody696_47 NamedBody696_66

def NamedBody696_68 : StackLang.HolProg 64 :=
.seq NamedBody696_46 NamedBody696_67

def NamedBody696_69 : StackLang.HolProg 64 :=
.seq NamedBody696_17 NamedBody696_68

def NamedBody696_70 : StackLang.HolProg 64 :=
.seq NamedBody696_14 NamedBody696_69

def NamedBody696_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody696_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody696_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody696_80 : StackLang.HolProg 64 :=
.seq NamedBody696_78 NamedBody696_79

def NamedBody696_81 : StackLang.HolProg 64 :=
.seq NamedBody696_77 NamedBody696_80

def NamedBody696_82 : StackLang.HolProg 64 :=
.seq NamedBody696_76 NamedBody696_81

def NamedBody696_83 : StackLang.HolProg 64 :=
.seq NamedBody696_75 NamedBody696_82

def NamedBody696_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3044#64)

def NamedBody696_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_87 : StackLang.HolProg 64 :=
.seq NamedBody696_85 NamedBody696_86

def NamedBody696_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_91 : StackLang.HolProg 64 :=
.seq NamedBody696_89 NamedBody696_90

def NamedBody696_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_91 NamedBody696_92

def NamedBody696_94 : StackLang.HolProg 64 :=
.seq NamedBody696_88 NamedBody696_93

def NamedBody696_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 5

def NamedBody696_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_104 : StackLang.HolProg 64 :=
.seq NamedBody696_102 NamedBody696_103

def NamedBody696_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_106 : StackLang.HolProg 64 :=
.seq NamedBody696_104 NamedBody696_105

def NamedBody696_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_108 : StackLang.HolProg 64 :=
.seq NamedBody696_106 NamedBody696_107

def NamedBody696_109 : StackLang.HolProg 64 :=
.seq NamedBody696_101 NamedBody696_108

def NamedBody696_110 : StackLang.HolProg 64 :=
.seq NamedBody696_100 NamedBody696_109

def NamedBody696_111 : StackLang.HolProg 64 :=
.seq NamedBody696_99 NamedBody696_110

def NamedBody696_112 : StackLang.HolProg 64 :=
.seq NamedBody696_98 NamedBody696_111

def NamedBody696_113 : StackLang.HolProg 64 :=
.seq NamedBody696_97 NamedBody696_112

def NamedBody696_114 : StackLang.HolProg 64 :=
.seq NamedBody696_96 NamedBody696_113

def NamedBody696_115 : StackLang.HolProg 64 :=
.seq NamedBody696_95 NamedBody696_114

def NamedBody696_116 : StackLang.HolProg 64 :=
.seq NamedBody696_94 NamedBody696_115

def NamedBody696_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody696_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_126 : StackLang.HolProg 64 :=
.seq NamedBody696_124 NamedBody696_125

def NamedBody696_127 : StackLang.HolProg 64 :=
.seq NamedBody696_123 NamedBody696_126

def NamedBody696_128 : StackLang.HolProg 64 :=
.seq NamedBody696_122 NamedBody696_127

def NamedBody696_129 : StackLang.HolProg 64 :=
.seq NamedBody696_121 NamedBody696_128

def NamedBody696_130 : StackLang.HolProg 64 :=
.seq NamedBody696_120 NamedBody696_129

def NamedBody696_131 : StackLang.HolProg 64 :=
.seq NamedBody696_119 NamedBody696_130

def NamedBody696_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_133 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_134 : StackLang.HolProg 64 :=
.seq NamedBody696_132 NamedBody696_133

def NamedBody696_135 : StackLang.HolProg 64 :=
.call (some (NamedBody696_131, 1, 696, 4)) (Sum.inl 146) (some (NamedBody696_134, 696, 5))

def NamedBody696_136 : StackLang.HolProg 64 :=
.seq NamedBody696_118 NamedBody696_135

def NamedBody696_137 : StackLang.HolProg 64 :=
.seq NamedBody696_117 NamedBody696_136

def NamedBody696_138 : StackLang.HolProg 64 :=
.seq NamedBody696_116 NamedBody696_137

def NamedBody696_139 : StackLang.HolProg 64 :=
.seq NamedBody696_87 NamedBody696_138

def NamedBody696_140 : StackLang.HolProg 64 :=
.seq NamedBody696_84 NamedBody696_139

def NamedBody696_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody696_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody696_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_150 : StackLang.HolProg 64 :=
.seq NamedBody696_148 NamedBody696_149

def NamedBody696_151 : StackLang.HolProg 64 :=
.seq NamedBody696_147 NamedBody696_150

def NamedBody696_152 : StackLang.HolProg 64 :=
.seq NamedBody696_146 NamedBody696_151

def NamedBody696_153 : StackLang.HolProg 64 :=
.seq NamedBody696_145 NamedBody696_152

def NamedBody696_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3045#64)

def NamedBody696_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_157 : StackLang.HolProg 64 :=
.seq NamedBody696_155 NamedBody696_156

def NamedBody696_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_161 : StackLang.HolProg 64 :=
.seq NamedBody696_159 NamedBody696_160

def NamedBody696_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_161 NamedBody696_162

def NamedBody696_164 : StackLang.HolProg 64 :=
.seq NamedBody696_158 NamedBody696_163

def NamedBody696_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 7

def NamedBody696_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_174 : StackLang.HolProg 64 :=
.seq NamedBody696_172 NamedBody696_173

def NamedBody696_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_176 : StackLang.HolProg 64 :=
.seq NamedBody696_174 NamedBody696_175

def NamedBody696_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_178 : StackLang.HolProg 64 :=
.seq NamedBody696_176 NamedBody696_177

def NamedBody696_179 : StackLang.HolProg 64 :=
.seq NamedBody696_171 NamedBody696_178

def NamedBody696_180 : StackLang.HolProg 64 :=
.seq NamedBody696_170 NamedBody696_179

def NamedBody696_181 : StackLang.HolProg 64 :=
.seq NamedBody696_169 NamedBody696_180

def NamedBody696_182 : StackLang.HolProg 64 :=
.seq NamedBody696_168 NamedBody696_181

def NamedBody696_183 : StackLang.HolProg 64 :=
.seq NamedBody696_167 NamedBody696_182

def NamedBody696_184 : StackLang.HolProg 64 :=
.seq NamedBody696_166 NamedBody696_183

def NamedBody696_185 : StackLang.HolProg 64 :=
.seq NamedBody696_165 NamedBody696_184

def NamedBody696_186 : StackLang.HolProg 64 :=
.seq NamedBody696_164 NamedBody696_185

def NamedBody696_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody696_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_196 : StackLang.HolProg 64 :=
.seq NamedBody696_194 NamedBody696_195

def NamedBody696_197 : StackLang.HolProg 64 :=
.seq NamedBody696_193 NamedBody696_196

def NamedBody696_198 : StackLang.HolProg 64 :=
.seq NamedBody696_192 NamedBody696_197

def NamedBody696_199 : StackLang.HolProg 64 :=
.seq NamedBody696_191 NamedBody696_198

def NamedBody696_200 : StackLang.HolProg 64 :=
.seq NamedBody696_190 NamedBody696_199

def NamedBody696_201 : StackLang.HolProg 64 :=
.seq NamedBody696_189 NamedBody696_200

def NamedBody696_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_203 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_204 : StackLang.HolProg 64 :=
.seq NamedBody696_202 NamedBody696_203

def NamedBody696_205 : StackLang.HolProg 64 :=
.call (some (NamedBody696_201, 1, 696, 6)) (Sum.inl 146) (some (NamedBody696_204, 696, 7))

def NamedBody696_206 : StackLang.HolProg 64 :=
.seq NamedBody696_188 NamedBody696_205

def NamedBody696_207 : StackLang.HolProg 64 :=
.seq NamedBody696_187 NamedBody696_206

def NamedBody696_208 : StackLang.HolProg 64 :=
.seq NamedBody696_186 NamedBody696_207

def NamedBody696_209 : StackLang.HolProg 64 :=
.seq NamedBody696_157 NamedBody696_208

def NamedBody696_210 : StackLang.HolProg 64 :=
.seq NamedBody696_154 NamedBody696_209

def NamedBody696_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody696_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody696_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody696_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody696_220 : StackLang.HolProg 64 :=
.seq NamedBody696_218 NamedBody696_219

def NamedBody696_221 : StackLang.HolProg 64 :=
.seq NamedBody696_217 NamedBody696_220

def NamedBody696_222 : StackLang.HolProg 64 :=
.seq NamedBody696_216 NamedBody696_221

def NamedBody696_223 : StackLang.HolProg 64 :=
.seq NamedBody696_215 NamedBody696_222

def NamedBody696_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3046#64)

def NamedBody696_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_227 : StackLang.HolProg 64 :=
.seq NamedBody696_225 NamedBody696_226

def NamedBody696_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_231 : StackLang.HolProg 64 :=
.seq NamedBody696_229 NamedBody696_230

def NamedBody696_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_233 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_231 NamedBody696_232

def NamedBody696_234 : StackLang.HolProg 64 :=
.seq NamedBody696_228 NamedBody696_233

def NamedBody696_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 9

def NamedBody696_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_244 : StackLang.HolProg 64 :=
.seq NamedBody696_242 NamedBody696_243

def NamedBody696_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_246 : StackLang.HolProg 64 :=
.seq NamedBody696_244 NamedBody696_245

def NamedBody696_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_248 : StackLang.HolProg 64 :=
.seq NamedBody696_246 NamedBody696_247

def NamedBody696_249 : StackLang.HolProg 64 :=
.seq NamedBody696_241 NamedBody696_248

def NamedBody696_250 : StackLang.HolProg 64 :=
.seq NamedBody696_240 NamedBody696_249

def NamedBody696_251 : StackLang.HolProg 64 :=
.seq NamedBody696_239 NamedBody696_250

def NamedBody696_252 : StackLang.HolProg 64 :=
.seq NamedBody696_238 NamedBody696_251

def NamedBody696_253 : StackLang.HolProg 64 :=
.seq NamedBody696_237 NamedBody696_252

def NamedBody696_254 : StackLang.HolProg 64 :=
.seq NamedBody696_236 NamedBody696_253

def NamedBody696_255 : StackLang.HolProg 64 :=
.seq NamedBody696_235 NamedBody696_254

def NamedBody696_256 : StackLang.HolProg 64 :=
.seq NamedBody696_234 NamedBody696_255

def NamedBody696_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody696_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody696_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody696_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_271 : StackLang.HolProg 64 :=
.seq NamedBody696_269 NamedBody696_270

def NamedBody696_272 : StackLang.HolProg 64 :=
.seq NamedBody696_268 NamedBody696_271

def NamedBody696_273 : StackLang.HolProg 64 :=
.seq NamedBody696_267 NamedBody696_272

def NamedBody696_274 : StackLang.HolProg 64 :=
.seq NamedBody696_266 NamedBody696_273

def NamedBody696_275 : StackLang.HolProg 64 :=
.seq NamedBody696_265 NamedBody696_274

def NamedBody696_276 : StackLang.HolProg 64 :=
.seq NamedBody696_264 NamedBody696_275

def NamedBody696_277 : StackLang.HolProg 64 :=
.seq NamedBody696_263 NamedBody696_276

def NamedBody696_278 : StackLang.HolProg 64 :=
.seq NamedBody696_262 NamedBody696_277

def NamedBody696_279 : StackLang.HolProg 64 :=
.seq NamedBody696_261 NamedBody696_278

def NamedBody696_280 : StackLang.HolProg 64 :=
.seq NamedBody696_260 NamedBody696_279

def NamedBody696_281 : StackLang.HolProg 64 :=
.seq NamedBody696_259 NamedBody696_280

def NamedBody696_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_286 : StackLang.HolProg 64 :=
.seq NamedBody696_284 NamedBody696_285

def NamedBody696_287 : StackLang.HolProg 64 :=
.seq NamedBody696_283 NamedBody696_286

def NamedBody696_288 : StackLang.HolProg 64 :=
.seq NamedBody696_282 NamedBody696_287

def NamedBody696_289 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_290 : StackLang.HolProg 64 :=
.seq NamedBody696_288 NamedBody696_289

def NamedBody696_291 : StackLang.HolProg 64 :=
.call (some (NamedBody696_281, 1, 696, 8)) (Sum.inl 146) (some (NamedBody696_290, 696, 9))

def NamedBody696_292 : StackLang.HolProg 64 :=
.seq NamedBody696_258 NamedBody696_291

def NamedBody696_293 : StackLang.HolProg 64 :=
.seq NamedBody696_257 NamedBody696_292

def NamedBody696_294 : StackLang.HolProg 64 :=
.seq NamedBody696_256 NamedBody696_293

def NamedBody696_295 : StackLang.HolProg 64 :=
.seq NamedBody696_227 NamedBody696_294

def NamedBody696_296 : StackLang.HolProg 64 :=
.seq NamedBody696_224 NamedBody696_295

def NamedBody696_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody696_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def NamedBody696_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def NamedBody696_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def NamedBody696_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def NamedBody696_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody696_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody696_311 : StackLang.HolProg 64 :=
.seq NamedBody696_309 NamedBody696_310

def NamedBody696_312 : StackLang.HolProg 64 :=
.seq NamedBody696_308 NamedBody696_311

def NamedBody696_313 : StackLang.HolProg 64 :=
.seq NamedBody696_307 NamedBody696_312

def NamedBody696_314 : StackLang.HolProg 64 :=
.seq NamedBody696_306 NamedBody696_313

def NamedBody696_315 : StackLang.HolProg 64 :=
.seq NamedBody696_305 NamedBody696_314

def NamedBody696_316 : StackLang.HolProg 64 :=
.seq NamedBody696_304 NamedBody696_315

def NamedBody696_317 : StackLang.HolProg 64 :=
.seq NamedBody696_303 NamedBody696_316

def NamedBody696_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3047#64)

def NamedBody696_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_321 : StackLang.HolProg 64 :=
.seq NamedBody696_319 NamedBody696_320

def NamedBody696_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_325 : StackLang.HolProg 64 :=
.seq NamedBody696_323 NamedBody696_324

def NamedBody696_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_327 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_325 NamedBody696_326

def NamedBody696_328 : StackLang.HolProg 64 :=
.seq NamedBody696_322 NamedBody696_327

def NamedBody696_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 11

def NamedBody696_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_338 : StackLang.HolProg 64 :=
.seq NamedBody696_336 NamedBody696_337

def NamedBody696_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_340 : StackLang.HolProg 64 :=
.seq NamedBody696_338 NamedBody696_339

def NamedBody696_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_342 : StackLang.HolProg 64 :=
.seq NamedBody696_340 NamedBody696_341

def NamedBody696_343 : StackLang.HolProg 64 :=
.seq NamedBody696_335 NamedBody696_342

def NamedBody696_344 : StackLang.HolProg 64 :=
.seq NamedBody696_334 NamedBody696_343

def NamedBody696_345 : StackLang.HolProg 64 :=
.seq NamedBody696_333 NamedBody696_344

def NamedBody696_346 : StackLang.HolProg 64 :=
.seq NamedBody696_332 NamedBody696_345

def NamedBody696_347 : StackLang.HolProg 64 :=
.seq NamedBody696_331 NamedBody696_346

def NamedBody696_348 : StackLang.HolProg 64 :=
.seq NamedBody696_330 NamedBody696_347

def NamedBody696_349 : StackLang.HolProg 64 :=
.seq NamedBody696_329 NamedBody696_348

def NamedBody696_350 : StackLang.HolProg 64 :=
.seq NamedBody696_328 NamedBody696_349

def NamedBody696_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_363 : StackLang.HolProg 64 :=
.seq NamedBody696_361 NamedBody696_362

def NamedBody696_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody696_365 : StackLang.HolProg 64 :=
.seq NamedBody696_363 NamedBody696_364

def NamedBody696_366 : StackLang.HolProg 64 :=
.seq NamedBody696_360 NamedBody696_365

def NamedBody696_367 : StackLang.HolProg 64 :=
.seq NamedBody696_359 NamedBody696_366

def NamedBody696_368 : StackLang.HolProg 64 :=
.seq NamedBody696_358 NamedBody696_367

def NamedBody696_369 : StackLang.HolProg 64 :=
.seq NamedBody696_357 NamedBody696_368

def NamedBody696_370 : StackLang.HolProg 64 :=
.seq NamedBody696_356 NamedBody696_369

def NamedBody696_371 : StackLang.HolProg 64 :=
.seq NamedBody696_355 NamedBody696_370

def NamedBody696_372 : StackLang.HolProg 64 :=
.seq NamedBody696_354 NamedBody696_371

def NamedBody696_373 : StackLang.HolProg 64 :=
.seq NamedBody696_353 NamedBody696_372

def NamedBody696_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_379 : StackLang.HolProg 64 :=
.seq NamedBody696_377 NamedBody696_378

def NamedBody696_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody696_381 : StackLang.HolProg 64 :=
.seq NamedBody696_379 NamedBody696_380

def NamedBody696_382 : StackLang.HolProg 64 :=
.seq NamedBody696_376 NamedBody696_381

def NamedBody696_383 : StackLang.HolProg 64 :=
.seq NamedBody696_375 NamedBody696_382

def NamedBody696_384 : StackLang.HolProg 64 :=
.seq NamedBody696_374 NamedBody696_383

def NamedBody696_385 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_386 : StackLang.HolProg 64 :=
.seq NamedBody696_384 NamedBody696_385

def NamedBody696_387 : StackLang.HolProg 64 :=
.call (some (NamedBody696_373, 1, 696, 10)) (Sum.inl 106) (some (NamedBody696_386, 696, 11))

def NamedBody696_388 : StackLang.HolProg 64 :=
.seq NamedBody696_352 NamedBody696_387

def NamedBody696_389 : StackLang.HolProg 64 :=
.seq NamedBody696_351 NamedBody696_388

def NamedBody696_390 : StackLang.HolProg 64 :=
.seq NamedBody696_350 NamedBody696_389

def NamedBody696_391 : StackLang.HolProg 64 :=
.seq NamedBody696_321 NamedBody696_390

def NamedBody696_392 : StackLang.HolProg 64 :=
.seq NamedBody696_318 NamedBody696_391

def NamedBody696_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody696_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def NamedBody696_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def NamedBody696_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def NamedBody696_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def NamedBody696_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody696_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_404 : StackLang.HolProg 64 :=
.seq NamedBody696_402 NamedBody696_403

def NamedBody696_405 : StackLang.HolProg 64 :=
.seq NamedBody696_401 NamedBody696_404

def NamedBody696_406 : StackLang.HolProg 64 :=
.seq NamedBody696_400 NamedBody696_405

def NamedBody696_407 : StackLang.HolProg 64 :=
.seq NamedBody696_399 NamedBody696_406

def NamedBody696_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3048#64)

def NamedBody696_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_411 : StackLang.HolProg 64 :=
.seq NamedBody696_409 NamedBody696_410

def NamedBody696_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_415 : StackLang.HolProg 64 :=
.seq NamedBody696_413 NamedBody696_414

def NamedBody696_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_417 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_415 NamedBody696_416

def NamedBody696_418 : StackLang.HolProg 64 :=
.seq NamedBody696_412 NamedBody696_417

def NamedBody696_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 13

def NamedBody696_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_428 : StackLang.HolProg 64 :=
.seq NamedBody696_426 NamedBody696_427

def NamedBody696_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_430 : StackLang.HolProg 64 :=
.seq NamedBody696_428 NamedBody696_429

def NamedBody696_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_432 : StackLang.HolProg 64 :=
.seq NamedBody696_430 NamedBody696_431

def NamedBody696_433 : StackLang.HolProg 64 :=
.seq NamedBody696_425 NamedBody696_432

def NamedBody696_434 : StackLang.HolProg 64 :=
.seq NamedBody696_424 NamedBody696_433

def NamedBody696_435 : StackLang.HolProg 64 :=
.seq NamedBody696_423 NamedBody696_434

def NamedBody696_436 : StackLang.HolProg 64 :=
.seq NamedBody696_422 NamedBody696_435

def NamedBody696_437 : StackLang.HolProg 64 :=
.seq NamedBody696_421 NamedBody696_436

def NamedBody696_438 : StackLang.HolProg 64 :=
.seq NamedBody696_420 NamedBody696_437

def NamedBody696_439 : StackLang.HolProg 64 :=
.seq NamedBody696_419 NamedBody696_438

def NamedBody696_440 : StackLang.HolProg 64 :=
.seq NamedBody696_418 NamedBody696_439

def NamedBody696_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody696_452 : StackLang.HolProg 64 :=
.seq NamedBody696_450 NamedBody696_451

def NamedBody696_453 : StackLang.HolProg 64 :=
.seq NamedBody696_449 NamedBody696_452

def NamedBody696_454 : StackLang.HolProg 64 :=
.seq NamedBody696_448 NamedBody696_453

def NamedBody696_455 : StackLang.HolProg 64 :=
.seq NamedBody696_447 NamedBody696_454

def NamedBody696_456 : StackLang.HolProg 64 :=
.seq NamedBody696_446 NamedBody696_455

def NamedBody696_457 : StackLang.HolProg 64 :=
.seq NamedBody696_445 NamedBody696_456

def NamedBody696_458 : StackLang.HolProg 64 :=
.seq NamedBody696_444 NamedBody696_457

def NamedBody696_459 : StackLang.HolProg 64 :=
.seq NamedBody696_443 NamedBody696_458

def NamedBody696_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody696_464 : StackLang.HolProg 64 :=
.seq NamedBody696_462 NamedBody696_463

def NamedBody696_465 : StackLang.HolProg 64 :=
.seq NamedBody696_461 NamedBody696_464

def NamedBody696_466 : StackLang.HolProg 64 :=
.seq NamedBody696_460 NamedBody696_465

def NamedBody696_467 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_468 : StackLang.HolProg 64 :=
.seq NamedBody696_466 NamedBody696_467

def NamedBody696_469 : StackLang.HolProg 64 :=
.call (some (NamedBody696_459, 1, 696, 12)) (Sum.inl 106) (some (NamedBody696_468, 696, 13))

def NamedBody696_470 : StackLang.HolProg 64 :=
.seq NamedBody696_442 NamedBody696_469

def NamedBody696_471 : StackLang.HolProg 64 :=
.seq NamedBody696_441 NamedBody696_470

def NamedBody696_472 : StackLang.HolProg 64 :=
.seq NamedBody696_440 NamedBody696_471

def NamedBody696_473 : StackLang.HolProg 64 :=
.seq NamedBody696_411 NamedBody696_472

def NamedBody696_474 : StackLang.HolProg 64 :=
.seq NamedBody696_408 NamedBody696_473

def NamedBody696_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody696_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def NamedBody696_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def NamedBody696_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def NamedBody696_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def NamedBody696_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody696_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody696_486 : StackLang.HolProg 64 :=
.seq NamedBody696_484 NamedBody696_485

def NamedBody696_487 : StackLang.HolProg 64 :=
.seq NamedBody696_483 NamedBody696_486

def NamedBody696_488 : StackLang.HolProg 64 :=
.seq NamedBody696_482 NamedBody696_487

def NamedBody696_489 : StackLang.HolProg 64 :=
.seq NamedBody696_481 NamedBody696_488

def NamedBody696_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3049#64)

def NamedBody696_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_493 : StackLang.HolProg 64 :=
.seq NamedBody696_491 NamedBody696_492

def NamedBody696_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_497 : StackLang.HolProg 64 :=
.seq NamedBody696_495 NamedBody696_496

def NamedBody696_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_499 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_497 NamedBody696_498

def NamedBody696_500 : StackLang.HolProg 64 :=
.seq NamedBody696_494 NamedBody696_499

def NamedBody696_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 15

def NamedBody696_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_510 : StackLang.HolProg 64 :=
.seq NamedBody696_508 NamedBody696_509

def NamedBody696_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_512 : StackLang.HolProg 64 :=
.seq NamedBody696_510 NamedBody696_511

def NamedBody696_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_514 : StackLang.HolProg 64 :=
.seq NamedBody696_512 NamedBody696_513

def NamedBody696_515 : StackLang.HolProg 64 :=
.seq NamedBody696_507 NamedBody696_514

def NamedBody696_516 : StackLang.HolProg 64 :=
.seq NamedBody696_506 NamedBody696_515

def NamedBody696_517 : StackLang.HolProg 64 :=
.seq NamedBody696_505 NamedBody696_516

def NamedBody696_518 : StackLang.HolProg 64 :=
.seq NamedBody696_504 NamedBody696_517

def NamedBody696_519 : StackLang.HolProg 64 :=
.seq NamedBody696_503 NamedBody696_518

def NamedBody696_520 : StackLang.HolProg 64 :=
.seq NamedBody696_502 NamedBody696_519

def NamedBody696_521 : StackLang.HolProg 64 :=
.seq NamedBody696_501 NamedBody696_520

def NamedBody696_522 : StackLang.HolProg 64 :=
.seq NamedBody696_500 NamedBody696_521

def NamedBody696_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody696_534 : StackLang.HolProg 64 :=
.seq NamedBody696_532 NamedBody696_533

def NamedBody696_535 : StackLang.HolProg 64 :=
.seq NamedBody696_531 NamedBody696_534

def NamedBody696_536 : StackLang.HolProg 64 :=
.seq NamedBody696_530 NamedBody696_535

def NamedBody696_537 : StackLang.HolProg 64 :=
.seq NamedBody696_529 NamedBody696_536

def NamedBody696_538 : StackLang.HolProg 64 :=
.seq NamedBody696_528 NamedBody696_537

def NamedBody696_539 : StackLang.HolProg 64 :=
.seq NamedBody696_527 NamedBody696_538

def NamedBody696_540 : StackLang.HolProg 64 :=
.seq NamedBody696_526 NamedBody696_539

def NamedBody696_541 : StackLang.HolProg 64 :=
.seq NamedBody696_525 NamedBody696_540

def NamedBody696_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody696_546 : StackLang.HolProg 64 :=
.seq NamedBody696_544 NamedBody696_545

def NamedBody696_547 : StackLang.HolProg 64 :=
.seq NamedBody696_543 NamedBody696_546

def NamedBody696_548 : StackLang.HolProg 64 :=
.seq NamedBody696_542 NamedBody696_547

def NamedBody696_549 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_550 : StackLang.HolProg 64 :=
.seq NamedBody696_548 NamedBody696_549

def NamedBody696_551 : StackLang.HolProg 64 :=
.call (some (NamedBody696_541, 1, 696, 14)) (Sum.inl 106) (some (NamedBody696_550, 696, 15))

def NamedBody696_552 : StackLang.HolProg 64 :=
.seq NamedBody696_524 NamedBody696_551

def NamedBody696_553 : StackLang.HolProg 64 :=
.seq NamedBody696_523 NamedBody696_552

def NamedBody696_554 : StackLang.HolProg 64 :=
.seq NamedBody696_522 NamedBody696_553

def NamedBody696_555 : StackLang.HolProg 64 :=
.seq NamedBody696_493 NamedBody696_554

def NamedBody696_556 : StackLang.HolProg 64 :=
.seq NamedBody696_490 NamedBody696_555

def NamedBody696_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody696_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def NamedBody696_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def NamedBody696_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def NamedBody696_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def NamedBody696_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody696_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_568 : StackLang.HolProg 64 :=
.seq NamedBody696_566 NamedBody696_567

def NamedBody696_569 : StackLang.HolProg 64 :=
.seq NamedBody696_565 NamedBody696_568

def NamedBody696_570 : StackLang.HolProg 64 :=
.seq NamedBody696_564 NamedBody696_569

def NamedBody696_571 : StackLang.HolProg 64 :=
.seq NamedBody696_563 NamedBody696_570

def NamedBody696_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3050#64)

def NamedBody696_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_575 : StackLang.HolProg 64 :=
.seq NamedBody696_573 NamedBody696_574

def NamedBody696_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_579 : StackLang.HolProg 64 :=
.seq NamedBody696_577 NamedBody696_578

def NamedBody696_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_581 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_579 NamedBody696_580

def NamedBody696_582 : StackLang.HolProg 64 :=
.seq NamedBody696_576 NamedBody696_581

def NamedBody696_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 17

def NamedBody696_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_592 : StackLang.HolProg 64 :=
.seq NamedBody696_590 NamedBody696_591

def NamedBody696_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_594 : StackLang.HolProg 64 :=
.seq NamedBody696_592 NamedBody696_593

def NamedBody696_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_596 : StackLang.HolProg 64 :=
.seq NamedBody696_594 NamedBody696_595

def NamedBody696_597 : StackLang.HolProg 64 :=
.seq NamedBody696_589 NamedBody696_596

def NamedBody696_598 : StackLang.HolProg 64 :=
.seq NamedBody696_588 NamedBody696_597

def NamedBody696_599 : StackLang.HolProg 64 :=
.seq NamedBody696_587 NamedBody696_598

def NamedBody696_600 : StackLang.HolProg 64 :=
.seq NamedBody696_586 NamedBody696_599

def NamedBody696_601 : StackLang.HolProg 64 :=
.seq NamedBody696_585 NamedBody696_600

def NamedBody696_602 : StackLang.HolProg 64 :=
.seq NamedBody696_584 NamedBody696_601

def NamedBody696_603 : StackLang.HolProg 64 :=
.seq NamedBody696_583 NamedBody696_602

def NamedBody696_604 : StackLang.HolProg 64 :=
.seq NamedBody696_582 NamedBody696_603

def NamedBody696_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 176#64))

def NamedBody696_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_616 : StackLang.HolProg 64 :=
.seq NamedBody696_614 NamedBody696_615

def NamedBody696_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_619 : StackLang.HolProg 64 :=
.seq NamedBody696_617 NamedBody696_618

def NamedBody696_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_622 : StackLang.HolProg 64 :=
.seq NamedBody696_620 NamedBody696_621

def NamedBody696_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_625 : StackLang.HolProg 64 :=
.seq NamedBody696_623 NamedBody696_624

def NamedBody696_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_628 : StackLang.HolProg 64 :=
.seq NamedBody696_626 NamedBody696_627

def NamedBody696_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_631 : StackLang.HolProg 64 :=
.seq NamedBody696_629 NamedBody696_630

def NamedBody696_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_634 : StackLang.HolProg 64 :=
.seq NamedBody696_632 NamedBody696_633

def NamedBody696_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_637 : StackLang.HolProg 64 :=
.seq NamedBody696_635 NamedBody696_636

def NamedBody696_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_640 : StackLang.HolProg 64 :=
.seq NamedBody696_638 NamedBody696_639

def NamedBody696_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_643 : StackLang.HolProg 64 :=
.seq NamedBody696_641 NamedBody696_642

def NamedBody696_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody696_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody696_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_647 : StackLang.HolProg 64 :=
.seq NamedBody696_645 NamedBody696_646

def NamedBody696_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody696_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody696_650 : StackLang.HolProg 64 :=
.seq NamedBody696_648 NamedBody696_649

def NamedBody696_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody696_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody696_653 : StackLang.HolProg 64 :=
.seq NamedBody696_651 NamedBody696_652

def NamedBody696_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody696_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody696_656 : StackLang.HolProg 64 :=
.seq NamedBody696_654 NamedBody696_655

def NamedBody696_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody696_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody696_660 : StackLang.HolProg 64 :=
.seq NamedBody696_658 NamedBody696_659

def NamedBody696_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_662 : StackLang.HolProg 64 :=
.seq NamedBody696_660 NamedBody696_661

def NamedBody696_663 : StackLang.HolProg 64 :=
.seq NamedBody696_657 NamedBody696_662

def NamedBody696_664 : StackLang.HolProg 64 :=
.seq NamedBody696_656 NamedBody696_663

def NamedBody696_665 : StackLang.HolProg 64 :=
.seq NamedBody696_653 NamedBody696_664

def NamedBody696_666 : StackLang.HolProg 64 :=
.seq NamedBody696_650 NamedBody696_665

def NamedBody696_667 : StackLang.HolProg 64 :=
.seq NamedBody696_647 NamedBody696_666

def NamedBody696_668 : StackLang.HolProg 64 :=
.seq NamedBody696_644 NamedBody696_667

def NamedBody696_669 : StackLang.HolProg 64 :=
.seq NamedBody696_643 NamedBody696_668

def NamedBody696_670 : StackLang.HolProg 64 :=
.seq NamedBody696_640 NamedBody696_669

def NamedBody696_671 : StackLang.HolProg 64 :=
.seq NamedBody696_637 NamedBody696_670

def NamedBody696_672 : StackLang.HolProg 64 :=
.seq NamedBody696_634 NamedBody696_671

def NamedBody696_673 : StackLang.HolProg 64 :=
.seq NamedBody696_631 NamedBody696_672

def NamedBody696_674 : StackLang.HolProg 64 :=
.seq NamedBody696_628 NamedBody696_673

def NamedBody696_675 : StackLang.HolProg 64 :=
.seq NamedBody696_625 NamedBody696_674

def NamedBody696_676 : StackLang.HolProg 64 :=
.seq NamedBody696_622 NamedBody696_675

def NamedBody696_677 : StackLang.HolProg 64 :=
.seq NamedBody696_619 NamedBody696_676

def NamedBody696_678 : StackLang.HolProg 64 :=
.seq NamedBody696_616 NamedBody696_677

def NamedBody696_679 : StackLang.HolProg 64 :=
.seq NamedBody696_613 NamedBody696_678

def NamedBody696_680 : StackLang.HolProg 64 :=
.seq NamedBody696_612 NamedBody696_679

def NamedBody696_681 : StackLang.HolProg 64 :=
.seq NamedBody696_611 NamedBody696_680

def NamedBody696_682 : StackLang.HolProg 64 :=
.seq NamedBody696_610 NamedBody696_681

def NamedBody696_683 : StackLang.HolProg 64 :=
.seq NamedBody696_609 NamedBody696_682

def NamedBody696_684 : StackLang.HolProg 64 :=
.seq NamedBody696_608 NamedBody696_683

def NamedBody696_685 : StackLang.HolProg 64 :=
.seq NamedBody696_607 NamedBody696_684

def NamedBody696_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 176#64))

def NamedBody696_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_690 : StackLang.HolProg 64 :=
.seq NamedBody696_688 NamedBody696_689

def NamedBody696_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_693 : StackLang.HolProg 64 :=
.seq NamedBody696_691 NamedBody696_692

def NamedBody696_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_696 : StackLang.HolProg 64 :=
.seq NamedBody696_694 NamedBody696_695

def NamedBody696_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_699 : StackLang.HolProg 64 :=
.seq NamedBody696_697 NamedBody696_698

def NamedBody696_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_702 : StackLang.HolProg 64 :=
.seq NamedBody696_700 NamedBody696_701

def NamedBody696_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_705 : StackLang.HolProg 64 :=
.seq NamedBody696_703 NamedBody696_704

def NamedBody696_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_708 : StackLang.HolProg 64 :=
.seq NamedBody696_706 NamedBody696_707

def NamedBody696_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_711 : StackLang.HolProg 64 :=
.seq NamedBody696_709 NamedBody696_710

def NamedBody696_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_714 : StackLang.HolProg 64 :=
.seq NamedBody696_712 NamedBody696_713

def NamedBody696_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_717 : StackLang.HolProg 64 :=
.seq NamedBody696_715 NamedBody696_716

def NamedBody696_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody696_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody696_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_721 : StackLang.HolProg 64 :=
.seq NamedBody696_719 NamedBody696_720

def NamedBody696_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody696_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody696_724 : StackLang.HolProg 64 :=
.seq NamedBody696_722 NamedBody696_723

def NamedBody696_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody696_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody696_727 : StackLang.HolProg 64 :=
.seq NamedBody696_725 NamedBody696_726

def NamedBody696_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody696_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody696_730 : StackLang.HolProg 64 :=
.seq NamedBody696_728 NamedBody696_729

def NamedBody696_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody696_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody696_734 : StackLang.HolProg 64 :=
.seq NamedBody696_732 NamedBody696_733

def NamedBody696_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_736 : StackLang.HolProg 64 :=
.seq NamedBody696_734 NamedBody696_735

def NamedBody696_737 : StackLang.HolProg 64 :=
.seq NamedBody696_731 NamedBody696_736

def NamedBody696_738 : StackLang.HolProg 64 :=
.seq NamedBody696_730 NamedBody696_737

def NamedBody696_739 : StackLang.HolProg 64 :=
.seq NamedBody696_727 NamedBody696_738

def NamedBody696_740 : StackLang.HolProg 64 :=
.seq NamedBody696_724 NamedBody696_739

def NamedBody696_741 : StackLang.HolProg 64 :=
.seq NamedBody696_721 NamedBody696_740

def NamedBody696_742 : StackLang.HolProg 64 :=
.seq NamedBody696_718 NamedBody696_741

def NamedBody696_743 : StackLang.HolProg 64 :=
.seq NamedBody696_717 NamedBody696_742

def NamedBody696_744 : StackLang.HolProg 64 :=
.seq NamedBody696_714 NamedBody696_743

def NamedBody696_745 : StackLang.HolProg 64 :=
.seq NamedBody696_711 NamedBody696_744

def NamedBody696_746 : StackLang.HolProg 64 :=
.seq NamedBody696_708 NamedBody696_745

def NamedBody696_747 : StackLang.HolProg 64 :=
.seq NamedBody696_705 NamedBody696_746

def NamedBody696_748 : StackLang.HolProg 64 :=
.seq NamedBody696_702 NamedBody696_747

def NamedBody696_749 : StackLang.HolProg 64 :=
.seq NamedBody696_699 NamedBody696_748

def NamedBody696_750 : StackLang.HolProg 64 :=
.seq NamedBody696_696 NamedBody696_749

def NamedBody696_751 : StackLang.HolProg 64 :=
.seq NamedBody696_693 NamedBody696_750

def NamedBody696_752 : StackLang.HolProg 64 :=
.seq NamedBody696_690 NamedBody696_751

def NamedBody696_753 : StackLang.HolProg 64 :=
.seq NamedBody696_687 NamedBody696_752

def NamedBody696_754 : StackLang.HolProg 64 :=
.seq NamedBody696_686 NamedBody696_753

def NamedBody696_755 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_756 : StackLang.HolProg 64 :=
.seq NamedBody696_754 NamedBody696_755

def NamedBody696_757 : StackLang.HolProg 64 :=
.call (some (NamedBody696_685, 1, 696, 16)) (Sum.inl 106) (some (NamedBody696_756, 696, 17))

def NamedBody696_758 : StackLang.HolProg 64 :=
.seq NamedBody696_606 NamedBody696_757

def NamedBody696_759 : StackLang.HolProg 64 :=
.seq NamedBody696_605 NamedBody696_758

def NamedBody696_760 : StackLang.HolProg 64 :=
.seq NamedBody696_604 NamedBody696_759

def NamedBody696_761 : StackLang.HolProg 64 :=
.seq NamedBody696_575 NamedBody696_760

def NamedBody696_762 : StackLang.HolProg 64 :=
.seq NamedBody696_572 NamedBody696_761

def NamedBody696_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody696_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody696_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody696_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody696_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody696_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def NamedBody696_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody696_776 : StackLang.HolProg 64 :=
.seq NamedBody696_774 NamedBody696_775

def NamedBody696_777 : StackLang.HolProg 64 :=
.seq NamedBody696_773 NamedBody696_776

def NamedBody696_778 : StackLang.HolProg 64 :=
.seq NamedBody696_772 NamedBody696_777

def NamedBody696_779 : StackLang.HolProg 64 :=
.seq NamedBody696_771 NamedBody696_778

def NamedBody696_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_781 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody696_779 NamedBody696_780

def NamedBody696_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody696_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 128#64)

def NamedBody696_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 176#64))

def NamedBody696_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3051#64)

def NamedBody696_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_790 : StackLang.HolProg 64 :=
.seq NamedBody696_788 NamedBody696_789

def NamedBody696_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_794 : StackLang.HolProg 64 :=
.seq NamedBody696_792 NamedBody696_793

def NamedBody696_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_796 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_794 NamedBody696_795

def NamedBody696_797 : StackLang.HolProg 64 :=
.seq NamedBody696_791 NamedBody696_796

def NamedBody696_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 19

def NamedBody696_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_807 : StackLang.HolProg 64 :=
.seq NamedBody696_805 NamedBody696_806

def NamedBody696_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_809 : StackLang.HolProg 64 :=
.seq NamedBody696_807 NamedBody696_808

def NamedBody696_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_811 : StackLang.HolProg 64 :=
.seq NamedBody696_809 NamedBody696_810

def NamedBody696_812 : StackLang.HolProg 64 :=
.seq NamedBody696_804 NamedBody696_811

def NamedBody696_813 : StackLang.HolProg 64 :=
.seq NamedBody696_803 NamedBody696_812

def NamedBody696_814 : StackLang.HolProg 64 :=
.seq NamedBody696_802 NamedBody696_813

def NamedBody696_815 : StackLang.HolProg 64 :=
.seq NamedBody696_801 NamedBody696_814

def NamedBody696_816 : StackLang.HolProg 64 :=
.seq NamedBody696_800 NamedBody696_815

def NamedBody696_817 : StackLang.HolProg 64 :=
.seq NamedBody696_799 NamedBody696_816

def NamedBody696_818 : StackLang.HolProg 64 :=
.seq NamedBody696_798 NamedBody696_817

def NamedBody696_819 : StackLang.HolProg 64 :=
.seq NamedBody696_797 NamedBody696_818

def NamedBody696_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_831 : StackLang.HolProg 64 :=
.seq NamedBody696_829 NamedBody696_830

def NamedBody696_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_834 : StackLang.HolProg 64 :=
.seq NamedBody696_832 NamedBody696_833

def NamedBody696_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_837 : StackLang.HolProg 64 :=
.seq NamedBody696_835 NamedBody696_836

def NamedBody696_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_841 : StackLang.HolProg 64 :=
.seq NamedBody696_839 NamedBody696_840

def NamedBody696_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody696_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody696_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_845 : StackLang.HolProg 64 :=
.seq NamedBody696_843 NamedBody696_844

def NamedBody696_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody696_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_848 : StackLang.HolProg 64 :=
.seq NamedBody696_846 NamedBody696_847

def NamedBody696_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody696_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_851 : StackLang.HolProg 64 :=
.seq NamedBody696_849 NamedBody696_850

def NamedBody696_852 : StackLang.HolProg 64 :=
.seq NamedBody696_848 NamedBody696_851

def NamedBody696_853 : StackLang.HolProg 64 :=
.seq NamedBody696_845 NamedBody696_852

def NamedBody696_854 : StackLang.HolProg 64 :=
.seq NamedBody696_842 NamedBody696_853

def NamedBody696_855 : StackLang.HolProg 64 :=
.seq NamedBody696_841 NamedBody696_854

def NamedBody696_856 : StackLang.HolProg 64 :=
.seq NamedBody696_838 NamedBody696_855

def NamedBody696_857 : StackLang.HolProg 64 :=
.seq NamedBody696_837 NamedBody696_856

def NamedBody696_858 : StackLang.HolProg 64 :=
.seq NamedBody696_834 NamedBody696_857

def NamedBody696_859 : StackLang.HolProg 64 :=
.seq NamedBody696_831 NamedBody696_858

def NamedBody696_860 : StackLang.HolProg 64 :=
.seq NamedBody696_828 NamedBody696_859

def NamedBody696_861 : StackLang.HolProg 64 :=
.seq NamedBody696_827 NamedBody696_860

def NamedBody696_862 : StackLang.HolProg 64 :=
.seq NamedBody696_826 NamedBody696_861

def NamedBody696_863 : StackLang.HolProg 64 :=
.seq NamedBody696_825 NamedBody696_862

def NamedBody696_864 : StackLang.HolProg 64 :=
.seq NamedBody696_824 NamedBody696_863

def NamedBody696_865 : StackLang.HolProg 64 :=
.seq NamedBody696_823 NamedBody696_864

def NamedBody696_866 : StackLang.HolProg 64 :=
.seq NamedBody696_822 NamedBody696_865

def NamedBody696_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_871 : StackLang.HolProg 64 :=
.seq NamedBody696_869 NamedBody696_870

def NamedBody696_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_874 : StackLang.HolProg 64 :=
.seq NamedBody696_872 NamedBody696_873

def NamedBody696_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_877 : StackLang.HolProg 64 :=
.seq NamedBody696_875 NamedBody696_876

def NamedBody696_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_881 : StackLang.HolProg 64 :=
.seq NamedBody696_879 NamedBody696_880

def NamedBody696_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody696_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody696_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_885 : StackLang.HolProg 64 :=
.seq NamedBody696_883 NamedBody696_884

def NamedBody696_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody696_887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_888 : StackLang.HolProg 64 :=
.seq NamedBody696_886 NamedBody696_887

def NamedBody696_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody696_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_891 : StackLang.HolProg 64 :=
.seq NamedBody696_889 NamedBody696_890

def NamedBody696_892 : StackLang.HolProg 64 :=
.seq NamedBody696_888 NamedBody696_891

def NamedBody696_893 : StackLang.HolProg 64 :=
.seq NamedBody696_885 NamedBody696_892

def NamedBody696_894 : StackLang.HolProg 64 :=
.seq NamedBody696_882 NamedBody696_893

def NamedBody696_895 : StackLang.HolProg 64 :=
.seq NamedBody696_881 NamedBody696_894

def NamedBody696_896 : StackLang.HolProg 64 :=
.seq NamedBody696_878 NamedBody696_895

def NamedBody696_897 : StackLang.HolProg 64 :=
.seq NamedBody696_877 NamedBody696_896

def NamedBody696_898 : StackLang.HolProg 64 :=
.seq NamedBody696_874 NamedBody696_897

def NamedBody696_899 : StackLang.HolProg 64 :=
.seq NamedBody696_871 NamedBody696_898

def NamedBody696_900 : StackLang.HolProg 64 :=
.seq NamedBody696_868 NamedBody696_899

def NamedBody696_901 : StackLang.HolProg 64 :=
.seq NamedBody696_867 NamedBody696_900

def NamedBody696_902 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_903 : StackLang.HolProg 64 :=
.seq NamedBody696_901 NamedBody696_902

def NamedBody696_904 : StackLang.HolProg 64 :=
.call (some (NamedBody696_866, 1, 696, 18)) (Sum.inl 80) (some (NamedBody696_903, 696, 19))

def NamedBody696_905 : StackLang.HolProg 64 :=
.seq NamedBody696_821 NamedBody696_904

def NamedBody696_906 : StackLang.HolProg 64 :=
.seq NamedBody696_820 NamedBody696_905

def NamedBody696_907 : StackLang.HolProg 64 :=
.seq NamedBody696_819 NamedBody696_906

def NamedBody696_908 : StackLang.HolProg 64 :=
.seq NamedBody696_790 NamedBody696_907

def NamedBody696_909 : StackLang.HolProg 64 :=
.seq NamedBody696_787 NamedBody696_908

def NamedBody696_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody696_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 176#64))

def NamedBody696_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody696_918 : StackLang.HolProg 64 :=
.seq NamedBody696_916 NamedBody696_917

def NamedBody696_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3052#64)

def NamedBody696_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_922 : StackLang.HolProg 64 :=
.seq NamedBody696_920 NamedBody696_921

def NamedBody696_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_926 : StackLang.HolProg 64 :=
.seq NamedBody696_924 NamedBody696_925

def NamedBody696_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_928 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_926 NamedBody696_927

def NamedBody696_929 : StackLang.HolProg 64 :=
.seq NamedBody696_923 NamedBody696_928

def NamedBody696_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 21

def NamedBody696_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_939 : StackLang.HolProg 64 :=
.seq NamedBody696_937 NamedBody696_938

def NamedBody696_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_941 : StackLang.HolProg 64 :=
.seq NamedBody696_939 NamedBody696_940

def NamedBody696_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_943 : StackLang.HolProg 64 :=
.seq NamedBody696_941 NamedBody696_942

def NamedBody696_944 : StackLang.HolProg 64 :=
.seq NamedBody696_936 NamedBody696_943

def NamedBody696_945 : StackLang.HolProg 64 :=
.seq NamedBody696_935 NamedBody696_944

def NamedBody696_946 : StackLang.HolProg 64 :=
.seq NamedBody696_934 NamedBody696_945

def NamedBody696_947 : StackLang.HolProg 64 :=
.seq NamedBody696_933 NamedBody696_946

def NamedBody696_948 : StackLang.HolProg 64 :=
.seq NamedBody696_932 NamedBody696_947

def NamedBody696_949 : StackLang.HolProg 64 :=
.seq NamedBody696_931 NamedBody696_948

def NamedBody696_950 : StackLang.HolProg 64 :=
.seq NamedBody696_930 NamedBody696_949

def NamedBody696_951 : StackLang.HolProg 64 :=
.seq NamedBody696_929 NamedBody696_950

def NamedBody696_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody696_959 : StackLang.HolProg 64 :=
.seq NamedBody696_957 NamedBody696_958

def NamedBody696_960 : StackLang.HolProg 64 :=
.seq NamedBody696_956 NamedBody696_959

def NamedBody696_961 : StackLang.HolProg 64 :=
.seq NamedBody696_955 NamedBody696_960

def NamedBody696_962 : StackLang.HolProg 64 :=
.seq NamedBody696_954 NamedBody696_961

def NamedBody696_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody696_964 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_965 : StackLang.HolProg 64 :=
.seq NamedBody696_963 NamedBody696_964

def NamedBody696_966 : StackLang.HolProg 64 :=
.call (some (NamedBody696_962, 1, 696, 20)) (Sum.inl 680) (some (NamedBody696_965, 696, 21))

def NamedBody696_967 : StackLang.HolProg 64 :=
.seq NamedBody696_953 NamedBody696_966

def NamedBody696_968 : StackLang.HolProg 64 :=
.seq NamedBody696_952 NamedBody696_967

def NamedBody696_969 : StackLang.HolProg 64 :=
.seq NamedBody696_951 NamedBody696_968

def NamedBody696_970 : StackLang.HolProg 64 :=
.seq NamedBody696_922 NamedBody696_969

def NamedBody696_971 : StackLang.HolProg 64 :=
.seq NamedBody696_919 NamedBody696_970

def NamedBody696_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody696_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def NamedBody696_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody696_977 : StackLang.HolProg 64 :=
.seq NamedBody696_975 NamedBody696_976

def NamedBody696_978 : StackLang.HolProg 64 :=
.seq NamedBody696_974 NamedBody696_977

def NamedBody696_979 : StackLang.HolProg 64 :=
.seq NamedBody696_973 NamedBody696_978

def NamedBody696_980 : StackLang.HolProg 64 :=
.seq NamedBody696_972 NamedBody696_979

def NamedBody696_981 : StackLang.HolProg 64 :=
.seq NamedBody696_971 NamedBody696_980

def NamedBody696_982 : StackLang.HolProg 64 :=
.seq NamedBody696_918 NamedBody696_981

def NamedBody696_983 : StackLang.HolProg 64 :=
.seq NamedBody696_915 NamedBody696_982

def NamedBody696_984 : StackLang.HolProg 64 :=
.seq NamedBody696_914 NamedBody696_983

def NamedBody696_985 : StackLang.HolProg 64 :=
.seq NamedBody696_913 NamedBody696_984

def NamedBody696_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_987 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody696_985 NamedBody696_986

def NamedBody696_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody696_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3053#64)

def NamedBody696_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_994 : StackLang.HolProg 64 :=
.seq NamedBody696_992 NamedBody696_993

def NamedBody696_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_998 : StackLang.HolProg 64 :=
.seq NamedBody696_996 NamedBody696_997

def NamedBody696_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1000 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_998 NamedBody696_999

def NamedBody696_1001 : StackLang.HolProg 64 :=
.seq NamedBody696_995 NamedBody696_1000

def NamedBody696_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 23

def NamedBody696_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_1006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_1010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_1011 : StackLang.HolProg 64 :=
.seq NamedBody696_1009 NamedBody696_1010

def NamedBody696_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_1013 : StackLang.HolProg 64 :=
.seq NamedBody696_1011 NamedBody696_1012

def NamedBody696_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1015 : StackLang.HolProg 64 :=
.seq NamedBody696_1013 NamedBody696_1014

def NamedBody696_1016 : StackLang.HolProg 64 :=
.seq NamedBody696_1008 NamedBody696_1015

def NamedBody696_1017 : StackLang.HolProg 64 :=
.seq NamedBody696_1007 NamedBody696_1016

def NamedBody696_1018 : StackLang.HolProg 64 :=
.seq NamedBody696_1006 NamedBody696_1017

def NamedBody696_1019 : StackLang.HolProg 64 :=
.seq NamedBody696_1005 NamedBody696_1018

def NamedBody696_1020 : StackLang.HolProg 64 :=
.seq NamedBody696_1004 NamedBody696_1019

def NamedBody696_1021 : StackLang.HolProg 64 :=
.seq NamedBody696_1003 NamedBody696_1020

def NamedBody696_1022 : StackLang.HolProg 64 :=
.seq NamedBody696_1002 NamedBody696_1021

def NamedBody696_1023 : StackLang.HolProg 64 :=
.seq NamedBody696_1001 NamedBody696_1022

def NamedBody696_1024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1036 : StackLang.HolProg 64 :=
.seq NamedBody696_1034 NamedBody696_1035

def NamedBody696_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_1038 : StackLang.HolProg 64 :=
.seq NamedBody696_1036 NamedBody696_1037

def NamedBody696_1039 : StackLang.HolProg 64 :=
.seq NamedBody696_1033 NamedBody696_1038

def NamedBody696_1040 : StackLang.HolProg 64 :=
.seq NamedBody696_1032 NamedBody696_1039

def NamedBody696_1041 : StackLang.HolProg 64 :=
.seq NamedBody696_1031 NamedBody696_1040

def NamedBody696_1042 : StackLang.HolProg 64 :=
.seq NamedBody696_1030 NamedBody696_1041

def NamedBody696_1043 : StackLang.HolProg 64 :=
.seq NamedBody696_1029 NamedBody696_1042

def NamedBody696_1044 : StackLang.HolProg 64 :=
.seq NamedBody696_1028 NamedBody696_1043

def NamedBody696_1045 : StackLang.HolProg 64 :=
.seq NamedBody696_1027 NamedBody696_1044

def NamedBody696_1046 : StackLang.HolProg 64 :=
.seq NamedBody696_1026 NamedBody696_1045

def NamedBody696_1047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1052 : StackLang.HolProg 64 :=
.seq NamedBody696_1050 NamedBody696_1051

def NamedBody696_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_1054 : StackLang.HolProg 64 :=
.seq NamedBody696_1052 NamedBody696_1053

def NamedBody696_1055 : StackLang.HolProg 64 :=
.seq NamedBody696_1049 NamedBody696_1054

def NamedBody696_1056 : StackLang.HolProg 64 :=
.seq NamedBody696_1048 NamedBody696_1055

def NamedBody696_1057 : StackLang.HolProg 64 :=
.seq NamedBody696_1047 NamedBody696_1056

def NamedBody696_1058 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_1059 : StackLang.HolProg 64 :=
.seq NamedBody696_1057 NamedBody696_1058

def NamedBody696_1060 : StackLang.HolProg 64 :=
.call (some (NamedBody696_1046, 1, 696, 22)) (Sum.inl 662) (some (NamedBody696_1059, 696, 23))

def NamedBody696_1061 : StackLang.HolProg 64 :=
.seq NamedBody696_1025 NamedBody696_1060

def NamedBody696_1062 : StackLang.HolProg 64 :=
.seq NamedBody696_1024 NamedBody696_1061

def NamedBody696_1063 : StackLang.HolProg 64 :=
.seq NamedBody696_1023 NamedBody696_1062

def NamedBody696_1064 : StackLang.HolProg 64 :=
.seq NamedBody696_994 NamedBody696_1063

def NamedBody696_1065 : StackLang.HolProg 64 :=
.seq NamedBody696_991 NamedBody696_1064

def NamedBody696_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_1067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody696_1068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_1069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody696_1070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody696_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody696_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_1075 : StackLang.HolProg 64 :=
.seq NamedBody696_1073 NamedBody696_1074

def NamedBody696_1076 : StackLang.HolProg 64 :=
.seq NamedBody696_1072 NamedBody696_1075

def NamedBody696_1077 : StackLang.HolProg 64 :=
.seq NamedBody696_1071 NamedBody696_1076

def NamedBody696_1078 : StackLang.HolProg 64 :=
.seq NamedBody696_1070 NamedBody696_1077

def NamedBody696_1079 : StackLang.HolProg 64 :=
.seq NamedBody696_1069 NamedBody696_1078

def NamedBody696_1080 : StackLang.HolProg 64 :=
.seq NamedBody696_1068 NamedBody696_1079

def NamedBody696_1081 : StackLang.HolProg 64 :=
.seq NamedBody696_1067 NamedBody696_1080

def NamedBody696_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3054#64)

def NamedBody696_1084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1085 : StackLang.HolProg 64 :=
.seq NamedBody696_1083 NamedBody696_1084

def NamedBody696_1086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1087 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_1088 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_1089 : StackLang.HolProg 64 :=
.seq NamedBody696_1087 NamedBody696_1088

def NamedBody696_1090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1091 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_1089 NamedBody696_1090

def NamedBody696_1092 : StackLang.HolProg 64 :=
.seq NamedBody696_1086 NamedBody696_1091

def NamedBody696_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 25

def NamedBody696_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_1101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_1102 : StackLang.HolProg 64 :=
.seq NamedBody696_1100 NamedBody696_1101

def NamedBody696_1103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_1104 : StackLang.HolProg 64 :=
.seq NamedBody696_1102 NamedBody696_1103

def NamedBody696_1105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1106 : StackLang.HolProg 64 :=
.seq NamedBody696_1104 NamedBody696_1105

def NamedBody696_1107 : StackLang.HolProg 64 :=
.seq NamedBody696_1099 NamedBody696_1106

def NamedBody696_1108 : StackLang.HolProg 64 :=
.seq NamedBody696_1098 NamedBody696_1107

def NamedBody696_1109 : StackLang.HolProg 64 :=
.seq NamedBody696_1097 NamedBody696_1108

def NamedBody696_1110 : StackLang.HolProg 64 :=
.seq NamedBody696_1096 NamedBody696_1109

def NamedBody696_1111 : StackLang.HolProg 64 :=
.seq NamedBody696_1095 NamedBody696_1110

def NamedBody696_1112 : StackLang.HolProg 64 :=
.seq NamedBody696_1094 NamedBody696_1111

def NamedBody696_1113 : StackLang.HolProg 64 :=
.seq NamedBody696_1093 NamedBody696_1112

def NamedBody696_1114 : StackLang.HolProg 64 :=
.seq NamedBody696_1092 NamedBody696_1113

def NamedBody696_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_1122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1125 : StackLang.HolProg 64 :=
.seq NamedBody696_1123 NamedBody696_1124

def NamedBody696_1126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1128 : StackLang.HolProg 64 :=
.seq NamedBody696_1126 NamedBody696_1127

def NamedBody696_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1132 : StackLang.HolProg 64 :=
.seq NamedBody696_1130 NamedBody696_1131

def NamedBody696_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1135 : StackLang.HolProg 64 :=
.seq NamedBody696_1133 NamedBody696_1134

def NamedBody696_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_1137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1138 : StackLang.HolProg 64 :=
.seq NamedBody696_1136 NamedBody696_1137

def NamedBody696_1139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1141 : StackLang.HolProg 64 :=
.seq NamedBody696_1139 NamedBody696_1140

def NamedBody696_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_1144 : StackLang.HolProg 64 :=
.seq NamedBody696_1142 NamedBody696_1143

def NamedBody696_1145 : StackLang.HolProg 64 :=
.seq NamedBody696_1141 NamedBody696_1144

def NamedBody696_1146 : StackLang.HolProg 64 :=
.seq NamedBody696_1138 NamedBody696_1145

def NamedBody696_1147 : StackLang.HolProg 64 :=
.seq NamedBody696_1135 NamedBody696_1146

def NamedBody696_1148 : StackLang.HolProg 64 :=
.seq NamedBody696_1132 NamedBody696_1147

def NamedBody696_1149 : StackLang.HolProg 64 :=
.seq NamedBody696_1129 NamedBody696_1148

def NamedBody696_1150 : StackLang.HolProg 64 :=
.seq NamedBody696_1128 NamedBody696_1149

def NamedBody696_1151 : StackLang.HolProg 64 :=
.seq NamedBody696_1125 NamedBody696_1150

def NamedBody696_1152 : StackLang.HolProg 64 :=
.seq NamedBody696_1122 NamedBody696_1151

def NamedBody696_1153 : StackLang.HolProg 64 :=
.seq NamedBody696_1121 NamedBody696_1152

def NamedBody696_1154 : StackLang.HolProg 64 :=
.seq NamedBody696_1120 NamedBody696_1153

def NamedBody696_1155 : StackLang.HolProg 64 :=
.seq NamedBody696_1119 NamedBody696_1154

def NamedBody696_1156 : StackLang.HolProg 64 :=
.seq NamedBody696_1118 NamedBody696_1155

def NamedBody696_1157 : StackLang.HolProg 64 :=
.seq NamedBody696_1117 NamedBody696_1156

def NamedBody696_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1161 : StackLang.HolProg 64 :=
.seq NamedBody696_1159 NamedBody696_1160

def NamedBody696_1162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1164 : StackLang.HolProg 64 :=
.seq NamedBody696_1162 NamedBody696_1163

def NamedBody696_1165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1168 : StackLang.HolProg 64 :=
.seq NamedBody696_1166 NamedBody696_1167

def NamedBody696_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1171 : StackLang.HolProg 64 :=
.seq NamedBody696_1169 NamedBody696_1170

def NamedBody696_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1174 : StackLang.HolProg 64 :=
.seq NamedBody696_1172 NamedBody696_1173

def NamedBody696_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1177 : StackLang.HolProg 64 :=
.seq NamedBody696_1175 NamedBody696_1176

def NamedBody696_1178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_1180 : StackLang.HolProg 64 :=
.seq NamedBody696_1178 NamedBody696_1179

def NamedBody696_1181 : StackLang.HolProg 64 :=
.seq NamedBody696_1177 NamedBody696_1180

def NamedBody696_1182 : StackLang.HolProg 64 :=
.seq NamedBody696_1174 NamedBody696_1181

def NamedBody696_1183 : StackLang.HolProg 64 :=
.seq NamedBody696_1171 NamedBody696_1182

def NamedBody696_1184 : StackLang.HolProg 64 :=
.seq NamedBody696_1168 NamedBody696_1183

def NamedBody696_1185 : StackLang.HolProg 64 :=
.seq NamedBody696_1165 NamedBody696_1184

def NamedBody696_1186 : StackLang.HolProg 64 :=
.seq NamedBody696_1164 NamedBody696_1185

def NamedBody696_1187 : StackLang.HolProg 64 :=
.seq NamedBody696_1161 NamedBody696_1186

def NamedBody696_1188 : StackLang.HolProg 64 :=
.seq NamedBody696_1158 NamedBody696_1187

def NamedBody696_1189 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_1190 : StackLang.HolProg 64 :=
.seq NamedBody696_1188 NamedBody696_1189

def NamedBody696_1191 : StackLang.HolProg 64 :=
.call (some (NamedBody696_1157, 1, 696, 24)) (Sum.inl 662) (some (NamedBody696_1190, 696, 25))

def NamedBody696_1192 : StackLang.HolProg 64 :=
.seq NamedBody696_1116 NamedBody696_1191

def NamedBody696_1193 : StackLang.HolProg 64 :=
.seq NamedBody696_1115 NamedBody696_1192

def NamedBody696_1194 : StackLang.HolProg 64 :=
.seq NamedBody696_1114 NamedBody696_1193

def NamedBody696_1195 : StackLang.HolProg 64 :=
.seq NamedBody696_1085 NamedBody696_1194

def NamedBody696_1196 : StackLang.HolProg 64 :=
.seq NamedBody696_1082 NamedBody696_1195

def NamedBody696_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_1198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody696_1199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_1200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody696_1201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_1202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody696_1203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody696_1205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_1206 : StackLang.HolProg 64 :=
.seq NamedBody696_1204 NamedBody696_1205

def NamedBody696_1207 : StackLang.HolProg 64 :=
.seq NamedBody696_1203 NamedBody696_1206

def NamedBody696_1208 : StackLang.HolProg 64 :=
.seq NamedBody696_1202 NamedBody696_1207

def NamedBody696_1209 : StackLang.HolProg 64 :=
.seq NamedBody696_1201 NamedBody696_1208

def NamedBody696_1210 : StackLang.HolProg 64 :=
.seq NamedBody696_1200 NamedBody696_1209

def NamedBody696_1211 : StackLang.HolProg 64 :=
.seq NamedBody696_1199 NamedBody696_1210

def NamedBody696_1212 : StackLang.HolProg 64 :=
.seq NamedBody696_1198 NamedBody696_1211

def NamedBody696_1213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3055#64)

def NamedBody696_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1216 : StackLang.HolProg 64 :=
.seq NamedBody696_1214 NamedBody696_1215

def NamedBody696_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_1220 : StackLang.HolProg 64 :=
.seq NamedBody696_1218 NamedBody696_1219

def NamedBody696_1221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1222 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_1220 NamedBody696_1221

def NamedBody696_1223 : StackLang.HolProg 64 :=
.seq NamedBody696_1217 NamedBody696_1222

def NamedBody696_1224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_1225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 27

def NamedBody696_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_1228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_1233 : StackLang.HolProg 64 :=
.seq NamedBody696_1231 NamedBody696_1232

def NamedBody696_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_1235 : StackLang.HolProg 64 :=
.seq NamedBody696_1233 NamedBody696_1234

def NamedBody696_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1237 : StackLang.HolProg 64 :=
.seq NamedBody696_1235 NamedBody696_1236

def NamedBody696_1238 : StackLang.HolProg 64 :=
.seq NamedBody696_1230 NamedBody696_1237

def NamedBody696_1239 : StackLang.HolProg 64 :=
.seq NamedBody696_1229 NamedBody696_1238

def NamedBody696_1240 : StackLang.HolProg 64 :=
.seq NamedBody696_1228 NamedBody696_1239

def NamedBody696_1241 : StackLang.HolProg 64 :=
.seq NamedBody696_1227 NamedBody696_1240

def NamedBody696_1242 : StackLang.HolProg 64 :=
.seq NamedBody696_1226 NamedBody696_1241

def NamedBody696_1243 : StackLang.HolProg 64 :=
.seq NamedBody696_1225 NamedBody696_1242

def NamedBody696_1244 : StackLang.HolProg 64 :=
.seq NamedBody696_1224 NamedBody696_1243

def NamedBody696_1245 : StackLang.HolProg 64 :=
.seq NamedBody696_1223 NamedBody696_1244

def NamedBody696_1246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_1253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1258 : StackLang.HolProg 64 :=
.seq NamedBody696_1256 NamedBody696_1257

def NamedBody696_1259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_1260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1261 : StackLang.HolProg 64 :=
.seq NamedBody696_1259 NamedBody696_1260

def NamedBody696_1262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_1263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_1264 : StackLang.HolProg 64 :=
.seq NamedBody696_1262 NamedBody696_1263

def NamedBody696_1265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_1267 : StackLang.HolProg 64 :=
.seq NamedBody696_1265 NamedBody696_1266

def NamedBody696_1268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1270 : StackLang.HolProg 64 :=
.seq NamedBody696_1268 NamedBody696_1269

def NamedBody696_1271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_1272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_1273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_1274 : StackLang.HolProg 64 :=
.seq NamedBody696_1272 NamedBody696_1273

def NamedBody696_1275 : StackLang.HolProg 64 :=
.seq NamedBody696_1271 NamedBody696_1274

def NamedBody696_1276 : StackLang.HolProg 64 :=
.seq NamedBody696_1270 NamedBody696_1275

def NamedBody696_1277 : StackLang.HolProg 64 :=
.seq NamedBody696_1267 NamedBody696_1276

def NamedBody696_1278 : StackLang.HolProg 64 :=
.seq NamedBody696_1264 NamedBody696_1277

def NamedBody696_1279 : StackLang.HolProg 64 :=
.seq NamedBody696_1261 NamedBody696_1278

def NamedBody696_1280 : StackLang.HolProg 64 :=
.seq NamedBody696_1258 NamedBody696_1279

def NamedBody696_1281 : StackLang.HolProg 64 :=
.seq NamedBody696_1255 NamedBody696_1280

def NamedBody696_1282 : StackLang.HolProg 64 :=
.seq NamedBody696_1254 NamedBody696_1281

def NamedBody696_1283 : StackLang.HolProg 64 :=
.seq NamedBody696_1253 NamedBody696_1282

def NamedBody696_1284 : StackLang.HolProg 64 :=
.seq NamedBody696_1252 NamedBody696_1283

def NamedBody696_1285 : StackLang.HolProg 64 :=
.seq NamedBody696_1251 NamedBody696_1284

def NamedBody696_1286 : StackLang.HolProg 64 :=
.seq NamedBody696_1250 NamedBody696_1285

def NamedBody696_1287 : StackLang.HolProg 64 :=
.seq NamedBody696_1249 NamedBody696_1286

def NamedBody696_1288 : StackLang.HolProg 64 :=
.seq NamedBody696_1248 NamedBody696_1287

def NamedBody696_1289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1294 : StackLang.HolProg 64 :=
.seq NamedBody696_1292 NamedBody696_1293

def NamedBody696_1295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_1296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1297 : StackLang.HolProg 64 :=
.seq NamedBody696_1295 NamedBody696_1296

def NamedBody696_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_1300 : StackLang.HolProg 64 :=
.seq NamedBody696_1298 NamedBody696_1299

def NamedBody696_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_1303 : StackLang.HolProg 64 :=
.seq NamedBody696_1301 NamedBody696_1302

def NamedBody696_1304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1306 : StackLang.HolProg 64 :=
.seq NamedBody696_1304 NamedBody696_1305

def NamedBody696_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_1308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_1309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_1310 : StackLang.HolProg 64 :=
.seq NamedBody696_1308 NamedBody696_1309

def NamedBody696_1311 : StackLang.HolProg 64 :=
.seq NamedBody696_1307 NamedBody696_1310

def NamedBody696_1312 : StackLang.HolProg 64 :=
.seq NamedBody696_1306 NamedBody696_1311

def NamedBody696_1313 : StackLang.HolProg 64 :=
.seq NamedBody696_1303 NamedBody696_1312

def NamedBody696_1314 : StackLang.HolProg 64 :=
.seq NamedBody696_1300 NamedBody696_1313

def NamedBody696_1315 : StackLang.HolProg 64 :=
.seq NamedBody696_1297 NamedBody696_1314

def NamedBody696_1316 : StackLang.HolProg 64 :=
.seq NamedBody696_1294 NamedBody696_1315

def NamedBody696_1317 : StackLang.HolProg 64 :=
.seq NamedBody696_1291 NamedBody696_1316

def NamedBody696_1318 : StackLang.HolProg 64 :=
.seq NamedBody696_1290 NamedBody696_1317

def NamedBody696_1319 : StackLang.HolProg 64 :=
.seq NamedBody696_1289 NamedBody696_1318

def NamedBody696_1320 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_1321 : StackLang.HolProg 64 :=
.seq NamedBody696_1319 NamedBody696_1320

def NamedBody696_1322 : StackLang.HolProg 64 :=
.call (some (NamedBody696_1288, 1, 696, 26)) (Sum.inl 662) (some (NamedBody696_1321, 696, 27))

def NamedBody696_1323 : StackLang.HolProg 64 :=
.seq NamedBody696_1247 NamedBody696_1322

def NamedBody696_1324 : StackLang.HolProg 64 :=
.seq NamedBody696_1246 NamedBody696_1323

def NamedBody696_1325 : StackLang.HolProg 64 :=
.seq NamedBody696_1245 NamedBody696_1324

def NamedBody696_1326 : StackLang.HolProg 64 :=
.seq NamedBody696_1216 NamedBody696_1325

def NamedBody696_1327 : StackLang.HolProg 64 :=
.seq NamedBody696_1213 NamedBody696_1326

def NamedBody696_1328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_1329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody696_1330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody696_1332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_1333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody696_1334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_1335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody696_1336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1337 : StackLang.HolProg 64 :=
.seq NamedBody696_1335 NamedBody696_1336

def NamedBody696_1338 : StackLang.HolProg 64 :=
.seq NamedBody696_1334 NamedBody696_1337

def NamedBody696_1339 : StackLang.HolProg 64 :=
.seq NamedBody696_1333 NamedBody696_1338

def NamedBody696_1340 : StackLang.HolProg 64 :=
.seq NamedBody696_1332 NamedBody696_1339

def NamedBody696_1341 : StackLang.HolProg 64 :=
.seq NamedBody696_1331 NamedBody696_1340

def NamedBody696_1342 : StackLang.HolProg 64 :=
.seq NamedBody696_1330 NamedBody696_1341

def NamedBody696_1343 : StackLang.HolProg 64 :=
.seq NamedBody696_1329 NamedBody696_1342

def NamedBody696_1344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3056#64)

def NamedBody696_1346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1347 : StackLang.HolProg 64 :=
.seq NamedBody696_1345 NamedBody696_1346

def NamedBody696_1348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_1350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_1351 : StackLang.HolProg 64 :=
.seq NamedBody696_1349 NamedBody696_1350

def NamedBody696_1352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1353 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_1351 NamedBody696_1352

def NamedBody696_1354 : StackLang.HolProg 64 :=
.seq NamedBody696_1348 NamedBody696_1353

def NamedBody696_1355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_1356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 29

def NamedBody696_1358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_1359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_1364 : StackLang.HolProg 64 :=
.seq NamedBody696_1362 NamedBody696_1363

def NamedBody696_1365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_1366 : StackLang.HolProg 64 :=
.seq NamedBody696_1364 NamedBody696_1365

def NamedBody696_1367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1368 : StackLang.HolProg 64 :=
.seq NamedBody696_1366 NamedBody696_1367

def NamedBody696_1369 : StackLang.HolProg 64 :=
.seq NamedBody696_1361 NamedBody696_1368

def NamedBody696_1370 : StackLang.HolProg 64 :=
.seq NamedBody696_1360 NamedBody696_1369

def NamedBody696_1371 : StackLang.HolProg 64 :=
.seq NamedBody696_1359 NamedBody696_1370

def NamedBody696_1372 : StackLang.HolProg 64 :=
.seq NamedBody696_1358 NamedBody696_1371

def NamedBody696_1373 : StackLang.HolProg 64 :=
.seq NamedBody696_1357 NamedBody696_1372

def NamedBody696_1374 : StackLang.HolProg 64 :=
.seq NamedBody696_1356 NamedBody696_1373

def NamedBody696_1375 : StackLang.HolProg 64 :=
.seq NamedBody696_1355 NamedBody696_1374

def NamedBody696_1376 : StackLang.HolProg 64 :=
.seq NamedBody696_1354 NamedBody696_1375

def NamedBody696_1377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_1384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_1391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_1392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_1394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_1395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_1396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_1397 : StackLang.HolProg 64 :=
.seq NamedBody696_1395 NamedBody696_1396

def NamedBody696_1398 : StackLang.HolProg 64 :=
.seq NamedBody696_1394 NamedBody696_1397

def NamedBody696_1399 : StackLang.HolProg 64 :=
.seq NamedBody696_1393 NamedBody696_1398

def NamedBody696_1400 : StackLang.HolProg 64 :=
.seq NamedBody696_1392 NamedBody696_1399

def NamedBody696_1401 : StackLang.HolProg 64 :=
.seq NamedBody696_1391 NamedBody696_1400

def NamedBody696_1402 : StackLang.HolProg 64 :=
.seq NamedBody696_1390 NamedBody696_1401

def NamedBody696_1403 : StackLang.HolProg 64 :=
.seq NamedBody696_1389 NamedBody696_1402

def NamedBody696_1404 : StackLang.HolProg 64 :=
.seq NamedBody696_1388 NamedBody696_1403

def NamedBody696_1405 : StackLang.HolProg 64 :=
.seq NamedBody696_1387 NamedBody696_1404

def NamedBody696_1406 : StackLang.HolProg 64 :=
.seq NamedBody696_1386 NamedBody696_1405

def NamedBody696_1407 : StackLang.HolProg 64 :=
.seq NamedBody696_1385 NamedBody696_1406

def NamedBody696_1408 : StackLang.HolProg 64 :=
.seq NamedBody696_1384 NamedBody696_1407

def NamedBody696_1409 : StackLang.HolProg 64 :=
.seq NamedBody696_1383 NamedBody696_1408

def NamedBody696_1410 : StackLang.HolProg 64 :=
.seq NamedBody696_1382 NamedBody696_1409

def NamedBody696_1411 : StackLang.HolProg 64 :=
.seq NamedBody696_1381 NamedBody696_1410

def NamedBody696_1412 : StackLang.HolProg 64 :=
.seq NamedBody696_1380 NamedBody696_1411

def NamedBody696_1413 : StackLang.HolProg 64 :=
.seq NamedBody696_1379 NamedBody696_1412

def NamedBody696_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody696_1420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody696_1421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody696_1422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody696_1423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody696_1424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody696_1425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody696_1426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody696_1427 : StackLang.HolProg 64 :=
.seq NamedBody696_1425 NamedBody696_1426

def NamedBody696_1428 : StackLang.HolProg 64 :=
.seq NamedBody696_1424 NamedBody696_1427

def NamedBody696_1429 : StackLang.HolProg 64 :=
.seq NamedBody696_1423 NamedBody696_1428

def NamedBody696_1430 : StackLang.HolProg 64 :=
.seq NamedBody696_1422 NamedBody696_1429

def NamedBody696_1431 : StackLang.HolProg 64 :=
.seq NamedBody696_1421 NamedBody696_1430

def NamedBody696_1432 : StackLang.HolProg 64 :=
.seq NamedBody696_1420 NamedBody696_1431

def NamedBody696_1433 : StackLang.HolProg 64 :=
.seq NamedBody696_1419 NamedBody696_1432

def NamedBody696_1434 : StackLang.HolProg 64 :=
.seq NamedBody696_1418 NamedBody696_1433

def NamedBody696_1435 : StackLang.HolProg 64 :=
.seq NamedBody696_1417 NamedBody696_1434

def NamedBody696_1436 : StackLang.HolProg 64 :=
.seq NamedBody696_1416 NamedBody696_1435

def NamedBody696_1437 : StackLang.HolProg 64 :=
.seq NamedBody696_1415 NamedBody696_1436

def NamedBody696_1438 : StackLang.HolProg 64 :=
.seq NamedBody696_1414 NamedBody696_1437

def NamedBody696_1439 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_1440 : StackLang.HolProg 64 :=
.seq NamedBody696_1438 NamedBody696_1439

def NamedBody696_1441 : StackLang.HolProg 64 :=
.call (some (NamedBody696_1413, 1, 696, 28)) (Sum.inl 662) (some (NamedBody696_1440, 696, 29))

def NamedBody696_1442 : StackLang.HolProg 64 :=
.seq NamedBody696_1378 NamedBody696_1441

def NamedBody696_1443 : StackLang.HolProg 64 :=
.seq NamedBody696_1377 NamedBody696_1442

def NamedBody696_1444 : StackLang.HolProg 64 :=
.seq NamedBody696_1376 NamedBody696_1443

def NamedBody696_1445 : StackLang.HolProg 64 :=
.seq NamedBody696_1347 NamedBody696_1444

def NamedBody696_1446 : StackLang.HolProg 64 :=
.seq NamedBody696_1344 NamedBody696_1445

def NamedBody696_1447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_1448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody696_1450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def NamedBody696_1452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def NamedBody696_1454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def NamedBody696_1456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody696_1458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody696_1460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody696_1462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody696_1464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody696_1466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody696_1468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody696_1470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody696_1472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody696_1474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody696_1476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody696_1478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody696_1480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody696_1482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody696_1484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody696_1486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody696_1488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 15230403791020821917#64)

def NamedBody696_1489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody696_1491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 754611498739239741#64)

def NamedBody696_1492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody696_1494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7381016538464732716#64)

def NamedBody696_1495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody696_1497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1011752739694698287#64)

def NamedBody696_1498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody696_1500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody696_1502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody696_1503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody696_1505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody696_1506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody696_1508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody696_1509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody696_1511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody696_1512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody696_1514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3057#64)

def NamedBody696_1517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1518 : StackLang.HolProg 64 :=
.seq NamedBody696_1516 NamedBody696_1517

def NamedBody696_1519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_1521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_1522 : StackLang.HolProg 64 :=
.seq NamedBody696_1520 NamedBody696_1521

def NamedBody696_1523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1524 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_1522 NamedBody696_1523

def NamedBody696_1525 : StackLang.HolProg 64 :=
.seq NamedBody696_1519 NamedBody696_1524

def NamedBody696_1526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_1527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 31

def NamedBody696_1529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_1530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_1534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_1535 : StackLang.HolProg 64 :=
.seq NamedBody696_1533 NamedBody696_1534

def NamedBody696_1536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_1537 : StackLang.HolProg 64 :=
.seq NamedBody696_1535 NamedBody696_1536

def NamedBody696_1538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1539 : StackLang.HolProg 64 :=
.seq NamedBody696_1537 NamedBody696_1538

def NamedBody696_1540 : StackLang.HolProg 64 :=
.seq NamedBody696_1532 NamedBody696_1539

def NamedBody696_1541 : StackLang.HolProg 64 :=
.seq NamedBody696_1531 NamedBody696_1540

def NamedBody696_1542 : StackLang.HolProg 64 :=
.seq NamedBody696_1530 NamedBody696_1541

def NamedBody696_1543 : StackLang.HolProg 64 :=
.seq NamedBody696_1529 NamedBody696_1542

def NamedBody696_1544 : StackLang.HolProg 64 :=
.seq NamedBody696_1528 NamedBody696_1543

def NamedBody696_1545 : StackLang.HolProg 64 :=
.seq NamedBody696_1527 NamedBody696_1544

def NamedBody696_1546 : StackLang.HolProg 64 :=
.seq NamedBody696_1526 NamedBody696_1545

def NamedBody696_1547 : StackLang.HolProg 64 :=
.seq NamedBody696_1525 NamedBody696_1546

def NamedBody696_1548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_1555 : StackLang.HolProg 64 :=
.seq NamedBody696_1553 NamedBody696_1554

def NamedBody696_1556 : StackLang.HolProg 64 :=
.seq NamedBody696_1552 NamedBody696_1555

def NamedBody696_1557 : StackLang.HolProg 64 :=
.seq NamedBody696_1551 NamedBody696_1556

def NamedBody696_1558 : StackLang.HolProg 64 :=
.seq NamedBody696_1550 NamedBody696_1557

def NamedBody696_1559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1560 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_1561 : StackLang.HolProg 64 :=
.seq NamedBody696_1559 NamedBody696_1560

def NamedBody696_1562 : StackLang.HolProg 64 :=
.call (some (NamedBody696_1558, 1, 696, 30)) (Sum.inl 69) (some (NamedBody696_1561, 696, 31))

def NamedBody696_1563 : StackLang.HolProg 64 :=
.seq NamedBody696_1549 NamedBody696_1562

def NamedBody696_1564 : StackLang.HolProg 64 :=
.seq NamedBody696_1548 NamedBody696_1563

def NamedBody696_1565 : StackLang.HolProg 64 :=
.seq NamedBody696_1547 NamedBody696_1564

def NamedBody696_1566 : StackLang.HolProg 64 :=
.seq NamedBody696_1518 NamedBody696_1565

def NamedBody696_1567 : StackLang.HolProg 64 :=
.seq NamedBody696_1515 NamedBody696_1566

def NamedBody696_1568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_1569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody696_1570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3058#64)

def NamedBody696_1573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1574 : StackLang.HolProg 64 :=
.seq NamedBody696_1572 NamedBody696_1573

def NamedBody696_1575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_1577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_1578 : StackLang.HolProg 64 :=
.seq NamedBody696_1576 NamedBody696_1577

def NamedBody696_1579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1580 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_1578 NamedBody696_1579

def NamedBody696_1581 : StackLang.HolProg 64 :=
.seq NamedBody696_1575 NamedBody696_1580

def NamedBody696_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_1583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 33

def NamedBody696_1585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_1586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_1590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_1591 : StackLang.HolProg 64 :=
.seq NamedBody696_1589 NamedBody696_1590

def NamedBody696_1592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_1593 : StackLang.HolProg 64 :=
.seq NamedBody696_1591 NamedBody696_1592

def NamedBody696_1594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1595 : StackLang.HolProg 64 :=
.seq NamedBody696_1593 NamedBody696_1594

def NamedBody696_1596 : StackLang.HolProg 64 :=
.seq NamedBody696_1588 NamedBody696_1595

def NamedBody696_1597 : StackLang.HolProg 64 :=
.seq NamedBody696_1587 NamedBody696_1596

def NamedBody696_1598 : StackLang.HolProg 64 :=
.seq NamedBody696_1586 NamedBody696_1597

def NamedBody696_1599 : StackLang.HolProg 64 :=
.seq NamedBody696_1585 NamedBody696_1598

def NamedBody696_1600 : StackLang.HolProg 64 :=
.seq NamedBody696_1584 NamedBody696_1599

def NamedBody696_1601 : StackLang.HolProg 64 :=
.seq NamedBody696_1583 NamedBody696_1600

def NamedBody696_1602 : StackLang.HolProg 64 :=
.seq NamedBody696_1582 NamedBody696_1601

def NamedBody696_1603 : StackLang.HolProg 64 :=
.seq NamedBody696_1581 NamedBody696_1602

def NamedBody696_1604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_1611 : StackLang.HolProg 64 :=
.seq NamedBody696_1609 NamedBody696_1610

def NamedBody696_1612 : StackLang.HolProg 64 :=
.seq NamedBody696_1608 NamedBody696_1611

def NamedBody696_1613 : StackLang.HolProg 64 :=
.seq NamedBody696_1607 NamedBody696_1612

def NamedBody696_1614 : StackLang.HolProg 64 :=
.seq NamedBody696_1606 NamedBody696_1613

def NamedBody696_1615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1616 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_1617 : StackLang.HolProg 64 :=
.seq NamedBody696_1615 NamedBody696_1616

def NamedBody696_1618 : StackLang.HolProg 64 :=
.call (some (NamedBody696_1614, 1, 696, 32)) (Sum.inl 68) (some (NamedBody696_1617, 696, 33))

def NamedBody696_1619 : StackLang.HolProg 64 :=
.seq NamedBody696_1605 NamedBody696_1618

def NamedBody696_1620 : StackLang.HolProg 64 :=
.seq NamedBody696_1604 NamedBody696_1619

def NamedBody696_1621 : StackLang.HolProg 64 :=
.seq NamedBody696_1603 NamedBody696_1620

def NamedBody696_1622 : StackLang.HolProg 64 :=
.seq NamedBody696_1574 NamedBody696_1621

def NamedBody696_1623 : StackLang.HolProg 64 :=
.seq NamedBody696_1571 NamedBody696_1622

def NamedBody696_1624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_1625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody696_1626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3059#64)

def NamedBody696_1629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1630 : StackLang.HolProg 64 :=
.seq NamedBody696_1628 NamedBody696_1629

def NamedBody696_1631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_1633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_1634 : StackLang.HolProg 64 :=
.seq NamedBody696_1632 NamedBody696_1633

def NamedBody696_1635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1636 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_1634 NamedBody696_1635

def NamedBody696_1637 : StackLang.HolProg 64 :=
.seq NamedBody696_1631 NamedBody696_1636

def NamedBody696_1638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_1639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 35

def NamedBody696_1641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_1642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_1646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_1647 : StackLang.HolProg 64 :=
.seq NamedBody696_1645 NamedBody696_1646

def NamedBody696_1648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_1649 : StackLang.HolProg 64 :=
.seq NamedBody696_1647 NamedBody696_1648

def NamedBody696_1650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1651 : StackLang.HolProg 64 :=
.seq NamedBody696_1649 NamedBody696_1650

def NamedBody696_1652 : StackLang.HolProg 64 :=
.seq NamedBody696_1644 NamedBody696_1651

def NamedBody696_1653 : StackLang.HolProg 64 :=
.seq NamedBody696_1643 NamedBody696_1652

def NamedBody696_1654 : StackLang.HolProg 64 :=
.seq NamedBody696_1642 NamedBody696_1653

def NamedBody696_1655 : StackLang.HolProg 64 :=
.seq NamedBody696_1641 NamedBody696_1654

def NamedBody696_1656 : StackLang.HolProg 64 :=
.seq NamedBody696_1640 NamedBody696_1655

def NamedBody696_1657 : StackLang.HolProg 64 :=
.seq NamedBody696_1639 NamedBody696_1656

def NamedBody696_1658 : StackLang.HolProg 64 :=
.seq NamedBody696_1638 NamedBody696_1657

def NamedBody696_1659 : StackLang.HolProg 64 :=
.seq NamedBody696_1637 NamedBody696_1658

def NamedBody696_1660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_1667 : StackLang.HolProg 64 :=
.seq NamedBody696_1665 NamedBody696_1666

def NamedBody696_1668 : StackLang.HolProg 64 :=
.seq NamedBody696_1664 NamedBody696_1667

def NamedBody696_1669 : StackLang.HolProg 64 :=
.seq NamedBody696_1663 NamedBody696_1668

def NamedBody696_1670 : StackLang.HolProg 64 :=
.seq NamedBody696_1662 NamedBody696_1669

def NamedBody696_1671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1672 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_1673 : StackLang.HolProg 64 :=
.seq NamedBody696_1671 NamedBody696_1672

def NamedBody696_1674 : StackLang.HolProg 64 :=
.call (some (NamedBody696_1670, 1, 696, 34)) (Sum.inl 68) (some (NamedBody696_1673, 696, 35))

def NamedBody696_1675 : StackLang.HolProg 64 :=
.seq NamedBody696_1661 NamedBody696_1674

def NamedBody696_1676 : StackLang.HolProg 64 :=
.seq NamedBody696_1660 NamedBody696_1675

def NamedBody696_1677 : StackLang.HolProg 64 :=
.seq NamedBody696_1659 NamedBody696_1676

def NamedBody696_1678 : StackLang.HolProg 64 :=
.seq NamedBody696_1630 NamedBody696_1677

def NamedBody696_1679 : StackLang.HolProg 64 :=
.seq NamedBody696_1627 NamedBody696_1678

def NamedBody696_1680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_1681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody696_1682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3060#64)

def NamedBody696_1685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1686 : StackLang.HolProg 64 :=
.seq NamedBody696_1684 NamedBody696_1685

def NamedBody696_1687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_1689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_1690 : StackLang.HolProg 64 :=
.seq NamedBody696_1688 NamedBody696_1689

def NamedBody696_1691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1692 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_1690 NamedBody696_1691

def NamedBody696_1693 : StackLang.HolProg 64 :=
.seq NamedBody696_1687 NamedBody696_1692

def NamedBody696_1694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_1695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 37

def NamedBody696_1697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_1698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_1702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_1703 : StackLang.HolProg 64 :=
.seq NamedBody696_1701 NamedBody696_1702

def NamedBody696_1704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_1705 : StackLang.HolProg 64 :=
.seq NamedBody696_1703 NamedBody696_1704

def NamedBody696_1706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1707 : StackLang.HolProg 64 :=
.seq NamedBody696_1705 NamedBody696_1706

def NamedBody696_1708 : StackLang.HolProg 64 :=
.seq NamedBody696_1700 NamedBody696_1707

def NamedBody696_1709 : StackLang.HolProg 64 :=
.seq NamedBody696_1699 NamedBody696_1708

def NamedBody696_1710 : StackLang.HolProg 64 :=
.seq NamedBody696_1698 NamedBody696_1709

def NamedBody696_1711 : StackLang.HolProg 64 :=
.seq NamedBody696_1697 NamedBody696_1710

def NamedBody696_1712 : StackLang.HolProg 64 :=
.seq NamedBody696_1696 NamedBody696_1711

def NamedBody696_1713 : StackLang.HolProg 64 :=
.seq NamedBody696_1695 NamedBody696_1712

def NamedBody696_1714 : StackLang.HolProg 64 :=
.seq NamedBody696_1694 NamedBody696_1713

def NamedBody696_1715 : StackLang.HolProg 64 :=
.seq NamedBody696_1693 NamedBody696_1714

def NamedBody696_1716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_1723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1725 : StackLang.HolProg 64 :=
.seq NamedBody696_1723 NamedBody696_1724

def NamedBody696_1726 : StackLang.HolProg 64 :=
.seq NamedBody696_1722 NamedBody696_1725

def NamedBody696_1727 : StackLang.HolProg 64 :=
.seq NamedBody696_1721 NamedBody696_1726

def NamedBody696_1728 : StackLang.HolProg 64 :=
.seq NamedBody696_1720 NamedBody696_1727

def NamedBody696_1729 : StackLang.HolProg 64 :=
.seq NamedBody696_1719 NamedBody696_1728

def NamedBody696_1730 : StackLang.HolProg 64 :=
.seq NamedBody696_1718 NamedBody696_1729

def NamedBody696_1731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1733 : StackLang.HolProg 64 :=
.seq NamedBody696_1731 NamedBody696_1732

def NamedBody696_1734 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_1735 : StackLang.HolProg 64 :=
.seq NamedBody696_1733 NamedBody696_1734

def NamedBody696_1736 : StackLang.HolProg 64 :=
.call (some (NamedBody696_1730, 1, 696, 36)) (Sum.inl 68) (some (NamedBody696_1735, 696, 37))

def NamedBody696_1737 : StackLang.HolProg 64 :=
.seq NamedBody696_1717 NamedBody696_1736

def NamedBody696_1738 : StackLang.HolProg 64 :=
.seq NamedBody696_1716 NamedBody696_1737

def NamedBody696_1739 : StackLang.HolProg 64 :=
.seq NamedBody696_1715 NamedBody696_1738

def NamedBody696_1740 : StackLang.HolProg 64 :=
.seq NamedBody696_1686 NamedBody696_1739

def NamedBody696_1741 : StackLang.HolProg 64 :=
.seq NamedBody696_1683 NamedBody696_1740

def NamedBody696_1742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_1743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4321547867055981224#64)

def NamedBody696_1745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody696_1747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 147241268046680925#64)

def NamedBody696_1748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody696_1750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2789960110459671136#64)

def NamedBody696_1751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 16#64))

def NamedBody696_1753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2671978398120978541#64)

def NamedBody696_1754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody696_1756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody696_1758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 4100506350182530919#64)

def NamedBody696_1759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody696_1761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 7345568344173317438#64)

def NamedBody696_1762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody696_1764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 15513160039642431658#64)

def NamedBody696_1765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody696_1767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 90557763186888013#64)

def NamedBody696_1768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody696_1770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody696_1771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody696_1772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody696_1774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1776 : StackLang.HolProg 64 :=
.seq NamedBody696_1774 NamedBody696_1775

def NamedBody696_1777 : StackLang.HolProg 64 :=
.seq NamedBody696_1773 NamedBody696_1776

def NamedBody696_1778 : StackLang.HolProg 64 :=
.seq NamedBody696_1772 NamedBody696_1777

def NamedBody696_1779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3061#64)

def NamedBody696_1781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1782 : StackLang.HolProg 64 :=
.seq NamedBody696_1780 NamedBody696_1781

def NamedBody696_1783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_1785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_1786 : StackLang.HolProg 64 :=
.seq NamedBody696_1784 NamedBody696_1785

def NamedBody696_1787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1788 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_1786 NamedBody696_1787

def NamedBody696_1789 : StackLang.HolProg 64 :=
.seq NamedBody696_1783 NamedBody696_1788

def NamedBody696_1790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_1791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 39

def NamedBody696_1793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_1794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_1798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_1799 : StackLang.HolProg 64 :=
.seq NamedBody696_1797 NamedBody696_1798

def NamedBody696_1800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_1801 : StackLang.HolProg 64 :=
.seq NamedBody696_1799 NamedBody696_1800

def NamedBody696_1802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1803 : StackLang.HolProg 64 :=
.seq NamedBody696_1801 NamedBody696_1802

def NamedBody696_1804 : StackLang.HolProg 64 :=
.seq NamedBody696_1796 NamedBody696_1803

def NamedBody696_1805 : StackLang.HolProg 64 :=
.seq NamedBody696_1795 NamedBody696_1804

def NamedBody696_1806 : StackLang.HolProg 64 :=
.seq NamedBody696_1794 NamedBody696_1805

def NamedBody696_1807 : StackLang.HolProg 64 :=
.seq NamedBody696_1793 NamedBody696_1806

def NamedBody696_1808 : StackLang.HolProg 64 :=
.seq NamedBody696_1792 NamedBody696_1807

def NamedBody696_1809 : StackLang.HolProg 64 :=
.seq NamedBody696_1791 NamedBody696_1808

def NamedBody696_1810 : StackLang.HolProg 64 :=
.seq NamedBody696_1790 NamedBody696_1809

def NamedBody696_1811 : StackLang.HolProg 64 :=
.seq NamedBody696_1789 NamedBody696_1810

def NamedBody696_1812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1820 : StackLang.HolProg 64 :=
.seq NamedBody696_1818 NamedBody696_1819

def NamedBody696_1821 : StackLang.HolProg 64 :=
.seq NamedBody696_1817 NamedBody696_1820

def NamedBody696_1822 : StackLang.HolProg 64 :=
.seq NamedBody696_1816 NamedBody696_1821

def NamedBody696_1823 : StackLang.HolProg 64 :=
.seq NamedBody696_1815 NamedBody696_1822

def NamedBody696_1824 : StackLang.HolProg 64 :=
.seq NamedBody696_1814 NamedBody696_1823

def NamedBody696_1825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1827 : StackLang.HolProg 64 :=
.seq NamedBody696_1825 NamedBody696_1826

def NamedBody696_1828 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_1829 : StackLang.HolProg 64 :=
.seq NamedBody696_1827 NamedBody696_1828

def NamedBody696_1830 : StackLang.HolProg 64 :=
.call (some (NamedBody696_1824, 1, 696, 38)) (Sum.inl 666) (some (NamedBody696_1829, 696, 39))

def NamedBody696_1831 : StackLang.HolProg 64 :=
.seq NamedBody696_1813 NamedBody696_1830

def NamedBody696_1832 : StackLang.HolProg 64 :=
.seq NamedBody696_1812 NamedBody696_1831

def NamedBody696_1833 : StackLang.HolProg 64 :=
.seq NamedBody696_1811 NamedBody696_1832

def NamedBody696_1834 : StackLang.HolProg 64 :=
.seq NamedBody696_1782 NamedBody696_1833

def NamedBody696_1835 : StackLang.HolProg 64 :=
.seq NamedBody696_1779 NamedBody696_1834

def NamedBody696_1836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_1837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody696_1838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody696_1839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1841 : StackLang.HolProg 64 :=
.seq NamedBody696_1839 NamedBody696_1840

def NamedBody696_1842 : StackLang.HolProg 64 :=
.seq NamedBody696_1838 NamedBody696_1841

def NamedBody696_1843 : StackLang.HolProg 64 :=
.seq NamedBody696_1837 NamedBody696_1842

def NamedBody696_1844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3062#64)

def NamedBody696_1846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1847 : StackLang.HolProg 64 :=
.seq NamedBody696_1845 NamedBody696_1846

def NamedBody696_1848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_1850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_1851 : StackLang.HolProg 64 :=
.seq NamedBody696_1849 NamedBody696_1850

def NamedBody696_1852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1853 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_1851 NamedBody696_1852

def NamedBody696_1854 : StackLang.HolProg 64 :=
.seq NamedBody696_1848 NamedBody696_1853

def NamedBody696_1855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_1856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 41

def NamedBody696_1858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_1859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_1863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_1864 : StackLang.HolProg 64 :=
.seq NamedBody696_1862 NamedBody696_1863

def NamedBody696_1865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_1866 : StackLang.HolProg 64 :=
.seq NamedBody696_1864 NamedBody696_1865

def NamedBody696_1867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1868 : StackLang.HolProg 64 :=
.seq NamedBody696_1866 NamedBody696_1867

def NamedBody696_1869 : StackLang.HolProg 64 :=
.seq NamedBody696_1861 NamedBody696_1868

def NamedBody696_1870 : StackLang.HolProg 64 :=
.seq NamedBody696_1860 NamedBody696_1869

def NamedBody696_1871 : StackLang.HolProg 64 :=
.seq NamedBody696_1859 NamedBody696_1870

def NamedBody696_1872 : StackLang.HolProg 64 :=
.seq NamedBody696_1858 NamedBody696_1871

def NamedBody696_1873 : StackLang.HolProg 64 :=
.seq NamedBody696_1857 NamedBody696_1872

def NamedBody696_1874 : StackLang.HolProg 64 :=
.seq NamedBody696_1856 NamedBody696_1873

def NamedBody696_1875 : StackLang.HolProg 64 :=
.seq NamedBody696_1855 NamedBody696_1874

def NamedBody696_1876 : StackLang.HolProg 64 :=
.seq NamedBody696_1854 NamedBody696_1875

def NamedBody696_1877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1886 : StackLang.HolProg 64 :=
.seq NamedBody696_1884 NamedBody696_1885

def NamedBody696_1887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1889 : StackLang.HolProg 64 :=
.seq NamedBody696_1887 NamedBody696_1888

def NamedBody696_1890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1893 : StackLang.HolProg 64 :=
.seq NamedBody696_1891 NamedBody696_1892

def NamedBody696_1894 : StackLang.HolProg 64 :=
.seq NamedBody696_1890 NamedBody696_1893

def NamedBody696_1895 : StackLang.HolProg 64 :=
.seq NamedBody696_1889 NamedBody696_1894

def NamedBody696_1896 : StackLang.HolProg 64 :=
.seq NamedBody696_1886 NamedBody696_1895

def NamedBody696_1897 : StackLang.HolProg 64 :=
.seq NamedBody696_1883 NamedBody696_1896

def NamedBody696_1898 : StackLang.HolProg 64 :=
.seq NamedBody696_1882 NamedBody696_1897

def NamedBody696_1899 : StackLang.HolProg 64 :=
.seq NamedBody696_1881 NamedBody696_1898

def NamedBody696_1900 : StackLang.HolProg 64 :=
.seq NamedBody696_1880 NamedBody696_1899

def NamedBody696_1901 : StackLang.HolProg 64 :=
.seq NamedBody696_1879 NamedBody696_1900

def NamedBody696_1902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_1905 : StackLang.HolProg 64 :=
.seq NamedBody696_1903 NamedBody696_1904

def NamedBody696_1906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_1908 : StackLang.HolProg 64 :=
.seq NamedBody696_1906 NamedBody696_1907

def NamedBody696_1909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody696_1911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1912 : StackLang.HolProg 64 :=
.seq NamedBody696_1910 NamedBody696_1911

def NamedBody696_1913 : StackLang.HolProg 64 :=
.seq NamedBody696_1909 NamedBody696_1912

def NamedBody696_1914 : StackLang.HolProg 64 :=
.seq NamedBody696_1908 NamedBody696_1913

def NamedBody696_1915 : StackLang.HolProg 64 :=
.seq NamedBody696_1905 NamedBody696_1914

def NamedBody696_1916 : StackLang.HolProg 64 :=
.seq NamedBody696_1902 NamedBody696_1915

def NamedBody696_1917 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_1918 : StackLang.HolProg 64 :=
.seq NamedBody696_1916 NamedBody696_1917

def NamedBody696_1919 : StackLang.HolProg 64 :=
.call (some (NamedBody696_1901, 1, 696, 40)) (Sum.inl 666) (some (NamedBody696_1918, 696, 41))

def NamedBody696_1920 : StackLang.HolProg 64 :=
.seq NamedBody696_1878 NamedBody696_1919

def NamedBody696_1921 : StackLang.HolProg 64 :=
.seq NamedBody696_1877 NamedBody696_1920

def NamedBody696_1922 : StackLang.HolProg 64 :=
.seq NamedBody696_1876 NamedBody696_1921

def NamedBody696_1923 : StackLang.HolProg 64 :=
.seq NamedBody696_1847 NamedBody696_1922

def NamedBody696_1924 : StackLang.HolProg 64 :=
.seq NamedBody696_1844 NamedBody696_1923

def NamedBody696_1925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_1926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody696_1927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1928 : StackLang.HolProg 64 :=
.seq NamedBody696_1926 NamedBody696_1927

def NamedBody696_1929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3063#64)

def NamedBody696_1931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1932 : StackLang.HolProg 64 :=
.seq NamedBody696_1930 NamedBody696_1931

def NamedBody696_1933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_1935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_1936 : StackLang.HolProg 64 :=
.seq NamedBody696_1934 NamedBody696_1935

def NamedBody696_1937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1938 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_1936 NamedBody696_1937

def NamedBody696_1939 : StackLang.HolProg 64 :=
.seq NamedBody696_1933 NamedBody696_1938

def NamedBody696_1940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_1941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 43

def NamedBody696_1943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_1944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_1948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_1949 : StackLang.HolProg 64 :=
.seq NamedBody696_1947 NamedBody696_1948

def NamedBody696_1950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_1951 : StackLang.HolProg 64 :=
.seq NamedBody696_1949 NamedBody696_1950

def NamedBody696_1952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1953 : StackLang.HolProg 64 :=
.seq NamedBody696_1951 NamedBody696_1952

def NamedBody696_1954 : StackLang.HolProg 64 :=
.seq NamedBody696_1946 NamedBody696_1953

def NamedBody696_1955 : StackLang.HolProg 64 :=
.seq NamedBody696_1945 NamedBody696_1954

def NamedBody696_1956 : StackLang.HolProg 64 :=
.seq NamedBody696_1944 NamedBody696_1955

def NamedBody696_1957 : StackLang.HolProg 64 :=
.seq NamedBody696_1943 NamedBody696_1956

def NamedBody696_1958 : StackLang.HolProg 64 :=
.seq NamedBody696_1942 NamedBody696_1957

def NamedBody696_1959 : StackLang.HolProg 64 :=
.seq NamedBody696_1941 NamedBody696_1958

def NamedBody696_1960 : StackLang.HolProg 64 :=
.seq NamedBody696_1940 NamedBody696_1959

def NamedBody696_1961 : StackLang.HolProg 64 :=
.seq NamedBody696_1939 NamedBody696_1960

def NamedBody696_1962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_1966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_1967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1970 : StackLang.HolProg 64 :=
.seq NamedBody696_1968 NamedBody696_1969

def NamedBody696_1971 : StackLang.HolProg 64 :=
.seq NamedBody696_1967 NamedBody696_1970

def NamedBody696_1972 : StackLang.HolProg 64 :=
.seq NamedBody696_1966 NamedBody696_1971

def NamedBody696_1973 : StackLang.HolProg 64 :=
.seq NamedBody696_1965 NamedBody696_1972

def NamedBody696_1974 : StackLang.HolProg 64 :=
.seq NamedBody696_1964 NamedBody696_1973

def NamedBody696_1975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody696_1977 : StackLang.HolProg 64 :=
.seq NamedBody696_1975 NamedBody696_1976

def NamedBody696_1978 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_1979 : StackLang.HolProg 64 :=
.seq NamedBody696_1977 NamedBody696_1978

def NamedBody696_1980 : StackLang.HolProg 64 :=
.call (some (NamedBody696_1974, 1, 696, 42)) (Sum.inl 666) (some (NamedBody696_1979, 696, 43))

def NamedBody696_1981 : StackLang.HolProg 64 :=
.seq NamedBody696_1963 NamedBody696_1980

def NamedBody696_1982 : StackLang.HolProg 64 :=
.seq NamedBody696_1962 NamedBody696_1981

def NamedBody696_1983 : StackLang.HolProg 64 :=
.seq NamedBody696_1961 NamedBody696_1982

def NamedBody696_1984 : StackLang.HolProg 64 :=
.seq NamedBody696_1932 NamedBody696_1983

def NamedBody696_1985 : StackLang.HolProg 64 :=
.seq NamedBody696_1929 NamedBody696_1984

def NamedBody696_1986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_1987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_1989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody696_1990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_1991 : StackLang.HolProg 64 :=
.seq NamedBody696_1989 NamedBody696_1990

def NamedBody696_1992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_1993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3064#64)

def NamedBody696_1994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_1995 : StackLang.HolProg 64 :=
.seq NamedBody696_1993 NamedBody696_1994

def NamedBody696_1996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_1997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_1998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_1999 : StackLang.HolProg 64 :=
.seq NamedBody696_1997 NamedBody696_1998

def NamedBody696_2000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2001 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_1999 NamedBody696_2000

def NamedBody696_2002 : StackLang.HolProg 64 :=
.seq NamedBody696_1996 NamedBody696_2001

def NamedBody696_2003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_2004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_2005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 45

def NamedBody696_2006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_2007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_2008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_2009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_2011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_2012 : StackLang.HolProg 64 :=
.seq NamedBody696_2010 NamedBody696_2011

def NamedBody696_2013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_2014 : StackLang.HolProg 64 :=
.seq NamedBody696_2012 NamedBody696_2013

def NamedBody696_2015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_2016 : StackLang.HolProg 64 :=
.seq NamedBody696_2014 NamedBody696_2015

def NamedBody696_2017 : StackLang.HolProg 64 :=
.seq NamedBody696_2009 NamedBody696_2016

def NamedBody696_2018 : StackLang.HolProg 64 :=
.seq NamedBody696_2008 NamedBody696_2017

def NamedBody696_2019 : StackLang.HolProg 64 :=
.seq NamedBody696_2007 NamedBody696_2018

def NamedBody696_2020 : StackLang.HolProg 64 :=
.seq NamedBody696_2006 NamedBody696_2019

def NamedBody696_2021 : StackLang.HolProg 64 :=
.seq NamedBody696_2005 NamedBody696_2020

def NamedBody696_2022 : StackLang.HolProg 64 :=
.seq NamedBody696_2004 NamedBody696_2021

def NamedBody696_2023 : StackLang.HolProg 64 :=
.seq NamedBody696_2003 NamedBody696_2022

def NamedBody696_2024 : StackLang.HolProg 64 :=
.seq NamedBody696_2002 NamedBody696_2023

def NamedBody696_2025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_2029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_2030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_2031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_2032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_2033 : StackLang.HolProg 64 :=
.seq NamedBody696_2031 NamedBody696_2032

def NamedBody696_2034 : StackLang.HolProg 64 :=
.seq NamedBody696_2030 NamedBody696_2033

def NamedBody696_2035 : StackLang.HolProg 64 :=
.seq NamedBody696_2029 NamedBody696_2034

def NamedBody696_2036 : StackLang.HolProg 64 :=
.seq NamedBody696_2028 NamedBody696_2035

def NamedBody696_2037 : StackLang.HolProg 64 :=
.seq NamedBody696_2027 NamedBody696_2036

def NamedBody696_2038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def NamedBody696_2039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody696_2040 : StackLang.HolProg 64 :=
.seq NamedBody696_2038 NamedBody696_2039

def NamedBody696_2041 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_2042 : StackLang.HolProg 64 :=
.seq NamedBody696_2040 NamedBody696_2041

def NamedBody696_2043 : StackLang.HolProg 64 :=
.call (some (NamedBody696_2037, 1, 696, 44)) (Sum.inl 672) (some (NamedBody696_2042, 696, 45))

def NamedBody696_2044 : StackLang.HolProg 64 :=
.seq NamedBody696_2026 NamedBody696_2043

def NamedBody696_2045 : StackLang.HolProg 64 :=
.seq NamedBody696_2025 NamedBody696_2044

def NamedBody696_2046 : StackLang.HolProg 64 :=
.seq NamedBody696_2024 NamedBody696_2045

def NamedBody696_2047 : StackLang.HolProg 64 :=
.seq NamedBody696_1995 NamedBody696_2046

def NamedBody696_2048 : StackLang.HolProg 64 :=
.seq NamedBody696_1992 NamedBody696_2047

def NamedBody696_2049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_2050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody696_2051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 64#64)

def NamedBody696_2052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3065#64)

def NamedBody696_2055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_2056 : StackLang.HolProg 64 :=
.seq NamedBody696_2054 NamedBody696_2055

def NamedBody696_2057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_2058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_2059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_2060 : StackLang.HolProg 64 :=
.seq NamedBody696_2058 NamedBody696_2059

def NamedBody696_2061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2062 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_2060 NamedBody696_2061

def NamedBody696_2063 : StackLang.HolProg 64 :=
.seq NamedBody696_2057 NamedBody696_2062

def NamedBody696_2064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_2065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_2066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 47

def NamedBody696_2067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_2068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_2069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_2070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_2072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_2073 : StackLang.HolProg 64 :=
.seq NamedBody696_2071 NamedBody696_2072

def NamedBody696_2074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_2075 : StackLang.HolProg 64 :=
.seq NamedBody696_2073 NamedBody696_2074

def NamedBody696_2076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_2077 : StackLang.HolProg 64 :=
.seq NamedBody696_2075 NamedBody696_2076

def NamedBody696_2078 : StackLang.HolProg 64 :=
.seq NamedBody696_2070 NamedBody696_2077

def NamedBody696_2079 : StackLang.HolProg 64 :=
.seq NamedBody696_2069 NamedBody696_2078

def NamedBody696_2080 : StackLang.HolProg 64 :=
.seq NamedBody696_2068 NamedBody696_2079

def NamedBody696_2081 : StackLang.HolProg 64 :=
.seq NamedBody696_2067 NamedBody696_2080

def NamedBody696_2082 : StackLang.HolProg 64 :=
.seq NamedBody696_2066 NamedBody696_2081

def NamedBody696_2083 : StackLang.HolProg 64 :=
.seq NamedBody696_2065 NamedBody696_2082

def NamedBody696_2084 : StackLang.HolProg 64 :=
.seq NamedBody696_2064 NamedBody696_2083

def NamedBody696_2085 : StackLang.HolProg 64 :=
.seq NamedBody696_2063 NamedBody696_2084

def NamedBody696_2086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2087 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2088 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2089 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_2090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_2091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_2092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody696_2093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_2094 : StackLang.HolProg 64 :=
.seq NamedBody696_2092 NamedBody696_2093

def NamedBody696_2095 : StackLang.HolProg 64 :=
.seq NamedBody696_2091 NamedBody696_2094

def NamedBody696_2096 : StackLang.HolProg 64 :=
.seq NamedBody696_2090 NamedBody696_2095

def NamedBody696_2097 : StackLang.HolProg 64 :=
.seq NamedBody696_2089 NamedBody696_2096

def NamedBody696_2098 : StackLang.HolProg 64 :=
.seq NamedBody696_2088 NamedBody696_2097

def NamedBody696_2099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_2100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_2101 : StackLang.HolProg 64 :=
.seq NamedBody696_2099 NamedBody696_2100

def NamedBody696_2102 : StackLang.HolProg 64 :=
.call (some (NamedBody696_2098, 1, 696, 46)) (Sum.inl 79) (some (NamedBody696_2101, 696, 47))

def NamedBody696_2103 : StackLang.HolProg 64 :=
.seq NamedBody696_2087 NamedBody696_2102

def NamedBody696_2104 : StackLang.HolProg 64 :=
.seq NamedBody696_2086 NamedBody696_2103

def NamedBody696_2105 : StackLang.HolProg 64 :=
.seq NamedBody696_2085 NamedBody696_2104

def NamedBody696_2106 : StackLang.HolProg 64 :=
.seq NamedBody696_2056 NamedBody696_2105

def NamedBody696_2107 : StackLang.HolProg 64 :=
.seq NamedBody696_2053 NamedBody696_2106

def NamedBody696_2108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_2109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody696_2110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_2111 : StackLang.HolProg 64 :=
.seq NamedBody696_2109 NamedBody696_2110

def NamedBody696_2112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3066#64)

def NamedBody696_2114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_2115 : StackLang.HolProg 64 :=
.seq NamedBody696_2113 NamedBody696_2114

def NamedBody696_2116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_2117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody696_2118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody696_2119 : StackLang.HolProg 64 :=
.seq NamedBody696_2117 NamedBody696_2118

def NamedBody696_2120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody696_2119 NamedBody696_2120

def NamedBody696_2122 : StackLang.HolProg 64 :=
.seq NamedBody696_2116 NamedBody696_2121

def NamedBody696_2123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody696_2124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody696_2125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 696 49

def NamedBody696_2126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody696_2127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_2128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_2129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody696_2131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody696_2132 : StackLang.HolProg 64 :=
.seq NamedBody696_2130 NamedBody696_2131

def NamedBody696_2133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody696_2134 : StackLang.HolProg 64 :=
.seq NamedBody696_2132 NamedBody696_2133

def NamedBody696_2135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_2136 : StackLang.HolProg 64 :=
.seq NamedBody696_2134 NamedBody696_2135

def NamedBody696_2137 : StackLang.HolProg 64 :=
.seq NamedBody696_2129 NamedBody696_2136

def NamedBody696_2138 : StackLang.HolProg 64 :=
.seq NamedBody696_2128 NamedBody696_2137

def NamedBody696_2139 : StackLang.HolProg 64 :=
.seq NamedBody696_2127 NamedBody696_2138

def NamedBody696_2140 : StackLang.HolProg 64 :=
.seq NamedBody696_2126 NamedBody696_2139

def NamedBody696_2141 : StackLang.HolProg 64 :=
.seq NamedBody696_2125 NamedBody696_2140

def NamedBody696_2142 : StackLang.HolProg 64 :=
.seq NamedBody696_2124 NamedBody696_2141

def NamedBody696_2143 : StackLang.HolProg 64 :=
.seq NamedBody696_2123 NamedBody696_2142

def NamedBody696_2144 : StackLang.HolProg 64 :=
.seq NamedBody696_2122 NamedBody696_2143

def NamedBody696_2145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody696_2149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody696_2150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody696_2151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 176#64))

def NamedBody696_2152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_2153 : StackLang.HolProg 64 :=
.seq NamedBody696_2151 NamedBody696_2152

def NamedBody696_2154 : StackLang.HolProg 64 :=
.seq NamedBody696_2150 NamedBody696_2153

def NamedBody696_2155 : StackLang.HolProg 64 :=
.seq NamedBody696_2149 NamedBody696_2154

def NamedBody696_2156 : StackLang.HolProg 64 :=
.seq NamedBody696_2148 NamedBody696_2155

def NamedBody696_2157 : StackLang.HolProg 64 :=
.seq NamedBody696_2147 NamedBody696_2156

def NamedBody696_2158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 176#64))

def NamedBody696_2159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 168#64))

def NamedBody696_2160 : StackLang.HolProg 64 :=
.seq NamedBody696_2158 NamedBody696_2159

def NamedBody696_2161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody696_2162 : StackLang.HolProg 64 :=
.seq NamedBody696_2160 NamedBody696_2161

def NamedBody696_2163 : StackLang.HolProg 64 :=
.call (some (NamedBody696_2157, 1, 696, 48)) (Sum.inl 70) (some (NamedBody696_2162, 696, 49))

def NamedBody696_2164 : StackLang.HolProg 64 :=
.seq NamedBody696_2146 NamedBody696_2163

def NamedBody696_2165 : StackLang.HolProg 64 :=
.seq NamedBody696_2145 NamedBody696_2164

def NamedBody696_2166 : StackLang.HolProg 64 :=
.seq NamedBody696_2144 NamedBody696_2165

def NamedBody696_2167 : StackLang.HolProg 64 :=
.seq NamedBody696_2115 NamedBody696_2166

def NamedBody696_2168 : StackLang.HolProg 64 :=
.seq NamedBody696_2112 NamedBody696_2167

def NamedBody696_2169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_2170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody696_2172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_2173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody696_2174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def NamedBody696_2176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody696_2177 : StackLang.HolProg 64 :=
.seq NamedBody696_2175 NamedBody696_2176

def NamedBody696_2178 : StackLang.HolProg 64 :=
.seq NamedBody696_2174 NamedBody696_2177

def NamedBody696_2179 : StackLang.HolProg 64 :=
.seq NamedBody696_2173 NamedBody696_2178

def NamedBody696_2180 : StackLang.HolProg 64 :=
.seq NamedBody696_2172 NamedBody696_2179

def NamedBody696_2181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2182 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody696_2180 NamedBody696_2181

def NamedBody696_2183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_2184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody696_2185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody696_2186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody696_2187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def NamedBody696_2188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody696_2189 : StackLang.HolProg 64 :=
.seq NamedBody696_2187 NamedBody696_2188

def NamedBody696_2190 : StackLang.HolProg 64 :=
.seq NamedBody696_2186 NamedBody696_2189

def NamedBody696_2191 : StackLang.HolProg 64 :=
.seq NamedBody696_2185 NamedBody696_2190

def NamedBody696_2192 : StackLang.HolProg 64 :=
.seq NamedBody696_2184 NamedBody696_2191

def NamedBody696_2193 : StackLang.HolProg 64 :=
.seq NamedBody696_2183 NamedBody696_2192

def NamedBody696_2194 : StackLang.HolProg 64 :=
.seq NamedBody696_2182 NamedBody696_2193

def NamedBody696_2195 : StackLang.HolProg 64 :=
.seq NamedBody696_2171 NamedBody696_2194

def NamedBody696_2196 : StackLang.HolProg 64 :=
.seq NamedBody696_2170 NamedBody696_2195

def NamedBody696_2197 : StackLang.HolProg 64 :=
.seq NamedBody696_2169 NamedBody696_2196

def NamedBody696_2198 : StackLang.HolProg 64 :=
.seq NamedBody696_2168 NamedBody696_2197

def NamedBody696_2199 : StackLang.HolProg 64 :=
.seq NamedBody696_2111 NamedBody696_2198

def NamedBody696_2200 : StackLang.HolProg 64 :=
.seq NamedBody696_2108 NamedBody696_2199

def NamedBody696_2201 : StackLang.HolProg 64 :=
.seq NamedBody696_2107 NamedBody696_2200

def NamedBody696_2202 : StackLang.HolProg 64 :=
.seq NamedBody696_2052 NamedBody696_2201

def NamedBody696_2203 : StackLang.HolProg 64 :=
.seq NamedBody696_2051 NamedBody696_2202

def NamedBody696_2204 : StackLang.HolProg 64 :=
.seq NamedBody696_2050 NamedBody696_2203

def NamedBody696_2205 : StackLang.HolProg 64 :=
.seq NamedBody696_2049 NamedBody696_2204

def NamedBody696_2206 : StackLang.HolProg 64 :=
.seq NamedBody696_2048 NamedBody696_2205

def NamedBody696_2207 : StackLang.HolProg 64 :=
.seq NamedBody696_1991 NamedBody696_2206

def NamedBody696_2208 : StackLang.HolProg 64 :=
.seq NamedBody696_1988 NamedBody696_2207

def NamedBody696_2209 : StackLang.HolProg 64 :=
.seq NamedBody696_1987 NamedBody696_2208

def NamedBody696_2210 : StackLang.HolProg 64 :=
.seq NamedBody696_1986 NamedBody696_2209

def NamedBody696_2211 : StackLang.HolProg 64 :=
.seq NamedBody696_1985 NamedBody696_2210

def NamedBody696_2212 : StackLang.HolProg 64 :=
.seq NamedBody696_1928 NamedBody696_2211

def NamedBody696_2213 : StackLang.HolProg 64 :=
.seq NamedBody696_1925 NamedBody696_2212

def NamedBody696_2214 : StackLang.HolProg 64 :=
.seq NamedBody696_1924 NamedBody696_2213

def NamedBody696_2215 : StackLang.HolProg 64 :=
.seq NamedBody696_1843 NamedBody696_2214

def NamedBody696_2216 : StackLang.HolProg 64 :=
.seq NamedBody696_1836 NamedBody696_2215

def NamedBody696_2217 : StackLang.HolProg 64 :=
.seq NamedBody696_1835 NamedBody696_2216

def NamedBody696_2218 : StackLang.HolProg 64 :=
.seq NamedBody696_1778 NamedBody696_2217

def NamedBody696_2219 : StackLang.HolProg 64 :=
.seq NamedBody696_1771 NamedBody696_2218

def NamedBody696_2220 : StackLang.HolProg 64 :=
.seq NamedBody696_1770 NamedBody696_2219

def NamedBody696_2221 : StackLang.HolProg 64 :=
.seq NamedBody696_1769 NamedBody696_2220

def NamedBody696_2222 : StackLang.HolProg 64 :=
.seq NamedBody696_1768 NamedBody696_2221

def NamedBody696_2223 : StackLang.HolProg 64 :=
.seq NamedBody696_1767 NamedBody696_2222

def NamedBody696_2224 : StackLang.HolProg 64 :=
.seq NamedBody696_1766 NamedBody696_2223

def NamedBody696_2225 : StackLang.HolProg 64 :=
.seq NamedBody696_1765 NamedBody696_2224

def NamedBody696_2226 : StackLang.HolProg 64 :=
.seq NamedBody696_1764 NamedBody696_2225

def NamedBody696_2227 : StackLang.HolProg 64 :=
.seq NamedBody696_1763 NamedBody696_2226

def NamedBody696_2228 : StackLang.HolProg 64 :=
.seq NamedBody696_1762 NamedBody696_2227

def NamedBody696_2229 : StackLang.HolProg 64 :=
.seq NamedBody696_1761 NamedBody696_2228

def NamedBody696_2230 : StackLang.HolProg 64 :=
.seq NamedBody696_1760 NamedBody696_2229

def NamedBody696_2231 : StackLang.HolProg 64 :=
.seq NamedBody696_1759 NamedBody696_2230

def NamedBody696_2232 : StackLang.HolProg 64 :=
.seq NamedBody696_1758 NamedBody696_2231

def NamedBody696_2233 : StackLang.HolProg 64 :=
.seq NamedBody696_1757 NamedBody696_2232

def NamedBody696_2234 : StackLang.HolProg 64 :=
.seq NamedBody696_1756 NamedBody696_2233

def NamedBody696_2235 : StackLang.HolProg 64 :=
.seq NamedBody696_1755 NamedBody696_2234

def NamedBody696_2236 : StackLang.HolProg 64 :=
.seq NamedBody696_1754 NamedBody696_2235

def NamedBody696_2237 : StackLang.HolProg 64 :=
.seq NamedBody696_1753 NamedBody696_2236

def NamedBody696_2238 : StackLang.HolProg 64 :=
.seq NamedBody696_1752 NamedBody696_2237

def NamedBody696_2239 : StackLang.HolProg 64 :=
.seq NamedBody696_1751 NamedBody696_2238

def NamedBody696_2240 : StackLang.HolProg 64 :=
.seq NamedBody696_1750 NamedBody696_2239

def NamedBody696_2241 : StackLang.HolProg 64 :=
.seq NamedBody696_1749 NamedBody696_2240

def NamedBody696_2242 : StackLang.HolProg 64 :=
.seq NamedBody696_1748 NamedBody696_2241

def NamedBody696_2243 : StackLang.HolProg 64 :=
.seq NamedBody696_1747 NamedBody696_2242

def NamedBody696_2244 : StackLang.HolProg 64 :=
.seq NamedBody696_1746 NamedBody696_2243

def NamedBody696_2245 : StackLang.HolProg 64 :=
.seq NamedBody696_1745 NamedBody696_2244

def NamedBody696_2246 : StackLang.HolProg 64 :=
.seq NamedBody696_1744 NamedBody696_2245

def NamedBody696_2247 : StackLang.HolProg 64 :=
.seq NamedBody696_1743 NamedBody696_2246

def NamedBody696_2248 : StackLang.HolProg 64 :=
.seq NamedBody696_1742 NamedBody696_2247

def NamedBody696_2249 : StackLang.HolProg 64 :=
.seq NamedBody696_1741 NamedBody696_2248

def NamedBody696_2250 : StackLang.HolProg 64 :=
.seq NamedBody696_1682 NamedBody696_2249

def NamedBody696_2251 : StackLang.HolProg 64 :=
.seq NamedBody696_1681 NamedBody696_2250

def NamedBody696_2252 : StackLang.HolProg 64 :=
.seq NamedBody696_1680 NamedBody696_2251

def NamedBody696_2253 : StackLang.HolProg 64 :=
.seq NamedBody696_1679 NamedBody696_2252

def NamedBody696_2254 : StackLang.HolProg 64 :=
.seq NamedBody696_1626 NamedBody696_2253

def NamedBody696_2255 : StackLang.HolProg 64 :=
.seq NamedBody696_1625 NamedBody696_2254

def NamedBody696_2256 : StackLang.HolProg 64 :=
.seq NamedBody696_1624 NamedBody696_2255

def NamedBody696_2257 : StackLang.HolProg 64 :=
.seq NamedBody696_1623 NamedBody696_2256

def NamedBody696_2258 : StackLang.HolProg 64 :=
.seq NamedBody696_1570 NamedBody696_2257

def NamedBody696_2259 : StackLang.HolProg 64 :=
.seq NamedBody696_1569 NamedBody696_2258

def NamedBody696_2260 : StackLang.HolProg 64 :=
.seq NamedBody696_1568 NamedBody696_2259

def NamedBody696_2261 : StackLang.HolProg 64 :=
.seq NamedBody696_1567 NamedBody696_2260

def NamedBody696_2262 : StackLang.HolProg 64 :=
.seq NamedBody696_1514 NamedBody696_2261

def NamedBody696_2263 : StackLang.HolProg 64 :=
.seq NamedBody696_1513 NamedBody696_2262

def NamedBody696_2264 : StackLang.HolProg 64 :=
.seq NamedBody696_1512 NamedBody696_2263

def NamedBody696_2265 : StackLang.HolProg 64 :=
.seq NamedBody696_1511 NamedBody696_2264

def NamedBody696_2266 : StackLang.HolProg 64 :=
.seq NamedBody696_1510 NamedBody696_2265

def NamedBody696_2267 : StackLang.HolProg 64 :=
.seq NamedBody696_1509 NamedBody696_2266

def NamedBody696_2268 : StackLang.HolProg 64 :=
.seq NamedBody696_1508 NamedBody696_2267

def NamedBody696_2269 : StackLang.HolProg 64 :=
.seq NamedBody696_1507 NamedBody696_2268

def NamedBody696_2270 : StackLang.HolProg 64 :=
.seq NamedBody696_1506 NamedBody696_2269

def NamedBody696_2271 : StackLang.HolProg 64 :=
.seq NamedBody696_1505 NamedBody696_2270

def NamedBody696_2272 : StackLang.HolProg 64 :=
.seq NamedBody696_1504 NamedBody696_2271

def NamedBody696_2273 : StackLang.HolProg 64 :=
.seq NamedBody696_1503 NamedBody696_2272

def NamedBody696_2274 : StackLang.HolProg 64 :=
.seq NamedBody696_1502 NamedBody696_2273

def NamedBody696_2275 : StackLang.HolProg 64 :=
.seq NamedBody696_1501 NamedBody696_2274

def NamedBody696_2276 : StackLang.HolProg 64 :=
.seq NamedBody696_1500 NamedBody696_2275

def NamedBody696_2277 : StackLang.HolProg 64 :=
.seq NamedBody696_1499 NamedBody696_2276

def NamedBody696_2278 : StackLang.HolProg 64 :=
.seq NamedBody696_1498 NamedBody696_2277

def NamedBody696_2279 : StackLang.HolProg 64 :=
.seq NamedBody696_1497 NamedBody696_2278

def NamedBody696_2280 : StackLang.HolProg 64 :=
.seq NamedBody696_1496 NamedBody696_2279

def NamedBody696_2281 : StackLang.HolProg 64 :=
.seq NamedBody696_1495 NamedBody696_2280

def NamedBody696_2282 : StackLang.HolProg 64 :=
.seq NamedBody696_1494 NamedBody696_2281

def NamedBody696_2283 : StackLang.HolProg 64 :=
.seq NamedBody696_1493 NamedBody696_2282

def NamedBody696_2284 : StackLang.HolProg 64 :=
.seq NamedBody696_1492 NamedBody696_2283

def NamedBody696_2285 : StackLang.HolProg 64 :=
.seq NamedBody696_1491 NamedBody696_2284

def NamedBody696_2286 : StackLang.HolProg 64 :=
.seq NamedBody696_1490 NamedBody696_2285

def NamedBody696_2287 : StackLang.HolProg 64 :=
.seq NamedBody696_1489 NamedBody696_2286

def NamedBody696_2288 : StackLang.HolProg 64 :=
.seq NamedBody696_1488 NamedBody696_2287

def NamedBody696_2289 : StackLang.HolProg 64 :=
.seq NamedBody696_1487 NamedBody696_2288

def NamedBody696_2290 : StackLang.HolProg 64 :=
.seq NamedBody696_1486 NamedBody696_2289

def NamedBody696_2291 : StackLang.HolProg 64 :=
.seq NamedBody696_1485 NamedBody696_2290

def NamedBody696_2292 : StackLang.HolProg 64 :=
.seq NamedBody696_1484 NamedBody696_2291

def NamedBody696_2293 : StackLang.HolProg 64 :=
.seq NamedBody696_1483 NamedBody696_2292

def NamedBody696_2294 : StackLang.HolProg 64 :=
.seq NamedBody696_1482 NamedBody696_2293

def NamedBody696_2295 : StackLang.HolProg 64 :=
.seq NamedBody696_1481 NamedBody696_2294

def NamedBody696_2296 : StackLang.HolProg 64 :=
.seq NamedBody696_1480 NamedBody696_2295

def NamedBody696_2297 : StackLang.HolProg 64 :=
.seq NamedBody696_1479 NamedBody696_2296

def NamedBody696_2298 : StackLang.HolProg 64 :=
.seq NamedBody696_1478 NamedBody696_2297

def NamedBody696_2299 : StackLang.HolProg 64 :=
.seq NamedBody696_1477 NamedBody696_2298

def NamedBody696_2300 : StackLang.HolProg 64 :=
.seq NamedBody696_1476 NamedBody696_2299

def NamedBody696_2301 : StackLang.HolProg 64 :=
.seq NamedBody696_1475 NamedBody696_2300

def NamedBody696_2302 : StackLang.HolProg 64 :=
.seq NamedBody696_1474 NamedBody696_2301

def NamedBody696_2303 : StackLang.HolProg 64 :=
.seq NamedBody696_1473 NamedBody696_2302

def NamedBody696_2304 : StackLang.HolProg 64 :=
.seq NamedBody696_1472 NamedBody696_2303

def NamedBody696_2305 : StackLang.HolProg 64 :=
.seq NamedBody696_1471 NamedBody696_2304

def NamedBody696_2306 : StackLang.HolProg 64 :=
.seq NamedBody696_1470 NamedBody696_2305

def NamedBody696_2307 : StackLang.HolProg 64 :=
.seq NamedBody696_1469 NamedBody696_2306

def NamedBody696_2308 : StackLang.HolProg 64 :=
.seq NamedBody696_1468 NamedBody696_2307

def NamedBody696_2309 : StackLang.HolProg 64 :=
.seq NamedBody696_1467 NamedBody696_2308

def NamedBody696_2310 : StackLang.HolProg 64 :=
.seq NamedBody696_1466 NamedBody696_2309

def NamedBody696_2311 : StackLang.HolProg 64 :=
.seq NamedBody696_1465 NamedBody696_2310

def NamedBody696_2312 : StackLang.HolProg 64 :=
.seq NamedBody696_1464 NamedBody696_2311

def NamedBody696_2313 : StackLang.HolProg 64 :=
.seq NamedBody696_1463 NamedBody696_2312

def NamedBody696_2314 : StackLang.HolProg 64 :=
.seq NamedBody696_1462 NamedBody696_2313

def NamedBody696_2315 : StackLang.HolProg 64 :=
.seq NamedBody696_1461 NamedBody696_2314

def NamedBody696_2316 : StackLang.HolProg 64 :=
.seq NamedBody696_1460 NamedBody696_2315

def NamedBody696_2317 : StackLang.HolProg 64 :=
.seq NamedBody696_1459 NamedBody696_2316

def NamedBody696_2318 : StackLang.HolProg 64 :=
.seq NamedBody696_1458 NamedBody696_2317

def NamedBody696_2319 : StackLang.HolProg 64 :=
.seq NamedBody696_1457 NamedBody696_2318

def NamedBody696_2320 : StackLang.HolProg 64 :=
.seq NamedBody696_1456 NamedBody696_2319

def NamedBody696_2321 : StackLang.HolProg 64 :=
.seq NamedBody696_1455 NamedBody696_2320

def NamedBody696_2322 : StackLang.HolProg 64 :=
.seq NamedBody696_1454 NamedBody696_2321

def NamedBody696_2323 : StackLang.HolProg 64 :=
.seq NamedBody696_1453 NamedBody696_2322

def NamedBody696_2324 : StackLang.HolProg 64 :=
.seq NamedBody696_1452 NamedBody696_2323

def NamedBody696_2325 : StackLang.HolProg 64 :=
.seq NamedBody696_1451 NamedBody696_2324

def NamedBody696_2326 : StackLang.HolProg 64 :=
.seq NamedBody696_1450 NamedBody696_2325

def NamedBody696_2327 : StackLang.HolProg 64 :=
.seq NamedBody696_1449 NamedBody696_2326

def NamedBody696_2328 : StackLang.HolProg 64 :=
.seq NamedBody696_1448 NamedBody696_2327

def NamedBody696_2329 : StackLang.HolProg 64 :=
.seq NamedBody696_1447 NamedBody696_2328

def NamedBody696_2330 : StackLang.HolProg 64 :=
.seq NamedBody696_1446 NamedBody696_2329

def NamedBody696_2331 : StackLang.HolProg 64 :=
.seq NamedBody696_1343 NamedBody696_2330

def NamedBody696_2332 : StackLang.HolProg 64 :=
.seq NamedBody696_1328 NamedBody696_2331

def NamedBody696_2333 : StackLang.HolProg 64 :=
.seq NamedBody696_1327 NamedBody696_2332

def NamedBody696_2334 : StackLang.HolProg 64 :=
.seq NamedBody696_1212 NamedBody696_2333

def NamedBody696_2335 : StackLang.HolProg 64 :=
.seq NamedBody696_1197 NamedBody696_2334

def NamedBody696_2336 : StackLang.HolProg 64 :=
.seq NamedBody696_1196 NamedBody696_2335

def NamedBody696_2337 : StackLang.HolProg 64 :=
.seq NamedBody696_1081 NamedBody696_2336

def NamedBody696_2338 : StackLang.HolProg 64 :=
.seq NamedBody696_1066 NamedBody696_2337

def NamedBody696_2339 : StackLang.HolProg 64 :=
.seq NamedBody696_1065 NamedBody696_2338

def NamedBody696_2340 : StackLang.HolProg 64 :=
.seq NamedBody696_990 NamedBody696_2339

def NamedBody696_2341 : StackLang.HolProg 64 :=
.seq NamedBody696_989 NamedBody696_2340

def NamedBody696_2342 : StackLang.HolProg 64 :=
.seq NamedBody696_988 NamedBody696_2341

def NamedBody696_2343 : StackLang.HolProg 64 :=
.seq NamedBody696_987 NamedBody696_2342

def NamedBody696_2344 : StackLang.HolProg 64 :=
.seq NamedBody696_912 NamedBody696_2343

def NamedBody696_2345 : StackLang.HolProg 64 :=
.seq NamedBody696_911 NamedBody696_2344

def NamedBody696_2346 : StackLang.HolProg 64 :=
.seq NamedBody696_910 NamedBody696_2345

def NamedBody696_2347 : StackLang.HolProg 64 :=
.seq NamedBody696_909 NamedBody696_2346

def NamedBody696_2348 : StackLang.HolProg 64 :=
.seq NamedBody696_786 NamedBody696_2347

def NamedBody696_2349 : StackLang.HolProg 64 :=
.seq NamedBody696_785 NamedBody696_2348

def NamedBody696_2350 : StackLang.HolProg 64 :=
.seq NamedBody696_784 NamedBody696_2349

def NamedBody696_2351 : StackLang.HolProg 64 :=
.seq NamedBody696_783 NamedBody696_2350

def NamedBody696_2352 : StackLang.HolProg 64 :=
.seq NamedBody696_782 NamedBody696_2351

def NamedBody696_2353 : StackLang.HolProg 64 :=
.seq NamedBody696_781 NamedBody696_2352

def NamedBody696_2354 : StackLang.HolProg 64 :=
.seq NamedBody696_770 NamedBody696_2353

def NamedBody696_2355 : StackLang.HolProg 64 :=
.seq NamedBody696_769 NamedBody696_2354

def NamedBody696_2356 : StackLang.HolProg 64 :=
.seq NamedBody696_768 NamedBody696_2355

def NamedBody696_2357 : StackLang.HolProg 64 :=
.seq NamedBody696_767 NamedBody696_2356

def NamedBody696_2358 : StackLang.HolProg 64 :=
.seq NamedBody696_766 NamedBody696_2357

def NamedBody696_2359 : StackLang.HolProg 64 :=
.seq NamedBody696_765 NamedBody696_2358

def NamedBody696_2360 : StackLang.HolProg 64 :=
.seq NamedBody696_764 NamedBody696_2359

def NamedBody696_2361 : StackLang.HolProg 64 :=
.seq NamedBody696_763 NamedBody696_2360

def NamedBody696_2362 : StackLang.HolProg 64 :=
.seq NamedBody696_762 NamedBody696_2361

def NamedBody696_2363 : StackLang.HolProg 64 :=
.seq NamedBody696_571 NamedBody696_2362

def NamedBody696_2364 : StackLang.HolProg 64 :=
.seq NamedBody696_562 NamedBody696_2363

def NamedBody696_2365 : StackLang.HolProg 64 :=
.seq NamedBody696_561 NamedBody696_2364

def NamedBody696_2366 : StackLang.HolProg 64 :=
.seq NamedBody696_560 NamedBody696_2365

def NamedBody696_2367 : StackLang.HolProg 64 :=
.seq NamedBody696_559 NamedBody696_2366

def NamedBody696_2368 : StackLang.HolProg 64 :=
.seq NamedBody696_558 NamedBody696_2367

def NamedBody696_2369 : StackLang.HolProg 64 :=
.seq NamedBody696_557 NamedBody696_2368

def NamedBody696_2370 : StackLang.HolProg 64 :=
.seq NamedBody696_556 NamedBody696_2369

def NamedBody696_2371 : StackLang.HolProg 64 :=
.seq NamedBody696_489 NamedBody696_2370

def NamedBody696_2372 : StackLang.HolProg 64 :=
.seq NamedBody696_480 NamedBody696_2371

def NamedBody696_2373 : StackLang.HolProg 64 :=
.seq NamedBody696_479 NamedBody696_2372

def NamedBody696_2374 : StackLang.HolProg 64 :=
.seq NamedBody696_478 NamedBody696_2373

def NamedBody696_2375 : StackLang.HolProg 64 :=
.seq NamedBody696_477 NamedBody696_2374

def NamedBody696_2376 : StackLang.HolProg 64 :=
.seq NamedBody696_476 NamedBody696_2375

def NamedBody696_2377 : StackLang.HolProg 64 :=
.seq NamedBody696_475 NamedBody696_2376

def NamedBody696_2378 : StackLang.HolProg 64 :=
.seq NamedBody696_474 NamedBody696_2377

def NamedBody696_2379 : StackLang.HolProg 64 :=
.seq NamedBody696_407 NamedBody696_2378

def NamedBody696_2380 : StackLang.HolProg 64 :=
.seq NamedBody696_398 NamedBody696_2379

def NamedBody696_2381 : StackLang.HolProg 64 :=
.seq NamedBody696_397 NamedBody696_2380

def NamedBody696_2382 : StackLang.HolProg 64 :=
.seq NamedBody696_396 NamedBody696_2381

def NamedBody696_2383 : StackLang.HolProg 64 :=
.seq NamedBody696_395 NamedBody696_2382

def NamedBody696_2384 : StackLang.HolProg 64 :=
.seq NamedBody696_394 NamedBody696_2383

def NamedBody696_2385 : StackLang.HolProg 64 :=
.seq NamedBody696_393 NamedBody696_2384

def NamedBody696_2386 : StackLang.HolProg 64 :=
.seq NamedBody696_392 NamedBody696_2385

def NamedBody696_2387 : StackLang.HolProg 64 :=
.seq NamedBody696_317 NamedBody696_2386

def NamedBody696_2388 : StackLang.HolProg 64 :=
.seq NamedBody696_302 NamedBody696_2387

def NamedBody696_2389 : StackLang.HolProg 64 :=
.seq NamedBody696_301 NamedBody696_2388

def NamedBody696_2390 : StackLang.HolProg 64 :=
.seq NamedBody696_300 NamedBody696_2389

def NamedBody696_2391 : StackLang.HolProg 64 :=
.seq NamedBody696_299 NamedBody696_2390

def NamedBody696_2392 : StackLang.HolProg 64 :=
.seq NamedBody696_298 NamedBody696_2391

def NamedBody696_2393 : StackLang.HolProg 64 :=
.seq NamedBody696_297 NamedBody696_2392

def NamedBody696_2394 : StackLang.HolProg 64 :=
.seq NamedBody696_296 NamedBody696_2393

def NamedBody696_2395 : StackLang.HolProg 64 :=
.seq NamedBody696_223 NamedBody696_2394

def NamedBody696_2396 : StackLang.HolProg 64 :=
.seq NamedBody696_214 NamedBody696_2395

def NamedBody696_2397 : StackLang.HolProg 64 :=
.seq NamedBody696_213 NamedBody696_2396

def NamedBody696_2398 : StackLang.HolProg 64 :=
.seq NamedBody696_212 NamedBody696_2397

def NamedBody696_2399 : StackLang.HolProg 64 :=
.seq NamedBody696_211 NamedBody696_2398

def NamedBody696_2400 : StackLang.HolProg 64 :=
.seq NamedBody696_210 NamedBody696_2399

def NamedBody696_2401 : StackLang.HolProg 64 :=
.seq NamedBody696_153 NamedBody696_2400

def NamedBody696_2402 : StackLang.HolProg 64 :=
.seq NamedBody696_144 NamedBody696_2401

def NamedBody696_2403 : StackLang.HolProg 64 :=
.seq NamedBody696_143 NamedBody696_2402

def NamedBody696_2404 : StackLang.HolProg 64 :=
.seq NamedBody696_142 NamedBody696_2403

def NamedBody696_2405 : StackLang.HolProg 64 :=
.seq NamedBody696_141 NamedBody696_2404

def NamedBody696_2406 : StackLang.HolProg 64 :=
.seq NamedBody696_140 NamedBody696_2405

def NamedBody696_2407 : StackLang.HolProg 64 :=
.seq NamedBody696_83 NamedBody696_2406

def NamedBody696_2408 : StackLang.HolProg 64 :=
.seq NamedBody696_74 NamedBody696_2407

def NamedBody696_2409 : StackLang.HolProg 64 :=
.seq NamedBody696_73 NamedBody696_2408

def NamedBody696_2410 : StackLang.HolProg 64 :=
.seq NamedBody696_72 NamedBody696_2409

def NamedBody696_2411 : StackLang.HolProg 64 :=
.seq NamedBody696_71 NamedBody696_2410

def NamedBody696_2412 : StackLang.HolProg 64 :=
.seq NamedBody696_70 NamedBody696_2411

def NamedBody696_2413 : StackLang.HolProg 64 :=
.seq NamedBody696_13 NamedBody696_2412

def NamedBody696_2414 : StackLang.HolProg 64 :=
.seq NamedBody696_8 NamedBody696_2413

def NamedBody696_2415 : StackLang.HolProg 64 :=
.seq NamedBody696_7 NamedBody696_2414

def NamedBody696_2416 : StackLang.HolProg 64 :=
.seq NamedBody696_6 NamedBody696_2415

def Named696 : Nat × StackLang.HolProg 64 := (696, NamedBody696_2416)
theorem Named696_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed696 = Named696 := by
  kernel_rfl
#print axioms Named696_eq
end InitECandidate.Proofs.BackendStages
