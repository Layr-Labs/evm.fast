import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed148
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody148_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody148_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody148_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody148_3 : StackLang.HolProg 64 :=
.seq NamedBody148_1 NamedBody148_2

def NamedBody148_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody148_3 NamedBody148_4

def NamedBody148_6 : StackLang.HolProg 64 :=
.seq NamedBody148_0 NamedBody148_5

def NamedBody148_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody148_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody148_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody148_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody148_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody148_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody148_13 : StackLang.HolProg 64 :=
.seq NamedBody148_11 NamedBody148_12

def NamedBody148_14 : StackLang.HolProg 64 :=
.seq NamedBody148_10 NamedBody148_13

def NamedBody148_15 : StackLang.HolProg 64 :=
.seq NamedBody148_9 NamedBody148_14

def NamedBody148_16 : StackLang.HolProg 64 :=
.seq NamedBody148_8 NamedBody148_15

def NamedBody148_17 : StackLang.HolProg 64 :=
.seq NamedBody148_7 NamedBody148_16

def NamedBody148_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 124#64)

def NamedBody148_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody148_21 : StackLang.HolProg 64 :=
.seq NamedBody148_19 NamedBody148_20

def NamedBody148_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody148_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody148_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody148_25 : StackLang.HolProg 64 :=
.seq NamedBody148_23 NamedBody148_24

def NamedBody148_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody148_25 NamedBody148_26

def NamedBody148_28 : StackLang.HolProg 64 :=
.seq NamedBody148_22 NamedBody148_27

def NamedBody148_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody148_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody148_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 148 3

def NamedBody148_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody148_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody148_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody148_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody148_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody148_38 : StackLang.HolProg 64 :=
.seq NamedBody148_36 NamedBody148_37

def NamedBody148_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody148_40 : StackLang.HolProg 64 :=
.seq NamedBody148_38 NamedBody148_39

def NamedBody148_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody148_42 : StackLang.HolProg 64 :=
.seq NamedBody148_40 NamedBody148_41

def NamedBody148_43 : StackLang.HolProg 64 :=
.seq NamedBody148_35 NamedBody148_42

def NamedBody148_44 : StackLang.HolProg 64 :=
.seq NamedBody148_34 NamedBody148_43

def NamedBody148_45 : StackLang.HolProg 64 :=
.seq NamedBody148_33 NamedBody148_44

def NamedBody148_46 : StackLang.HolProg 64 :=
.seq NamedBody148_32 NamedBody148_45

def NamedBody148_47 : StackLang.HolProg 64 :=
.seq NamedBody148_31 NamedBody148_46

def NamedBody148_48 : StackLang.HolProg 64 :=
.seq NamedBody148_30 NamedBody148_47

def NamedBody148_49 : StackLang.HolProg 64 :=
.seq NamedBody148_29 NamedBody148_48

def NamedBody148_50 : StackLang.HolProg 64 :=
.seq NamedBody148_28 NamedBody148_49

def NamedBody148_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody148_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody148_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody148_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody148_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody148_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody148_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody148_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody148_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody148_63 : StackLang.HolProg 64 :=
.seq NamedBody148_61 NamedBody148_62

def NamedBody148_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody148_65 : StackLang.HolProg 64 :=
.seq NamedBody148_63 NamedBody148_64

def NamedBody148_66 : StackLang.HolProg 64 :=
.seq NamedBody148_60 NamedBody148_65

def NamedBody148_67 : StackLang.HolProg 64 :=
.seq NamedBody148_59 NamedBody148_66

def NamedBody148_68 : StackLang.HolProg 64 :=
.seq NamedBody148_58 NamedBody148_67

def NamedBody148_69 : StackLang.HolProg 64 :=
.seq NamedBody148_57 NamedBody148_68

def NamedBody148_70 : StackLang.HolProg 64 :=
.seq NamedBody148_56 NamedBody148_69

def NamedBody148_71 : StackLang.HolProg 64 :=
.seq NamedBody148_55 NamedBody148_70

def NamedBody148_72 : StackLang.HolProg 64 :=
.seq NamedBody148_54 NamedBody148_71

def NamedBody148_73 : StackLang.HolProg 64 :=
.seq NamedBody148_53 NamedBody148_72

def NamedBody148_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody148_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody148_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody148_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody148_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody148_79 : StackLang.HolProg 64 :=
.seq NamedBody148_77 NamedBody148_78

def NamedBody148_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody148_81 : StackLang.HolProg 64 :=
.seq NamedBody148_79 NamedBody148_80

def NamedBody148_82 : StackLang.HolProg 64 :=
.seq NamedBody148_76 NamedBody148_81

def NamedBody148_83 : StackLang.HolProg 64 :=
.seq NamedBody148_75 NamedBody148_82

def NamedBody148_84 : StackLang.HolProg 64 :=
.seq NamedBody148_74 NamedBody148_83

def NamedBody148_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody148_86 : StackLang.HolProg 64 :=
.seq NamedBody148_84 NamedBody148_85

def NamedBody148_87 : StackLang.HolProg 64 :=
.call (some (NamedBody148_73, 1, 148, 2)) (Sum.inl 139) (some (NamedBody148_86, 148, 3))

def NamedBody148_88 : StackLang.HolProg 64 :=
.seq NamedBody148_52 NamedBody148_87

def NamedBody148_89 : StackLang.HolProg 64 :=
.seq NamedBody148_51 NamedBody148_88

def NamedBody148_90 : StackLang.HolProg 64 :=
.seq NamedBody148_50 NamedBody148_89

def NamedBody148_91 : StackLang.HolProg 64 :=
.seq NamedBody148_21 NamedBody148_90

def NamedBody148_92 : StackLang.HolProg 64 :=
.seq NamedBody148_18 NamedBody148_91

def NamedBody148_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody148_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody148_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody148_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody148_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody148_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody148_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody148_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody148_105 : StackLang.HolProg 64 :=
.seq NamedBody148_103 NamedBody148_104

def NamedBody148_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody148_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody148_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody148_109 : StackLang.HolProg 64 :=
.seq NamedBody148_107 NamedBody148_108

def NamedBody148_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody148_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody148_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody148_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody148_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody148_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody148_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody148_117 : StackLang.HolProg 64 :=
.seq NamedBody148_115 NamedBody148_116

def NamedBody148_118 : StackLang.HolProg 64 :=
.seq NamedBody148_114 NamedBody148_117

def NamedBody148_119 : StackLang.HolProg 64 :=
.seq NamedBody148_113 NamedBody148_118

def NamedBody148_120 : StackLang.HolProg 64 :=
.seq NamedBody148_112 NamedBody148_119

def NamedBody148_121 : StackLang.HolProg 64 :=
.seq NamedBody148_111 NamedBody148_120

def NamedBody148_122 : StackLang.HolProg 64 :=
.seq NamedBody148_110 NamedBody148_121

def NamedBody148_123 : StackLang.HolProg 64 :=
.seq NamedBody148_109 NamedBody148_122

def NamedBody148_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 125#64)

def NamedBody148_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody148_127 : StackLang.HolProg 64 :=
.seq NamedBody148_125 NamedBody148_126

def NamedBody148_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody148_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody148_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody148_131 : StackLang.HolProg 64 :=
.seq NamedBody148_129 NamedBody148_130

def NamedBody148_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody148_131 NamedBody148_132

def NamedBody148_134 : StackLang.HolProg 64 :=
.seq NamedBody148_128 NamedBody148_133

def NamedBody148_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody148_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody148_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 148 5

def NamedBody148_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody148_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody148_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody148_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody148_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody148_144 : StackLang.HolProg 64 :=
.seq NamedBody148_142 NamedBody148_143

def NamedBody148_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody148_146 : StackLang.HolProg 64 :=
.seq NamedBody148_144 NamedBody148_145

def NamedBody148_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody148_148 : StackLang.HolProg 64 :=
.seq NamedBody148_146 NamedBody148_147

def NamedBody148_149 : StackLang.HolProg 64 :=
.seq NamedBody148_141 NamedBody148_148

def NamedBody148_150 : StackLang.HolProg 64 :=
.seq NamedBody148_140 NamedBody148_149

def NamedBody148_151 : StackLang.HolProg 64 :=
.seq NamedBody148_139 NamedBody148_150

def NamedBody148_152 : StackLang.HolProg 64 :=
.seq NamedBody148_138 NamedBody148_151

def NamedBody148_153 : StackLang.HolProg 64 :=
.seq NamedBody148_137 NamedBody148_152

def NamedBody148_154 : StackLang.HolProg 64 :=
.seq NamedBody148_136 NamedBody148_153

def NamedBody148_155 : StackLang.HolProg 64 :=
.seq NamedBody148_135 NamedBody148_154

def NamedBody148_156 : StackLang.HolProg 64 :=
.seq NamedBody148_134 NamedBody148_155

def NamedBody148_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody148_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody148_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody148_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody148_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody148_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody148_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody148_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody148_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody148_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody148_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody148_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody148_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody148_173 : StackLang.HolProg 64 :=
.seq NamedBody148_171 NamedBody148_172

def NamedBody148_174 : StackLang.HolProg 64 :=
.seq NamedBody148_170 NamedBody148_173

def NamedBody148_175 : StackLang.HolProg 64 :=
.seq NamedBody148_169 NamedBody148_174

def NamedBody148_176 : StackLang.HolProg 64 :=
.seq NamedBody148_168 NamedBody148_175

def NamedBody148_177 : StackLang.HolProg 64 :=
.seq NamedBody148_167 NamedBody148_176

def NamedBody148_178 : StackLang.HolProg 64 :=
.seq NamedBody148_166 NamedBody148_177

def NamedBody148_179 : StackLang.HolProg 64 :=
.seq NamedBody148_165 NamedBody148_178

def NamedBody148_180 : StackLang.HolProg 64 :=
.seq NamedBody148_164 NamedBody148_179

def NamedBody148_181 : StackLang.HolProg 64 :=
.seq NamedBody148_163 NamedBody148_180

def NamedBody148_182 : StackLang.HolProg 64 :=
.seq NamedBody148_162 NamedBody148_181

def NamedBody148_183 : StackLang.HolProg 64 :=
.seq NamedBody148_161 NamedBody148_182

def NamedBody148_184 : StackLang.HolProg 64 :=
.seq NamedBody148_160 NamedBody148_183

def NamedBody148_185 : StackLang.HolProg 64 :=
.seq NamedBody148_159 NamedBody148_184

def NamedBody148_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody148_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody148_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody148_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody148_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody148_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody148_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody148_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody148_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody148_195 : StackLang.HolProg 64 :=
.seq NamedBody148_193 NamedBody148_194

def NamedBody148_196 : StackLang.HolProg 64 :=
.seq NamedBody148_192 NamedBody148_195

def NamedBody148_197 : StackLang.HolProg 64 :=
.seq NamedBody148_191 NamedBody148_196

def NamedBody148_198 : StackLang.HolProg 64 :=
.seq NamedBody148_190 NamedBody148_197

def NamedBody148_199 : StackLang.HolProg 64 :=
.seq NamedBody148_189 NamedBody148_198

def NamedBody148_200 : StackLang.HolProg 64 :=
.seq NamedBody148_188 NamedBody148_199

def NamedBody148_201 : StackLang.HolProg 64 :=
.seq NamedBody148_187 NamedBody148_200

def NamedBody148_202 : StackLang.HolProg 64 :=
.seq NamedBody148_186 NamedBody148_201

def NamedBody148_203 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody148_204 : StackLang.HolProg 64 :=
.seq NamedBody148_202 NamedBody148_203

def NamedBody148_205 : StackLang.HolProg 64 :=
.call (some (NamedBody148_185, 1, 148, 4)) (Sum.inl 103) (some (NamedBody148_204, 148, 5))

def NamedBody148_206 : StackLang.HolProg 64 :=
.seq NamedBody148_158 NamedBody148_205

def NamedBody148_207 : StackLang.HolProg 64 :=
.seq NamedBody148_157 NamedBody148_206

def NamedBody148_208 : StackLang.HolProg 64 :=
.seq NamedBody148_156 NamedBody148_207

def NamedBody148_209 : StackLang.HolProg 64 :=
.seq NamedBody148_127 NamedBody148_208

def NamedBody148_210 : StackLang.HolProg 64 :=
.seq NamedBody148_124 NamedBody148_209

def NamedBody148_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody148_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 28 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody148_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody148_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody148_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody148_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def NamedBody148_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 28 0#64))

def NamedBody148_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody148_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody148_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody148_225 : StackLang.HolProg 64 :=
.seq NamedBody148_223 NamedBody148_224

def NamedBody148_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody148_227 : StackLang.HolProg 64 :=
.seq NamedBody148_225 NamedBody148_226

def NamedBody148_228 : StackLang.HolProg 64 :=
.seq NamedBody148_222 NamedBody148_227

def NamedBody148_229 : StackLang.HolProg 64 :=
.seq NamedBody148_221 NamedBody148_228

def NamedBody148_230 : StackLang.HolProg 64 :=
.seq NamedBody148_220 NamedBody148_229

def NamedBody148_231 : StackLang.HolProg 64 :=
.seq NamedBody148_219 NamedBody148_230

def NamedBody148_232 : StackLang.HolProg 64 :=
.seq NamedBody148_218 NamedBody148_231

def NamedBody148_233 : StackLang.HolProg 64 :=
.seq NamedBody148_217 NamedBody148_232

def NamedBody148_234 : StackLang.HolProg 64 :=
.seq NamedBody148_216 NamedBody148_233

def NamedBody148_235 : StackLang.HolProg 64 :=
.seq NamedBody148_215 NamedBody148_234

def NamedBody148_236 : StackLang.HolProg 64 :=
.seq NamedBody148_214 NamedBody148_235

def NamedBody148_237 : StackLang.HolProg 64 :=
.seq NamedBody148_213 NamedBody148_236

def NamedBody148_238 : StackLang.HolProg 64 :=
.seq NamedBody148_212 NamedBody148_237

def NamedBody148_239 : StackLang.HolProg 64 :=
.seq NamedBody148_211 NamedBody148_238

def NamedBody148_240 : StackLang.HolProg 64 :=
.seq NamedBody148_210 NamedBody148_239

def NamedBody148_241 : StackLang.HolProg 64 :=
.seq NamedBody148_123 NamedBody148_240

def NamedBody148_242 : StackLang.HolProg 64 :=
.seq NamedBody148_106 NamedBody148_241

def NamedBody148_243 : StackLang.HolProg 64 :=
.seq NamedBody148_105 NamedBody148_242

def NamedBody148_244 : StackLang.HolProg 64 :=
.seq NamedBody148_102 NamedBody148_243

def NamedBody148_245 : StackLang.HolProg 64 :=
.seq NamedBody148_101 NamedBody148_244

def NamedBody148_246 : StackLang.HolProg 64 :=
.seq NamedBody148_100 NamedBody148_245

def NamedBody148_247 : StackLang.HolProg 64 :=
.seq NamedBody148_99 NamedBody148_246

def NamedBody148_248 : StackLang.HolProg 64 :=
.seq NamedBody148_98 NamedBody148_247

def NamedBody148_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody148_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody148_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody148_252 : StackLang.HolProg 64 :=
.seq NamedBody148_250 NamedBody148_251

def NamedBody148_253 : StackLang.HolProg 64 :=
.seq NamedBody148_249 NamedBody148_252

def NamedBody148_254 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody148_248 NamedBody148_253

def NamedBody148_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody148_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody148_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody148_258 : StackLang.HolProg 64 :=
.seq NamedBody148_256 NamedBody148_257

def NamedBody148_259 : StackLang.HolProg 64 :=
.seq NamedBody148_255 NamedBody148_258

def NamedBody148_260 : StackLang.HolProg 64 :=
.seq NamedBody148_254 NamedBody148_259

def NamedBody148_261 : StackLang.HolProg 64 :=
.seq NamedBody148_97 NamedBody148_260

def NamedBody148_262 : StackLang.HolProg 64 :=
.loop NamedBody148_261

def NamedBody148_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody148_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody148_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody148_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody148_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody148_268 : StackLang.HolProg 64 :=
.seq NamedBody148_266 NamedBody148_267

def NamedBody148_269 : StackLang.HolProg 64 :=
.seq NamedBody148_265 NamedBody148_268

def NamedBody148_270 : StackLang.HolProg 64 :=
.seq NamedBody148_264 NamedBody148_269

def NamedBody148_271 : StackLang.HolProg 64 :=
.seq NamedBody148_263 NamedBody148_270

def NamedBody148_272 : StackLang.HolProg 64 :=
.seq NamedBody148_262 NamedBody148_271

def NamedBody148_273 : StackLang.HolProg 64 :=
.seq NamedBody148_96 NamedBody148_272

def NamedBody148_274 : StackLang.HolProg 64 :=
.seq NamedBody148_95 NamedBody148_273

def NamedBody148_275 : StackLang.HolProg 64 :=
.seq NamedBody148_94 NamedBody148_274

def NamedBody148_276 : StackLang.HolProg 64 :=
.seq NamedBody148_93 NamedBody148_275

def NamedBody148_277 : StackLang.HolProg 64 :=
.seq NamedBody148_92 NamedBody148_276

def NamedBody148_278 : StackLang.HolProg 64 :=
.seq NamedBody148_17 NamedBody148_277

def NamedBody148_279 : StackLang.HolProg 64 :=
.seq NamedBody148_6 NamedBody148_278

def Named148 : Nat × StackLang.HolProg 64 := (148, NamedBody148_279)
theorem Named148_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed148 = Named148 := by
  kernel_rfl
#print axioms Named148_eq
end InitECandidate.Proofs.BackendStages
