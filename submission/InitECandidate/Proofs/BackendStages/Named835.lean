import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed835
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody835_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody835_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody835_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody835_3 : StackLang.HolProg 64 :=
.seq NamedBody835_1 NamedBody835_2

def NamedBody835_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody835_3 NamedBody835_4

def NamedBody835_6 : StackLang.HolProg 64 :=
.seq NamedBody835_0 NamedBody835_5

def NamedBody835_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody835_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody835_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody835_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody835_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody835_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody835_13 : StackLang.HolProg 64 :=
.seq NamedBody835_11 NamedBody835_12

def NamedBody835_14 : StackLang.HolProg 64 :=
.seq NamedBody835_10 NamedBody835_13

def NamedBody835_15 : StackLang.HolProg 64 :=
.seq NamedBody835_9 NamedBody835_14

def NamedBody835_16 : StackLang.HolProg 64 :=
.seq NamedBody835_8 NamedBody835_15

def NamedBody835_17 : StackLang.HolProg 64 :=
.seq NamedBody835_7 NamedBody835_16

def NamedBody835_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4156#64)

def NamedBody835_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody835_21 : StackLang.HolProg 64 :=
.seq NamedBody835_19 NamedBody835_20

def NamedBody835_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody835_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody835_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody835_25 : StackLang.HolProg 64 :=
.seq NamedBody835_23 NamedBody835_24

def NamedBody835_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody835_25 NamedBody835_26

def NamedBody835_28 : StackLang.HolProg 64 :=
.seq NamedBody835_22 NamedBody835_27

def NamedBody835_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody835_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody835_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 835 3

def NamedBody835_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody835_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody835_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody835_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody835_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody835_38 : StackLang.HolProg 64 :=
.seq NamedBody835_36 NamedBody835_37

def NamedBody835_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody835_40 : StackLang.HolProg 64 :=
.seq NamedBody835_38 NamedBody835_39

def NamedBody835_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody835_42 : StackLang.HolProg 64 :=
.seq NamedBody835_40 NamedBody835_41

def NamedBody835_43 : StackLang.HolProg 64 :=
.seq NamedBody835_35 NamedBody835_42

def NamedBody835_44 : StackLang.HolProg 64 :=
.seq NamedBody835_34 NamedBody835_43

def NamedBody835_45 : StackLang.HolProg 64 :=
.seq NamedBody835_33 NamedBody835_44

def NamedBody835_46 : StackLang.HolProg 64 :=
.seq NamedBody835_32 NamedBody835_45

def NamedBody835_47 : StackLang.HolProg 64 :=
.seq NamedBody835_31 NamedBody835_46

def NamedBody835_48 : StackLang.HolProg 64 :=
.seq NamedBody835_30 NamedBody835_47

def NamedBody835_49 : StackLang.HolProg 64 :=
.seq NamedBody835_29 NamedBody835_48

def NamedBody835_50 : StackLang.HolProg 64 :=
.seq NamedBody835_28 NamedBody835_49

def NamedBody835_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody835_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody835_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody835_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody835_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody835_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody835_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody835_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody835_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody835_63 : StackLang.HolProg 64 :=
.seq NamedBody835_61 NamedBody835_62

def NamedBody835_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody835_65 : StackLang.HolProg 64 :=
.seq NamedBody835_63 NamedBody835_64

def NamedBody835_66 : StackLang.HolProg 64 :=
.seq NamedBody835_60 NamedBody835_65

def NamedBody835_67 : StackLang.HolProg 64 :=
.seq NamedBody835_59 NamedBody835_66

def NamedBody835_68 : StackLang.HolProg 64 :=
.seq NamedBody835_58 NamedBody835_67

def NamedBody835_69 : StackLang.HolProg 64 :=
.seq NamedBody835_57 NamedBody835_68

def NamedBody835_70 : StackLang.HolProg 64 :=
.seq NamedBody835_56 NamedBody835_69

def NamedBody835_71 : StackLang.HolProg 64 :=
.seq NamedBody835_55 NamedBody835_70

def NamedBody835_72 : StackLang.HolProg 64 :=
.seq NamedBody835_54 NamedBody835_71

def NamedBody835_73 : StackLang.HolProg 64 :=
.seq NamedBody835_53 NamedBody835_72

def NamedBody835_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody835_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody835_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody835_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody835_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody835_79 : StackLang.HolProg 64 :=
.seq NamedBody835_77 NamedBody835_78

def NamedBody835_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody835_81 : StackLang.HolProg 64 :=
.seq NamedBody835_79 NamedBody835_80

def NamedBody835_82 : StackLang.HolProg 64 :=
.seq NamedBody835_76 NamedBody835_81

def NamedBody835_83 : StackLang.HolProg 64 :=
.seq NamedBody835_75 NamedBody835_82

def NamedBody835_84 : StackLang.HolProg 64 :=
.seq NamedBody835_74 NamedBody835_83

def NamedBody835_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody835_86 : StackLang.HolProg 64 :=
.seq NamedBody835_84 NamedBody835_85

def NamedBody835_87 : StackLang.HolProg 64 :=
.call (some (NamedBody835_73, 1, 835, 2)) (Sum.inl 93) (some (NamedBody835_86, 835, 3))

def NamedBody835_88 : StackLang.HolProg 64 :=
.seq NamedBody835_52 NamedBody835_87

def NamedBody835_89 : StackLang.HolProg 64 :=
.seq NamedBody835_51 NamedBody835_88

def NamedBody835_90 : StackLang.HolProg 64 :=
.seq NamedBody835_50 NamedBody835_89

def NamedBody835_91 : StackLang.HolProg 64 :=
.seq NamedBody835_21 NamedBody835_90

def NamedBody835_92 : StackLang.HolProg 64 :=
.seq NamedBody835_18 NamedBody835_91

def NamedBody835_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody835_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody835_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 16#64)

def NamedBody835_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody835_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody835_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody835_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody835_106 : StackLang.HolProg 64 :=
.seq NamedBody835_104 NamedBody835_105

def NamedBody835_107 : StackLang.HolProg 64 :=
.seq NamedBody835_103 NamedBody835_106

def NamedBody835_108 : StackLang.HolProg 64 :=
.seq NamedBody835_102 NamedBody835_107

def NamedBody835_109 : StackLang.HolProg 64 :=
.seq NamedBody835_101 NamedBody835_108

def NamedBody835_110 : StackLang.HolProg 64 :=
.seq NamedBody835_100 NamedBody835_109

def NamedBody835_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody835_113 : StackLang.HolProg 64 :=
.seq NamedBody835_111 NamedBody835_112

def NamedBody835_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody835_110 NamedBody835_113

def NamedBody835_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody835_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody835_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody835_119 : StackLang.HolProg 64 :=
.seq NamedBody835_117 NamedBody835_118

def NamedBody835_120 : StackLang.HolProg 64 :=
.seq NamedBody835_116 NamedBody835_119

def NamedBody835_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4157#64)

def NamedBody835_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody835_124 : StackLang.HolProg 64 :=
.seq NamedBody835_122 NamedBody835_123

def NamedBody835_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody835_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody835_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody835_128 : StackLang.HolProg 64 :=
.seq NamedBody835_126 NamedBody835_127

def NamedBody835_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_130 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody835_128 NamedBody835_129

def NamedBody835_131 : StackLang.HolProg 64 :=
.seq NamedBody835_125 NamedBody835_130

def NamedBody835_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody835_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody835_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 835 5

def NamedBody835_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody835_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody835_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody835_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody835_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody835_141 : StackLang.HolProg 64 :=
.seq NamedBody835_139 NamedBody835_140

def NamedBody835_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody835_143 : StackLang.HolProg 64 :=
.seq NamedBody835_141 NamedBody835_142

def NamedBody835_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody835_145 : StackLang.HolProg 64 :=
.seq NamedBody835_143 NamedBody835_144

def NamedBody835_146 : StackLang.HolProg 64 :=
.seq NamedBody835_138 NamedBody835_145

def NamedBody835_147 : StackLang.HolProg 64 :=
.seq NamedBody835_137 NamedBody835_146

def NamedBody835_148 : StackLang.HolProg 64 :=
.seq NamedBody835_136 NamedBody835_147

def NamedBody835_149 : StackLang.HolProg 64 :=
.seq NamedBody835_135 NamedBody835_148

def NamedBody835_150 : StackLang.HolProg 64 :=
.seq NamedBody835_134 NamedBody835_149

def NamedBody835_151 : StackLang.HolProg 64 :=
.seq NamedBody835_133 NamedBody835_150

def NamedBody835_152 : StackLang.HolProg 64 :=
.seq NamedBody835_132 NamedBody835_151

def NamedBody835_153 : StackLang.HolProg 64 :=
.seq NamedBody835_131 NamedBody835_152

def NamedBody835_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody835_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody835_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody835_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody835_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody835_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody835_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody835_164 : StackLang.HolProg 64 :=
.seq NamedBody835_162 NamedBody835_163

def NamedBody835_165 : StackLang.HolProg 64 :=
.seq NamedBody835_161 NamedBody835_164

def NamedBody835_166 : StackLang.HolProg 64 :=
.seq NamedBody835_160 NamedBody835_165

def NamedBody835_167 : StackLang.HolProg 64 :=
.seq NamedBody835_159 NamedBody835_166

def NamedBody835_168 : StackLang.HolProg 64 :=
.seq NamedBody835_158 NamedBody835_167

def NamedBody835_169 : StackLang.HolProg 64 :=
.seq NamedBody835_157 NamedBody835_168

def NamedBody835_170 : StackLang.HolProg 64 :=
.seq NamedBody835_156 NamedBody835_169

def NamedBody835_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody835_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody835_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody835_174 : StackLang.HolProg 64 :=
.seq NamedBody835_172 NamedBody835_173

def NamedBody835_175 : StackLang.HolProg 64 :=
.seq NamedBody835_171 NamedBody835_174

def NamedBody835_176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody835_177 : StackLang.HolProg 64 :=
.seq NamedBody835_175 NamedBody835_176

def NamedBody835_178 : StackLang.HolProg 64 :=
.call (some (NamedBody835_170, 1, 835, 4)) (Sum.inl 138) (some (NamedBody835_177, 835, 5))

def NamedBody835_179 : StackLang.HolProg 64 :=
.seq NamedBody835_155 NamedBody835_178

def NamedBody835_180 : StackLang.HolProg 64 :=
.seq NamedBody835_154 NamedBody835_179

def NamedBody835_181 : StackLang.HolProg 64 :=
.seq NamedBody835_153 NamedBody835_180

def NamedBody835_182 : StackLang.HolProg 64 :=
.seq NamedBody835_124 NamedBody835_181

def NamedBody835_183 : StackLang.HolProg 64 :=
.seq NamedBody835_121 NamedBody835_182

def NamedBody835_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody835_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody835_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_191 : StackLang.HolProg 64 :=
.seq NamedBody835_189 NamedBody835_190

def NamedBody835_192 : StackLang.HolProg 64 :=
.seq NamedBody835_188 NamedBody835_191

def NamedBody835_193 : StackLang.HolProg 64 :=
.seq NamedBody835_187 NamedBody835_192

def NamedBody835_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_196 : StackLang.HolProg 64 :=
.seq NamedBody835_194 NamedBody835_195

def NamedBody835_197 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody835_193 NamedBody835_196

def NamedBody835_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody835_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_203 : StackLang.HolProg 64 :=
.seq NamedBody835_201 NamedBody835_202

def NamedBody835_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def NamedBody835_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody835_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody835_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_210 : StackLang.HolProg 64 :=
.seq NamedBody835_208 NamedBody835_209

def NamedBody835_211 : StackLang.HolProg 64 :=
.seq NamedBody835_207 NamedBody835_210

def NamedBody835_212 : StackLang.HolProg 64 :=
.seq NamedBody835_206 NamedBody835_211

def NamedBody835_213 : StackLang.HolProg 64 :=
.seq NamedBody835_205 NamedBody835_212

def NamedBody835_214 : StackLang.HolProg 64 :=
.seq NamedBody835_204 NamedBody835_213

def NamedBody835_215 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody835_203 NamedBody835_214

def NamedBody835_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody835_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody835_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_222 : StackLang.HolProg 64 :=
.seq NamedBody835_220 NamedBody835_221

def NamedBody835_223 : StackLang.HolProg 64 :=
.seq NamedBody835_219 NamedBody835_222

def NamedBody835_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_226 : StackLang.HolProg 64 :=
.seq NamedBody835_224 NamedBody835_225

def NamedBody835_227 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody835_223 NamedBody835_226

def NamedBody835_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody835_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 500#64)

def NamedBody835_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 500#64)

def NamedBody835_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_236 : StackLang.HolProg 64 :=
.seq NamedBody835_234 NamedBody835_235

def NamedBody835_237 : StackLang.HolProg 64 :=
.seq NamedBody835_233 NamedBody835_236

def NamedBody835_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody835_240 : StackLang.HolProg 64 :=
.seq NamedBody835_238 NamedBody835_239

def NamedBody835_241 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody835_237 NamedBody835_240

def NamedBody835_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody835_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody835_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody835_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody835_246 : StackLang.HolProg 64 :=
.seq NamedBody835_244 NamedBody835_245

def NamedBody835_247 : StackLang.HolProg 64 :=
.seq NamedBody835_243 NamedBody835_246

def NamedBody835_248 : StackLang.HolProg 64 :=
.seq NamedBody835_242 NamedBody835_247

def NamedBody835_249 : StackLang.HolProg 64 :=
.seq NamedBody835_241 NamedBody835_248

def NamedBody835_250 : StackLang.HolProg 64 :=
.seq NamedBody835_232 NamedBody835_249

def NamedBody835_251 : StackLang.HolProg 64 :=
.seq NamedBody835_231 NamedBody835_250

def NamedBody835_252 : StackLang.HolProg 64 :=
.seq NamedBody835_230 NamedBody835_251

def NamedBody835_253 : StackLang.HolProg 64 :=
.seq NamedBody835_229 NamedBody835_252

def NamedBody835_254 : StackLang.HolProg 64 :=
.seq NamedBody835_228 NamedBody835_253

def NamedBody835_255 : StackLang.HolProg 64 :=
.seq NamedBody835_227 NamedBody835_254

def NamedBody835_256 : StackLang.HolProg 64 :=
.seq NamedBody835_218 NamedBody835_255

def NamedBody835_257 : StackLang.HolProg 64 :=
.seq NamedBody835_217 NamedBody835_256

def NamedBody835_258 : StackLang.HolProg 64 :=
.seq NamedBody835_216 NamedBody835_257

def NamedBody835_259 : StackLang.HolProg 64 :=
.seq NamedBody835_215 NamedBody835_258

def NamedBody835_260 : StackLang.HolProg 64 :=
.seq NamedBody835_200 NamedBody835_259

def NamedBody835_261 : StackLang.HolProg 64 :=
.seq NamedBody835_199 NamedBody835_260

def NamedBody835_262 : StackLang.HolProg 64 :=
.seq NamedBody835_198 NamedBody835_261

def NamedBody835_263 : StackLang.HolProg 64 :=
.seq NamedBody835_197 NamedBody835_262

def NamedBody835_264 : StackLang.HolProg 64 :=
.seq NamedBody835_186 NamedBody835_263

def NamedBody835_265 : StackLang.HolProg 64 :=
.seq NamedBody835_185 NamedBody835_264

def NamedBody835_266 : StackLang.HolProg 64 :=
.seq NamedBody835_184 NamedBody835_265

def NamedBody835_267 : StackLang.HolProg 64 :=
.seq NamedBody835_183 NamedBody835_266

def NamedBody835_268 : StackLang.HolProg 64 :=
.seq NamedBody835_120 NamedBody835_267

def NamedBody835_269 : StackLang.HolProg 64 :=
.seq NamedBody835_115 NamedBody835_268

def NamedBody835_270 : StackLang.HolProg 64 :=
.seq NamedBody835_114 NamedBody835_269

def NamedBody835_271 : StackLang.HolProg 64 :=
.seq NamedBody835_99 NamedBody835_270

def NamedBody835_272 : StackLang.HolProg 64 :=
.seq NamedBody835_98 NamedBody835_271

def NamedBody835_273 : StackLang.HolProg 64 :=
.seq NamedBody835_97 NamedBody835_272

def NamedBody835_274 : StackLang.HolProg 64 :=
.seq NamedBody835_96 NamedBody835_273

def NamedBody835_275 : StackLang.HolProg 64 :=
.seq NamedBody835_95 NamedBody835_274

def NamedBody835_276 : StackLang.HolProg 64 :=
.seq NamedBody835_94 NamedBody835_275

def NamedBody835_277 : StackLang.HolProg 64 :=
.seq NamedBody835_93 NamedBody835_276

def NamedBody835_278 : StackLang.HolProg 64 :=
.seq NamedBody835_92 NamedBody835_277

def NamedBody835_279 : StackLang.HolProg 64 :=
.seq NamedBody835_17 NamedBody835_278

def NamedBody835_280 : StackLang.HolProg 64 :=
.seq NamedBody835_6 NamedBody835_279

def Named835 : Nat × StackLang.HolProg 64 := (835, NamedBody835_280)
theorem Named835_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed835 = Named835 := by
  kernel_rfl
#print axioms Named835_eq
end InitECandidate.Proofs.BackendStages
