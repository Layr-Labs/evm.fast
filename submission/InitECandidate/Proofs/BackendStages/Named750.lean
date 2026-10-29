import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed750
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody750_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody750_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody750_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody750_3 : StackLang.HolProg 64 :=
.seq NamedBody750_1 NamedBody750_2

def NamedBody750_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody750_3 NamedBody750_4

def NamedBody750_6 : StackLang.HolProg 64 :=
.seq NamedBody750_0 NamedBody750_5

def NamedBody750_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody750_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody750_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody750_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody750_11 : StackLang.HolProg 64 :=
.seq NamedBody750_9 NamedBody750_10

def NamedBody750_12 : StackLang.HolProg 64 :=
.seq NamedBody750_8 NamedBody750_11

def NamedBody750_13 : StackLang.HolProg 64 :=
.seq NamedBody750_7 NamedBody750_12

def NamedBody750_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3314#64)

def NamedBody750_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody750_17 : StackLang.HolProg 64 :=
.seq NamedBody750_15 NamedBody750_16

def NamedBody750_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody750_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody750_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody750_21 : StackLang.HolProg 64 :=
.seq NamedBody750_19 NamedBody750_20

def NamedBody750_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody750_21 NamedBody750_22

def NamedBody750_24 : StackLang.HolProg 64 :=
.seq NamedBody750_18 NamedBody750_23

def NamedBody750_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody750_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody750_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 750 3

def NamedBody750_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody750_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody750_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody750_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody750_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody750_34 : StackLang.HolProg 64 :=
.seq NamedBody750_32 NamedBody750_33

def NamedBody750_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody750_36 : StackLang.HolProg 64 :=
.seq NamedBody750_34 NamedBody750_35

def NamedBody750_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody750_38 : StackLang.HolProg 64 :=
.seq NamedBody750_36 NamedBody750_37

def NamedBody750_39 : StackLang.HolProg 64 :=
.seq NamedBody750_31 NamedBody750_38

def NamedBody750_40 : StackLang.HolProg 64 :=
.seq NamedBody750_30 NamedBody750_39

def NamedBody750_41 : StackLang.HolProg 64 :=
.seq NamedBody750_29 NamedBody750_40

def NamedBody750_42 : StackLang.HolProg 64 :=
.seq NamedBody750_28 NamedBody750_41

def NamedBody750_43 : StackLang.HolProg 64 :=
.seq NamedBody750_27 NamedBody750_42

def NamedBody750_44 : StackLang.HolProg 64 :=
.seq NamedBody750_26 NamedBody750_43

def NamedBody750_45 : StackLang.HolProg 64 :=
.seq NamedBody750_25 NamedBody750_44

def NamedBody750_46 : StackLang.HolProg 64 :=
.seq NamedBody750_24 NamedBody750_45

def NamedBody750_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody750_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody750_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody750_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody750_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody750_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody750_56 : StackLang.HolProg 64 :=
.seq NamedBody750_54 NamedBody750_55

def NamedBody750_57 : StackLang.HolProg 64 :=
.seq NamedBody750_53 NamedBody750_56

def NamedBody750_58 : StackLang.HolProg 64 :=
.seq NamedBody750_52 NamedBody750_57

def NamedBody750_59 : StackLang.HolProg 64 :=
.seq NamedBody750_51 NamedBody750_58

def NamedBody750_60 : StackLang.HolProg 64 :=
.seq NamedBody750_50 NamedBody750_59

def NamedBody750_61 : StackLang.HolProg 64 :=
.seq NamedBody750_49 NamedBody750_60

def NamedBody750_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody750_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody750_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody750_65 : StackLang.HolProg 64 :=
.seq NamedBody750_63 NamedBody750_64

def NamedBody750_66 : StackLang.HolProg 64 :=
.seq NamedBody750_62 NamedBody750_65

def NamedBody750_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody750_68 : StackLang.HolProg 64 :=
.seq NamedBody750_66 NamedBody750_67

def NamedBody750_69 : StackLang.HolProg 64 :=
.call (some (NamedBody750_61, 1, 750, 2)) (Sum.inl 735) (some (NamedBody750_68, 750, 3))

def NamedBody750_70 : StackLang.HolProg 64 :=
.seq NamedBody750_48 NamedBody750_69

def NamedBody750_71 : StackLang.HolProg 64 :=
.seq NamedBody750_47 NamedBody750_70

def NamedBody750_72 : StackLang.HolProg 64 :=
.seq NamedBody750_46 NamedBody750_71

def NamedBody750_73 : StackLang.HolProg 64 :=
.seq NamedBody750_17 NamedBody750_72

def NamedBody750_74 : StackLang.HolProg 64 :=
.seq NamedBody750_14 NamedBody750_73

def NamedBody750_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody750_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody750_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody750_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody750_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody750_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody750_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody750_85 : StackLang.HolProg 64 :=
.seq NamedBody750_83 NamedBody750_84

def NamedBody750_86 : StackLang.HolProg 64 :=
.seq NamedBody750_82 NamedBody750_85

def NamedBody750_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3315#64)

def NamedBody750_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody750_90 : StackLang.HolProg 64 :=
.seq NamedBody750_88 NamedBody750_89

def NamedBody750_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody750_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody750_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody750_94 : StackLang.HolProg 64 :=
.seq NamedBody750_92 NamedBody750_93

def NamedBody750_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody750_94 NamedBody750_95

def NamedBody750_97 : StackLang.HolProg 64 :=
.seq NamedBody750_91 NamedBody750_96

def NamedBody750_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody750_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody750_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 750 5

def NamedBody750_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody750_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody750_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody750_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody750_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody750_107 : StackLang.HolProg 64 :=
.seq NamedBody750_105 NamedBody750_106

def NamedBody750_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody750_109 : StackLang.HolProg 64 :=
.seq NamedBody750_107 NamedBody750_108

def NamedBody750_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody750_111 : StackLang.HolProg 64 :=
.seq NamedBody750_109 NamedBody750_110

def NamedBody750_112 : StackLang.HolProg 64 :=
.seq NamedBody750_104 NamedBody750_111

def NamedBody750_113 : StackLang.HolProg 64 :=
.seq NamedBody750_103 NamedBody750_112

def NamedBody750_114 : StackLang.HolProg 64 :=
.seq NamedBody750_102 NamedBody750_113

def NamedBody750_115 : StackLang.HolProg 64 :=
.seq NamedBody750_101 NamedBody750_114

def NamedBody750_116 : StackLang.HolProg 64 :=
.seq NamedBody750_100 NamedBody750_115

def NamedBody750_117 : StackLang.HolProg 64 :=
.seq NamedBody750_99 NamedBody750_116

def NamedBody750_118 : StackLang.HolProg 64 :=
.seq NamedBody750_98 NamedBody750_117

def NamedBody750_119 : StackLang.HolProg 64 :=
.seq NamedBody750_97 NamedBody750_118

def NamedBody750_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody750_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody750_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody750_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody750_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody750_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody750_129 : StackLang.HolProg 64 :=
.seq NamedBody750_127 NamedBody750_128

def NamedBody750_130 : StackLang.HolProg 64 :=
.seq NamedBody750_126 NamedBody750_129

def NamedBody750_131 : StackLang.HolProg 64 :=
.seq NamedBody750_125 NamedBody750_130

def NamedBody750_132 : StackLang.HolProg 64 :=
.seq NamedBody750_124 NamedBody750_131

def NamedBody750_133 : StackLang.HolProg 64 :=
.seq NamedBody750_123 NamedBody750_132

def NamedBody750_134 : StackLang.HolProg 64 :=
.seq NamedBody750_122 NamedBody750_133

def NamedBody750_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody750_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody750_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody750_138 : StackLang.HolProg 64 :=
.seq NamedBody750_136 NamedBody750_137

def NamedBody750_139 : StackLang.HolProg 64 :=
.seq NamedBody750_135 NamedBody750_138

def NamedBody750_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody750_141 : StackLang.HolProg 64 :=
.seq NamedBody750_139 NamedBody750_140

def NamedBody750_142 : StackLang.HolProg 64 :=
.call (some (NamedBody750_134, 1, 750, 4)) (Sum.inl 735) (some (NamedBody750_141, 750, 5))

def NamedBody750_143 : StackLang.HolProg 64 :=
.seq NamedBody750_121 NamedBody750_142

def NamedBody750_144 : StackLang.HolProg 64 :=
.seq NamedBody750_120 NamedBody750_143

def NamedBody750_145 : StackLang.HolProg 64 :=
.seq NamedBody750_119 NamedBody750_144

def NamedBody750_146 : StackLang.HolProg 64 :=
.seq NamedBody750_90 NamedBody750_145

def NamedBody750_147 : StackLang.HolProg 64 :=
.seq NamedBody750_87 NamedBody750_146

def NamedBody750_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody750_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody750_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody750_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody750_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3316#64)

def NamedBody750_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody750_159 : StackLang.HolProg 64 :=
.seq NamedBody750_157 NamedBody750_158

def NamedBody750_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody750_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody750_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody750_163 : StackLang.HolProg 64 :=
.seq NamedBody750_161 NamedBody750_162

def NamedBody750_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_165 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody750_163 NamedBody750_164

def NamedBody750_166 : StackLang.HolProg 64 :=
.seq NamedBody750_160 NamedBody750_165

def NamedBody750_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody750_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody750_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 750 7

def NamedBody750_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody750_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody750_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody750_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody750_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody750_176 : StackLang.HolProg 64 :=
.seq NamedBody750_174 NamedBody750_175

def NamedBody750_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody750_178 : StackLang.HolProg 64 :=
.seq NamedBody750_176 NamedBody750_177

def NamedBody750_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody750_180 : StackLang.HolProg 64 :=
.seq NamedBody750_178 NamedBody750_179

def NamedBody750_181 : StackLang.HolProg 64 :=
.seq NamedBody750_173 NamedBody750_180

def NamedBody750_182 : StackLang.HolProg 64 :=
.seq NamedBody750_172 NamedBody750_181

def NamedBody750_183 : StackLang.HolProg 64 :=
.seq NamedBody750_171 NamedBody750_182

def NamedBody750_184 : StackLang.HolProg 64 :=
.seq NamedBody750_170 NamedBody750_183

def NamedBody750_185 : StackLang.HolProg 64 :=
.seq NamedBody750_169 NamedBody750_184

def NamedBody750_186 : StackLang.HolProg 64 :=
.seq NamedBody750_168 NamedBody750_185

def NamedBody750_187 : StackLang.HolProg 64 :=
.seq NamedBody750_167 NamedBody750_186

def NamedBody750_188 : StackLang.HolProg 64 :=
.seq NamedBody750_166 NamedBody750_187

def NamedBody750_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody750_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody750_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody750_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody750_196 : StackLang.HolProg 64 :=
.seq NamedBody750_194 NamedBody750_195

def NamedBody750_197 : StackLang.HolProg 64 :=
.seq NamedBody750_193 NamedBody750_196

def NamedBody750_198 : StackLang.HolProg 64 :=
.seq NamedBody750_192 NamedBody750_197

def NamedBody750_199 : StackLang.HolProg 64 :=
.seq NamedBody750_191 NamedBody750_198

def NamedBody750_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody750_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody750_202 : StackLang.HolProg 64 :=
.seq NamedBody750_200 NamedBody750_201

def NamedBody750_203 : StackLang.HolProg 64 :=
.call (some (NamedBody750_199, 1, 750, 6)) (Sum.inl 735) (some (NamedBody750_202, 750, 7))

def NamedBody750_204 : StackLang.HolProg 64 :=
.seq NamedBody750_190 NamedBody750_203

def NamedBody750_205 : StackLang.HolProg 64 :=
.seq NamedBody750_189 NamedBody750_204

def NamedBody750_206 : StackLang.HolProg 64 :=
.seq NamedBody750_188 NamedBody750_205

def NamedBody750_207 : StackLang.HolProg 64 :=
.seq NamedBody750_159 NamedBody750_206

def NamedBody750_208 : StackLang.HolProg 64 :=
.seq NamedBody750_156 NamedBody750_207

def NamedBody750_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody750_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody750_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody750_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody750_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody750_214 : StackLang.HolProg 64 :=
.seq NamedBody750_212 NamedBody750_213

def NamedBody750_215 : StackLang.HolProg 64 :=
.seq NamedBody750_211 NamedBody750_214

def NamedBody750_216 : StackLang.HolProg 64 :=
.seq NamedBody750_210 NamedBody750_215

def NamedBody750_217 : StackLang.HolProg 64 :=
.seq NamedBody750_209 NamedBody750_216

def NamedBody750_218 : StackLang.HolProg 64 :=
.seq NamedBody750_208 NamedBody750_217

def NamedBody750_219 : StackLang.HolProg 64 :=
.seq NamedBody750_155 NamedBody750_218

def NamedBody750_220 : StackLang.HolProg 64 :=
.seq NamedBody750_154 NamedBody750_219

def NamedBody750_221 : StackLang.HolProg 64 :=
.seq NamedBody750_153 NamedBody750_220

def NamedBody750_222 : StackLang.HolProg 64 :=
.seq NamedBody750_152 NamedBody750_221

def NamedBody750_223 : StackLang.HolProg 64 :=
.seq NamedBody750_151 NamedBody750_222

def NamedBody750_224 : StackLang.HolProg 64 :=
.seq NamedBody750_150 NamedBody750_223

def NamedBody750_225 : StackLang.HolProg 64 :=
.seq NamedBody750_149 NamedBody750_224

def NamedBody750_226 : StackLang.HolProg 64 :=
.seq NamedBody750_148 NamedBody750_225

def NamedBody750_227 : StackLang.HolProg 64 :=
.seq NamedBody750_147 NamedBody750_226

def NamedBody750_228 : StackLang.HolProg 64 :=
.seq NamedBody750_86 NamedBody750_227

def NamedBody750_229 : StackLang.HolProg 64 :=
.seq NamedBody750_81 NamedBody750_228

def NamedBody750_230 : StackLang.HolProg 64 :=
.seq NamedBody750_80 NamedBody750_229

def NamedBody750_231 : StackLang.HolProg 64 :=
.seq NamedBody750_79 NamedBody750_230

def NamedBody750_232 : StackLang.HolProg 64 :=
.seq NamedBody750_78 NamedBody750_231

def NamedBody750_233 : StackLang.HolProg 64 :=
.seq NamedBody750_77 NamedBody750_232

def NamedBody750_234 : StackLang.HolProg 64 :=
.seq NamedBody750_76 NamedBody750_233

def NamedBody750_235 : StackLang.HolProg 64 :=
.seq NamedBody750_75 NamedBody750_234

def NamedBody750_236 : StackLang.HolProg 64 :=
.seq NamedBody750_74 NamedBody750_235

def NamedBody750_237 : StackLang.HolProg 64 :=
.seq NamedBody750_13 NamedBody750_236

def NamedBody750_238 : StackLang.HolProg 64 :=
.seq NamedBody750_6 NamedBody750_237

def Named750 : Nat × StackLang.HolProg 64 := (750, NamedBody750_238)
theorem Named750_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed750 = Named750 := by
  kernel_rfl
#print axioms Named750_eq
end InitECandidate.Proofs.BackendStages
