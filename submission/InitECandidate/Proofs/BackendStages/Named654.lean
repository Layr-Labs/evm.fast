import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed654
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody654_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def NamedBody654_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody654_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody654_3 : StackLang.HolProg 64 :=
.seq NamedBody654_1 NamedBody654_2

def NamedBody654_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody654_3 NamedBody654_4

def NamedBody654_6 : StackLang.HolProg 64 :=
.seq NamedBody654_0 NamedBody654_5

def NamedBody654_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody654_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody654_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody654_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody654_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody654_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody654_16 : StackLang.HolProg 64 :=
.seq NamedBody654_14 NamedBody654_15

def NamedBody654_17 : StackLang.HolProg 64 :=
.seq NamedBody654_13 NamedBody654_16

def NamedBody654_18 : StackLang.HolProg 64 :=
.seq NamedBody654_12 NamedBody654_17

def NamedBody654_19 : StackLang.HolProg 64 :=
.seq NamedBody654_11 NamedBody654_18

def NamedBody654_20 : StackLang.HolProg 64 :=
.seq NamedBody654_10 NamedBody654_19

def NamedBody654_21 : StackLang.HolProg 64 :=
.seq NamedBody654_9 NamedBody654_20

def NamedBody654_22 : StackLang.HolProg 64 :=
.seq NamedBody654_8 NamedBody654_21

def NamedBody654_23 : StackLang.HolProg 64 :=
.seq NamedBody654_7 NamedBody654_22

def NamedBody654_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2702#64)

def NamedBody654_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_27 : StackLang.HolProg 64 :=
.seq NamedBody654_25 NamedBody654_26

def NamedBody654_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody654_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody654_31 : StackLang.HolProg 64 :=
.seq NamedBody654_29 NamedBody654_30

def NamedBody654_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody654_31 NamedBody654_32

def NamedBody654_34 : StackLang.HolProg 64 :=
.seq NamedBody654_28 NamedBody654_33

def NamedBody654_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody654_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 3

def NamedBody654_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody654_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody654_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody654_44 : StackLang.HolProg 64 :=
.seq NamedBody654_42 NamedBody654_43

def NamedBody654_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody654_46 : StackLang.HolProg 64 :=
.seq NamedBody654_44 NamedBody654_45

def NamedBody654_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_48 : StackLang.HolProg 64 :=
.seq NamedBody654_46 NamedBody654_47

def NamedBody654_49 : StackLang.HolProg 64 :=
.seq NamedBody654_41 NamedBody654_48

def NamedBody654_50 : StackLang.HolProg 64 :=
.seq NamedBody654_40 NamedBody654_49

def NamedBody654_51 : StackLang.HolProg 64 :=
.seq NamedBody654_39 NamedBody654_50

def NamedBody654_52 : StackLang.HolProg 64 :=
.seq NamedBody654_38 NamedBody654_51

def NamedBody654_53 : StackLang.HolProg 64 :=
.seq NamedBody654_37 NamedBody654_52

def NamedBody654_54 : StackLang.HolProg 64 :=
.seq NamedBody654_36 NamedBody654_53

def NamedBody654_55 : StackLang.HolProg 64 :=
.seq NamedBody654_35 NamedBody654_54

def NamedBody654_56 : StackLang.HolProg 64 :=
.seq NamedBody654_34 NamedBody654_55

def NamedBody654_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody654_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody654_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_68 : StackLang.HolProg 64 :=
.seq NamedBody654_66 NamedBody654_67

def NamedBody654_69 : StackLang.HolProg 64 :=
.seq NamedBody654_65 NamedBody654_68

def NamedBody654_70 : StackLang.HolProg 64 :=
.seq NamedBody654_64 NamedBody654_69

def NamedBody654_71 : StackLang.HolProg 64 :=
.seq NamedBody654_63 NamedBody654_70

def NamedBody654_72 : StackLang.HolProg 64 :=
.seq NamedBody654_62 NamedBody654_71

def NamedBody654_73 : StackLang.HolProg 64 :=
.seq NamedBody654_61 NamedBody654_72

def NamedBody654_74 : StackLang.HolProg 64 :=
.seq NamedBody654_60 NamedBody654_73

def NamedBody654_75 : StackLang.HolProg 64 :=
.seq NamedBody654_59 NamedBody654_74

def NamedBody654_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody654_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_80 : StackLang.HolProg 64 :=
.seq NamedBody654_78 NamedBody654_79

def NamedBody654_81 : StackLang.HolProg 64 :=
.seq NamedBody654_77 NamedBody654_80

def NamedBody654_82 : StackLang.HolProg 64 :=
.seq NamedBody654_76 NamedBody654_81

def NamedBody654_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody654_84 : StackLang.HolProg 64 :=
.seq NamedBody654_82 NamedBody654_83

def NamedBody654_85 : StackLang.HolProg 64 :=
.call (some (NamedBody654_75, 1, 654, 2)) (Sum.inl 646) (some (NamedBody654_84, 654, 3))

def NamedBody654_86 : StackLang.HolProg 64 :=
.seq NamedBody654_58 NamedBody654_85

def NamedBody654_87 : StackLang.HolProg 64 :=
.seq NamedBody654_57 NamedBody654_86

def NamedBody654_88 : StackLang.HolProg 64 :=
.seq NamedBody654_56 NamedBody654_87

def NamedBody654_89 : StackLang.HolProg 64 :=
.seq NamedBody654_27 NamedBody654_88

def NamedBody654_90 : StackLang.HolProg 64 :=
.seq NamedBody654_24 NamedBody654_89

def NamedBody654_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody654_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody654_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody654_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody654_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody654_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody654_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody654_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody654_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_104 : StackLang.HolProg 64 :=
.seq NamedBody654_102 NamedBody654_103

def NamedBody654_105 : StackLang.HolProg 64 :=
.seq NamedBody654_101 NamedBody654_104

def NamedBody654_106 : StackLang.HolProg 64 :=
.seq NamedBody654_100 NamedBody654_105

def NamedBody654_107 : StackLang.HolProg 64 :=
.seq NamedBody654_99 NamedBody654_106

def NamedBody654_108 : StackLang.HolProg 64 :=
.seq NamedBody654_98 NamedBody654_107

def NamedBody654_109 : StackLang.HolProg 64 :=
.seq NamedBody654_97 NamedBody654_108

def NamedBody654_110 : StackLang.HolProg 64 :=
.seq NamedBody654_96 NamedBody654_109

def NamedBody654_111 : StackLang.HolProg 64 :=
.seq NamedBody654_95 NamedBody654_110

def NamedBody654_112 : StackLang.HolProg 64 :=
.seq NamedBody654_94 NamedBody654_111

def NamedBody654_113 : StackLang.HolProg 64 :=
.seq NamedBody654_93 NamedBody654_112

def NamedBody654_114 : StackLang.HolProg 64 :=
.seq NamedBody654_92 NamedBody654_113

def NamedBody654_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2703#64)

def NamedBody654_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_118 : StackLang.HolProg 64 :=
.seq NamedBody654_116 NamedBody654_117

def NamedBody654_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody654_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody654_122 : StackLang.HolProg 64 :=
.seq NamedBody654_120 NamedBody654_121

def NamedBody654_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody654_122 NamedBody654_123

def NamedBody654_125 : StackLang.HolProg 64 :=
.seq NamedBody654_119 NamedBody654_124

def NamedBody654_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody654_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 5

def NamedBody654_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody654_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody654_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody654_135 : StackLang.HolProg 64 :=
.seq NamedBody654_133 NamedBody654_134

def NamedBody654_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody654_137 : StackLang.HolProg 64 :=
.seq NamedBody654_135 NamedBody654_136

def NamedBody654_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_139 : StackLang.HolProg 64 :=
.seq NamedBody654_137 NamedBody654_138

def NamedBody654_140 : StackLang.HolProg 64 :=
.seq NamedBody654_132 NamedBody654_139

def NamedBody654_141 : StackLang.HolProg 64 :=
.seq NamedBody654_131 NamedBody654_140

def NamedBody654_142 : StackLang.HolProg 64 :=
.seq NamedBody654_130 NamedBody654_141

def NamedBody654_143 : StackLang.HolProg 64 :=
.seq NamedBody654_129 NamedBody654_142

def NamedBody654_144 : StackLang.HolProg 64 :=
.seq NamedBody654_128 NamedBody654_143

def NamedBody654_145 : StackLang.HolProg 64 :=
.seq NamedBody654_127 NamedBody654_144

def NamedBody654_146 : StackLang.HolProg 64 :=
.seq NamedBody654_126 NamedBody654_145

def NamedBody654_147 : StackLang.HolProg 64 :=
.seq NamedBody654_125 NamedBody654_146

def NamedBody654_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody654_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_159 : StackLang.HolProg 64 :=
.seq NamedBody654_157 NamedBody654_158

def NamedBody654_160 : StackLang.HolProg 64 :=
.seq NamedBody654_156 NamedBody654_159

def NamedBody654_161 : StackLang.HolProg 64 :=
.seq NamedBody654_155 NamedBody654_160

def NamedBody654_162 : StackLang.HolProg 64 :=
.seq NamedBody654_154 NamedBody654_161

def NamedBody654_163 : StackLang.HolProg 64 :=
.seq NamedBody654_153 NamedBody654_162

def NamedBody654_164 : StackLang.HolProg 64 :=
.seq NamedBody654_152 NamedBody654_163

def NamedBody654_165 : StackLang.HolProg 64 :=
.seq NamedBody654_151 NamedBody654_164

def NamedBody654_166 : StackLang.HolProg 64 :=
.seq NamedBody654_150 NamedBody654_165

def NamedBody654_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_171 : StackLang.HolProg 64 :=
.seq NamedBody654_169 NamedBody654_170

def NamedBody654_172 : StackLang.HolProg 64 :=
.seq NamedBody654_168 NamedBody654_171

def NamedBody654_173 : StackLang.HolProg 64 :=
.seq NamedBody654_167 NamedBody654_172

def NamedBody654_174 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody654_175 : StackLang.HolProg 64 :=
.seq NamedBody654_173 NamedBody654_174

def NamedBody654_176 : StackLang.HolProg 64 :=
.call (some (NamedBody654_166, 1, 654, 4)) (Sum.inl 646) (some (NamedBody654_175, 654, 5))

def NamedBody654_177 : StackLang.HolProg 64 :=
.seq NamedBody654_149 NamedBody654_176

def NamedBody654_178 : StackLang.HolProg 64 :=
.seq NamedBody654_148 NamedBody654_177

def NamedBody654_179 : StackLang.HolProg 64 :=
.seq NamedBody654_147 NamedBody654_178

def NamedBody654_180 : StackLang.HolProg 64 :=
.seq NamedBody654_118 NamedBody654_179

def NamedBody654_181 : StackLang.HolProg 64 :=
.seq NamedBody654_115 NamedBody654_180

def NamedBody654_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody654_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody654_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_188 : StackLang.HolProg 64 :=
.seq NamedBody654_186 NamedBody654_187

def NamedBody654_189 : StackLang.HolProg 64 :=
.seq NamedBody654_185 NamedBody654_188

def NamedBody654_190 : StackLang.HolProg 64 :=
.seq NamedBody654_184 NamedBody654_189

def NamedBody654_191 : StackLang.HolProg 64 :=
.seq NamedBody654_183 NamedBody654_190

def NamedBody654_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2704#64)

def NamedBody654_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_195 : StackLang.HolProg 64 :=
.seq NamedBody654_193 NamedBody654_194

def NamedBody654_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody654_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody654_199 : StackLang.HolProg 64 :=
.seq NamedBody654_197 NamedBody654_198

def NamedBody654_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody654_199 NamedBody654_200

def NamedBody654_202 : StackLang.HolProg 64 :=
.seq NamedBody654_196 NamedBody654_201

def NamedBody654_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody654_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 7

def NamedBody654_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody654_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody654_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody654_212 : StackLang.HolProg 64 :=
.seq NamedBody654_210 NamedBody654_211

def NamedBody654_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody654_214 : StackLang.HolProg 64 :=
.seq NamedBody654_212 NamedBody654_213

def NamedBody654_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_216 : StackLang.HolProg 64 :=
.seq NamedBody654_214 NamedBody654_215

def NamedBody654_217 : StackLang.HolProg 64 :=
.seq NamedBody654_209 NamedBody654_216

def NamedBody654_218 : StackLang.HolProg 64 :=
.seq NamedBody654_208 NamedBody654_217

def NamedBody654_219 : StackLang.HolProg 64 :=
.seq NamedBody654_207 NamedBody654_218

def NamedBody654_220 : StackLang.HolProg 64 :=
.seq NamedBody654_206 NamedBody654_219

def NamedBody654_221 : StackLang.HolProg 64 :=
.seq NamedBody654_205 NamedBody654_220

def NamedBody654_222 : StackLang.HolProg 64 :=
.seq NamedBody654_204 NamedBody654_221

def NamedBody654_223 : StackLang.HolProg 64 :=
.seq NamedBody654_203 NamedBody654_222

def NamedBody654_224 : StackLang.HolProg 64 :=
.seq NamedBody654_202 NamedBody654_223

def NamedBody654_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody654_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_236 : StackLang.HolProg 64 :=
.seq NamedBody654_234 NamedBody654_235

def NamedBody654_237 : StackLang.HolProg 64 :=
.seq NamedBody654_233 NamedBody654_236

def NamedBody654_238 : StackLang.HolProg 64 :=
.seq NamedBody654_232 NamedBody654_237

def NamedBody654_239 : StackLang.HolProg 64 :=
.seq NamedBody654_231 NamedBody654_238

def NamedBody654_240 : StackLang.HolProg 64 :=
.seq NamedBody654_230 NamedBody654_239

def NamedBody654_241 : StackLang.HolProg 64 :=
.seq NamedBody654_229 NamedBody654_240

def NamedBody654_242 : StackLang.HolProg 64 :=
.seq NamedBody654_228 NamedBody654_241

def NamedBody654_243 : StackLang.HolProg 64 :=
.seq NamedBody654_227 NamedBody654_242

def NamedBody654_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_248 : StackLang.HolProg 64 :=
.seq NamedBody654_246 NamedBody654_247

def NamedBody654_249 : StackLang.HolProg 64 :=
.seq NamedBody654_245 NamedBody654_248

def NamedBody654_250 : StackLang.HolProg 64 :=
.seq NamedBody654_244 NamedBody654_249

def NamedBody654_251 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody654_252 : StackLang.HolProg 64 :=
.seq NamedBody654_250 NamedBody654_251

def NamedBody654_253 : StackLang.HolProg 64 :=
.call (some (NamedBody654_243, 1, 654, 6)) (Sum.inl 645) (some (NamedBody654_252, 654, 7))

def NamedBody654_254 : StackLang.HolProg 64 :=
.seq NamedBody654_226 NamedBody654_253

def NamedBody654_255 : StackLang.HolProg 64 :=
.seq NamedBody654_225 NamedBody654_254

def NamedBody654_256 : StackLang.HolProg 64 :=
.seq NamedBody654_224 NamedBody654_255

def NamedBody654_257 : StackLang.HolProg 64 :=
.seq NamedBody654_195 NamedBody654_256

def NamedBody654_258 : StackLang.HolProg 64 :=
.seq NamedBody654_192 NamedBody654_257

def NamedBody654_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody654_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody654_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody654_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody654_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody654_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody654_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody654_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody654_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_272 : StackLang.HolProg 64 :=
.seq NamedBody654_270 NamedBody654_271

def NamedBody654_273 : StackLang.HolProg 64 :=
.seq NamedBody654_269 NamedBody654_272

def NamedBody654_274 : StackLang.HolProg 64 :=
.seq NamedBody654_268 NamedBody654_273

def NamedBody654_275 : StackLang.HolProg 64 :=
.seq NamedBody654_267 NamedBody654_274

def NamedBody654_276 : StackLang.HolProg 64 :=
.seq NamedBody654_266 NamedBody654_275

def NamedBody654_277 : StackLang.HolProg 64 :=
.seq NamedBody654_265 NamedBody654_276

def NamedBody654_278 : StackLang.HolProg 64 :=
.seq NamedBody654_264 NamedBody654_277

def NamedBody654_279 : StackLang.HolProg 64 :=
.seq NamedBody654_263 NamedBody654_278

def NamedBody654_280 : StackLang.HolProg 64 :=
.seq NamedBody654_262 NamedBody654_279

def NamedBody654_281 : StackLang.HolProg 64 :=
.seq NamedBody654_261 NamedBody654_280

def NamedBody654_282 : StackLang.HolProg 64 :=
.seq NamedBody654_260 NamedBody654_281

def NamedBody654_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2705#64)

def NamedBody654_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_286 : StackLang.HolProg 64 :=
.seq NamedBody654_284 NamedBody654_285

def NamedBody654_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody654_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody654_290 : StackLang.HolProg 64 :=
.seq NamedBody654_288 NamedBody654_289

def NamedBody654_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_292 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody654_290 NamedBody654_291

def NamedBody654_293 : StackLang.HolProg 64 :=
.seq NamedBody654_287 NamedBody654_292

def NamedBody654_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody654_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 9

def NamedBody654_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody654_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody654_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody654_303 : StackLang.HolProg 64 :=
.seq NamedBody654_301 NamedBody654_302

def NamedBody654_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody654_305 : StackLang.HolProg 64 :=
.seq NamedBody654_303 NamedBody654_304

def NamedBody654_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_307 : StackLang.HolProg 64 :=
.seq NamedBody654_305 NamedBody654_306

def NamedBody654_308 : StackLang.HolProg 64 :=
.seq NamedBody654_300 NamedBody654_307

def NamedBody654_309 : StackLang.HolProg 64 :=
.seq NamedBody654_299 NamedBody654_308

def NamedBody654_310 : StackLang.HolProg 64 :=
.seq NamedBody654_298 NamedBody654_309

def NamedBody654_311 : StackLang.HolProg 64 :=
.seq NamedBody654_297 NamedBody654_310

def NamedBody654_312 : StackLang.HolProg 64 :=
.seq NamedBody654_296 NamedBody654_311

def NamedBody654_313 : StackLang.HolProg 64 :=
.seq NamedBody654_295 NamedBody654_312

def NamedBody654_314 : StackLang.HolProg 64 :=
.seq NamedBody654_294 NamedBody654_313

def NamedBody654_315 : StackLang.HolProg 64 :=
.seq NamedBody654_293 NamedBody654_314

def NamedBody654_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody654_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody654_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_326 : StackLang.HolProg 64 :=
.seq NamedBody654_324 NamedBody654_325

def NamedBody654_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody654_329 : StackLang.HolProg 64 :=
.seq NamedBody654_327 NamedBody654_328

def NamedBody654_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_332 : StackLang.HolProg 64 :=
.seq NamedBody654_330 NamedBody654_331

def NamedBody654_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_336 : StackLang.HolProg 64 :=
.seq NamedBody654_334 NamedBody654_335

def NamedBody654_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody654_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody654_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_340 : StackLang.HolProg 64 :=
.seq NamedBody654_338 NamedBody654_339

def NamedBody654_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody654_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_343 : StackLang.HolProg 64 :=
.seq NamedBody654_341 NamedBody654_342

def NamedBody654_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody654_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody654_347 : StackLang.HolProg 64 :=
.seq NamedBody654_345 NamedBody654_346

def NamedBody654_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody654_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody654_350 : StackLang.HolProg 64 :=
.seq NamedBody654_348 NamedBody654_349

def NamedBody654_351 : StackLang.HolProg 64 :=
.seq NamedBody654_347 NamedBody654_350

def NamedBody654_352 : StackLang.HolProg 64 :=
.seq NamedBody654_344 NamedBody654_351

def NamedBody654_353 : StackLang.HolProg 64 :=
.seq NamedBody654_343 NamedBody654_352

def NamedBody654_354 : StackLang.HolProg 64 :=
.seq NamedBody654_340 NamedBody654_353

def NamedBody654_355 : StackLang.HolProg 64 :=
.seq NamedBody654_337 NamedBody654_354

def NamedBody654_356 : StackLang.HolProg 64 :=
.seq NamedBody654_336 NamedBody654_355

def NamedBody654_357 : StackLang.HolProg 64 :=
.seq NamedBody654_333 NamedBody654_356

def NamedBody654_358 : StackLang.HolProg 64 :=
.seq NamedBody654_332 NamedBody654_357

def NamedBody654_359 : StackLang.HolProg 64 :=
.seq NamedBody654_329 NamedBody654_358

def NamedBody654_360 : StackLang.HolProg 64 :=
.seq NamedBody654_326 NamedBody654_359

def NamedBody654_361 : StackLang.HolProg 64 :=
.seq NamedBody654_323 NamedBody654_360

def NamedBody654_362 : StackLang.HolProg 64 :=
.seq NamedBody654_322 NamedBody654_361

def NamedBody654_363 : StackLang.HolProg 64 :=
.seq NamedBody654_321 NamedBody654_362

def NamedBody654_364 : StackLang.HolProg 64 :=
.seq NamedBody654_320 NamedBody654_363

def NamedBody654_365 : StackLang.HolProg 64 :=
.seq NamedBody654_319 NamedBody654_364

def NamedBody654_366 : StackLang.HolProg 64 :=
.seq NamedBody654_318 NamedBody654_365

def NamedBody654_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody654_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_370 : StackLang.HolProg 64 :=
.seq NamedBody654_368 NamedBody654_369

def NamedBody654_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody654_373 : StackLang.HolProg 64 :=
.seq NamedBody654_371 NamedBody654_372

def NamedBody654_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_376 : StackLang.HolProg 64 :=
.seq NamedBody654_374 NamedBody654_375

def NamedBody654_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_380 : StackLang.HolProg 64 :=
.seq NamedBody654_378 NamedBody654_379

def NamedBody654_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody654_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody654_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_384 : StackLang.HolProg 64 :=
.seq NamedBody654_382 NamedBody654_383

def NamedBody654_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody654_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_387 : StackLang.HolProg 64 :=
.seq NamedBody654_385 NamedBody654_386

def NamedBody654_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody654_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody654_391 : StackLang.HolProg 64 :=
.seq NamedBody654_389 NamedBody654_390

def NamedBody654_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody654_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody654_394 : StackLang.HolProg 64 :=
.seq NamedBody654_392 NamedBody654_393

def NamedBody654_395 : StackLang.HolProg 64 :=
.seq NamedBody654_391 NamedBody654_394

def NamedBody654_396 : StackLang.HolProg 64 :=
.seq NamedBody654_388 NamedBody654_395

def NamedBody654_397 : StackLang.HolProg 64 :=
.seq NamedBody654_387 NamedBody654_396

def NamedBody654_398 : StackLang.HolProg 64 :=
.seq NamedBody654_384 NamedBody654_397

def NamedBody654_399 : StackLang.HolProg 64 :=
.seq NamedBody654_381 NamedBody654_398

def NamedBody654_400 : StackLang.HolProg 64 :=
.seq NamedBody654_380 NamedBody654_399

def NamedBody654_401 : StackLang.HolProg 64 :=
.seq NamedBody654_377 NamedBody654_400

def NamedBody654_402 : StackLang.HolProg 64 :=
.seq NamedBody654_376 NamedBody654_401

def NamedBody654_403 : StackLang.HolProg 64 :=
.seq NamedBody654_373 NamedBody654_402

def NamedBody654_404 : StackLang.HolProg 64 :=
.seq NamedBody654_370 NamedBody654_403

def NamedBody654_405 : StackLang.HolProg 64 :=
.seq NamedBody654_367 NamedBody654_404

def NamedBody654_406 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody654_407 : StackLang.HolProg 64 :=
.seq NamedBody654_405 NamedBody654_406

def NamedBody654_408 : StackLang.HolProg 64 :=
.call (some (NamedBody654_366, 1, 654, 8)) (Sum.inl 642) (some (NamedBody654_407, 654, 9))

def NamedBody654_409 : StackLang.HolProg 64 :=
.seq NamedBody654_317 NamedBody654_408

def NamedBody654_410 : StackLang.HolProg 64 :=
.seq NamedBody654_316 NamedBody654_409

def NamedBody654_411 : StackLang.HolProg 64 :=
.seq NamedBody654_315 NamedBody654_410

def NamedBody654_412 : StackLang.HolProg 64 :=
.seq NamedBody654_286 NamedBody654_411

def NamedBody654_413 : StackLang.HolProg 64 :=
.seq NamedBody654_283 NamedBody654_412

def NamedBody654_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody654_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody654_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2706#64)

def NamedBody654_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_419 : StackLang.HolProg 64 :=
.seq NamedBody654_417 NamedBody654_418

def NamedBody654_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody654_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody654_423 : StackLang.HolProg 64 :=
.seq NamedBody654_421 NamedBody654_422

def NamedBody654_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_425 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody654_423 NamedBody654_424

def NamedBody654_426 : StackLang.HolProg 64 :=
.seq NamedBody654_420 NamedBody654_425

def NamedBody654_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody654_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 11

def NamedBody654_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody654_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody654_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody654_436 : StackLang.HolProg 64 :=
.seq NamedBody654_434 NamedBody654_435

def NamedBody654_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody654_438 : StackLang.HolProg 64 :=
.seq NamedBody654_436 NamedBody654_437

def NamedBody654_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_440 : StackLang.HolProg 64 :=
.seq NamedBody654_438 NamedBody654_439

def NamedBody654_441 : StackLang.HolProg 64 :=
.seq NamedBody654_433 NamedBody654_440

def NamedBody654_442 : StackLang.HolProg 64 :=
.seq NamedBody654_432 NamedBody654_441

def NamedBody654_443 : StackLang.HolProg 64 :=
.seq NamedBody654_431 NamedBody654_442

def NamedBody654_444 : StackLang.HolProg 64 :=
.seq NamedBody654_430 NamedBody654_443

def NamedBody654_445 : StackLang.HolProg 64 :=
.seq NamedBody654_429 NamedBody654_444

def NamedBody654_446 : StackLang.HolProg 64 :=
.seq NamedBody654_428 NamedBody654_445

def NamedBody654_447 : StackLang.HolProg 64 :=
.seq NamedBody654_427 NamedBody654_446

def NamedBody654_448 : StackLang.HolProg 64 :=
.seq NamedBody654_426 NamedBody654_447

def NamedBody654_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody654_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody654_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody654_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody654_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_464 : StackLang.HolProg 64 :=
.seq NamedBody654_462 NamedBody654_463

def NamedBody654_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody654_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody654_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_468 : StackLang.HolProg 64 :=
.seq NamedBody654_466 NamedBody654_467

def NamedBody654_469 : StackLang.HolProg 64 :=
.seq NamedBody654_465 NamedBody654_468

def NamedBody654_470 : StackLang.HolProg 64 :=
.seq NamedBody654_464 NamedBody654_469

def NamedBody654_471 : StackLang.HolProg 64 :=
.seq NamedBody654_461 NamedBody654_470

def NamedBody654_472 : StackLang.HolProg 64 :=
.seq NamedBody654_460 NamedBody654_471

def NamedBody654_473 : StackLang.HolProg 64 :=
.seq NamedBody654_459 NamedBody654_472

def NamedBody654_474 : StackLang.HolProg 64 :=
.seq NamedBody654_458 NamedBody654_473

def NamedBody654_475 : StackLang.HolProg 64 :=
.seq NamedBody654_457 NamedBody654_474

def NamedBody654_476 : StackLang.HolProg 64 :=
.seq NamedBody654_456 NamedBody654_475

def NamedBody654_477 : StackLang.HolProg 64 :=
.seq NamedBody654_455 NamedBody654_476

def NamedBody654_478 : StackLang.HolProg 64 :=
.seq NamedBody654_454 NamedBody654_477

def NamedBody654_479 : StackLang.HolProg 64 :=
.seq NamedBody654_453 NamedBody654_478

def NamedBody654_480 : StackLang.HolProg 64 :=
.seq NamedBody654_452 NamedBody654_479

def NamedBody654_481 : StackLang.HolProg 64 :=
.seq NamedBody654_451 NamedBody654_480

def NamedBody654_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody654_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody654_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_487 : StackLang.HolProg 64 :=
.seq NamedBody654_485 NamedBody654_486

def NamedBody654_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody654_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody654_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_491 : StackLang.HolProg 64 :=
.seq NamedBody654_489 NamedBody654_490

def NamedBody654_492 : StackLang.HolProg 64 :=
.seq NamedBody654_488 NamedBody654_491

def NamedBody654_493 : StackLang.HolProg 64 :=
.seq NamedBody654_487 NamedBody654_492

def NamedBody654_494 : StackLang.HolProg 64 :=
.seq NamedBody654_484 NamedBody654_493

def NamedBody654_495 : StackLang.HolProg 64 :=
.seq NamedBody654_483 NamedBody654_494

def NamedBody654_496 : StackLang.HolProg 64 :=
.seq NamedBody654_482 NamedBody654_495

def NamedBody654_497 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody654_498 : StackLang.HolProg 64 :=
.seq NamedBody654_496 NamedBody654_497

def NamedBody654_499 : StackLang.HolProg 64 :=
.call (some (NamedBody654_481, 1, 654, 10)) (Sum.inl 642) (some (NamedBody654_498, 654, 11))

def NamedBody654_500 : StackLang.HolProg 64 :=
.seq NamedBody654_450 NamedBody654_499

def NamedBody654_501 : StackLang.HolProg 64 :=
.seq NamedBody654_449 NamedBody654_500

def NamedBody654_502 : StackLang.HolProg 64 :=
.seq NamedBody654_448 NamedBody654_501

def NamedBody654_503 : StackLang.HolProg 64 :=
.seq NamedBody654_419 NamedBody654_502

def NamedBody654_504 : StackLang.HolProg 64 :=
.seq NamedBody654_416 NamedBody654_503

def NamedBody654_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody654_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody654_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2707#64)

def NamedBody654_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_510 : StackLang.HolProg 64 :=
.seq NamedBody654_508 NamedBody654_509

def NamedBody654_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody654_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody654_514 : StackLang.HolProg 64 :=
.seq NamedBody654_512 NamedBody654_513

def NamedBody654_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_516 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody654_514 NamedBody654_515

def NamedBody654_517 : StackLang.HolProg 64 :=
.seq NamedBody654_511 NamedBody654_516

def NamedBody654_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody654_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 13

def NamedBody654_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody654_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody654_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody654_527 : StackLang.HolProg 64 :=
.seq NamedBody654_525 NamedBody654_526

def NamedBody654_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody654_529 : StackLang.HolProg 64 :=
.seq NamedBody654_527 NamedBody654_528

def NamedBody654_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_531 : StackLang.HolProg 64 :=
.seq NamedBody654_529 NamedBody654_530

def NamedBody654_532 : StackLang.HolProg 64 :=
.seq NamedBody654_524 NamedBody654_531

def NamedBody654_533 : StackLang.HolProg 64 :=
.seq NamedBody654_523 NamedBody654_532

def NamedBody654_534 : StackLang.HolProg 64 :=
.seq NamedBody654_522 NamedBody654_533

def NamedBody654_535 : StackLang.HolProg 64 :=
.seq NamedBody654_521 NamedBody654_534

def NamedBody654_536 : StackLang.HolProg 64 :=
.seq NamedBody654_520 NamedBody654_535

def NamedBody654_537 : StackLang.HolProg 64 :=
.seq NamedBody654_519 NamedBody654_536

def NamedBody654_538 : StackLang.HolProg 64 :=
.seq NamedBody654_518 NamedBody654_537

def NamedBody654_539 : StackLang.HolProg 64 :=
.seq NamedBody654_517 NamedBody654_538

def NamedBody654_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody654_547 : StackLang.HolProg 64 :=
.seq NamedBody654_545 NamedBody654_546

def NamedBody654_548 : StackLang.HolProg 64 :=
.seq NamedBody654_544 NamedBody654_547

def NamedBody654_549 : StackLang.HolProg 64 :=
.seq NamedBody654_543 NamedBody654_548

def NamedBody654_550 : StackLang.HolProg 64 :=
.seq NamedBody654_542 NamedBody654_549

def NamedBody654_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_552 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody654_553 : StackLang.HolProg 64 :=
.seq NamedBody654_551 NamedBody654_552

def NamedBody654_554 : StackLang.HolProg 64 :=
.call (some (NamedBody654_550, 1, 654, 12)) (Sum.inl 643) (some (NamedBody654_553, 654, 13))

def NamedBody654_555 : StackLang.HolProg 64 :=
.seq NamedBody654_541 NamedBody654_554

def NamedBody654_556 : StackLang.HolProg 64 :=
.seq NamedBody654_540 NamedBody654_555

def NamedBody654_557 : StackLang.HolProg 64 :=
.seq NamedBody654_539 NamedBody654_556

def NamedBody654_558 : StackLang.HolProg 64 :=
.seq NamedBody654_510 NamedBody654_557

def NamedBody654_559 : StackLang.HolProg 64 :=
.seq NamedBody654_507 NamedBody654_558

def NamedBody654_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody654_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody654_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 6540974713487397863#64)

def NamedBody654_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 12964664127075681980#64)

def NamedBody654_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 7285987128567378166#64)

def NamedBody654_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4309448131093880907#64)

def NamedBody654_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2708#64)

def NamedBody654_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_570 : StackLang.HolProg 64 :=
.seq NamedBody654_568 NamedBody654_569

def NamedBody654_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody654_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody654_574 : StackLang.HolProg 64 :=
.seq NamedBody654_572 NamedBody654_573

def NamedBody654_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_576 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody654_574 NamedBody654_575

def NamedBody654_577 : StackLang.HolProg 64 :=
.seq NamedBody654_571 NamedBody654_576

def NamedBody654_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody654_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody654_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 654 15

def NamedBody654_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody654_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody654_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody654_587 : StackLang.HolProg 64 :=
.seq NamedBody654_585 NamedBody654_586

def NamedBody654_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody654_589 : StackLang.HolProg 64 :=
.seq NamedBody654_587 NamedBody654_588

def NamedBody654_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_591 : StackLang.HolProg 64 :=
.seq NamedBody654_589 NamedBody654_590

def NamedBody654_592 : StackLang.HolProg 64 :=
.seq NamedBody654_584 NamedBody654_591

def NamedBody654_593 : StackLang.HolProg 64 :=
.seq NamedBody654_583 NamedBody654_592

def NamedBody654_594 : StackLang.HolProg 64 :=
.seq NamedBody654_582 NamedBody654_593

def NamedBody654_595 : StackLang.HolProg 64 :=
.seq NamedBody654_581 NamedBody654_594

def NamedBody654_596 : StackLang.HolProg 64 :=
.seq NamedBody654_580 NamedBody654_595

def NamedBody654_597 : StackLang.HolProg 64 :=
.seq NamedBody654_579 NamedBody654_596

def NamedBody654_598 : StackLang.HolProg 64 :=
.seq NamedBody654_578 NamedBody654_597

def NamedBody654_599 : StackLang.HolProg 64 :=
.seq NamedBody654_577 NamedBody654_598

def NamedBody654_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody654_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody654_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody654_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody654_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody654_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody654_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody654_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody654_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody654_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_615 : StackLang.HolProg 64 :=
.seq NamedBody654_613 NamedBody654_614

def NamedBody654_616 : StackLang.HolProg 64 :=
.seq NamedBody654_612 NamedBody654_615

def NamedBody654_617 : StackLang.HolProg 64 :=
.seq NamedBody654_611 NamedBody654_616

def NamedBody654_618 : StackLang.HolProg 64 :=
.seq NamedBody654_610 NamedBody654_617

def NamedBody654_619 : StackLang.HolProg 64 :=
.seq NamedBody654_609 NamedBody654_618

def NamedBody654_620 : StackLang.HolProg 64 :=
.seq NamedBody654_608 NamedBody654_619

def NamedBody654_621 : StackLang.HolProg 64 :=
.seq NamedBody654_607 NamedBody654_620

def NamedBody654_622 : StackLang.HolProg 64 :=
.seq NamedBody654_606 NamedBody654_621

def NamedBody654_623 : StackLang.HolProg 64 :=
.seq NamedBody654_605 NamedBody654_622

def NamedBody654_624 : StackLang.HolProg 64 :=
.seq NamedBody654_604 NamedBody654_623

def NamedBody654_625 : StackLang.HolProg 64 :=
.seq NamedBody654_603 NamedBody654_624

def NamedBody654_626 : StackLang.HolProg 64 :=
.seq NamedBody654_602 NamedBody654_625

def NamedBody654_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody654_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody654_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody654_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody654_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody654_632 : StackLang.HolProg 64 :=
.seq NamedBody654_630 NamedBody654_631

def NamedBody654_633 : StackLang.HolProg 64 :=
.seq NamedBody654_629 NamedBody654_632

def NamedBody654_634 : StackLang.HolProg 64 :=
.seq NamedBody654_628 NamedBody654_633

def NamedBody654_635 : StackLang.HolProg 64 :=
.seq NamedBody654_627 NamedBody654_634

def NamedBody654_636 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody654_637 : StackLang.HolProg 64 :=
.seq NamedBody654_635 NamedBody654_636

def NamedBody654_638 : StackLang.HolProg 64 :=
.call (some (NamedBody654_626, 1, 654, 14)) (Sum.inl 642) (some (NamedBody654_637, 654, 15))

def NamedBody654_639 : StackLang.HolProg 64 :=
.seq NamedBody654_601 NamedBody654_638

def NamedBody654_640 : StackLang.HolProg 64 :=
.seq NamedBody654_600 NamedBody654_639

def NamedBody654_641 : StackLang.HolProg 64 :=
.seq NamedBody654_599 NamedBody654_640

def NamedBody654_642 : StackLang.HolProg 64 :=
.seq NamedBody654_570 NamedBody654_641

def NamedBody654_643 : StackLang.HolProg 64 :=
.seq NamedBody654_567 NamedBody654_642

def NamedBody654_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody654_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody654_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody654_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def NamedBody654_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 105

def NamedBody654_649 : StackLang.HolProg 64 :=
.seq NamedBody654_647 NamedBody654_648

def NamedBody654_650 : StackLang.HolProg 64 :=
.seq NamedBody654_646 NamedBody654_649

def NamedBody654_651 : StackLang.HolProg 64 :=
.seq NamedBody654_645 NamedBody654_650

def NamedBody654_652 : StackLang.HolProg 64 :=
.seq NamedBody654_644 NamedBody654_651

def NamedBody654_653 : StackLang.HolProg 64 :=
.seq NamedBody654_643 NamedBody654_652

def NamedBody654_654 : StackLang.HolProg 64 :=
.seq NamedBody654_566 NamedBody654_653

def NamedBody654_655 : StackLang.HolProg 64 :=
.seq NamedBody654_565 NamedBody654_654

def NamedBody654_656 : StackLang.HolProg 64 :=
.seq NamedBody654_564 NamedBody654_655

def NamedBody654_657 : StackLang.HolProg 64 :=
.seq NamedBody654_563 NamedBody654_656

def NamedBody654_658 : StackLang.HolProg 64 :=
.seq NamedBody654_562 NamedBody654_657

def NamedBody654_659 : StackLang.HolProg 64 :=
.seq NamedBody654_561 NamedBody654_658

def NamedBody654_660 : StackLang.HolProg 64 :=
.seq NamedBody654_560 NamedBody654_659

def NamedBody654_661 : StackLang.HolProg 64 :=
.seq NamedBody654_559 NamedBody654_660

def NamedBody654_662 : StackLang.HolProg 64 :=
.seq NamedBody654_506 NamedBody654_661

def NamedBody654_663 : StackLang.HolProg 64 :=
.seq NamedBody654_505 NamedBody654_662

def NamedBody654_664 : StackLang.HolProg 64 :=
.seq NamedBody654_504 NamedBody654_663

def NamedBody654_665 : StackLang.HolProg 64 :=
.seq NamedBody654_415 NamedBody654_664

def NamedBody654_666 : StackLang.HolProg 64 :=
.seq NamedBody654_414 NamedBody654_665

def NamedBody654_667 : StackLang.HolProg 64 :=
.seq NamedBody654_413 NamedBody654_666

def NamedBody654_668 : StackLang.HolProg 64 :=
.seq NamedBody654_282 NamedBody654_667

def NamedBody654_669 : StackLang.HolProg 64 :=
.seq NamedBody654_259 NamedBody654_668

def NamedBody654_670 : StackLang.HolProg 64 :=
.seq NamedBody654_258 NamedBody654_669

def NamedBody654_671 : StackLang.HolProg 64 :=
.seq NamedBody654_191 NamedBody654_670

def NamedBody654_672 : StackLang.HolProg 64 :=
.seq NamedBody654_182 NamedBody654_671

def NamedBody654_673 : StackLang.HolProg 64 :=
.seq NamedBody654_181 NamedBody654_672

def NamedBody654_674 : StackLang.HolProg 64 :=
.seq NamedBody654_114 NamedBody654_673

def NamedBody654_675 : StackLang.HolProg 64 :=
.seq NamedBody654_91 NamedBody654_674

def NamedBody654_676 : StackLang.HolProg 64 :=
.seq NamedBody654_90 NamedBody654_675

def NamedBody654_677 : StackLang.HolProg 64 :=
.seq NamedBody654_23 NamedBody654_676

def NamedBody654_678 : StackLang.HolProg 64 :=
.seq NamedBody654_6 NamedBody654_677

def Named654 : Nat × StackLang.HolProg 64 := (654, NamedBody654_678)
theorem Named654_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed654 = Named654 := by
  kernel_rfl
#print axioms Named654_eq
end InitECandidate.Proofs.BackendStages
