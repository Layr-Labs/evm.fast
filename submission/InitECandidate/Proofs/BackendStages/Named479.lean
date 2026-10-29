import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed479
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody479_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody479_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody479_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody479_3 : StackLang.HolProg 64 :=
.seq NamedBody479_1 NamedBody479_2

def NamedBody479_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody479_3 NamedBody479_4

def NamedBody479_6 : StackLang.HolProg 64 :=
.seq NamedBody479_0 NamedBody479_5

def NamedBody479_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody479_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1501#64)

def NamedBody479_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody479_11 : StackLang.HolProg 64 :=
.seq NamedBody479_9 NamedBody479_10

def NamedBody479_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody479_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody479_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody479_15 : StackLang.HolProg 64 :=
.seq NamedBody479_13 NamedBody479_14

def NamedBody479_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody479_15 NamedBody479_16

def NamedBody479_18 : StackLang.HolProg 64 :=
.seq NamedBody479_12 NamedBody479_17

def NamedBody479_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody479_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody479_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 479 3

def NamedBody479_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody479_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody479_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody479_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody479_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody479_28 : StackLang.HolProg 64 :=
.seq NamedBody479_26 NamedBody479_27

def NamedBody479_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody479_30 : StackLang.HolProg 64 :=
.seq NamedBody479_28 NamedBody479_29

def NamedBody479_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody479_32 : StackLang.HolProg 64 :=
.seq NamedBody479_30 NamedBody479_31

def NamedBody479_33 : StackLang.HolProg 64 :=
.seq NamedBody479_25 NamedBody479_32

def NamedBody479_34 : StackLang.HolProg 64 :=
.seq NamedBody479_24 NamedBody479_33

def NamedBody479_35 : StackLang.HolProg 64 :=
.seq NamedBody479_23 NamedBody479_34

def NamedBody479_36 : StackLang.HolProg 64 :=
.seq NamedBody479_22 NamedBody479_35

def NamedBody479_37 : StackLang.HolProg 64 :=
.seq NamedBody479_21 NamedBody479_36

def NamedBody479_38 : StackLang.HolProg 64 :=
.seq NamedBody479_20 NamedBody479_37

def NamedBody479_39 : StackLang.HolProg 64 :=
.seq NamedBody479_19 NamedBody479_38

def NamedBody479_40 : StackLang.HolProg 64 :=
.seq NamedBody479_18 NamedBody479_39

def NamedBody479_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody479_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody479_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody479_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody479_48 : StackLang.HolProg 64 :=
.seq NamedBody479_46 NamedBody479_47

def NamedBody479_49 : StackLang.HolProg 64 :=
.seq NamedBody479_45 NamedBody479_48

def NamedBody479_50 : StackLang.HolProg 64 :=
.seq NamedBody479_44 NamedBody479_49

def NamedBody479_51 : StackLang.HolProg 64 :=
.seq NamedBody479_43 NamedBody479_50

def NamedBody479_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody479_54 : StackLang.HolProg 64 :=
.seq NamedBody479_52 NamedBody479_53

def NamedBody479_55 : StackLang.HolProg 64 :=
.call (some (NamedBody479_51, 1, 479, 2)) (Sum.inl 465) (some (NamedBody479_54, 479, 3))

def NamedBody479_56 : StackLang.HolProg 64 :=
.seq NamedBody479_42 NamedBody479_55

def NamedBody479_57 : StackLang.HolProg 64 :=
.seq NamedBody479_41 NamedBody479_56

def NamedBody479_58 : StackLang.HolProg 64 :=
.seq NamedBody479_40 NamedBody479_57

def NamedBody479_59 : StackLang.HolProg 64 :=
.seq NamedBody479_11 NamedBody479_58

def NamedBody479_60 : StackLang.HolProg 64 :=
.seq NamedBody479_8 NamedBody479_59

def NamedBody479_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody479_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody479_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody479_64 : StackLang.HolProg 64 :=
.seq NamedBody479_62 NamedBody479_63

def NamedBody479_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1502#64)

def NamedBody479_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody479_68 : StackLang.HolProg 64 :=
.seq NamedBody479_66 NamedBody479_67

def NamedBody479_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody479_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody479_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody479_72 : StackLang.HolProg 64 :=
.seq NamedBody479_70 NamedBody479_71

def NamedBody479_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody479_72 NamedBody479_73

def NamedBody479_75 : StackLang.HolProg 64 :=
.seq NamedBody479_69 NamedBody479_74

def NamedBody479_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody479_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody479_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 479 5

def NamedBody479_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody479_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody479_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody479_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody479_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody479_85 : StackLang.HolProg 64 :=
.seq NamedBody479_83 NamedBody479_84

def NamedBody479_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody479_87 : StackLang.HolProg 64 :=
.seq NamedBody479_85 NamedBody479_86

def NamedBody479_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody479_89 : StackLang.HolProg 64 :=
.seq NamedBody479_87 NamedBody479_88

def NamedBody479_90 : StackLang.HolProg 64 :=
.seq NamedBody479_82 NamedBody479_89

def NamedBody479_91 : StackLang.HolProg 64 :=
.seq NamedBody479_81 NamedBody479_90

def NamedBody479_92 : StackLang.HolProg 64 :=
.seq NamedBody479_80 NamedBody479_91

def NamedBody479_93 : StackLang.HolProg 64 :=
.seq NamedBody479_79 NamedBody479_92

def NamedBody479_94 : StackLang.HolProg 64 :=
.seq NamedBody479_78 NamedBody479_93

def NamedBody479_95 : StackLang.HolProg 64 :=
.seq NamedBody479_77 NamedBody479_94

def NamedBody479_96 : StackLang.HolProg 64 :=
.seq NamedBody479_76 NamedBody479_95

def NamedBody479_97 : StackLang.HolProg 64 :=
.seq NamedBody479_75 NamedBody479_96

def NamedBody479_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody479_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody479_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody479_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody479_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody479_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody479_107 : StackLang.HolProg 64 :=
.seq NamedBody479_105 NamedBody479_106

def NamedBody479_108 : StackLang.HolProg 64 :=
.seq NamedBody479_104 NamedBody479_107

def NamedBody479_109 : StackLang.HolProg 64 :=
.seq NamedBody479_103 NamedBody479_108

def NamedBody479_110 : StackLang.HolProg 64 :=
.seq NamedBody479_102 NamedBody479_109

def NamedBody479_111 : StackLang.HolProg 64 :=
.seq NamedBody479_101 NamedBody479_110

def NamedBody479_112 : StackLang.HolProg 64 :=
.seq NamedBody479_100 NamedBody479_111

def NamedBody479_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody479_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody479_115 : StackLang.HolProg 64 :=
.seq NamedBody479_113 NamedBody479_114

def NamedBody479_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody479_117 : StackLang.HolProg 64 :=
.seq NamedBody479_115 NamedBody479_116

def NamedBody479_118 : StackLang.HolProg 64 :=
.call (some (NamedBody479_112, 1, 479, 4)) (Sum.inl 119) (some (NamedBody479_117, 479, 5))

def NamedBody479_119 : StackLang.HolProg 64 :=
.seq NamedBody479_99 NamedBody479_118

def NamedBody479_120 : StackLang.HolProg 64 :=
.seq NamedBody479_98 NamedBody479_119

def NamedBody479_121 : StackLang.HolProg 64 :=
.seq NamedBody479_97 NamedBody479_120

def NamedBody479_122 : StackLang.HolProg 64 :=
.seq NamedBody479_68 NamedBody479_121

def NamedBody479_123 : StackLang.HolProg 64 :=
.seq NamedBody479_65 NamedBody479_122

def NamedBody479_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody479_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody479_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody479_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody479_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody479_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody479_132 : StackLang.HolProg 64 :=
.seq NamedBody479_130 NamedBody479_131

def NamedBody479_133 : StackLang.HolProg 64 :=
.seq NamedBody479_129 NamedBody479_132

def NamedBody479_134 : StackLang.HolProg 64 :=
.seq NamedBody479_128 NamedBody479_133

def NamedBody479_135 : StackLang.HolProg 64 :=
.seq NamedBody479_127 NamedBody479_134

def NamedBody479_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody479_135 NamedBody479_136

def NamedBody479_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody479_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody479_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 3#64)

def NamedBody479_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody479_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody479_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def NamedBody479_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody479_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1503#64)

def NamedBody479_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody479_150 : StackLang.HolProg 64 :=
.seq NamedBody479_148 NamedBody479_149

def NamedBody479_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody479_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody479_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody479_154 : StackLang.HolProg 64 :=
.seq NamedBody479_152 NamedBody479_153

def NamedBody479_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_156 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody479_154 NamedBody479_155

def NamedBody479_157 : StackLang.HolProg 64 :=
.seq NamedBody479_151 NamedBody479_156

def NamedBody479_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody479_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody479_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 479 7

def NamedBody479_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody479_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody479_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody479_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody479_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody479_167 : StackLang.HolProg 64 :=
.seq NamedBody479_165 NamedBody479_166

def NamedBody479_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody479_169 : StackLang.HolProg 64 :=
.seq NamedBody479_167 NamedBody479_168

def NamedBody479_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody479_171 : StackLang.HolProg 64 :=
.seq NamedBody479_169 NamedBody479_170

def NamedBody479_172 : StackLang.HolProg 64 :=
.seq NamedBody479_164 NamedBody479_171

def NamedBody479_173 : StackLang.HolProg 64 :=
.seq NamedBody479_163 NamedBody479_172

def NamedBody479_174 : StackLang.HolProg 64 :=
.seq NamedBody479_162 NamedBody479_173

def NamedBody479_175 : StackLang.HolProg 64 :=
.seq NamedBody479_161 NamedBody479_174

def NamedBody479_176 : StackLang.HolProg 64 :=
.seq NamedBody479_160 NamedBody479_175

def NamedBody479_177 : StackLang.HolProg 64 :=
.seq NamedBody479_159 NamedBody479_176

def NamedBody479_178 : StackLang.HolProg 64 :=
.seq NamedBody479_158 NamedBody479_177

def NamedBody479_179 : StackLang.HolProg 64 :=
.seq NamedBody479_157 NamedBody479_178

def NamedBody479_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody479_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody479_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody479_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody479_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody479_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody479_188 : StackLang.HolProg 64 :=
.seq NamedBody479_186 NamedBody479_187

def NamedBody479_189 : StackLang.HolProg 64 :=
.seq NamedBody479_185 NamedBody479_188

def NamedBody479_190 : StackLang.HolProg 64 :=
.seq NamedBody479_184 NamedBody479_189

def NamedBody479_191 : StackLang.HolProg 64 :=
.seq NamedBody479_183 NamedBody479_190

def NamedBody479_192 : StackLang.HolProg 64 :=
.seq NamedBody479_182 NamedBody479_191

def NamedBody479_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody479_194 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody479_195 : StackLang.HolProg 64 :=
.seq NamedBody479_193 NamedBody479_194

def NamedBody479_196 : StackLang.HolProg 64 :=
.call (some (NamedBody479_192, 1, 479, 6)) (Sum.inl 463) (some (NamedBody479_195, 479, 7))

def NamedBody479_197 : StackLang.HolProg 64 :=
.seq NamedBody479_181 NamedBody479_196

def NamedBody479_198 : StackLang.HolProg 64 :=
.seq NamedBody479_180 NamedBody479_197

def NamedBody479_199 : StackLang.HolProg 64 :=
.seq NamedBody479_179 NamedBody479_198

def NamedBody479_200 : StackLang.HolProg 64 :=
.seq NamedBody479_150 NamedBody479_199

def NamedBody479_201 : StackLang.HolProg 64 :=
.seq NamedBody479_147 NamedBody479_200

def NamedBody479_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody479_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody479_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody479_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody479_206 : StackLang.HolProg 64 :=
.seq NamedBody479_204 NamedBody479_205

def NamedBody479_207 : StackLang.HolProg 64 :=
.seq NamedBody479_203 NamedBody479_206

def NamedBody479_208 : StackLang.HolProg 64 :=
.seq NamedBody479_202 NamedBody479_207

def NamedBody479_209 : StackLang.HolProg 64 :=
.seq NamedBody479_201 NamedBody479_208

def NamedBody479_210 : StackLang.HolProg 64 :=
.seq NamedBody479_146 NamedBody479_209

def NamedBody479_211 : StackLang.HolProg 64 :=
.seq NamedBody479_145 NamedBody479_210

def NamedBody479_212 : StackLang.HolProg 64 :=
.seq NamedBody479_144 NamedBody479_211

def NamedBody479_213 : StackLang.HolProg 64 :=
.seq NamedBody479_143 NamedBody479_212

def NamedBody479_214 : StackLang.HolProg 64 :=
.seq NamedBody479_142 NamedBody479_213

def NamedBody479_215 : StackLang.HolProg 64 :=
.seq NamedBody479_141 NamedBody479_214

def NamedBody479_216 : StackLang.HolProg 64 :=
.seq NamedBody479_140 NamedBody479_215

def NamedBody479_217 : StackLang.HolProg 64 :=
.seq NamedBody479_139 NamedBody479_216

def NamedBody479_218 : StackLang.HolProg 64 :=
.seq NamedBody479_138 NamedBody479_217

def NamedBody479_219 : StackLang.HolProg 64 :=
.seq NamedBody479_137 NamedBody479_218

def NamedBody479_220 : StackLang.HolProg 64 :=
.seq NamedBody479_126 NamedBody479_219

def NamedBody479_221 : StackLang.HolProg 64 :=
.seq NamedBody479_125 NamedBody479_220

def NamedBody479_222 : StackLang.HolProg 64 :=
.seq NamedBody479_124 NamedBody479_221

def NamedBody479_223 : StackLang.HolProg 64 :=
.seq NamedBody479_123 NamedBody479_222

def NamedBody479_224 : StackLang.HolProg 64 :=
.seq NamedBody479_64 NamedBody479_223

def NamedBody479_225 : StackLang.HolProg 64 :=
.seq NamedBody479_61 NamedBody479_224

def NamedBody479_226 : StackLang.HolProg 64 :=
.seq NamedBody479_60 NamedBody479_225

def NamedBody479_227 : StackLang.HolProg 64 :=
.seq NamedBody479_7 NamedBody479_226

def NamedBody479_228 : StackLang.HolProg 64 :=
.seq NamedBody479_6 NamedBody479_227

def Named479 : Nat × StackLang.HolProg 64 := (479, NamedBody479_228)
theorem Named479_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed479 = Named479 := by
  kernel_rfl
#print axioms Named479_eq
end InitECandidate.Proofs.BackendStages
