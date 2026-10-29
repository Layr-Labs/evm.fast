import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed322
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody322_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody322_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody322_3 : StackLang.HolProg 64 :=
.seq NamedBody322_1 NamedBody322_2

def NamedBody322_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody322_3 NamedBody322_4

def NamedBody322_6 : StackLang.HolProg 64 :=
.seq NamedBody322_0 NamedBody322_5

def NamedBody322_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody322_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody322_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 40#64))

def NamedBody322_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody322_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 32#64))

def NamedBody322_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 48#64))

def NamedBody322_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody322_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody322_27 : StackLang.HolProg 64 :=
.seq NamedBody322_25 NamedBody322_26

def NamedBody322_28 : StackLang.HolProg 64 :=
.seq NamedBody322_24 NamedBody322_27

def NamedBody322_29 : StackLang.HolProg 64 :=
.seq NamedBody322_23 NamedBody322_28

def NamedBody322_30 : StackLang.HolProg 64 :=
.seq NamedBody322_22 NamedBody322_29

def NamedBody322_31 : StackLang.HolProg 64 :=
.seq NamedBody322_21 NamedBody322_30

def NamedBody322_32 : StackLang.HolProg 64 :=
.seq NamedBody322_20 NamedBody322_31

def NamedBody322_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 903#64)

def NamedBody322_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_36 : StackLang.HolProg 64 :=
.seq NamedBody322_34 NamedBody322_35

def NamedBody322_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody322_40 : StackLang.HolProg 64 :=
.seq NamedBody322_38 NamedBody322_39

def NamedBody322_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody322_40 NamedBody322_41

def NamedBody322_43 : StackLang.HolProg 64 :=
.seq NamedBody322_37 NamedBody322_42

def NamedBody322_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody322_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 322 3

def NamedBody322_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody322_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody322_53 : StackLang.HolProg 64 :=
.seq NamedBody322_51 NamedBody322_52

def NamedBody322_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_55 : StackLang.HolProg 64 :=
.seq NamedBody322_53 NamedBody322_54

def NamedBody322_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_57 : StackLang.HolProg 64 :=
.seq NamedBody322_55 NamedBody322_56

def NamedBody322_58 : StackLang.HolProg 64 :=
.seq NamedBody322_50 NamedBody322_57

def NamedBody322_59 : StackLang.HolProg 64 :=
.seq NamedBody322_49 NamedBody322_58

def NamedBody322_60 : StackLang.HolProg 64 :=
.seq NamedBody322_48 NamedBody322_59

def NamedBody322_61 : StackLang.HolProg 64 :=
.seq NamedBody322_47 NamedBody322_60

def NamedBody322_62 : StackLang.HolProg 64 :=
.seq NamedBody322_46 NamedBody322_61

def NamedBody322_63 : StackLang.HolProg 64 :=
.seq NamedBody322_45 NamedBody322_62

def NamedBody322_64 : StackLang.HolProg 64 :=
.seq NamedBody322_44 NamedBody322_63

def NamedBody322_65 : StackLang.HolProg 64 :=
.seq NamedBody322_43 NamedBody322_64

def NamedBody322_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody322_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_75 : StackLang.HolProg 64 :=
.seq NamedBody322_73 NamedBody322_74

def NamedBody322_76 : StackLang.HolProg 64 :=
.seq NamedBody322_72 NamedBody322_75

def NamedBody322_77 : StackLang.HolProg 64 :=
.seq NamedBody322_71 NamedBody322_76

def NamedBody322_78 : StackLang.HolProg 64 :=
.seq NamedBody322_70 NamedBody322_77

def NamedBody322_79 : StackLang.HolProg 64 :=
.seq NamedBody322_69 NamedBody322_78

def NamedBody322_80 : StackLang.HolProg 64 :=
.seq NamedBody322_68 NamedBody322_79

def NamedBody322_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_83 : StackLang.HolProg 64 :=
.seq NamedBody322_81 NamedBody322_82

def NamedBody322_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody322_85 : StackLang.HolProg 64 :=
.seq NamedBody322_83 NamedBody322_84

def NamedBody322_86 : StackLang.HolProg 64 :=
.call (some (NamedBody322_80, 1, 322, 2)) (Sum.inl 327) (some (NamedBody322_85, 322, 3))

def NamedBody322_87 : StackLang.HolProg 64 :=
.seq NamedBody322_67 NamedBody322_86

def NamedBody322_88 : StackLang.HolProg 64 :=
.seq NamedBody322_66 NamedBody322_87

def NamedBody322_89 : StackLang.HolProg 64 :=
.seq NamedBody322_65 NamedBody322_88

def NamedBody322_90 : StackLang.HolProg 64 :=
.seq NamedBody322_36 NamedBody322_89

def NamedBody322_91 : StackLang.HolProg 64 :=
.seq NamedBody322_33 NamedBody322_90

def NamedBody322_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody322_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_96 : StackLang.HolProg 64 :=
.seq NamedBody322_94 NamedBody322_95

def NamedBody322_97 : StackLang.HolProg 64 :=
.seq NamedBody322_93 NamedBody322_96

def NamedBody322_98 : StackLang.HolProg 64 :=
.seq NamedBody322_92 NamedBody322_97

def NamedBody322_99 : StackLang.HolProg 64 :=
.seq NamedBody322_91 NamedBody322_98

def NamedBody322_100 : StackLang.HolProg 64 :=
.seq NamedBody322_32 NamedBody322_99

def NamedBody322_101 : StackLang.HolProg 64 :=
.seq NamedBody322_19 NamedBody322_100

def NamedBody322_102 : StackLang.HolProg 64 :=
.seq NamedBody322_18 NamedBody322_101

def NamedBody322_103 : StackLang.HolProg 64 :=
.seq NamedBody322_17 NamedBody322_102

def NamedBody322_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody322_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody322_111 : StackLang.HolProg 64 :=
.seq NamedBody322_109 NamedBody322_110

def NamedBody322_112 : StackLang.HolProg 64 :=
.seq NamedBody322_108 NamedBody322_111

def NamedBody322_113 : StackLang.HolProg 64 :=
.seq NamedBody322_107 NamedBody322_112

def NamedBody322_114 : StackLang.HolProg 64 :=
.seq NamedBody322_106 NamedBody322_113

def NamedBody322_115 : StackLang.HolProg 64 :=
.seq NamedBody322_105 NamedBody322_114

def NamedBody322_116 : StackLang.HolProg 64 :=
.seq NamedBody322_104 NamedBody322_115

def NamedBody322_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody322_103 NamedBody322_116

def NamedBody322_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def NamedBody322_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody322_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_126 : StackLang.HolProg 64 :=
.seq NamedBody322_124 NamedBody322_125

def NamedBody322_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 16#64)

def NamedBody322_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody322_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody322_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody322_137 : StackLang.HolProg 64 :=
.seq NamedBody322_135 NamedBody322_136

def NamedBody322_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 904#64)

def NamedBody322_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_141 : StackLang.HolProg 64 :=
.seq NamedBody322_139 NamedBody322_140

def NamedBody322_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody322_145 : StackLang.HolProg 64 :=
.seq NamedBody322_143 NamedBody322_144

def NamedBody322_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_147 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody322_145 NamedBody322_146

def NamedBody322_148 : StackLang.HolProg 64 :=
.seq NamedBody322_142 NamedBody322_147

def NamedBody322_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody322_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 322 5

def NamedBody322_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody322_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody322_158 : StackLang.HolProg 64 :=
.seq NamedBody322_156 NamedBody322_157

def NamedBody322_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_160 : StackLang.HolProg 64 :=
.seq NamedBody322_158 NamedBody322_159

def NamedBody322_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_162 : StackLang.HolProg 64 :=
.seq NamedBody322_160 NamedBody322_161

def NamedBody322_163 : StackLang.HolProg 64 :=
.seq NamedBody322_155 NamedBody322_162

def NamedBody322_164 : StackLang.HolProg 64 :=
.seq NamedBody322_154 NamedBody322_163

def NamedBody322_165 : StackLang.HolProg 64 :=
.seq NamedBody322_153 NamedBody322_164

def NamedBody322_166 : StackLang.HolProg 64 :=
.seq NamedBody322_152 NamedBody322_165

def NamedBody322_167 : StackLang.HolProg 64 :=
.seq NamedBody322_151 NamedBody322_166

def NamedBody322_168 : StackLang.HolProg 64 :=
.seq NamedBody322_150 NamedBody322_167

def NamedBody322_169 : StackLang.HolProg 64 :=
.seq NamedBody322_149 NamedBody322_168

def NamedBody322_170 : StackLang.HolProg 64 :=
.seq NamedBody322_148 NamedBody322_169

def NamedBody322_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody322_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody322_181 : StackLang.HolProg 64 :=
.seq NamedBody322_179 NamedBody322_180

def NamedBody322_182 : StackLang.HolProg 64 :=
.seq NamedBody322_178 NamedBody322_181

def NamedBody322_183 : StackLang.HolProg 64 :=
.seq NamedBody322_177 NamedBody322_182

def NamedBody322_184 : StackLang.HolProg 64 :=
.seq NamedBody322_176 NamedBody322_183

def NamedBody322_185 : StackLang.HolProg 64 :=
.seq NamedBody322_175 NamedBody322_184

def NamedBody322_186 : StackLang.HolProg 64 :=
.seq NamedBody322_174 NamedBody322_185

def NamedBody322_187 : StackLang.HolProg 64 :=
.seq NamedBody322_173 NamedBody322_186

def NamedBody322_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody322_191 : StackLang.HolProg 64 :=
.seq NamedBody322_189 NamedBody322_190

def NamedBody322_192 : StackLang.HolProg 64 :=
.seq NamedBody322_188 NamedBody322_191

def NamedBody322_193 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody322_194 : StackLang.HolProg 64 :=
.seq NamedBody322_192 NamedBody322_193

def NamedBody322_195 : StackLang.HolProg 64 :=
.call (some (NamedBody322_187, 1, 322, 4)) (Sum.inl 327) (some (NamedBody322_194, 322, 5))

def NamedBody322_196 : StackLang.HolProg 64 :=
.seq NamedBody322_172 NamedBody322_195

def NamedBody322_197 : StackLang.HolProg 64 :=
.seq NamedBody322_171 NamedBody322_196

def NamedBody322_198 : StackLang.HolProg 64 :=
.seq NamedBody322_170 NamedBody322_197

def NamedBody322_199 : StackLang.HolProg 64 :=
.seq NamedBody322_141 NamedBody322_198

def NamedBody322_200 : StackLang.HolProg 64 :=
.seq NamedBody322_138 NamedBody322_199

def NamedBody322_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody322_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody322_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody322_208 : StackLang.HolProg 64 :=
.seq NamedBody322_206 NamedBody322_207

def NamedBody322_209 : StackLang.HolProg 64 :=
.seq NamedBody322_205 NamedBody322_208

def NamedBody322_210 : StackLang.HolProg 64 :=
.seq NamedBody322_204 NamedBody322_209

def NamedBody322_211 : StackLang.HolProg 64 :=
.seq NamedBody322_203 NamedBody322_210

def NamedBody322_212 : StackLang.HolProg 64 :=
.seq NamedBody322_202 NamedBody322_211

def NamedBody322_213 : StackLang.HolProg 64 :=
.seq NamedBody322_201 NamedBody322_212

def NamedBody322_214 : StackLang.HolProg 64 :=
.seq NamedBody322_200 NamedBody322_213

def NamedBody322_215 : StackLang.HolProg 64 :=
.seq NamedBody322_137 NamedBody322_214

def NamedBody322_216 : StackLang.HolProg 64 :=
.seq NamedBody322_134 NamedBody322_215

def NamedBody322_217 : StackLang.HolProg 64 :=
.seq NamedBody322_133 NamedBody322_216

def NamedBody322_218 : StackLang.HolProg 64 :=
.seq NamedBody322_132 NamedBody322_217

def NamedBody322_219 : StackLang.HolProg 64 :=
.seq NamedBody322_131 NamedBody322_218

def NamedBody322_220 : StackLang.HolProg 64 :=
.seq NamedBody322_130 NamedBody322_219

def NamedBody322_221 : StackLang.HolProg 64 :=
.seq NamedBody322_129 NamedBody322_220

def NamedBody322_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody322_224 : StackLang.HolProg 64 :=
.seq NamedBody322_222 NamedBody322_223

def NamedBody322_225 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody322_221 NamedBody322_224

def NamedBody322_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody322_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody322_233 : StackLang.HolProg 64 :=
.seq NamedBody322_231 NamedBody322_232

def NamedBody322_234 : StackLang.HolProg 64 :=
.seq NamedBody322_230 NamedBody322_233

def NamedBody322_235 : StackLang.HolProg 64 :=
.seq NamedBody322_229 NamedBody322_234

def NamedBody322_236 : StackLang.HolProg 64 :=
.seq NamedBody322_228 NamedBody322_235

def NamedBody322_237 : StackLang.HolProg 64 :=
.seq NamedBody322_227 NamedBody322_236

def NamedBody322_238 : StackLang.HolProg 64 :=
.seq NamedBody322_226 NamedBody322_237

def NamedBody322_239 : StackLang.HolProg 64 :=
.seq NamedBody322_225 NamedBody322_238

def NamedBody322_240 : StackLang.HolProg 64 :=
.seq NamedBody322_128 NamedBody322_239

def NamedBody322_241 : StackLang.HolProg 64 :=
.seq NamedBody322_127 NamedBody322_240

def NamedBody322_242 : StackLang.HolProg 64 :=
.loop NamedBody322_241

def NamedBody322_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 160#64))

def NamedBody322_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 168#64))

def NamedBody322_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 905#64)

def NamedBody322_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_252 : StackLang.HolProg 64 :=
.seq NamedBody322_250 NamedBody322_251

def NamedBody322_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody322_256 : StackLang.HolProg 64 :=
.seq NamedBody322_254 NamedBody322_255

def NamedBody322_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_258 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody322_256 NamedBody322_257

def NamedBody322_259 : StackLang.HolProg 64 :=
.seq NamedBody322_253 NamedBody322_258

def NamedBody322_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody322_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 322 7

def NamedBody322_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody322_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody322_269 : StackLang.HolProg 64 :=
.seq NamedBody322_267 NamedBody322_268

def NamedBody322_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_271 : StackLang.HolProg 64 :=
.seq NamedBody322_269 NamedBody322_270

def NamedBody322_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_273 : StackLang.HolProg 64 :=
.seq NamedBody322_271 NamedBody322_272

def NamedBody322_274 : StackLang.HolProg 64 :=
.seq NamedBody322_266 NamedBody322_273

def NamedBody322_275 : StackLang.HolProg 64 :=
.seq NamedBody322_265 NamedBody322_274

def NamedBody322_276 : StackLang.HolProg 64 :=
.seq NamedBody322_264 NamedBody322_275

def NamedBody322_277 : StackLang.HolProg 64 :=
.seq NamedBody322_263 NamedBody322_276

def NamedBody322_278 : StackLang.HolProg 64 :=
.seq NamedBody322_262 NamedBody322_277

def NamedBody322_279 : StackLang.HolProg 64 :=
.seq NamedBody322_261 NamedBody322_278

def NamedBody322_280 : StackLang.HolProg 64 :=
.seq NamedBody322_260 NamedBody322_279

def NamedBody322_281 : StackLang.HolProg 64 :=
.seq NamedBody322_259 NamedBody322_280

def NamedBody322_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody322_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_290 : StackLang.HolProg 64 :=
.seq NamedBody322_288 NamedBody322_289

def NamedBody322_291 : StackLang.HolProg 64 :=
.seq NamedBody322_287 NamedBody322_290

def NamedBody322_292 : StackLang.HolProg 64 :=
.seq NamedBody322_286 NamedBody322_291

def NamedBody322_293 : StackLang.HolProg 64 :=
.seq NamedBody322_285 NamedBody322_292

def NamedBody322_294 : StackLang.HolProg 64 :=
.seq NamedBody322_284 NamedBody322_293

def NamedBody322_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_296 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody322_297 : StackLang.HolProg 64 :=
.seq NamedBody322_295 NamedBody322_296

def NamedBody322_298 : StackLang.HolProg 64 :=
.call (some (NamedBody322_294, 1, 322, 6)) (Sum.inl 326) (some (NamedBody322_297, 322, 7))

def NamedBody322_299 : StackLang.HolProg 64 :=
.seq NamedBody322_283 NamedBody322_298

def NamedBody322_300 : StackLang.HolProg 64 :=
.seq NamedBody322_282 NamedBody322_299

def NamedBody322_301 : StackLang.HolProg 64 :=
.seq NamedBody322_281 NamedBody322_300

def NamedBody322_302 : StackLang.HolProg 64 :=
.seq NamedBody322_252 NamedBody322_301

def NamedBody322_303 : StackLang.HolProg 64 :=
.seq NamedBody322_249 NamedBody322_302

def NamedBody322_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody322_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_308 : StackLang.HolProg 64 :=
.seq NamedBody322_306 NamedBody322_307

def NamedBody322_309 : StackLang.HolProg 64 :=
.seq NamedBody322_305 NamedBody322_308

def NamedBody322_310 : StackLang.HolProg 64 :=
.seq NamedBody322_304 NamedBody322_309

def NamedBody322_311 : StackLang.HolProg 64 :=
.seq NamedBody322_303 NamedBody322_310

def NamedBody322_312 : StackLang.HolProg 64 :=
.seq NamedBody322_248 NamedBody322_311

def NamedBody322_313 : StackLang.HolProg 64 :=
.seq NamedBody322_247 NamedBody322_312

def NamedBody322_314 : StackLang.HolProg 64 :=
.seq NamedBody322_246 NamedBody322_313

def NamedBody322_315 : StackLang.HolProg 64 :=
.seq NamedBody322_245 NamedBody322_314

def NamedBody322_316 : StackLang.HolProg 64 :=
.seq NamedBody322_244 NamedBody322_315

def NamedBody322_317 : StackLang.HolProg 64 :=
.seq NamedBody322_243 NamedBody322_316

def NamedBody322_318 : StackLang.HolProg 64 :=
.seq NamedBody322_242 NamedBody322_317

def NamedBody322_319 : StackLang.HolProg 64 :=
.seq NamedBody322_126 NamedBody322_318

def NamedBody322_320 : StackLang.HolProg 64 :=
.seq NamedBody322_123 NamedBody322_319

def NamedBody322_321 : StackLang.HolProg 64 :=
.seq NamedBody322_122 NamedBody322_320

def NamedBody322_322 : StackLang.HolProg 64 :=
.seq NamedBody322_121 NamedBody322_321

def NamedBody322_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_326 : StackLang.HolProg 64 :=
.seq NamedBody322_324 NamedBody322_325

def NamedBody322_327 : StackLang.HolProg 64 :=
.seq NamedBody322_323 NamedBody322_326

def NamedBody322_328 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody322_322 NamedBody322_327

def NamedBody322_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 906#64)

def NamedBody322_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_334 : StackLang.HolProg 64 :=
.seq NamedBody322_332 NamedBody322_333

def NamedBody322_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody322_338 : StackLang.HolProg 64 :=
.seq NamedBody322_336 NamedBody322_337

def NamedBody322_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_340 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody322_338 NamedBody322_339

def NamedBody322_341 : StackLang.HolProg 64 :=
.seq NamedBody322_335 NamedBody322_340

def NamedBody322_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody322_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 322 9

def NamedBody322_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody322_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody322_351 : StackLang.HolProg 64 :=
.seq NamedBody322_349 NamedBody322_350

def NamedBody322_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_353 : StackLang.HolProg 64 :=
.seq NamedBody322_351 NamedBody322_352

def NamedBody322_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_355 : StackLang.HolProg 64 :=
.seq NamedBody322_353 NamedBody322_354

def NamedBody322_356 : StackLang.HolProg 64 :=
.seq NamedBody322_348 NamedBody322_355

def NamedBody322_357 : StackLang.HolProg 64 :=
.seq NamedBody322_347 NamedBody322_356

def NamedBody322_358 : StackLang.HolProg 64 :=
.seq NamedBody322_346 NamedBody322_357

def NamedBody322_359 : StackLang.HolProg 64 :=
.seq NamedBody322_345 NamedBody322_358

def NamedBody322_360 : StackLang.HolProg 64 :=
.seq NamedBody322_344 NamedBody322_359

def NamedBody322_361 : StackLang.HolProg 64 :=
.seq NamedBody322_343 NamedBody322_360

def NamedBody322_362 : StackLang.HolProg 64 :=
.seq NamedBody322_342 NamedBody322_361

def NamedBody322_363 : StackLang.HolProg 64 :=
.seq NamedBody322_341 NamedBody322_362

def NamedBody322_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody322_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_372 : StackLang.HolProg 64 :=
.seq NamedBody322_370 NamedBody322_371

def NamedBody322_373 : StackLang.HolProg 64 :=
.seq NamedBody322_369 NamedBody322_372

def NamedBody322_374 : StackLang.HolProg 64 :=
.seq NamedBody322_368 NamedBody322_373

def NamedBody322_375 : StackLang.HolProg 64 :=
.seq NamedBody322_367 NamedBody322_374

def NamedBody322_376 : StackLang.HolProg 64 :=
.seq NamedBody322_366 NamedBody322_375

def NamedBody322_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_378 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody322_379 : StackLang.HolProg 64 :=
.seq NamedBody322_377 NamedBody322_378

def NamedBody322_380 : StackLang.HolProg 64 :=
.call (some (NamedBody322_376, 1, 322, 8)) (Sum.inl 180) (some (NamedBody322_379, 322, 9))

def NamedBody322_381 : StackLang.HolProg 64 :=
.seq NamedBody322_365 NamedBody322_380

def NamedBody322_382 : StackLang.HolProg 64 :=
.seq NamedBody322_364 NamedBody322_381

def NamedBody322_383 : StackLang.HolProg 64 :=
.seq NamedBody322_363 NamedBody322_382

def NamedBody322_384 : StackLang.HolProg 64 :=
.seq NamedBody322_334 NamedBody322_383

def NamedBody322_385 : StackLang.HolProg 64 :=
.seq NamedBody322_331 NamedBody322_384

def NamedBody322_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody322_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody322_391 : StackLang.HolProg 64 :=
.seq NamedBody322_389 NamedBody322_390

def NamedBody322_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 907#64)

def NamedBody322_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_395 : StackLang.HolProg 64 :=
.seq NamedBody322_393 NamedBody322_394

def NamedBody322_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody322_399 : StackLang.HolProg 64 :=
.seq NamedBody322_397 NamedBody322_398

def NamedBody322_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_401 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody322_399 NamedBody322_400

def NamedBody322_402 : StackLang.HolProg 64 :=
.seq NamedBody322_396 NamedBody322_401

def NamedBody322_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody322_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 322 11

def NamedBody322_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody322_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody322_412 : StackLang.HolProg 64 :=
.seq NamedBody322_410 NamedBody322_411

def NamedBody322_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_414 : StackLang.HolProg 64 :=
.seq NamedBody322_412 NamedBody322_413

def NamedBody322_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_416 : StackLang.HolProg 64 :=
.seq NamedBody322_414 NamedBody322_415

def NamedBody322_417 : StackLang.HolProg 64 :=
.seq NamedBody322_409 NamedBody322_416

def NamedBody322_418 : StackLang.HolProg 64 :=
.seq NamedBody322_408 NamedBody322_417

def NamedBody322_419 : StackLang.HolProg 64 :=
.seq NamedBody322_407 NamedBody322_418

def NamedBody322_420 : StackLang.HolProg 64 :=
.seq NamedBody322_406 NamedBody322_419

def NamedBody322_421 : StackLang.HolProg 64 :=
.seq NamedBody322_405 NamedBody322_420

def NamedBody322_422 : StackLang.HolProg 64 :=
.seq NamedBody322_404 NamedBody322_421

def NamedBody322_423 : StackLang.HolProg 64 :=
.seq NamedBody322_403 NamedBody322_422

def NamedBody322_424 : StackLang.HolProg 64 :=
.seq NamedBody322_402 NamedBody322_423

def NamedBody322_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody322_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_435 : StackLang.HolProg 64 :=
.seq NamedBody322_433 NamedBody322_434

def NamedBody322_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_438 : StackLang.HolProg 64 :=
.seq NamedBody322_436 NamedBody322_437

def NamedBody322_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody322_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_441 : StackLang.HolProg 64 :=
.seq NamedBody322_439 NamedBody322_440

def NamedBody322_442 : StackLang.HolProg 64 :=
.seq NamedBody322_438 NamedBody322_441

def NamedBody322_443 : StackLang.HolProg 64 :=
.seq NamedBody322_435 NamedBody322_442

def NamedBody322_444 : StackLang.HolProg 64 :=
.seq NamedBody322_432 NamedBody322_443

def NamedBody322_445 : StackLang.HolProg 64 :=
.seq NamedBody322_431 NamedBody322_444

def NamedBody322_446 : StackLang.HolProg 64 :=
.seq NamedBody322_430 NamedBody322_445

def NamedBody322_447 : StackLang.HolProg 64 :=
.seq NamedBody322_429 NamedBody322_446

def NamedBody322_448 : StackLang.HolProg 64 :=
.seq NamedBody322_428 NamedBody322_447

def NamedBody322_449 : StackLang.HolProg 64 :=
.seq NamedBody322_427 NamedBody322_448

def NamedBody322_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_453 : StackLang.HolProg 64 :=
.seq NamedBody322_451 NamedBody322_452

def NamedBody322_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_456 : StackLang.HolProg 64 :=
.seq NamedBody322_454 NamedBody322_455

def NamedBody322_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody322_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_459 : StackLang.HolProg 64 :=
.seq NamedBody322_457 NamedBody322_458

def NamedBody322_460 : StackLang.HolProg 64 :=
.seq NamedBody322_456 NamedBody322_459

def NamedBody322_461 : StackLang.HolProg 64 :=
.seq NamedBody322_453 NamedBody322_460

def NamedBody322_462 : StackLang.HolProg 64 :=
.seq NamedBody322_450 NamedBody322_461

def NamedBody322_463 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody322_464 : StackLang.HolProg 64 :=
.seq NamedBody322_462 NamedBody322_463

def NamedBody322_465 : StackLang.HolProg 64 :=
.call (some (NamedBody322_449, 1, 322, 10)) (Sum.inl 68) (some (NamedBody322_464, 322, 11))

def NamedBody322_466 : StackLang.HolProg 64 :=
.seq NamedBody322_426 NamedBody322_465

def NamedBody322_467 : StackLang.HolProg 64 :=
.seq NamedBody322_425 NamedBody322_466

def NamedBody322_468 : StackLang.HolProg 64 :=
.seq NamedBody322_424 NamedBody322_467

def NamedBody322_469 : StackLang.HolProg 64 :=
.seq NamedBody322_395 NamedBody322_468

def NamedBody322_470 : StackLang.HolProg 64 :=
.seq NamedBody322_392 NamedBody322_469

def NamedBody322_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody322_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody322_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody322_475 : StackLang.HolProg 64 :=
.seq NamedBody322_473 NamedBody322_474

def NamedBody322_476 : StackLang.HolProg 64 :=
.seq NamedBody322_472 NamedBody322_475

def NamedBody322_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 908#64)

def NamedBody322_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_480 : StackLang.HolProg 64 :=
.seq NamedBody322_478 NamedBody322_479

def NamedBody322_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody322_484 : StackLang.HolProg 64 :=
.seq NamedBody322_482 NamedBody322_483

def NamedBody322_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_486 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody322_484 NamedBody322_485

def NamedBody322_487 : StackLang.HolProg 64 :=
.seq NamedBody322_481 NamedBody322_486

def NamedBody322_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody322_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 322 13

def NamedBody322_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody322_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody322_497 : StackLang.HolProg 64 :=
.seq NamedBody322_495 NamedBody322_496

def NamedBody322_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_499 : StackLang.HolProg 64 :=
.seq NamedBody322_497 NamedBody322_498

def NamedBody322_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_501 : StackLang.HolProg 64 :=
.seq NamedBody322_499 NamedBody322_500

def NamedBody322_502 : StackLang.HolProg 64 :=
.seq NamedBody322_494 NamedBody322_501

def NamedBody322_503 : StackLang.HolProg 64 :=
.seq NamedBody322_493 NamedBody322_502

def NamedBody322_504 : StackLang.HolProg 64 :=
.seq NamedBody322_492 NamedBody322_503

def NamedBody322_505 : StackLang.HolProg 64 :=
.seq NamedBody322_491 NamedBody322_504

def NamedBody322_506 : StackLang.HolProg 64 :=
.seq NamedBody322_490 NamedBody322_505

def NamedBody322_507 : StackLang.HolProg 64 :=
.seq NamedBody322_489 NamedBody322_506

def NamedBody322_508 : StackLang.HolProg 64 :=
.seq NamedBody322_488 NamedBody322_507

def NamedBody322_509 : StackLang.HolProg 64 :=
.seq NamedBody322_487 NamedBody322_508

def NamedBody322_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_519 : StackLang.HolProg 64 :=
.seq NamedBody322_517 NamedBody322_518

def NamedBody322_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody322_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody322_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_523 : StackLang.HolProg 64 :=
.seq NamedBody322_521 NamedBody322_522

def NamedBody322_524 : StackLang.HolProg 64 :=
.seq NamedBody322_520 NamedBody322_523

def NamedBody322_525 : StackLang.HolProg 64 :=
.seq NamedBody322_519 NamedBody322_524

def NamedBody322_526 : StackLang.HolProg 64 :=
.seq NamedBody322_516 NamedBody322_525

def NamedBody322_527 : StackLang.HolProg 64 :=
.seq NamedBody322_515 NamedBody322_526

def NamedBody322_528 : StackLang.HolProg 64 :=
.seq NamedBody322_514 NamedBody322_527

def NamedBody322_529 : StackLang.HolProg 64 :=
.seq NamedBody322_513 NamedBody322_528

def NamedBody322_530 : StackLang.HolProg 64 :=
.seq NamedBody322_512 NamedBody322_529

def NamedBody322_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_534 : StackLang.HolProg 64 :=
.seq NamedBody322_532 NamedBody322_533

def NamedBody322_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody322_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody322_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_538 : StackLang.HolProg 64 :=
.seq NamedBody322_536 NamedBody322_537

def NamedBody322_539 : StackLang.HolProg 64 :=
.seq NamedBody322_535 NamedBody322_538

def NamedBody322_540 : StackLang.HolProg 64 :=
.seq NamedBody322_534 NamedBody322_539

def NamedBody322_541 : StackLang.HolProg 64 :=
.seq NamedBody322_531 NamedBody322_540

def NamedBody322_542 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody322_543 : StackLang.HolProg 64 :=
.seq NamedBody322_541 NamedBody322_542

def NamedBody322_544 : StackLang.HolProg 64 :=
.call (some (NamedBody322_530, 1, 322, 12)) (Sum.inl 178) (some (NamedBody322_543, 322, 13))

def NamedBody322_545 : StackLang.HolProg 64 :=
.seq NamedBody322_511 NamedBody322_544

def NamedBody322_546 : StackLang.HolProg 64 :=
.seq NamedBody322_510 NamedBody322_545

def NamedBody322_547 : StackLang.HolProg 64 :=
.seq NamedBody322_509 NamedBody322_546

def NamedBody322_548 : StackLang.HolProg 64 :=
.seq NamedBody322_480 NamedBody322_547

def NamedBody322_549 : StackLang.HolProg 64 :=
.seq NamedBody322_477 NamedBody322_548

def NamedBody322_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody322_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody322_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_559 : StackLang.HolProg 64 :=
.seq NamedBody322_557 NamedBody322_558

def NamedBody322_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_562 : StackLang.HolProg 64 :=
.seq NamedBody322_560 NamedBody322_561

def NamedBody322_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def NamedBody322_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_568 : StackLang.HolProg 64 :=
.seq NamedBody322_566 NamedBody322_567

def NamedBody322_569 : StackLang.HolProg 64 :=
.seq NamedBody322_565 NamedBody322_568

def NamedBody322_570 : StackLang.HolProg 64 :=
.seq NamedBody322_564 NamedBody322_569

def NamedBody322_571 : StackLang.HolProg 64 :=
.seq NamedBody322_563 NamedBody322_570

def NamedBody322_572 : StackLang.HolProg 64 :=
.seq NamedBody322_562 NamedBody322_571

def NamedBody322_573 : StackLang.HolProg 64 :=
.seq NamedBody322_559 NamedBody322_572

def NamedBody322_574 : StackLang.HolProg 64 :=
.seq NamedBody322_556 NamedBody322_573

def NamedBody322_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 909#64)

def NamedBody322_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_578 : StackLang.HolProg 64 :=
.seq NamedBody322_576 NamedBody322_577

def NamedBody322_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody322_582 : StackLang.HolProg 64 :=
.seq NamedBody322_580 NamedBody322_581

def NamedBody322_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_584 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody322_582 NamedBody322_583

def NamedBody322_585 : StackLang.HolProg 64 :=
.seq NamedBody322_579 NamedBody322_584

def NamedBody322_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody322_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 322 15

def NamedBody322_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody322_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody322_595 : StackLang.HolProg 64 :=
.seq NamedBody322_593 NamedBody322_594

def NamedBody322_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_597 : StackLang.HolProg 64 :=
.seq NamedBody322_595 NamedBody322_596

def NamedBody322_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_599 : StackLang.HolProg 64 :=
.seq NamedBody322_597 NamedBody322_598

def NamedBody322_600 : StackLang.HolProg 64 :=
.seq NamedBody322_592 NamedBody322_599

def NamedBody322_601 : StackLang.HolProg 64 :=
.seq NamedBody322_591 NamedBody322_600

def NamedBody322_602 : StackLang.HolProg 64 :=
.seq NamedBody322_590 NamedBody322_601

def NamedBody322_603 : StackLang.HolProg 64 :=
.seq NamedBody322_589 NamedBody322_602

def NamedBody322_604 : StackLang.HolProg 64 :=
.seq NamedBody322_588 NamedBody322_603

def NamedBody322_605 : StackLang.HolProg 64 :=
.seq NamedBody322_587 NamedBody322_604

def NamedBody322_606 : StackLang.HolProg 64 :=
.seq NamedBody322_586 NamedBody322_605

def NamedBody322_607 : StackLang.HolProg 64 :=
.seq NamedBody322_585 NamedBody322_606

def NamedBody322_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody322_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_619 : StackLang.HolProg 64 :=
.seq NamedBody322_617 NamedBody322_618

def NamedBody322_620 : StackLang.HolProg 64 :=
.seq NamedBody322_616 NamedBody322_619

def NamedBody322_621 : StackLang.HolProg 64 :=
.seq NamedBody322_615 NamedBody322_620

def NamedBody322_622 : StackLang.HolProg 64 :=
.seq NamedBody322_614 NamedBody322_621

def NamedBody322_623 : StackLang.HolProg 64 :=
.seq NamedBody322_613 NamedBody322_622

def NamedBody322_624 : StackLang.HolProg 64 :=
.seq NamedBody322_612 NamedBody322_623

def NamedBody322_625 : StackLang.HolProg 64 :=
.seq NamedBody322_611 NamedBody322_624

def NamedBody322_626 : StackLang.HolProg 64 :=
.seq NamedBody322_610 NamedBody322_625

def NamedBody322_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_631 : StackLang.HolProg 64 :=
.seq NamedBody322_629 NamedBody322_630

def NamedBody322_632 : StackLang.HolProg 64 :=
.seq NamedBody322_628 NamedBody322_631

def NamedBody322_633 : StackLang.HolProg 64 :=
.seq NamedBody322_627 NamedBody322_632

def NamedBody322_634 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody322_635 : StackLang.HolProg 64 :=
.seq NamedBody322_633 NamedBody322_634

def NamedBody322_636 : StackLang.HolProg 64 :=
.call (some (NamedBody322_626, 1, 322, 14)) (Sum.inl 176) (some (NamedBody322_635, 322, 15))

def NamedBody322_637 : StackLang.HolProg 64 :=
.seq NamedBody322_609 NamedBody322_636

def NamedBody322_638 : StackLang.HolProg 64 :=
.seq NamedBody322_608 NamedBody322_637

def NamedBody322_639 : StackLang.HolProg 64 :=
.seq NamedBody322_607 NamedBody322_638

def NamedBody322_640 : StackLang.HolProg 64 :=
.seq NamedBody322_578 NamedBody322_639

def NamedBody322_641 : StackLang.HolProg 64 :=
.seq NamedBody322_575 NamedBody322_640

def NamedBody322_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody322_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody322_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody322_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody322_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def NamedBody322_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_657 : StackLang.HolProg 64 :=
.seq NamedBody322_655 NamedBody322_656

def NamedBody322_658 : StackLang.HolProg 64 :=
.seq NamedBody322_654 NamedBody322_657

def NamedBody322_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 910#64)

def NamedBody322_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_662 : StackLang.HolProg 64 :=
.seq NamedBody322_660 NamedBody322_661

def NamedBody322_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody322_666 : StackLang.HolProg 64 :=
.seq NamedBody322_664 NamedBody322_665

def NamedBody322_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_668 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody322_666 NamedBody322_667

def NamedBody322_669 : StackLang.HolProg 64 :=
.seq NamedBody322_663 NamedBody322_668

def NamedBody322_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody322_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 322 17

def NamedBody322_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody322_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody322_679 : StackLang.HolProg 64 :=
.seq NamedBody322_677 NamedBody322_678

def NamedBody322_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_681 : StackLang.HolProg 64 :=
.seq NamedBody322_679 NamedBody322_680

def NamedBody322_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_683 : StackLang.HolProg 64 :=
.seq NamedBody322_681 NamedBody322_682

def NamedBody322_684 : StackLang.HolProg 64 :=
.seq NamedBody322_676 NamedBody322_683

def NamedBody322_685 : StackLang.HolProg 64 :=
.seq NamedBody322_675 NamedBody322_684

def NamedBody322_686 : StackLang.HolProg 64 :=
.seq NamedBody322_674 NamedBody322_685

def NamedBody322_687 : StackLang.HolProg 64 :=
.seq NamedBody322_673 NamedBody322_686

def NamedBody322_688 : StackLang.HolProg 64 :=
.seq NamedBody322_672 NamedBody322_687

def NamedBody322_689 : StackLang.HolProg 64 :=
.seq NamedBody322_671 NamedBody322_688

def NamedBody322_690 : StackLang.HolProg 64 :=
.seq NamedBody322_670 NamedBody322_689

def NamedBody322_691 : StackLang.HolProg 64 :=
.seq NamedBody322_669 NamedBody322_690

def NamedBody322_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody322_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_703 : StackLang.HolProg 64 :=
.seq NamedBody322_701 NamedBody322_702

def NamedBody322_704 : StackLang.HolProg 64 :=
.seq NamedBody322_700 NamedBody322_703

def NamedBody322_705 : StackLang.HolProg 64 :=
.seq NamedBody322_699 NamedBody322_704

def NamedBody322_706 : StackLang.HolProg 64 :=
.seq NamedBody322_698 NamedBody322_705

def NamedBody322_707 : StackLang.HolProg 64 :=
.seq NamedBody322_697 NamedBody322_706

def NamedBody322_708 : StackLang.HolProg 64 :=
.seq NamedBody322_696 NamedBody322_707

def NamedBody322_709 : StackLang.HolProg 64 :=
.seq NamedBody322_695 NamedBody322_708

def NamedBody322_710 : StackLang.HolProg 64 :=
.seq NamedBody322_694 NamedBody322_709

def NamedBody322_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_715 : StackLang.HolProg 64 :=
.seq NamedBody322_713 NamedBody322_714

def NamedBody322_716 : StackLang.HolProg 64 :=
.seq NamedBody322_712 NamedBody322_715

def NamedBody322_717 : StackLang.HolProg 64 :=
.seq NamedBody322_711 NamedBody322_716

def NamedBody322_718 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody322_719 : StackLang.HolProg 64 :=
.seq NamedBody322_717 NamedBody322_718

def NamedBody322_720 : StackLang.HolProg 64 :=
.call (some (NamedBody322_710, 1, 322, 16)) (Sum.inl 176) (some (NamedBody322_719, 322, 17))

def NamedBody322_721 : StackLang.HolProg 64 :=
.seq NamedBody322_693 NamedBody322_720

def NamedBody322_722 : StackLang.HolProg 64 :=
.seq NamedBody322_692 NamedBody322_721

def NamedBody322_723 : StackLang.HolProg 64 :=
.seq NamedBody322_691 NamedBody322_722

def NamedBody322_724 : StackLang.HolProg 64 :=
.seq NamedBody322_662 NamedBody322_723

def NamedBody322_725 : StackLang.HolProg 64 :=
.seq NamedBody322_659 NamedBody322_724

def NamedBody322_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody322_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_730 : StackLang.HolProg 64 :=
.seq NamedBody322_728 NamedBody322_729

def NamedBody322_731 : StackLang.HolProg 64 :=
.seq NamedBody322_727 NamedBody322_730

def NamedBody322_732 : StackLang.HolProg 64 :=
.seq NamedBody322_726 NamedBody322_731

def NamedBody322_733 : StackLang.HolProg 64 :=
.seq NamedBody322_725 NamedBody322_732

def NamedBody322_734 : StackLang.HolProg 64 :=
.seq NamedBody322_658 NamedBody322_733

def NamedBody322_735 : StackLang.HolProg 64 :=
.seq NamedBody322_653 NamedBody322_734

def NamedBody322_736 : StackLang.HolProg 64 :=
.seq NamedBody322_652 NamedBody322_735

def NamedBody322_737 : StackLang.HolProg 64 :=
.seq NamedBody322_651 NamedBody322_736

def NamedBody322_738 : StackLang.HolProg 64 :=
.seq NamedBody322_650 NamedBody322_737

def NamedBody322_739 : StackLang.HolProg 64 :=
.seq NamedBody322_649 NamedBody322_738

def NamedBody322_740 : StackLang.HolProg 64 :=
.seq NamedBody322_648 NamedBody322_739

def NamedBody322_741 : StackLang.HolProg 64 :=
.seq NamedBody322_647 NamedBody322_740

def NamedBody322_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody322_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody322_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_750 : StackLang.HolProg 64 :=
.seq NamedBody322_748 NamedBody322_749

def NamedBody322_751 : StackLang.HolProg 64 :=
.seq NamedBody322_747 NamedBody322_750

def NamedBody322_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 911#64)

def NamedBody322_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_755 : StackLang.HolProg 64 :=
.seq NamedBody322_753 NamedBody322_754

def NamedBody322_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody322_759 : StackLang.HolProg 64 :=
.seq NamedBody322_757 NamedBody322_758

def NamedBody322_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_761 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody322_759 NamedBody322_760

def NamedBody322_762 : StackLang.HolProg 64 :=
.seq NamedBody322_756 NamedBody322_761

def NamedBody322_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody322_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 322 19

def NamedBody322_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody322_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody322_772 : StackLang.HolProg 64 :=
.seq NamedBody322_770 NamedBody322_771

def NamedBody322_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_774 : StackLang.HolProg 64 :=
.seq NamedBody322_772 NamedBody322_773

def NamedBody322_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_776 : StackLang.HolProg 64 :=
.seq NamedBody322_774 NamedBody322_775

def NamedBody322_777 : StackLang.HolProg 64 :=
.seq NamedBody322_769 NamedBody322_776

def NamedBody322_778 : StackLang.HolProg 64 :=
.seq NamedBody322_768 NamedBody322_777

def NamedBody322_779 : StackLang.HolProg 64 :=
.seq NamedBody322_767 NamedBody322_778

def NamedBody322_780 : StackLang.HolProg 64 :=
.seq NamedBody322_766 NamedBody322_779

def NamedBody322_781 : StackLang.HolProg 64 :=
.seq NamedBody322_765 NamedBody322_780

def NamedBody322_782 : StackLang.HolProg 64 :=
.seq NamedBody322_764 NamedBody322_781

def NamedBody322_783 : StackLang.HolProg 64 :=
.seq NamedBody322_763 NamedBody322_782

def NamedBody322_784 : StackLang.HolProg 64 :=
.seq NamedBody322_762 NamedBody322_783

def NamedBody322_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody322_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_796 : StackLang.HolProg 64 :=
.seq NamedBody322_794 NamedBody322_795

def NamedBody322_797 : StackLang.HolProg 64 :=
.seq NamedBody322_793 NamedBody322_796

def NamedBody322_798 : StackLang.HolProg 64 :=
.seq NamedBody322_792 NamedBody322_797

def NamedBody322_799 : StackLang.HolProg 64 :=
.seq NamedBody322_791 NamedBody322_798

def NamedBody322_800 : StackLang.HolProg 64 :=
.seq NamedBody322_790 NamedBody322_799

def NamedBody322_801 : StackLang.HolProg 64 :=
.seq NamedBody322_789 NamedBody322_800

def NamedBody322_802 : StackLang.HolProg 64 :=
.seq NamedBody322_788 NamedBody322_801

def NamedBody322_803 : StackLang.HolProg 64 :=
.seq NamedBody322_787 NamedBody322_802

def NamedBody322_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_808 : StackLang.HolProg 64 :=
.seq NamedBody322_806 NamedBody322_807

def NamedBody322_809 : StackLang.HolProg 64 :=
.seq NamedBody322_805 NamedBody322_808

def NamedBody322_810 : StackLang.HolProg 64 :=
.seq NamedBody322_804 NamedBody322_809

def NamedBody322_811 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody322_812 : StackLang.HolProg 64 :=
.seq NamedBody322_810 NamedBody322_811

def NamedBody322_813 : StackLang.HolProg 64 :=
.call (some (NamedBody322_803, 1, 322, 18)) (Sum.inl 329) (some (NamedBody322_812, 322, 19))

def NamedBody322_814 : StackLang.HolProg 64 :=
.seq NamedBody322_786 NamedBody322_813

def NamedBody322_815 : StackLang.HolProg 64 :=
.seq NamedBody322_785 NamedBody322_814

def NamedBody322_816 : StackLang.HolProg 64 :=
.seq NamedBody322_784 NamedBody322_815

def NamedBody322_817 : StackLang.HolProg 64 :=
.seq NamedBody322_755 NamedBody322_816

def NamedBody322_818 : StackLang.HolProg 64 :=
.seq NamedBody322_752 NamedBody322_817

def NamedBody322_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody322_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_823 : StackLang.HolProg 64 :=
.seq NamedBody322_821 NamedBody322_822

def NamedBody322_824 : StackLang.HolProg 64 :=
.seq NamedBody322_820 NamedBody322_823

def NamedBody322_825 : StackLang.HolProg 64 :=
.seq NamedBody322_819 NamedBody322_824

def NamedBody322_826 : StackLang.HolProg 64 :=
.seq NamedBody322_818 NamedBody322_825

def NamedBody322_827 : StackLang.HolProg 64 :=
.seq NamedBody322_751 NamedBody322_826

def NamedBody322_828 : StackLang.HolProg 64 :=
.seq NamedBody322_746 NamedBody322_827

def NamedBody322_829 : StackLang.HolProg 64 :=
.seq NamedBody322_745 NamedBody322_828

def NamedBody322_830 : StackLang.HolProg 64 :=
.seq NamedBody322_744 NamedBody322_829

def NamedBody322_831 : StackLang.HolProg 64 :=
.seq NamedBody322_743 NamedBody322_830

def NamedBody322_832 : StackLang.HolProg 64 :=
.seq NamedBody322_742 NamedBody322_831

def NamedBody322_833 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody322_741 NamedBody322_832

def NamedBody322_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_836 : StackLang.HolProg 64 :=
.seq NamedBody322_834 NamedBody322_835

def NamedBody322_837 : StackLang.HolProg 64 :=
.seq NamedBody322_833 NamedBody322_836

def NamedBody322_838 : StackLang.HolProg 64 :=
.seq NamedBody322_646 NamedBody322_837

def NamedBody322_839 : StackLang.HolProg 64 :=
.seq NamedBody322_645 NamedBody322_838

def NamedBody322_840 : StackLang.HolProg 64 :=
.seq NamedBody322_644 NamedBody322_839

def NamedBody322_841 : StackLang.HolProg 64 :=
.seq NamedBody322_643 NamedBody322_840

def NamedBody322_842 : StackLang.HolProg 64 :=
.seq NamedBody322_642 NamedBody322_841

def NamedBody322_843 : StackLang.HolProg 64 :=
.seq NamedBody322_641 NamedBody322_842

def NamedBody322_844 : StackLang.HolProg 64 :=
.seq NamedBody322_574 NamedBody322_843

def NamedBody322_845 : StackLang.HolProg 64 :=
.seq NamedBody322_555 NamedBody322_844

def NamedBody322_846 : StackLang.HolProg 64 :=
.seq NamedBody322_554 NamedBody322_845

def NamedBody322_847 : StackLang.HolProg 64 :=
.seq NamedBody322_553 NamedBody322_846

def NamedBody322_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody322_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_854 : StackLang.HolProg 64 :=
.seq NamedBody322_852 NamedBody322_853

def NamedBody322_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_857 : StackLang.HolProg 64 :=
.seq NamedBody322_855 NamedBody322_856

def NamedBody322_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_862 : StackLang.HolProg 64 :=
.seq NamedBody322_860 NamedBody322_861

def NamedBody322_863 : StackLang.HolProg 64 :=
.seq NamedBody322_859 NamedBody322_862

def NamedBody322_864 : StackLang.HolProg 64 :=
.seq NamedBody322_858 NamedBody322_863

def NamedBody322_865 : StackLang.HolProg 64 :=
.seq NamedBody322_857 NamedBody322_864

def NamedBody322_866 : StackLang.HolProg 64 :=
.seq NamedBody322_854 NamedBody322_865

def NamedBody322_867 : StackLang.HolProg 64 :=
.seq NamedBody322_851 NamedBody322_866

def NamedBody322_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 16#64)

def NamedBody322_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody322_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody322_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody322_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_880 : StackLang.HolProg 64 :=
.seq NamedBody322_878 NamedBody322_879

def NamedBody322_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_883 : StackLang.HolProg 64 :=
.seq NamedBody322_881 NamedBody322_882

def NamedBody322_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody322_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody322_887 : StackLang.HolProg 64 :=
.seq NamedBody322_885 NamedBody322_886

def NamedBody322_888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody322_890 : StackLang.HolProg 64 :=
.seq NamedBody322_888 NamedBody322_889

def NamedBody322_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody322_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_894 : StackLang.HolProg 64 :=
.seq NamedBody322_892 NamedBody322_893

def NamedBody322_895 : StackLang.HolProg 64 :=
.seq NamedBody322_891 NamedBody322_894

def NamedBody322_896 : StackLang.HolProg 64 :=
.seq NamedBody322_890 NamedBody322_895

def NamedBody322_897 : StackLang.HolProg 64 :=
.seq NamedBody322_887 NamedBody322_896

def NamedBody322_898 : StackLang.HolProg 64 :=
.seq NamedBody322_884 NamedBody322_897

def NamedBody322_899 : StackLang.HolProg 64 :=
.seq NamedBody322_883 NamedBody322_898

def NamedBody322_900 : StackLang.HolProg 64 :=
.seq NamedBody322_880 NamedBody322_899

def NamedBody322_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 912#64)

def NamedBody322_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_904 : StackLang.HolProg 64 :=
.seq NamedBody322_902 NamedBody322_903

def NamedBody322_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody322_908 : StackLang.HolProg 64 :=
.seq NamedBody322_906 NamedBody322_907

def NamedBody322_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_910 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody322_908 NamedBody322_909

def NamedBody322_911 : StackLang.HolProg 64 :=
.seq NamedBody322_905 NamedBody322_910

def NamedBody322_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody322_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 322 21

def NamedBody322_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody322_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody322_921 : StackLang.HolProg 64 :=
.seq NamedBody322_919 NamedBody322_920

def NamedBody322_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_923 : StackLang.HolProg 64 :=
.seq NamedBody322_921 NamedBody322_922

def NamedBody322_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_925 : StackLang.HolProg 64 :=
.seq NamedBody322_923 NamedBody322_924

def NamedBody322_926 : StackLang.HolProg 64 :=
.seq NamedBody322_918 NamedBody322_925

def NamedBody322_927 : StackLang.HolProg 64 :=
.seq NamedBody322_917 NamedBody322_926

def NamedBody322_928 : StackLang.HolProg 64 :=
.seq NamedBody322_916 NamedBody322_927

def NamedBody322_929 : StackLang.HolProg 64 :=
.seq NamedBody322_915 NamedBody322_928

def NamedBody322_930 : StackLang.HolProg 64 :=
.seq NamedBody322_914 NamedBody322_929

def NamedBody322_931 : StackLang.HolProg 64 :=
.seq NamedBody322_913 NamedBody322_930

def NamedBody322_932 : StackLang.HolProg 64 :=
.seq NamedBody322_912 NamedBody322_931

def NamedBody322_933 : StackLang.HolProg 64 :=
.seq NamedBody322_911 NamedBody322_932

def NamedBody322_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody322_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody322_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody322_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody322_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody322_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_951 : StackLang.HolProg 64 :=
.seq NamedBody322_949 NamedBody322_950

def NamedBody322_952 : StackLang.HolProg 64 :=
.seq NamedBody322_948 NamedBody322_951

def NamedBody322_953 : StackLang.HolProg 64 :=
.seq NamedBody322_947 NamedBody322_952

def NamedBody322_954 : StackLang.HolProg 64 :=
.seq NamedBody322_946 NamedBody322_953

def NamedBody322_955 : StackLang.HolProg 64 :=
.seq NamedBody322_945 NamedBody322_954

def NamedBody322_956 : StackLang.HolProg 64 :=
.seq NamedBody322_944 NamedBody322_955

def NamedBody322_957 : StackLang.HolProg 64 :=
.seq NamedBody322_943 NamedBody322_956

def NamedBody322_958 : StackLang.HolProg 64 :=
.seq NamedBody322_942 NamedBody322_957

def NamedBody322_959 : StackLang.HolProg 64 :=
.seq NamedBody322_941 NamedBody322_958

def NamedBody322_960 : StackLang.HolProg 64 :=
.seq NamedBody322_940 NamedBody322_959

def NamedBody322_961 : StackLang.HolProg 64 :=
.seq NamedBody322_939 NamedBody322_960

def NamedBody322_962 : StackLang.HolProg 64 :=
.seq NamedBody322_938 NamedBody322_961

def NamedBody322_963 : StackLang.HolProg 64 :=
.seq NamedBody322_937 NamedBody322_962

def NamedBody322_964 : StackLang.HolProg 64 :=
.seq NamedBody322_936 NamedBody322_963

def NamedBody322_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody322_966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody322_971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody322_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody322_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_975 : StackLang.HolProg 64 :=
.seq NamedBody322_973 NamedBody322_974

def NamedBody322_976 : StackLang.HolProg 64 :=
.seq NamedBody322_972 NamedBody322_975

def NamedBody322_977 : StackLang.HolProg 64 :=
.seq NamedBody322_971 NamedBody322_976

def NamedBody322_978 : StackLang.HolProg 64 :=
.seq NamedBody322_970 NamedBody322_977

def NamedBody322_979 : StackLang.HolProg 64 :=
.seq NamedBody322_969 NamedBody322_978

def NamedBody322_980 : StackLang.HolProg 64 :=
.seq NamedBody322_968 NamedBody322_979

def NamedBody322_981 : StackLang.HolProg 64 :=
.seq NamedBody322_967 NamedBody322_980

def NamedBody322_982 : StackLang.HolProg 64 :=
.seq NamedBody322_966 NamedBody322_981

def NamedBody322_983 : StackLang.HolProg 64 :=
.seq NamedBody322_965 NamedBody322_982

def NamedBody322_984 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody322_985 : StackLang.HolProg 64 :=
.seq NamedBody322_983 NamedBody322_984

def NamedBody322_986 : StackLang.HolProg 64 :=
.call (some (NamedBody322_964, 1, 322, 20)) (Sum.inl 329) (some (NamedBody322_985, 322, 21))

def NamedBody322_987 : StackLang.HolProg 64 :=
.seq NamedBody322_935 NamedBody322_986

def NamedBody322_988 : StackLang.HolProg 64 :=
.seq NamedBody322_934 NamedBody322_987

def NamedBody322_989 : StackLang.HolProg 64 :=
.seq NamedBody322_933 NamedBody322_988

def NamedBody322_990 : StackLang.HolProg 64 :=
.seq NamedBody322_904 NamedBody322_989

def NamedBody322_991 : StackLang.HolProg 64 :=
.seq NamedBody322_901 NamedBody322_990

def NamedBody322_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody322_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody322_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody322_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody322_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_1003 : StackLang.HolProg 64 :=
.seq NamedBody322_1001 NamedBody322_1002

def NamedBody322_1004 : StackLang.HolProg 64 :=
.seq NamedBody322_1000 NamedBody322_1003

def NamedBody322_1005 : StackLang.HolProg 64 :=
.seq NamedBody322_999 NamedBody322_1004

def NamedBody322_1006 : StackLang.HolProg 64 :=
.seq NamedBody322_998 NamedBody322_1005

def NamedBody322_1007 : StackLang.HolProg 64 :=
.seq NamedBody322_997 NamedBody322_1006

def NamedBody322_1008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody322_1009 : StackLang.HolProg 64 :=
.seq NamedBody322_1007 NamedBody322_1008

def NamedBody322_1010 : StackLang.HolProg 64 :=
.seq NamedBody322_996 NamedBody322_1009

def NamedBody322_1011 : StackLang.HolProg 64 :=
.seq NamedBody322_995 NamedBody322_1010

def NamedBody322_1012 : StackLang.HolProg 64 :=
.seq NamedBody322_994 NamedBody322_1011

def NamedBody322_1013 : StackLang.HolProg 64 :=
.seq NamedBody322_993 NamedBody322_1012

def NamedBody322_1014 : StackLang.HolProg 64 :=
.seq NamedBody322_992 NamedBody322_1013

def NamedBody322_1015 : StackLang.HolProg 64 :=
.seq NamedBody322_991 NamedBody322_1014

def NamedBody322_1016 : StackLang.HolProg 64 :=
.seq NamedBody322_900 NamedBody322_1015

def NamedBody322_1017 : StackLang.HolProg 64 :=
.seq NamedBody322_877 NamedBody322_1016

def NamedBody322_1018 : StackLang.HolProg 64 :=
.seq NamedBody322_876 NamedBody322_1017

def NamedBody322_1019 : StackLang.HolProg 64 :=
.seq NamedBody322_875 NamedBody322_1018

def NamedBody322_1020 : StackLang.HolProg 64 :=
.seq NamedBody322_874 NamedBody322_1019

def NamedBody322_1021 : StackLang.HolProg 64 :=
.seq NamedBody322_873 NamedBody322_1020

def NamedBody322_1022 : StackLang.HolProg 64 :=
.seq NamedBody322_872 NamedBody322_1021

def NamedBody322_1023 : StackLang.HolProg 64 :=
.seq NamedBody322_871 NamedBody322_1022

def NamedBody322_1024 : StackLang.HolProg 64 :=
.seq NamedBody322_870 NamedBody322_1023

def NamedBody322_1025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_1026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody322_1027 : StackLang.HolProg 64 :=
.seq NamedBody322_1025 NamedBody322_1026

def NamedBody322_1028 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody322_1024 NamedBody322_1027

def NamedBody322_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody322_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody322_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody322_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_1037 : StackLang.HolProg 64 :=
.seq NamedBody322_1035 NamedBody322_1036

def NamedBody322_1038 : StackLang.HolProg 64 :=
.seq NamedBody322_1034 NamedBody322_1037

def NamedBody322_1039 : StackLang.HolProg 64 :=
.seq NamedBody322_1033 NamedBody322_1038

def NamedBody322_1040 : StackLang.HolProg 64 :=
.seq NamedBody322_1032 NamedBody322_1039

def NamedBody322_1041 : StackLang.HolProg 64 :=
.seq NamedBody322_1031 NamedBody322_1040

def NamedBody322_1042 : StackLang.HolProg 64 :=
.seq NamedBody322_1030 NamedBody322_1041

def NamedBody322_1043 : StackLang.HolProg 64 :=
.seq NamedBody322_1029 NamedBody322_1042

def NamedBody322_1044 : StackLang.HolProg 64 :=
.seq NamedBody322_1028 NamedBody322_1043

def NamedBody322_1045 : StackLang.HolProg 64 :=
.seq NamedBody322_869 NamedBody322_1044

def NamedBody322_1046 : StackLang.HolProg 64 :=
.seq NamedBody322_868 NamedBody322_1045

def NamedBody322_1047 : StackLang.HolProg 64 :=
.loop NamedBody322_1046

def NamedBody322_1048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_1049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody322_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 160#64))

def NamedBody322_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 168#64))

def NamedBody322_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_1057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_1058 : StackLang.HolProg 64 :=
.seq NamedBody322_1056 NamedBody322_1057

def NamedBody322_1059 : StackLang.HolProg 64 :=
.seq NamedBody322_1055 NamedBody322_1058

def NamedBody322_1060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 913#64)

def NamedBody322_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_1063 : StackLang.HolProg 64 :=
.seq NamedBody322_1061 NamedBody322_1062

def NamedBody322_1064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody322_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody322_1067 : StackLang.HolProg 64 :=
.seq NamedBody322_1065 NamedBody322_1066

def NamedBody322_1068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1069 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody322_1067 NamedBody322_1068

def NamedBody322_1070 : StackLang.HolProg 64 :=
.seq NamedBody322_1064 NamedBody322_1069

def NamedBody322_1071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody322_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody322_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 322 23

def NamedBody322_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody322_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody322_1079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody322_1080 : StackLang.HolProg 64 :=
.seq NamedBody322_1078 NamedBody322_1079

def NamedBody322_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody322_1082 : StackLang.HolProg 64 :=
.seq NamedBody322_1080 NamedBody322_1081

def NamedBody322_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_1084 : StackLang.HolProg 64 :=
.seq NamedBody322_1082 NamedBody322_1083

def NamedBody322_1085 : StackLang.HolProg 64 :=
.seq NamedBody322_1077 NamedBody322_1084

def NamedBody322_1086 : StackLang.HolProg 64 :=
.seq NamedBody322_1076 NamedBody322_1085

def NamedBody322_1087 : StackLang.HolProg 64 :=
.seq NamedBody322_1075 NamedBody322_1086

def NamedBody322_1088 : StackLang.HolProg 64 :=
.seq NamedBody322_1074 NamedBody322_1087

def NamedBody322_1089 : StackLang.HolProg 64 :=
.seq NamedBody322_1073 NamedBody322_1088

def NamedBody322_1090 : StackLang.HolProg 64 :=
.seq NamedBody322_1072 NamedBody322_1089

def NamedBody322_1091 : StackLang.HolProg 64 :=
.seq NamedBody322_1071 NamedBody322_1090

def NamedBody322_1092 : StackLang.HolProg 64 :=
.seq NamedBody322_1070 NamedBody322_1091

def NamedBody322_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody322_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody322_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody322_1099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody322_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_1101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_1102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_1103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_1104 : StackLang.HolProg 64 :=
.seq NamedBody322_1102 NamedBody322_1103

def NamedBody322_1105 : StackLang.HolProg 64 :=
.seq NamedBody322_1101 NamedBody322_1104

def NamedBody322_1106 : StackLang.HolProg 64 :=
.seq NamedBody322_1100 NamedBody322_1105

def NamedBody322_1107 : StackLang.HolProg 64 :=
.seq NamedBody322_1099 NamedBody322_1106

def NamedBody322_1108 : StackLang.HolProg 64 :=
.seq NamedBody322_1098 NamedBody322_1107

def NamedBody322_1109 : StackLang.HolProg 64 :=
.seq NamedBody322_1097 NamedBody322_1108

def NamedBody322_1110 : StackLang.HolProg 64 :=
.seq NamedBody322_1096 NamedBody322_1109

def NamedBody322_1111 : StackLang.HolProg 64 :=
.seq NamedBody322_1095 NamedBody322_1110

def NamedBody322_1112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody322_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody322_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody322_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody322_1116 : StackLang.HolProg 64 :=
.seq NamedBody322_1114 NamedBody322_1115

def NamedBody322_1117 : StackLang.HolProg 64 :=
.seq NamedBody322_1113 NamedBody322_1116

def NamedBody322_1118 : StackLang.HolProg 64 :=
.seq NamedBody322_1112 NamedBody322_1117

def NamedBody322_1119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody322_1120 : StackLang.HolProg 64 :=
.seq NamedBody322_1118 NamedBody322_1119

def NamedBody322_1121 : StackLang.HolProg 64 :=
.call (some (NamedBody322_1111, 1, 322, 22)) (Sum.inl 176) (some (NamedBody322_1120, 322, 23))

def NamedBody322_1122 : StackLang.HolProg 64 :=
.seq NamedBody322_1094 NamedBody322_1121

def NamedBody322_1123 : StackLang.HolProg 64 :=
.seq NamedBody322_1093 NamedBody322_1122

def NamedBody322_1124 : StackLang.HolProg 64 :=
.seq NamedBody322_1092 NamedBody322_1123

def NamedBody322_1125 : StackLang.HolProg 64 :=
.seq NamedBody322_1063 NamedBody322_1124

def NamedBody322_1126 : StackLang.HolProg 64 :=
.seq NamedBody322_1060 NamedBody322_1125

def NamedBody322_1127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_1128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody322_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1131 : StackLang.HolProg 64 :=
.seq NamedBody322_1129 NamedBody322_1130

def NamedBody322_1132 : StackLang.HolProg 64 :=
.seq NamedBody322_1128 NamedBody322_1131

def NamedBody322_1133 : StackLang.HolProg 64 :=
.seq NamedBody322_1127 NamedBody322_1132

def NamedBody322_1134 : StackLang.HolProg 64 :=
.seq NamedBody322_1126 NamedBody322_1133

def NamedBody322_1135 : StackLang.HolProg 64 :=
.seq NamedBody322_1059 NamedBody322_1134

def NamedBody322_1136 : StackLang.HolProg 64 :=
.seq NamedBody322_1054 NamedBody322_1135

def NamedBody322_1137 : StackLang.HolProg 64 :=
.seq NamedBody322_1053 NamedBody322_1136

def NamedBody322_1138 : StackLang.HolProg 64 :=
.seq NamedBody322_1052 NamedBody322_1137

def NamedBody322_1139 : StackLang.HolProg 64 :=
.seq NamedBody322_1051 NamedBody322_1138

def NamedBody322_1140 : StackLang.HolProg 64 :=
.seq NamedBody322_1050 NamedBody322_1139

def NamedBody322_1141 : StackLang.HolProg 64 :=
.seq NamedBody322_1049 NamedBody322_1140

def NamedBody322_1142 : StackLang.HolProg 64 :=
.seq NamedBody322_1048 NamedBody322_1141

def NamedBody322_1143 : StackLang.HolProg 64 :=
.seq NamedBody322_1047 NamedBody322_1142

def NamedBody322_1144 : StackLang.HolProg 64 :=
.seq NamedBody322_867 NamedBody322_1143

def NamedBody322_1145 : StackLang.HolProg 64 :=
.seq NamedBody322_850 NamedBody322_1144

def NamedBody322_1146 : StackLang.HolProg 64 :=
.seq NamedBody322_849 NamedBody322_1145

def NamedBody322_1147 : StackLang.HolProg 64 :=
.seq NamedBody322_848 NamedBody322_1146

def NamedBody322_1148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody322_847 NamedBody322_1147

def NamedBody322_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody322_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody322_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody322_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody322_1156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody322_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody322_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody322_1160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody322_1161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody322_1162 : StackLang.HolProg 64 :=
.seq NamedBody322_1160 NamedBody322_1161

def NamedBody322_1163 : StackLang.HolProg 64 :=
.seq NamedBody322_1159 NamedBody322_1162

def NamedBody322_1164 : StackLang.HolProg 64 :=
.seq NamedBody322_1158 NamedBody322_1163

def NamedBody322_1165 : StackLang.HolProg 64 :=
.seq NamedBody322_1157 NamedBody322_1164

def NamedBody322_1166 : StackLang.HolProg 64 :=
.seq NamedBody322_1156 NamedBody322_1165

def NamedBody322_1167 : StackLang.HolProg 64 :=
.seq NamedBody322_1155 NamedBody322_1166

def NamedBody322_1168 : StackLang.HolProg 64 :=
.seq NamedBody322_1154 NamedBody322_1167

def NamedBody322_1169 : StackLang.HolProg 64 :=
.seq NamedBody322_1153 NamedBody322_1168

def NamedBody322_1170 : StackLang.HolProg 64 :=
.seq NamedBody322_1152 NamedBody322_1169

def NamedBody322_1171 : StackLang.HolProg 64 :=
.seq NamedBody322_1151 NamedBody322_1170

def NamedBody322_1172 : StackLang.HolProg 64 :=
.seq NamedBody322_1150 NamedBody322_1171

def NamedBody322_1173 : StackLang.HolProg 64 :=
.seq NamedBody322_1149 NamedBody322_1172

def NamedBody322_1174 : StackLang.HolProg 64 :=
.seq NamedBody322_1148 NamedBody322_1173

def NamedBody322_1175 : StackLang.HolProg 64 :=
.seq NamedBody322_552 NamedBody322_1174

def NamedBody322_1176 : StackLang.HolProg 64 :=
.seq NamedBody322_551 NamedBody322_1175

def NamedBody322_1177 : StackLang.HolProg 64 :=
.seq NamedBody322_550 NamedBody322_1176

def NamedBody322_1178 : StackLang.HolProg 64 :=
.seq NamedBody322_549 NamedBody322_1177

def NamedBody322_1179 : StackLang.HolProg 64 :=
.seq NamedBody322_476 NamedBody322_1178

def NamedBody322_1180 : StackLang.HolProg 64 :=
.seq NamedBody322_471 NamedBody322_1179

def NamedBody322_1181 : StackLang.HolProg 64 :=
.seq NamedBody322_470 NamedBody322_1180

def NamedBody322_1182 : StackLang.HolProg 64 :=
.seq NamedBody322_391 NamedBody322_1181

def NamedBody322_1183 : StackLang.HolProg 64 :=
.seq NamedBody322_388 NamedBody322_1182

def NamedBody322_1184 : StackLang.HolProg 64 :=
.seq NamedBody322_387 NamedBody322_1183

def NamedBody322_1185 : StackLang.HolProg 64 :=
.seq NamedBody322_386 NamedBody322_1184

def NamedBody322_1186 : StackLang.HolProg 64 :=
.seq NamedBody322_385 NamedBody322_1185

def NamedBody322_1187 : StackLang.HolProg 64 :=
.seq NamedBody322_330 NamedBody322_1186

def NamedBody322_1188 : StackLang.HolProg 64 :=
.seq NamedBody322_329 NamedBody322_1187

def NamedBody322_1189 : StackLang.HolProg 64 :=
.seq NamedBody322_328 NamedBody322_1188

def NamedBody322_1190 : StackLang.HolProg 64 :=
.seq NamedBody322_120 NamedBody322_1189

def NamedBody322_1191 : StackLang.HolProg 64 :=
.seq NamedBody322_119 NamedBody322_1190

def NamedBody322_1192 : StackLang.HolProg 64 :=
.seq NamedBody322_118 NamedBody322_1191

def NamedBody322_1193 : StackLang.HolProg 64 :=
.seq NamedBody322_117 NamedBody322_1192

def NamedBody322_1194 : StackLang.HolProg 64 :=
.seq NamedBody322_16 NamedBody322_1193

def NamedBody322_1195 : StackLang.HolProg 64 :=
.seq NamedBody322_15 NamedBody322_1194

def NamedBody322_1196 : StackLang.HolProg 64 :=
.seq NamedBody322_14 NamedBody322_1195

def NamedBody322_1197 : StackLang.HolProg 64 :=
.seq NamedBody322_13 NamedBody322_1196

def NamedBody322_1198 : StackLang.HolProg 64 :=
.seq NamedBody322_12 NamedBody322_1197

def NamedBody322_1199 : StackLang.HolProg 64 :=
.seq NamedBody322_11 NamedBody322_1198

def NamedBody322_1200 : StackLang.HolProg 64 :=
.seq NamedBody322_10 NamedBody322_1199

def NamedBody322_1201 : StackLang.HolProg 64 :=
.seq NamedBody322_9 NamedBody322_1200

def NamedBody322_1202 : StackLang.HolProg 64 :=
.seq NamedBody322_8 NamedBody322_1201

def NamedBody322_1203 : StackLang.HolProg 64 :=
.seq NamedBody322_7 NamedBody322_1202

def NamedBody322_1204 : StackLang.HolProg 64 :=
.seq NamedBody322_6 NamedBody322_1203

def Named322 : Nat × StackLang.HolProg 64 := (322, NamedBody322_1204)
theorem Named322_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed322 = Named322 := by
  kernel_rfl
#print axioms Named322_eq
end InitECandidate.Proofs.BackendStages
