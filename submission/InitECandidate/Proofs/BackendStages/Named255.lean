import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed255
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody255_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody255_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody255_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody255_3 : StackLang.HolProg 64 :=
.seq NamedBody255_1 NamedBody255_2

def NamedBody255_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody255_3 NamedBody255_4

def NamedBody255_6 : StackLang.HolProg 64 :=
.seq NamedBody255_0 NamedBody255_5

def NamedBody255_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody255_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody255_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody255_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody255_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody255_12 : StackLang.HolProg 64 :=
.seq NamedBody255_10 NamedBody255_11

def NamedBody255_13 : StackLang.HolProg 64 :=
.seq NamedBody255_9 NamedBody255_12

def NamedBody255_14 : StackLang.HolProg 64 :=
.seq NamedBody255_8 NamedBody255_13

def NamedBody255_15 : StackLang.HolProg 64 :=
.seq NamedBody255_7 NamedBody255_14

def NamedBody255_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 533#64)

def NamedBody255_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody255_19 : StackLang.HolProg 64 :=
.seq NamedBody255_17 NamedBody255_18

def NamedBody255_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody255_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody255_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody255_23 : StackLang.HolProg 64 :=
.seq NamedBody255_21 NamedBody255_22

def NamedBody255_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody255_23 NamedBody255_24

def NamedBody255_26 : StackLang.HolProg 64 :=
.seq NamedBody255_20 NamedBody255_25

def NamedBody255_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody255_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody255_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 255 3

def NamedBody255_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody255_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody255_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody255_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody255_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody255_36 : StackLang.HolProg 64 :=
.seq NamedBody255_34 NamedBody255_35

def NamedBody255_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody255_38 : StackLang.HolProg 64 :=
.seq NamedBody255_36 NamedBody255_37

def NamedBody255_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody255_40 : StackLang.HolProg 64 :=
.seq NamedBody255_38 NamedBody255_39

def NamedBody255_41 : StackLang.HolProg 64 :=
.seq NamedBody255_33 NamedBody255_40

def NamedBody255_42 : StackLang.HolProg 64 :=
.seq NamedBody255_32 NamedBody255_41

def NamedBody255_43 : StackLang.HolProg 64 :=
.seq NamedBody255_31 NamedBody255_42

def NamedBody255_44 : StackLang.HolProg 64 :=
.seq NamedBody255_30 NamedBody255_43

def NamedBody255_45 : StackLang.HolProg 64 :=
.seq NamedBody255_29 NamedBody255_44

def NamedBody255_46 : StackLang.HolProg 64 :=
.seq NamedBody255_28 NamedBody255_45

def NamedBody255_47 : StackLang.HolProg 64 :=
.seq NamedBody255_27 NamedBody255_46

def NamedBody255_48 : StackLang.HolProg 64 :=
.seq NamedBody255_26 NamedBody255_47

def NamedBody255_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody255_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody255_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody255_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody255_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody255_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody255_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody255_59 : StackLang.HolProg 64 :=
.seq NamedBody255_57 NamedBody255_58

def NamedBody255_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody255_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody255_62 : StackLang.HolProg 64 :=
.seq NamedBody255_60 NamedBody255_61

def NamedBody255_63 : StackLang.HolProg 64 :=
.seq NamedBody255_59 NamedBody255_62

def NamedBody255_64 : StackLang.HolProg 64 :=
.seq NamedBody255_56 NamedBody255_63

def NamedBody255_65 : StackLang.HolProg 64 :=
.seq NamedBody255_55 NamedBody255_64

def NamedBody255_66 : StackLang.HolProg 64 :=
.seq NamedBody255_54 NamedBody255_65

def NamedBody255_67 : StackLang.HolProg 64 :=
.seq NamedBody255_53 NamedBody255_66

def NamedBody255_68 : StackLang.HolProg 64 :=
.seq NamedBody255_52 NamedBody255_67

def NamedBody255_69 : StackLang.HolProg 64 :=
.seq NamedBody255_51 NamedBody255_68

def NamedBody255_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody255_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody255_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody255_73 : StackLang.HolProg 64 :=
.seq NamedBody255_71 NamedBody255_72

def NamedBody255_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody255_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody255_76 : StackLang.HolProg 64 :=
.seq NamedBody255_74 NamedBody255_75

def NamedBody255_77 : StackLang.HolProg 64 :=
.seq NamedBody255_73 NamedBody255_76

def NamedBody255_78 : StackLang.HolProg 64 :=
.seq NamedBody255_70 NamedBody255_77

def NamedBody255_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody255_80 : StackLang.HolProg 64 :=
.seq NamedBody255_78 NamedBody255_79

def NamedBody255_81 : StackLang.HolProg 64 :=
.call (some (NamedBody255_69, 1, 255, 2)) (Sum.inl 251) (some (NamedBody255_80, 255, 3))

def NamedBody255_82 : StackLang.HolProg 64 :=
.seq NamedBody255_50 NamedBody255_81

def NamedBody255_83 : StackLang.HolProg 64 :=
.seq NamedBody255_49 NamedBody255_82

def NamedBody255_84 : StackLang.HolProg 64 :=
.seq NamedBody255_48 NamedBody255_83

def NamedBody255_85 : StackLang.HolProg 64 :=
.seq NamedBody255_19 NamedBody255_84

def NamedBody255_86 : StackLang.HolProg 64 :=
.seq NamedBody255_16 NamedBody255_85

def NamedBody255_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody255_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody255_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody255_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody255_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody255_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody255_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody255_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody255_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 70#64)

def NamedBody255_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody255_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody255_102 : StackLang.HolProg 64 :=
.seq NamedBody255_100 NamedBody255_101

def NamedBody255_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody255_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody255_105 : StackLang.HolProg 64 :=
.seq NamedBody255_103 NamedBody255_104

def NamedBody255_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody255_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody255_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody255_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody255_110 : StackLang.HolProg 64 :=
.seq NamedBody255_108 NamedBody255_109

def NamedBody255_111 : StackLang.HolProg 64 :=
.seq NamedBody255_107 NamedBody255_110

def NamedBody255_112 : StackLang.HolProg 64 :=
.seq NamedBody255_106 NamedBody255_111

def NamedBody255_113 : StackLang.HolProg 64 :=
.seq NamedBody255_105 NamedBody255_112

def NamedBody255_114 : StackLang.HolProg 64 :=
.seq NamedBody255_102 NamedBody255_113

def NamedBody255_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 534#64)

def NamedBody255_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody255_118 : StackLang.HolProg 64 :=
.seq NamedBody255_116 NamedBody255_117

def NamedBody255_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody255_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody255_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody255_122 : StackLang.HolProg 64 :=
.seq NamedBody255_120 NamedBody255_121

def NamedBody255_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody255_122 NamedBody255_123

def NamedBody255_125 : StackLang.HolProg 64 :=
.seq NamedBody255_119 NamedBody255_124

def NamedBody255_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody255_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody255_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 255 5

def NamedBody255_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody255_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody255_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody255_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody255_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody255_135 : StackLang.HolProg 64 :=
.seq NamedBody255_133 NamedBody255_134

def NamedBody255_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody255_137 : StackLang.HolProg 64 :=
.seq NamedBody255_135 NamedBody255_136

def NamedBody255_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody255_139 : StackLang.HolProg 64 :=
.seq NamedBody255_137 NamedBody255_138

def NamedBody255_140 : StackLang.HolProg 64 :=
.seq NamedBody255_132 NamedBody255_139

def NamedBody255_141 : StackLang.HolProg 64 :=
.seq NamedBody255_131 NamedBody255_140

def NamedBody255_142 : StackLang.HolProg 64 :=
.seq NamedBody255_130 NamedBody255_141

def NamedBody255_143 : StackLang.HolProg 64 :=
.seq NamedBody255_129 NamedBody255_142

def NamedBody255_144 : StackLang.HolProg 64 :=
.seq NamedBody255_128 NamedBody255_143

def NamedBody255_145 : StackLang.HolProg 64 :=
.seq NamedBody255_127 NamedBody255_144

def NamedBody255_146 : StackLang.HolProg 64 :=
.seq NamedBody255_126 NamedBody255_145

def NamedBody255_147 : StackLang.HolProg 64 :=
.seq NamedBody255_125 NamedBody255_146

def NamedBody255_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody255_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody255_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody255_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody255_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody255_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody255_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody255_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody255_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody255_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody255_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody255_162 : StackLang.HolProg 64 :=
.seq NamedBody255_160 NamedBody255_161

def NamedBody255_163 : StackLang.HolProg 64 :=
.seq NamedBody255_159 NamedBody255_162

def NamedBody255_164 : StackLang.HolProg 64 :=
.seq NamedBody255_158 NamedBody255_163

def NamedBody255_165 : StackLang.HolProg 64 :=
.seq NamedBody255_157 NamedBody255_164

def NamedBody255_166 : StackLang.HolProg 64 :=
.seq NamedBody255_156 NamedBody255_165

def NamedBody255_167 : StackLang.HolProg 64 :=
.seq NamedBody255_155 NamedBody255_166

def NamedBody255_168 : StackLang.HolProg 64 :=
.seq NamedBody255_154 NamedBody255_167

def NamedBody255_169 : StackLang.HolProg 64 :=
.seq NamedBody255_153 NamedBody255_168

def NamedBody255_170 : StackLang.HolProg 64 :=
.seq NamedBody255_152 NamedBody255_169

def NamedBody255_171 : StackLang.HolProg 64 :=
.seq NamedBody255_151 NamedBody255_170

def NamedBody255_172 : StackLang.HolProg 64 :=
.seq NamedBody255_150 NamedBody255_171

def NamedBody255_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody255_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody255_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody255_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody255_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody255_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody255_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody255_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody255_181 : StackLang.HolProg 64 :=
.seq NamedBody255_179 NamedBody255_180

def NamedBody255_182 : StackLang.HolProg 64 :=
.seq NamedBody255_178 NamedBody255_181

def NamedBody255_183 : StackLang.HolProg 64 :=
.seq NamedBody255_177 NamedBody255_182

def NamedBody255_184 : StackLang.HolProg 64 :=
.seq NamedBody255_176 NamedBody255_183

def NamedBody255_185 : StackLang.HolProg 64 :=
.seq NamedBody255_175 NamedBody255_184

def NamedBody255_186 : StackLang.HolProg 64 :=
.seq NamedBody255_174 NamedBody255_185

def NamedBody255_187 : StackLang.HolProg 64 :=
.seq NamedBody255_173 NamedBody255_186

def NamedBody255_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody255_189 : StackLang.HolProg 64 :=
.seq NamedBody255_187 NamedBody255_188

def NamedBody255_190 : StackLang.HolProg 64 :=
.call (some (NamedBody255_172, 1, 255, 4)) (Sum.inl 245) (some (NamedBody255_189, 255, 5))

def NamedBody255_191 : StackLang.HolProg 64 :=
.seq NamedBody255_149 NamedBody255_190

def NamedBody255_192 : StackLang.HolProg 64 :=
.seq NamedBody255_148 NamedBody255_191

def NamedBody255_193 : StackLang.HolProg 64 :=
.seq NamedBody255_147 NamedBody255_192

def NamedBody255_194 : StackLang.HolProg 64 :=
.seq NamedBody255_118 NamedBody255_193

def NamedBody255_195 : StackLang.HolProg 64 :=
.seq NamedBody255_115 NamedBody255_194

def NamedBody255_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody255_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_198 : StackLang.HolProg 64 :=
.seq NamedBody255_196 NamedBody255_197

def NamedBody255_199 : StackLang.HolProg 64 :=
.seq NamedBody255_195 NamedBody255_198

def NamedBody255_200 : StackLang.HolProg 64 :=
.seq NamedBody255_114 NamedBody255_199

def NamedBody255_201 : StackLang.HolProg 64 :=
.seq NamedBody255_99 NamedBody255_200

def NamedBody255_202 : StackLang.HolProg 64 :=
.seq NamedBody255_98 NamedBody255_201

def NamedBody255_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody255_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody255_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody255_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody255_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody255_208 : StackLang.HolProg 64 :=
.seq NamedBody255_206 NamedBody255_207

def NamedBody255_209 : StackLang.HolProg 64 :=
.seq NamedBody255_205 NamedBody255_208

def NamedBody255_210 : StackLang.HolProg 64 :=
.seq NamedBody255_204 NamedBody255_209

def NamedBody255_211 : StackLang.HolProg 64 :=
.seq NamedBody255_203 NamedBody255_210

def NamedBody255_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody255_202 NamedBody255_211

def NamedBody255_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody255_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody255_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody255_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody255_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody255_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody255_220 : StackLang.HolProg 64 :=
.seq NamedBody255_218 NamedBody255_219

def NamedBody255_221 : StackLang.HolProg 64 :=
.seq NamedBody255_217 NamedBody255_220

def NamedBody255_222 : StackLang.HolProg 64 :=
.seq NamedBody255_216 NamedBody255_221

def NamedBody255_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody255_224 : StackLang.HolProg 64 :=
.seq NamedBody255_222 NamedBody255_223

def NamedBody255_225 : StackLang.HolProg 64 :=
.seq NamedBody255_215 NamedBody255_224

def NamedBody255_226 : StackLang.HolProg 64 :=
.seq NamedBody255_214 NamedBody255_225

def NamedBody255_227 : StackLang.HolProg 64 :=
.seq NamedBody255_213 NamedBody255_226

def NamedBody255_228 : StackLang.HolProg 64 :=
.seq NamedBody255_212 NamedBody255_227

def NamedBody255_229 : StackLang.HolProg 64 :=
.seq NamedBody255_97 NamedBody255_228

def NamedBody255_230 : StackLang.HolProg 64 :=
.seq NamedBody255_96 NamedBody255_229

def NamedBody255_231 : StackLang.HolProg 64 :=
.seq NamedBody255_95 NamedBody255_230

def NamedBody255_232 : StackLang.HolProg 64 :=
.seq NamedBody255_94 NamedBody255_231

def NamedBody255_233 : StackLang.HolProg 64 :=
.seq NamedBody255_93 NamedBody255_232

def NamedBody255_234 : StackLang.HolProg 64 :=
.seq NamedBody255_92 NamedBody255_233

def NamedBody255_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody255_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody255_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody255_238 : StackLang.HolProg 64 :=
.seq NamedBody255_236 NamedBody255_237

def NamedBody255_239 : StackLang.HolProg 64 :=
.seq NamedBody255_235 NamedBody255_238

def NamedBody255_240 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody255_234 NamedBody255_239

def NamedBody255_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody255_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody255_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody255_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody255_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody255_246 : StackLang.HolProg 64 :=
.seq NamedBody255_244 NamedBody255_245

def NamedBody255_247 : StackLang.HolProg 64 :=
.seq NamedBody255_243 NamedBody255_246

def NamedBody255_248 : StackLang.HolProg 64 :=
.seq NamedBody255_242 NamedBody255_247

def NamedBody255_249 : StackLang.HolProg 64 :=
.seq NamedBody255_241 NamedBody255_248

def NamedBody255_250 : StackLang.HolProg 64 :=
.seq NamedBody255_240 NamedBody255_249

def NamedBody255_251 : StackLang.HolProg 64 :=
.seq NamedBody255_91 NamedBody255_250

def NamedBody255_252 : StackLang.HolProg 64 :=
.loop NamedBody255_251

def NamedBody255_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody255_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody255_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody255_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody255_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody255_258 : StackLang.HolProg 64 :=
.seq NamedBody255_256 NamedBody255_257

def NamedBody255_259 : StackLang.HolProg 64 :=
.seq NamedBody255_255 NamedBody255_258

def NamedBody255_260 : StackLang.HolProg 64 :=
.seq NamedBody255_254 NamedBody255_259

def NamedBody255_261 : StackLang.HolProg 64 :=
.seq NamedBody255_253 NamedBody255_260

def NamedBody255_262 : StackLang.HolProg 64 :=
.seq NamedBody255_252 NamedBody255_261

def NamedBody255_263 : StackLang.HolProg 64 :=
.seq NamedBody255_90 NamedBody255_262

def NamedBody255_264 : StackLang.HolProg 64 :=
.seq NamedBody255_89 NamedBody255_263

def NamedBody255_265 : StackLang.HolProg 64 :=
.seq NamedBody255_88 NamedBody255_264

def NamedBody255_266 : StackLang.HolProg 64 :=
.seq NamedBody255_87 NamedBody255_265

def NamedBody255_267 : StackLang.HolProg 64 :=
.seq NamedBody255_86 NamedBody255_266

def NamedBody255_268 : StackLang.HolProg 64 :=
.seq NamedBody255_15 NamedBody255_267

def NamedBody255_269 : StackLang.HolProg 64 :=
.seq NamedBody255_6 NamedBody255_268

def Named255 : Nat × StackLang.HolProg 64 := (255, NamedBody255_269)
theorem Named255_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed255 = Named255 := by
  kernel_rfl
#print axioms Named255_eq
end InitECandidate.Proofs.BackendStages
