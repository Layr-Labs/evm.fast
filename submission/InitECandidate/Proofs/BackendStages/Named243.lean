import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed243
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody243_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody243_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody243_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody243_3 : StackLang.HolProg 64 :=
.seq NamedBody243_1 NamedBody243_2

def NamedBody243_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody243_3 NamedBody243_4

def NamedBody243_6 : StackLang.HolProg 64 :=
.seq NamedBody243_0 NamedBody243_5

def NamedBody243_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody243_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody243_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody243_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody243_12 : StackLang.HolProg 64 :=
.seq NamedBody243_10 NamedBody243_11

def NamedBody243_13 : StackLang.HolProg 64 :=
.seq NamedBody243_9 NamedBody243_12

def NamedBody243_14 : StackLang.HolProg 64 :=
.seq NamedBody243_8 NamedBody243_13

def NamedBody243_15 : StackLang.HolProg 64 :=
.seq NamedBody243_7 NamedBody243_14

def NamedBody243_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 476#64)

def NamedBody243_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody243_19 : StackLang.HolProg 64 :=
.seq NamedBody243_17 NamedBody243_18

def NamedBody243_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody243_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody243_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody243_23 : StackLang.HolProg 64 :=
.seq NamedBody243_21 NamedBody243_22

def NamedBody243_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody243_23 NamedBody243_24

def NamedBody243_26 : StackLang.HolProg 64 :=
.seq NamedBody243_20 NamedBody243_25

def NamedBody243_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody243_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody243_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 3

def NamedBody243_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody243_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody243_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody243_36 : StackLang.HolProg 64 :=
.seq NamedBody243_34 NamedBody243_35

def NamedBody243_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody243_38 : StackLang.HolProg 64 :=
.seq NamedBody243_36 NamedBody243_37

def NamedBody243_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_40 : StackLang.HolProg 64 :=
.seq NamedBody243_38 NamedBody243_39

def NamedBody243_41 : StackLang.HolProg 64 :=
.seq NamedBody243_33 NamedBody243_40

def NamedBody243_42 : StackLang.HolProg 64 :=
.seq NamedBody243_32 NamedBody243_41

def NamedBody243_43 : StackLang.HolProg 64 :=
.seq NamedBody243_31 NamedBody243_42

def NamedBody243_44 : StackLang.HolProg 64 :=
.seq NamedBody243_30 NamedBody243_43

def NamedBody243_45 : StackLang.HolProg 64 :=
.seq NamedBody243_29 NamedBody243_44

def NamedBody243_46 : StackLang.HolProg 64 :=
.seq NamedBody243_28 NamedBody243_45

def NamedBody243_47 : StackLang.HolProg 64 :=
.seq NamedBody243_27 NamedBody243_46

def NamedBody243_48 : StackLang.HolProg 64 :=
.seq NamedBody243_26 NamedBody243_47

def NamedBody243_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody243_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody243_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody243_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_58 : StackLang.HolProg 64 :=
.seq NamedBody243_56 NamedBody243_57

def NamedBody243_59 : StackLang.HolProg 64 :=
.seq NamedBody243_55 NamedBody243_58

def NamedBody243_60 : StackLang.HolProg 64 :=
.seq NamedBody243_54 NamedBody243_59

def NamedBody243_61 : StackLang.HolProg 64 :=
.seq NamedBody243_53 NamedBody243_60

def NamedBody243_62 : StackLang.HolProg 64 :=
.seq NamedBody243_52 NamedBody243_61

def NamedBody243_63 : StackLang.HolProg 64 :=
.seq NamedBody243_51 NamedBody243_62

def NamedBody243_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody243_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_66 : StackLang.HolProg 64 :=
.seq NamedBody243_64 NamedBody243_65

def NamedBody243_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody243_68 : StackLang.HolProg 64 :=
.seq NamedBody243_66 NamedBody243_67

def NamedBody243_69 : StackLang.HolProg 64 :=
.call (some (NamedBody243_63, 1, 243, 2)) (Sum.inl 69) (some (NamedBody243_68, 243, 3))

def NamedBody243_70 : StackLang.HolProg 64 :=
.seq NamedBody243_50 NamedBody243_69

def NamedBody243_71 : StackLang.HolProg 64 :=
.seq NamedBody243_49 NamedBody243_70

def NamedBody243_72 : StackLang.HolProg 64 :=
.seq NamedBody243_48 NamedBody243_71

def NamedBody243_73 : StackLang.HolProg 64 :=
.seq NamedBody243_19 NamedBody243_72

def NamedBody243_74 : StackLang.HolProg 64 :=
.seq NamedBody243_16 NamedBody243_73

def NamedBody243_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody243_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody243_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody243_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_79 : StackLang.HolProg 64 :=
.seq NamedBody243_77 NamedBody243_78

def NamedBody243_80 : StackLang.HolProg 64 :=
.seq NamedBody243_76 NamedBody243_79

def NamedBody243_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 477#64)

def NamedBody243_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody243_84 : StackLang.HolProg 64 :=
.seq NamedBody243_82 NamedBody243_83

def NamedBody243_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody243_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody243_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody243_88 : StackLang.HolProg 64 :=
.seq NamedBody243_86 NamedBody243_87

def NamedBody243_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody243_88 NamedBody243_89

def NamedBody243_91 : StackLang.HolProg 64 :=
.seq NamedBody243_85 NamedBody243_90

def NamedBody243_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody243_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody243_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 5

def NamedBody243_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody243_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody243_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody243_101 : StackLang.HolProg 64 :=
.seq NamedBody243_99 NamedBody243_100

def NamedBody243_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody243_103 : StackLang.HolProg 64 :=
.seq NamedBody243_101 NamedBody243_102

def NamedBody243_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_105 : StackLang.HolProg 64 :=
.seq NamedBody243_103 NamedBody243_104

def NamedBody243_106 : StackLang.HolProg 64 :=
.seq NamedBody243_98 NamedBody243_105

def NamedBody243_107 : StackLang.HolProg 64 :=
.seq NamedBody243_97 NamedBody243_106

def NamedBody243_108 : StackLang.HolProg 64 :=
.seq NamedBody243_96 NamedBody243_107

def NamedBody243_109 : StackLang.HolProg 64 :=
.seq NamedBody243_95 NamedBody243_108

def NamedBody243_110 : StackLang.HolProg 64 :=
.seq NamedBody243_94 NamedBody243_109

def NamedBody243_111 : StackLang.HolProg 64 :=
.seq NamedBody243_93 NamedBody243_110

def NamedBody243_112 : StackLang.HolProg 64 :=
.seq NamedBody243_92 NamedBody243_111

def NamedBody243_113 : StackLang.HolProg 64 :=
.seq NamedBody243_91 NamedBody243_112

def NamedBody243_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody243_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody243_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody243_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody243_123 : StackLang.HolProg 64 :=
.seq NamedBody243_121 NamedBody243_122

def NamedBody243_124 : StackLang.HolProg 64 :=
.seq NamedBody243_120 NamedBody243_123

def NamedBody243_125 : StackLang.HolProg 64 :=
.seq NamedBody243_119 NamedBody243_124

def NamedBody243_126 : StackLang.HolProg 64 :=
.seq NamedBody243_118 NamedBody243_125

def NamedBody243_127 : StackLang.HolProg 64 :=
.seq NamedBody243_117 NamedBody243_126

def NamedBody243_128 : StackLang.HolProg 64 :=
.seq NamedBody243_116 NamedBody243_127

def NamedBody243_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody243_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody243_131 : StackLang.HolProg 64 :=
.seq NamedBody243_129 NamedBody243_130

def NamedBody243_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody243_133 : StackLang.HolProg 64 :=
.seq NamedBody243_131 NamedBody243_132

def NamedBody243_134 : StackLang.HolProg 64 :=
.call (some (NamedBody243_128, 1, 243, 4)) (Sum.inl 241) (some (NamedBody243_133, 243, 5))

def NamedBody243_135 : StackLang.HolProg 64 :=
.seq NamedBody243_115 NamedBody243_134

def NamedBody243_136 : StackLang.HolProg 64 :=
.seq NamedBody243_114 NamedBody243_135

def NamedBody243_137 : StackLang.HolProg 64 :=
.seq NamedBody243_113 NamedBody243_136

def NamedBody243_138 : StackLang.HolProg 64 :=
.seq NamedBody243_84 NamedBody243_137

def NamedBody243_139 : StackLang.HolProg 64 :=
.seq NamedBody243_81 NamedBody243_138

def NamedBody243_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody243_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody243_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody243_143 : StackLang.HolProg 64 :=
.seq NamedBody243_141 NamedBody243_142

def NamedBody243_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 478#64)

def NamedBody243_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody243_147 : StackLang.HolProg 64 :=
.seq NamedBody243_145 NamedBody243_146

def NamedBody243_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody243_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody243_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody243_151 : StackLang.HolProg 64 :=
.seq NamedBody243_149 NamedBody243_150

def NamedBody243_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_153 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody243_151 NamedBody243_152

def NamedBody243_154 : StackLang.HolProg 64 :=
.seq NamedBody243_148 NamedBody243_153

def NamedBody243_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody243_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody243_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 7

def NamedBody243_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody243_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody243_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody243_164 : StackLang.HolProg 64 :=
.seq NamedBody243_162 NamedBody243_163

def NamedBody243_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody243_166 : StackLang.HolProg 64 :=
.seq NamedBody243_164 NamedBody243_165

def NamedBody243_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_168 : StackLang.HolProg 64 :=
.seq NamedBody243_166 NamedBody243_167

def NamedBody243_169 : StackLang.HolProg 64 :=
.seq NamedBody243_161 NamedBody243_168

def NamedBody243_170 : StackLang.HolProg 64 :=
.seq NamedBody243_160 NamedBody243_169

def NamedBody243_171 : StackLang.HolProg 64 :=
.seq NamedBody243_159 NamedBody243_170

def NamedBody243_172 : StackLang.HolProg 64 :=
.seq NamedBody243_158 NamedBody243_171

def NamedBody243_173 : StackLang.HolProg 64 :=
.seq NamedBody243_157 NamedBody243_172

def NamedBody243_174 : StackLang.HolProg 64 :=
.seq NamedBody243_156 NamedBody243_173

def NamedBody243_175 : StackLang.HolProg 64 :=
.seq NamedBody243_155 NamedBody243_174

def NamedBody243_176 : StackLang.HolProg 64 :=
.seq NamedBody243_154 NamedBody243_175

def NamedBody243_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody243_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_184 : StackLang.HolProg 64 :=
.seq NamedBody243_182 NamedBody243_183

def NamedBody243_185 : StackLang.HolProg 64 :=
.seq NamedBody243_181 NamedBody243_184

def NamedBody243_186 : StackLang.HolProg 64 :=
.seq NamedBody243_180 NamedBody243_185

def NamedBody243_187 : StackLang.HolProg 64 :=
.seq NamedBody243_179 NamedBody243_186

def NamedBody243_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_189 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody243_190 : StackLang.HolProg 64 :=
.seq NamedBody243_188 NamedBody243_189

def NamedBody243_191 : StackLang.HolProg 64 :=
.call (some (NamedBody243_187, 1, 243, 6)) (Sum.inl 235) (some (NamedBody243_190, 243, 7))

def NamedBody243_192 : StackLang.HolProg 64 :=
.seq NamedBody243_178 NamedBody243_191

def NamedBody243_193 : StackLang.HolProg 64 :=
.seq NamedBody243_177 NamedBody243_192

def NamedBody243_194 : StackLang.HolProg 64 :=
.seq NamedBody243_176 NamedBody243_193

def NamedBody243_195 : StackLang.HolProg 64 :=
.seq NamedBody243_147 NamedBody243_194

def NamedBody243_196 : StackLang.HolProg 64 :=
.seq NamedBody243_144 NamedBody243_195

def NamedBody243_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody243_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody243_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 479#64)

def NamedBody243_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody243_202 : StackLang.HolProg 64 :=
.seq NamedBody243_200 NamedBody243_201

def NamedBody243_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody243_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody243_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody243_206 : StackLang.HolProg 64 :=
.seq NamedBody243_204 NamedBody243_205

def NamedBody243_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_208 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody243_206 NamedBody243_207

def NamedBody243_209 : StackLang.HolProg 64 :=
.seq NamedBody243_203 NamedBody243_208

def NamedBody243_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody243_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody243_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 9

def NamedBody243_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody243_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody243_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody243_219 : StackLang.HolProg 64 :=
.seq NamedBody243_217 NamedBody243_218

def NamedBody243_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody243_221 : StackLang.HolProg 64 :=
.seq NamedBody243_219 NamedBody243_220

def NamedBody243_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_223 : StackLang.HolProg 64 :=
.seq NamedBody243_221 NamedBody243_222

def NamedBody243_224 : StackLang.HolProg 64 :=
.seq NamedBody243_216 NamedBody243_223

def NamedBody243_225 : StackLang.HolProg 64 :=
.seq NamedBody243_215 NamedBody243_224

def NamedBody243_226 : StackLang.HolProg 64 :=
.seq NamedBody243_214 NamedBody243_225

def NamedBody243_227 : StackLang.HolProg 64 :=
.seq NamedBody243_213 NamedBody243_226

def NamedBody243_228 : StackLang.HolProg 64 :=
.seq NamedBody243_212 NamedBody243_227

def NamedBody243_229 : StackLang.HolProg 64 :=
.seq NamedBody243_211 NamedBody243_228

def NamedBody243_230 : StackLang.HolProg 64 :=
.seq NamedBody243_210 NamedBody243_229

def NamedBody243_231 : StackLang.HolProg 64 :=
.seq NamedBody243_209 NamedBody243_230

def NamedBody243_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody243_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody243_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody243_240 : StackLang.HolProg 64 :=
.seq NamedBody243_238 NamedBody243_239

def NamedBody243_241 : StackLang.HolProg 64 :=
.seq NamedBody243_237 NamedBody243_240

def NamedBody243_242 : StackLang.HolProg 64 :=
.seq NamedBody243_236 NamedBody243_241

def NamedBody243_243 : StackLang.HolProg 64 :=
.seq NamedBody243_235 NamedBody243_242

def NamedBody243_244 : StackLang.HolProg 64 :=
.seq NamedBody243_234 NamedBody243_243

def NamedBody243_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody243_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody243_247 : StackLang.HolProg 64 :=
.seq NamedBody243_245 NamedBody243_246

def NamedBody243_248 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody243_249 : StackLang.HolProg 64 :=
.seq NamedBody243_247 NamedBody243_248

def NamedBody243_250 : StackLang.HolProg 64 :=
.call (some (NamedBody243_244, 1, 243, 8)) (Sum.inl 70) (some (NamedBody243_249, 243, 9))

def NamedBody243_251 : StackLang.HolProg 64 :=
.seq NamedBody243_233 NamedBody243_250

def NamedBody243_252 : StackLang.HolProg 64 :=
.seq NamedBody243_232 NamedBody243_251

def NamedBody243_253 : StackLang.HolProg 64 :=
.seq NamedBody243_231 NamedBody243_252

def NamedBody243_254 : StackLang.HolProg 64 :=
.seq NamedBody243_202 NamedBody243_253

def NamedBody243_255 : StackLang.HolProg 64 :=
.seq NamedBody243_199 NamedBody243_254

def NamedBody243_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody243_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody243_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 480#64)

def NamedBody243_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody243_261 : StackLang.HolProg 64 :=
.seq NamedBody243_259 NamedBody243_260

def NamedBody243_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody243_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody243_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody243_265 : StackLang.HolProg 64 :=
.seq NamedBody243_263 NamedBody243_264

def NamedBody243_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_267 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody243_265 NamedBody243_266

def NamedBody243_268 : StackLang.HolProg 64 :=
.seq NamedBody243_262 NamedBody243_267

def NamedBody243_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody243_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody243_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 243 11

def NamedBody243_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody243_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody243_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody243_278 : StackLang.HolProg 64 :=
.seq NamedBody243_276 NamedBody243_277

def NamedBody243_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody243_280 : StackLang.HolProg 64 :=
.seq NamedBody243_278 NamedBody243_279

def NamedBody243_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_282 : StackLang.HolProg 64 :=
.seq NamedBody243_280 NamedBody243_281

def NamedBody243_283 : StackLang.HolProg 64 :=
.seq NamedBody243_275 NamedBody243_282

def NamedBody243_284 : StackLang.HolProg 64 :=
.seq NamedBody243_274 NamedBody243_283

def NamedBody243_285 : StackLang.HolProg 64 :=
.seq NamedBody243_273 NamedBody243_284

def NamedBody243_286 : StackLang.HolProg 64 :=
.seq NamedBody243_272 NamedBody243_285

def NamedBody243_287 : StackLang.HolProg 64 :=
.seq NamedBody243_271 NamedBody243_286

def NamedBody243_288 : StackLang.HolProg 64 :=
.seq NamedBody243_270 NamedBody243_287

def NamedBody243_289 : StackLang.HolProg 64 :=
.seq NamedBody243_269 NamedBody243_288

def NamedBody243_290 : StackLang.HolProg 64 :=
.seq NamedBody243_268 NamedBody243_289

def NamedBody243_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody243_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody243_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody243_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody243_298 : StackLang.HolProg 64 :=
.seq NamedBody243_296 NamedBody243_297

def NamedBody243_299 : StackLang.HolProg 64 :=
.seq NamedBody243_295 NamedBody243_298

def NamedBody243_300 : StackLang.HolProg 64 :=
.seq NamedBody243_294 NamedBody243_299

def NamedBody243_301 : StackLang.HolProg 64 :=
.seq NamedBody243_293 NamedBody243_300

def NamedBody243_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody243_303 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody243_304 : StackLang.HolProg 64 :=
.seq NamedBody243_302 NamedBody243_303

def NamedBody243_305 : StackLang.HolProg 64 :=
.call (some (NamedBody243_301, 1, 243, 10)) (Sum.inl 236) (some (NamedBody243_304, 243, 11))

def NamedBody243_306 : StackLang.HolProg 64 :=
.seq NamedBody243_292 NamedBody243_305

def NamedBody243_307 : StackLang.HolProg 64 :=
.seq NamedBody243_291 NamedBody243_306

def NamedBody243_308 : StackLang.HolProg 64 :=
.seq NamedBody243_290 NamedBody243_307

def NamedBody243_309 : StackLang.HolProg 64 :=
.seq NamedBody243_261 NamedBody243_308

def NamedBody243_310 : StackLang.HolProg 64 :=
.seq NamedBody243_258 NamedBody243_309

def NamedBody243_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody243_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody243_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody243_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody243_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody243_316 : StackLang.HolProg 64 :=
.seq NamedBody243_314 NamedBody243_315

def NamedBody243_317 : StackLang.HolProg 64 :=
.seq NamedBody243_313 NamedBody243_316

def NamedBody243_318 : StackLang.HolProg 64 :=
.seq NamedBody243_312 NamedBody243_317

def NamedBody243_319 : StackLang.HolProg 64 :=
.seq NamedBody243_311 NamedBody243_318

def NamedBody243_320 : StackLang.HolProg 64 :=
.seq NamedBody243_310 NamedBody243_319

def NamedBody243_321 : StackLang.HolProg 64 :=
.seq NamedBody243_257 NamedBody243_320

def NamedBody243_322 : StackLang.HolProg 64 :=
.seq NamedBody243_256 NamedBody243_321

def NamedBody243_323 : StackLang.HolProg 64 :=
.seq NamedBody243_255 NamedBody243_322

def NamedBody243_324 : StackLang.HolProg 64 :=
.seq NamedBody243_198 NamedBody243_323

def NamedBody243_325 : StackLang.HolProg 64 :=
.seq NamedBody243_197 NamedBody243_324

def NamedBody243_326 : StackLang.HolProg 64 :=
.seq NamedBody243_196 NamedBody243_325

def NamedBody243_327 : StackLang.HolProg 64 :=
.seq NamedBody243_143 NamedBody243_326

def NamedBody243_328 : StackLang.HolProg 64 :=
.seq NamedBody243_140 NamedBody243_327

def NamedBody243_329 : StackLang.HolProg 64 :=
.seq NamedBody243_139 NamedBody243_328

def NamedBody243_330 : StackLang.HolProg 64 :=
.seq NamedBody243_80 NamedBody243_329

def NamedBody243_331 : StackLang.HolProg 64 :=
.seq NamedBody243_75 NamedBody243_330

def NamedBody243_332 : StackLang.HolProg 64 :=
.seq NamedBody243_74 NamedBody243_331

def NamedBody243_333 : StackLang.HolProg 64 :=
.seq NamedBody243_15 NamedBody243_332

def NamedBody243_334 : StackLang.HolProg 64 :=
.seq NamedBody243_6 NamedBody243_333

def Named243 : Nat × StackLang.HolProg 64 := (243, NamedBody243_334)
theorem Named243_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed243 = Named243 := by
  kernel_rfl
#print axioms Named243_eq
end InitECandidate.Proofs.BackendStages
