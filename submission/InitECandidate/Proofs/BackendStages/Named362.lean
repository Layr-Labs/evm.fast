import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed362
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody362_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody362_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody362_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody362_3 : StackLang.HolProg 64 :=
.seq NamedBody362_1 NamedBody362_2

def NamedBody362_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody362_3 NamedBody362_4

def NamedBody362_6 : StackLang.HolProg 64 :=
.seq NamedBody362_0 NamedBody362_5

def NamedBody362_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody362_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody362_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody362_10 : StackLang.HolProg 64 :=
.seq NamedBody362_8 NamedBody362_9

def NamedBody362_11 : StackLang.HolProg 64 :=
.seq NamedBody362_7 NamedBody362_10

def NamedBody362_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 33#64)

def NamedBody362_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody362_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody362_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody362_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody362_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody362_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody362_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody362_20 : StackLang.HolProg 64 :=
.seq NamedBody362_18 NamedBody362_19

def NamedBody362_21 : StackLang.HolProg 64 :=
.seq NamedBody362_17 NamedBody362_20

def NamedBody362_22 : StackLang.HolProg 64 :=
.seq NamedBody362_16 NamedBody362_21

def NamedBody362_23 : StackLang.HolProg 64 :=
.seq NamedBody362_15 NamedBody362_22

def NamedBody362_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1042#64)

def NamedBody362_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody362_27 : StackLang.HolProg 64 :=
.seq NamedBody362_25 NamedBody362_26

def NamedBody362_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody362_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody362_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody362_31 : StackLang.HolProg 64 :=
.seq NamedBody362_29 NamedBody362_30

def NamedBody362_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody362_31 NamedBody362_32

def NamedBody362_34 : StackLang.HolProg 64 :=
.seq NamedBody362_28 NamedBody362_33

def NamedBody362_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody362_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody362_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 362 3

def NamedBody362_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody362_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody362_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody362_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody362_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody362_44 : StackLang.HolProg 64 :=
.seq NamedBody362_42 NamedBody362_43

def NamedBody362_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody362_46 : StackLang.HolProg 64 :=
.seq NamedBody362_44 NamedBody362_45

def NamedBody362_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody362_48 : StackLang.HolProg 64 :=
.seq NamedBody362_46 NamedBody362_47

def NamedBody362_49 : StackLang.HolProg 64 :=
.seq NamedBody362_41 NamedBody362_48

def NamedBody362_50 : StackLang.HolProg 64 :=
.seq NamedBody362_40 NamedBody362_49

def NamedBody362_51 : StackLang.HolProg 64 :=
.seq NamedBody362_39 NamedBody362_50

def NamedBody362_52 : StackLang.HolProg 64 :=
.seq NamedBody362_38 NamedBody362_51

def NamedBody362_53 : StackLang.HolProg 64 :=
.seq NamedBody362_37 NamedBody362_52

def NamedBody362_54 : StackLang.HolProg 64 :=
.seq NamedBody362_36 NamedBody362_53

def NamedBody362_55 : StackLang.HolProg 64 :=
.seq NamedBody362_35 NamedBody362_54

def NamedBody362_56 : StackLang.HolProg 64 :=
.seq NamedBody362_34 NamedBody362_55

def NamedBody362_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody362_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody362_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody362_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody362_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody362_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody362_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody362_67 : StackLang.HolProg 64 :=
.seq NamedBody362_65 NamedBody362_66

def NamedBody362_68 : StackLang.HolProg 64 :=
.seq NamedBody362_64 NamedBody362_67

def NamedBody362_69 : StackLang.HolProg 64 :=
.seq NamedBody362_63 NamedBody362_68

def NamedBody362_70 : StackLang.HolProg 64 :=
.seq NamedBody362_62 NamedBody362_69

def NamedBody362_71 : StackLang.HolProg 64 :=
.seq NamedBody362_61 NamedBody362_70

def NamedBody362_72 : StackLang.HolProg 64 :=
.seq NamedBody362_60 NamedBody362_71

def NamedBody362_73 : StackLang.HolProg 64 :=
.seq NamedBody362_59 NamedBody362_72

def NamedBody362_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody362_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody362_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody362_77 : StackLang.HolProg 64 :=
.seq NamedBody362_75 NamedBody362_76

def NamedBody362_78 : StackLang.HolProg 64 :=
.seq NamedBody362_74 NamedBody362_77

def NamedBody362_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody362_80 : StackLang.HolProg 64 :=
.seq NamedBody362_78 NamedBody362_79

def NamedBody362_81 : StackLang.HolProg 64 :=
.call (some (NamedBody362_73, 1, 362, 2)) (Sum.inl 178) (some (NamedBody362_80, 362, 3))

def NamedBody362_82 : StackLang.HolProg 64 :=
.seq NamedBody362_58 NamedBody362_81

def NamedBody362_83 : StackLang.HolProg 64 :=
.seq NamedBody362_57 NamedBody362_82

def NamedBody362_84 : StackLang.HolProg 64 :=
.seq NamedBody362_56 NamedBody362_83

def NamedBody362_85 : StackLang.HolProg 64 :=
.seq NamedBody362_27 NamedBody362_84

def NamedBody362_86 : StackLang.HolProg 64 :=
.seq NamedBody362_24 NamedBody362_85

def NamedBody362_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody362_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody362_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody362_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody362_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody362_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody362_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody362_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody362_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody362_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody362_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody362_102 : StackLang.HolProg 64 :=
.seq NamedBody362_100 NamedBody362_101

def NamedBody362_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody362_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody362_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody362_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody362_107 : StackLang.HolProg 64 :=
.seq NamedBody362_105 NamedBody362_106

def NamedBody362_108 : StackLang.HolProg 64 :=
.seq NamedBody362_104 NamedBody362_107

def NamedBody362_109 : StackLang.HolProg 64 :=
.seq NamedBody362_103 NamedBody362_108

def NamedBody362_110 : StackLang.HolProg 64 :=
.seq NamedBody362_102 NamedBody362_109

def NamedBody362_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1043#64)

def NamedBody362_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody362_114 : StackLang.HolProg 64 :=
.seq NamedBody362_112 NamedBody362_113

def NamedBody362_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody362_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody362_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody362_118 : StackLang.HolProg 64 :=
.seq NamedBody362_116 NamedBody362_117

def NamedBody362_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_120 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody362_118 NamedBody362_119

def NamedBody362_121 : StackLang.HolProg 64 :=
.seq NamedBody362_115 NamedBody362_120

def NamedBody362_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody362_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody362_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 362 5

def NamedBody362_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody362_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody362_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody362_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody362_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody362_131 : StackLang.HolProg 64 :=
.seq NamedBody362_129 NamedBody362_130

def NamedBody362_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody362_133 : StackLang.HolProg 64 :=
.seq NamedBody362_131 NamedBody362_132

def NamedBody362_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody362_135 : StackLang.HolProg 64 :=
.seq NamedBody362_133 NamedBody362_134

def NamedBody362_136 : StackLang.HolProg 64 :=
.seq NamedBody362_128 NamedBody362_135

def NamedBody362_137 : StackLang.HolProg 64 :=
.seq NamedBody362_127 NamedBody362_136

def NamedBody362_138 : StackLang.HolProg 64 :=
.seq NamedBody362_126 NamedBody362_137

def NamedBody362_139 : StackLang.HolProg 64 :=
.seq NamedBody362_125 NamedBody362_138

def NamedBody362_140 : StackLang.HolProg 64 :=
.seq NamedBody362_124 NamedBody362_139

def NamedBody362_141 : StackLang.HolProg 64 :=
.seq NamedBody362_123 NamedBody362_140

def NamedBody362_142 : StackLang.HolProg 64 :=
.seq NamedBody362_122 NamedBody362_141

def NamedBody362_143 : StackLang.HolProg 64 :=
.seq NamedBody362_121 NamedBody362_142

def NamedBody362_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody362_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody362_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody362_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody362_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody362_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody362_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody362_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody362_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody362_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody362_157 : StackLang.HolProg 64 :=
.seq NamedBody362_155 NamedBody362_156

def NamedBody362_158 : StackLang.HolProg 64 :=
.seq NamedBody362_154 NamedBody362_157

def NamedBody362_159 : StackLang.HolProg 64 :=
.seq NamedBody362_153 NamedBody362_158

def NamedBody362_160 : StackLang.HolProg 64 :=
.seq NamedBody362_152 NamedBody362_159

def NamedBody362_161 : StackLang.HolProg 64 :=
.seq NamedBody362_151 NamedBody362_160

def NamedBody362_162 : StackLang.HolProg 64 :=
.seq NamedBody362_150 NamedBody362_161

def NamedBody362_163 : StackLang.HolProg 64 :=
.seq NamedBody362_149 NamedBody362_162

def NamedBody362_164 : StackLang.HolProg 64 :=
.seq NamedBody362_148 NamedBody362_163

def NamedBody362_165 : StackLang.HolProg 64 :=
.seq NamedBody362_147 NamedBody362_164

def NamedBody362_166 : StackLang.HolProg 64 :=
.seq NamedBody362_146 NamedBody362_165

def NamedBody362_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody362_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody362_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody362_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody362_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody362_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody362_173 : StackLang.HolProg 64 :=
.seq NamedBody362_171 NamedBody362_172

def NamedBody362_174 : StackLang.HolProg 64 :=
.seq NamedBody362_170 NamedBody362_173

def NamedBody362_175 : StackLang.HolProg 64 :=
.seq NamedBody362_169 NamedBody362_174

def NamedBody362_176 : StackLang.HolProg 64 :=
.seq NamedBody362_168 NamedBody362_175

def NamedBody362_177 : StackLang.HolProg 64 :=
.seq NamedBody362_167 NamedBody362_176

def NamedBody362_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody362_179 : StackLang.HolProg 64 :=
.seq NamedBody362_177 NamedBody362_178

def NamedBody362_180 : StackLang.HolProg 64 :=
.call (some (NamedBody362_166, 1, 362, 4)) (Sum.inl 176) (some (NamedBody362_179, 362, 5))

def NamedBody362_181 : StackLang.HolProg 64 :=
.seq NamedBody362_145 NamedBody362_180

def NamedBody362_182 : StackLang.HolProg 64 :=
.seq NamedBody362_144 NamedBody362_181

def NamedBody362_183 : StackLang.HolProg 64 :=
.seq NamedBody362_143 NamedBody362_182

def NamedBody362_184 : StackLang.HolProg 64 :=
.seq NamedBody362_114 NamedBody362_183

def NamedBody362_185 : StackLang.HolProg 64 :=
.seq NamedBody362_111 NamedBody362_184

def NamedBody362_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody362_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody362_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody362_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody362_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody362_193 : StackLang.HolProg 64 :=
.seq NamedBody362_191 NamedBody362_192

def NamedBody362_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody362_195 : StackLang.HolProg 64 :=
.seq NamedBody362_193 NamedBody362_194

def NamedBody362_196 : StackLang.HolProg 64 :=
.seq NamedBody362_190 NamedBody362_195

def NamedBody362_197 : StackLang.HolProg 64 :=
.seq NamedBody362_189 NamedBody362_196

def NamedBody362_198 : StackLang.HolProg 64 :=
.seq NamedBody362_188 NamedBody362_197

def NamedBody362_199 : StackLang.HolProg 64 :=
.seq NamedBody362_187 NamedBody362_198

def NamedBody362_200 : StackLang.HolProg 64 :=
.seq NamedBody362_186 NamedBody362_199

def NamedBody362_201 : StackLang.HolProg 64 :=
.seq NamedBody362_185 NamedBody362_200

def NamedBody362_202 : StackLang.HolProg 64 :=
.seq NamedBody362_110 NamedBody362_201

def NamedBody362_203 : StackLang.HolProg 64 :=
.seq NamedBody362_99 NamedBody362_202

def NamedBody362_204 : StackLang.HolProg 64 :=
.seq NamedBody362_98 NamedBody362_203

def NamedBody362_205 : StackLang.HolProg 64 :=
.seq NamedBody362_97 NamedBody362_204

def NamedBody362_206 : StackLang.HolProg 64 :=
.seq NamedBody362_96 NamedBody362_205

def NamedBody362_207 : StackLang.HolProg 64 :=
.seq NamedBody362_95 NamedBody362_206

def NamedBody362_208 : StackLang.HolProg 64 :=
.seq NamedBody362_94 NamedBody362_207

def NamedBody362_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody362_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody362_211 : StackLang.HolProg 64 :=
.seq NamedBody362_209 NamedBody362_210

def NamedBody362_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody362_208 NamedBody362_211

def NamedBody362_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody362_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody362_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody362_216 : StackLang.HolProg 64 :=
.seq NamedBody362_214 NamedBody362_215

def NamedBody362_217 : StackLang.HolProg 64 :=
.seq NamedBody362_213 NamedBody362_216

def NamedBody362_218 : StackLang.HolProg 64 :=
.seq NamedBody362_212 NamedBody362_217

def NamedBody362_219 : StackLang.HolProg 64 :=
.seq NamedBody362_93 NamedBody362_218

def NamedBody362_220 : StackLang.HolProg 64 :=
.loop NamedBody362_219

def NamedBody362_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody362_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody362_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody362_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody362_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody362_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody362_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody362_228 : StackLang.HolProg 64 :=
.seq NamedBody362_226 NamedBody362_227

def NamedBody362_229 : StackLang.HolProg 64 :=
.seq NamedBody362_225 NamedBody362_228

def NamedBody362_230 : StackLang.HolProg 64 :=
.seq NamedBody362_224 NamedBody362_229

def NamedBody362_231 : StackLang.HolProg 64 :=
.seq NamedBody362_223 NamedBody362_230

def NamedBody362_232 : StackLang.HolProg 64 :=
.seq NamedBody362_222 NamedBody362_231

def NamedBody362_233 : StackLang.HolProg 64 :=
.seq NamedBody362_221 NamedBody362_232

def NamedBody362_234 : StackLang.HolProg 64 :=
.seq NamedBody362_220 NamedBody362_233

def NamedBody362_235 : StackLang.HolProg 64 :=
.seq NamedBody362_92 NamedBody362_234

def NamedBody362_236 : StackLang.HolProg 64 :=
.seq NamedBody362_91 NamedBody362_235

def NamedBody362_237 : StackLang.HolProg 64 :=
.seq NamedBody362_90 NamedBody362_236

def NamedBody362_238 : StackLang.HolProg 64 :=
.seq NamedBody362_89 NamedBody362_237

def NamedBody362_239 : StackLang.HolProg 64 :=
.seq NamedBody362_88 NamedBody362_238

def NamedBody362_240 : StackLang.HolProg 64 :=
.seq NamedBody362_87 NamedBody362_239

def NamedBody362_241 : StackLang.HolProg 64 :=
.seq NamedBody362_86 NamedBody362_240

def NamedBody362_242 : StackLang.HolProg 64 :=
.seq NamedBody362_23 NamedBody362_241

def NamedBody362_243 : StackLang.HolProg 64 :=
.seq NamedBody362_14 NamedBody362_242

def NamedBody362_244 : StackLang.HolProg 64 :=
.seq NamedBody362_13 NamedBody362_243

def NamedBody362_245 : StackLang.HolProg 64 :=
.seq NamedBody362_12 NamedBody362_244

def NamedBody362_246 : StackLang.HolProg 64 :=
.seq NamedBody362_11 NamedBody362_245

def NamedBody362_247 : StackLang.HolProg 64 :=
.seq NamedBody362_6 NamedBody362_246

def Named362 : Nat × StackLang.HolProg 64 := (362, NamedBody362_247)
theorem Named362_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed362 = Named362 := by
  kernel_rfl
#print axioms Named362_eq
end InitECandidate.Proofs.BackendStages
