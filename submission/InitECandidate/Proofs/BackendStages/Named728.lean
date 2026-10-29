import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed728
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody728_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody728_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody728_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody728_3 : StackLang.HolProg 64 :=
.seq NamedBody728_1 NamedBody728_2

def NamedBody728_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody728_3 NamedBody728_4

def NamedBody728_6 : StackLang.HolProg 64 :=
.seq NamedBody728_0 NamedBody728_5

def NamedBody728_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody728_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody728_9 : StackLang.HolProg 64 :=
.seq NamedBody728_7 NamedBody728_8

def NamedBody728_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody728_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 8#64))

def NamedBody728_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 16#64))

def NamedBody728_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 24#64))

def NamedBody728_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 32#64))

def NamedBody728_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 40#64))

def NamedBody728_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody728_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody728_23 : StackLang.HolProg 64 :=
.seq NamedBody728_21 NamedBody728_22

def NamedBody728_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3258#64)

def NamedBody728_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody728_27 : StackLang.HolProg 64 :=
.seq NamedBody728_25 NamedBody728_26

def NamedBody728_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody728_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody728_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody728_31 : StackLang.HolProg 64 :=
.seq NamedBody728_29 NamedBody728_30

def NamedBody728_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody728_31 NamedBody728_32

def NamedBody728_34 : StackLang.HolProg 64 :=
.seq NamedBody728_28 NamedBody728_33

def NamedBody728_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody728_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody728_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 728 3

def NamedBody728_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody728_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody728_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody728_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody728_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody728_44 : StackLang.HolProg 64 :=
.seq NamedBody728_42 NamedBody728_43

def NamedBody728_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody728_46 : StackLang.HolProg 64 :=
.seq NamedBody728_44 NamedBody728_45

def NamedBody728_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody728_48 : StackLang.HolProg 64 :=
.seq NamedBody728_46 NamedBody728_47

def NamedBody728_49 : StackLang.HolProg 64 :=
.seq NamedBody728_41 NamedBody728_48

def NamedBody728_50 : StackLang.HolProg 64 :=
.seq NamedBody728_40 NamedBody728_49

def NamedBody728_51 : StackLang.HolProg 64 :=
.seq NamedBody728_39 NamedBody728_50

def NamedBody728_52 : StackLang.HolProg 64 :=
.seq NamedBody728_38 NamedBody728_51

def NamedBody728_53 : StackLang.HolProg 64 :=
.seq NamedBody728_37 NamedBody728_52

def NamedBody728_54 : StackLang.HolProg 64 :=
.seq NamedBody728_36 NamedBody728_53

def NamedBody728_55 : StackLang.HolProg 64 :=
.seq NamedBody728_35 NamedBody728_54

def NamedBody728_56 : StackLang.HolProg 64 :=
.seq NamedBody728_34 NamedBody728_55

def NamedBody728_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody728_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody728_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody728_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody728_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody728_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody728_66 : StackLang.HolProg 64 :=
.seq NamedBody728_64 NamedBody728_65

def NamedBody728_67 : StackLang.HolProg 64 :=
.seq NamedBody728_63 NamedBody728_66

def NamedBody728_68 : StackLang.HolProg 64 :=
.seq NamedBody728_62 NamedBody728_67

def NamedBody728_69 : StackLang.HolProg 64 :=
.seq NamedBody728_61 NamedBody728_68

def NamedBody728_70 : StackLang.HolProg 64 :=
.seq NamedBody728_60 NamedBody728_69

def NamedBody728_71 : StackLang.HolProg 64 :=
.seq NamedBody728_59 NamedBody728_70

def NamedBody728_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody728_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody728_74 : StackLang.HolProg 64 :=
.seq NamedBody728_72 NamedBody728_73

def NamedBody728_75 : StackLang.HolProg 64 :=
.call (some (NamedBody728_71, 1, 728, 2)) (Sum.inl 717) (some (NamedBody728_74, 728, 3))

def NamedBody728_76 : StackLang.HolProg 64 :=
.seq NamedBody728_58 NamedBody728_75

def NamedBody728_77 : StackLang.HolProg 64 :=
.seq NamedBody728_57 NamedBody728_76

def NamedBody728_78 : StackLang.HolProg 64 :=
.seq NamedBody728_56 NamedBody728_77

def NamedBody728_79 : StackLang.HolProg 64 :=
.seq NamedBody728_27 NamedBody728_78

def NamedBody728_80 : StackLang.HolProg 64 :=
.seq NamedBody728_24 NamedBody728_79

def NamedBody728_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody728_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody728_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 16#64)

def NamedBody728_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody728_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody728_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody728_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody728_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody728_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody728_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody728_91 : StackLang.HolProg 64 :=
.seq NamedBody728_89 NamedBody728_90

def NamedBody728_92 : StackLang.HolProg 64 :=
.seq NamedBody728_88 NamedBody728_91

def NamedBody728_93 : StackLang.HolProg 64 :=
.seq NamedBody728_87 NamedBody728_92

def NamedBody728_94 : StackLang.HolProg 64 :=
.seq NamedBody728_86 NamedBody728_93

def NamedBody728_95 : StackLang.HolProg 64 :=
.seq NamedBody728_85 NamedBody728_94

def NamedBody728_96 : StackLang.HolProg 64 :=
.seq NamedBody728_84 NamedBody728_95

def NamedBody728_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3259#64)

def NamedBody728_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody728_100 : StackLang.HolProg 64 :=
.seq NamedBody728_98 NamedBody728_99

def NamedBody728_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody728_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody728_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody728_104 : StackLang.HolProg 64 :=
.seq NamedBody728_102 NamedBody728_103

def NamedBody728_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody728_104 NamedBody728_105

def NamedBody728_107 : StackLang.HolProg 64 :=
.seq NamedBody728_101 NamedBody728_106

def NamedBody728_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody728_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody728_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 728 5

def NamedBody728_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody728_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody728_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody728_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody728_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody728_117 : StackLang.HolProg 64 :=
.seq NamedBody728_115 NamedBody728_116

def NamedBody728_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody728_119 : StackLang.HolProg 64 :=
.seq NamedBody728_117 NamedBody728_118

def NamedBody728_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody728_121 : StackLang.HolProg 64 :=
.seq NamedBody728_119 NamedBody728_120

def NamedBody728_122 : StackLang.HolProg 64 :=
.seq NamedBody728_114 NamedBody728_121

def NamedBody728_123 : StackLang.HolProg 64 :=
.seq NamedBody728_113 NamedBody728_122

def NamedBody728_124 : StackLang.HolProg 64 :=
.seq NamedBody728_112 NamedBody728_123

def NamedBody728_125 : StackLang.HolProg 64 :=
.seq NamedBody728_111 NamedBody728_124

def NamedBody728_126 : StackLang.HolProg 64 :=
.seq NamedBody728_110 NamedBody728_125

def NamedBody728_127 : StackLang.HolProg 64 :=
.seq NamedBody728_109 NamedBody728_126

def NamedBody728_128 : StackLang.HolProg 64 :=
.seq NamedBody728_108 NamedBody728_127

def NamedBody728_129 : StackLang.HolProg 64 :=
.seq NamedBody728_107 NamedBody728_128

def NamedBody728_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody728_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody728_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody728_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody728_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody728_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody728_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody728_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody728_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody728_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody728_143 : StackLang.HolProg 64 :=
.seq NamedBody728_141 NamedBody728_142

def NamedBody728_144 : StackLang.HolProg 64 :=
.seq NamedBody728_140 NamedBody728_143

def NamedBody728_145 : StackLang.HolProg 64 :=
.seq NamedBody728_139 NamedBody728_144

def NamedBody728_146 : StackLang.HolProg 64 :=
.seq NamedBody728_138 NamedBody728_145

def NamedBody728_147 : StackLang.HolProg 64 :=
.seq NamedBody728_137 NamedBody728_146

def NamedBody728_148 : StackLang.HolProg 64 :=
.seq NamedBody728_136 NamedBody728_147

def NamedBody728_149 : StackLang.HolProg 64 :=
.seq NamedBody728_135 NamedBody728_148

def NamedBody728_150 : StackLang.HolProg 64 :=
.seq NamedBody728_134 NamedBody728_149

def NamedBody728_151 : StackLang.HolProg 64 :=
.seq NamedBody728_133 NamedBody728_150

def NamedBody728_152 : StackLang.HolProg 64 :=
.seq NamedBody728_132 NamedBody728_151

def NamedBody728_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody728_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody728_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody728_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody728_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody728_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody728_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody728_160 : StackLang.HolProg 64 :=
.seq NamedBody728_158 NamedBody728_159

def NamedBody728_161 : StackLang.HolProg 64 :=
.seq NamedBody728_157 NamedBody728_160

def NamedBody728_162 : StackLang.HolProg 64 :=
.seq NamedBody728_156 NamedBody728_161

def NamedBody728_163 : StackLang.HolProg 64 :=
.seq NamedBody728_155 NamedBody728_162

def NamedBody728_164 : StackLang.HolProg 64 :=
.seq NamedBody728_154 NamedBody728_163

def NamedBody728_165 : StackLang.HolProg 64 :=
.seq NamedBody728_153 NamedBody728_164

def NamedBody728_166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody728_167 : StackLang.HolProg 64 :=
.seq NamedBody728_165 NamedBody728_166

def NamedBody728_168 : StackLang.HolProg 64 :=
.call (some (NamedBody728_152, 1, 728, 4)) (Sum.inl 78) (some (NamedBody728_167, 728, 5))

def NamedBody728_169 : StackLang.HolProg 64 :=
.seq NamedBody728_131 NamedBody728_168

def NamedBody728_170 : StackLang.HolProg 64 :=
.seq NamedBody728_130 NamedBody728_169

def NamedBody728_171 : StackLang.HolProg 64 :=
.seq NamedBody728_129 NamedBody728_170

def NamedBody728_172 : StackLang.HolProg 64 :=
.seq NamedBody728_100 NamedBody728_171

def NamedBody728_173 : StackLang.HolProg 64 :=
.seq NamedBody728_97 NamedBody728_172

def NamedBody728_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody728_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody728_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody728_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3260#64)

def NamedBody728_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody728_181 : StackLang.HolProg 64 :=
.seq NamedBody728_179 NamedBody728_180

def NamedBody728_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody728_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody728_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody728_185 : StackLang.HolProg 64 :=
.seq NamedBody728_183 NamedBody728_184

def NamedBody728_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody728_185 NamedBody728_186

def NamedBody728_188 : StackLang.HolProg 64 :=
.seq NamedBody728_182 NamedBody728_187

def NamedBody728_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody728_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody728_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 728 7

def NamedBody728_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody728_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody728_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody728_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody728_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody728_198 : StackLang.HolProg 64 :=
.seq NamedBody728_196 NamedBody728_197

def NamedBody728_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody728_200 : StackLang.HolProg 64 :=
.seq NamedBody728_198 NamedBody728_199

def NamedBody728_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody728_202 : StackLang.HolProg 64 :=
.seq NamedBody728_200 NamedBody728_201

def NamedBody728_203 : StackLang.HolProg 64 :=
.seq NamedBody728_195 NamedBody728_202

def NamedBody728_204 : StackLang.HolProg 64 :=
.seq NamedBody728_194 NamedBody728_203

def NamedBody728_205 : StackLang.HolProg 64 :=
.seq NamedBody728_193 NamedBody728_204

def NamedBody728_206 : StackLang.HolProg 64 :=
.seq NamedBody728_192 NamedBody728_205

def NamedBody728_207 : StackLang.HolProg 64 :=
.seq NamedBody728_191 NamedBody728_206

def NamedBody728_208 : StackLang.HolProg 64 :=
.seq NamedBody728_190 NamedBody728_207

def NamedBody728_209 : StackLang.HolProg 64 :=
.seq NamedBody728_189 NamedBody728_208

def NamedBody728_210 : StackLang.HolProg 64 :=
.seq NamedBody728_188 NamedBody728_209

def NamedBody728_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody728_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody728_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody728_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody728_218 : StackLang.HolProg 64 :=
.seq NamedBody728_216 NamedBody728_217

def NamedBody728_219 : StackLang.HolProg 64 :=
.seq NamedBody728_215 NamedBody728_218

def NamedBody728_220 : StackLang.HolProg 64 :=
.seq NamedBody728_214 NamedBody728_219

def NamedBody728_221 : StackLang.HolProg 64 :=
.seq NamedBody728_213 NamedBody728_220

def NamedBody728_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody728_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody728_224 : StackLang.HolProg 64 :=
.seq NamedBody728_222 NamedBody728_223

def NamedBody728_225 : StackLang.HolProg 64 :=
.call (some (NamedBody728_221, 1, 728, 6)) (Sum.inl 726) (some (NamedBody728_224, 728, 7))

def NamedBody728_226 : StackLang.HolProg 64 :=
.seq NamedBody728_212 NamedBody728_225

def NamedBody728_227 : StackLang.HolProg 64 :=
.seq NamedBody728_211 NamedBody728_226

def NamedBody728_228 : StackLang.HolProg 64 :=
.seq NamedBody728_210 NamedBody728_227

def NamedBody728_229 : StackLang.HolProg 64 :=
.seq NamedBody728_181 NamedBody728_228

def NamedBody728_230 : StackLang.HolProg 64 :=
.seq NamedBody728_178 NamedBody728_229

def NamedBody728_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody728_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody728_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody728_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody728_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody728_236 : StackLang.HolProg 64 :=
.seq NamedBody728_234 NamedBody728_235

def NamedBody728_237 : StackLang.HolProg 64 :=
.seq NamedBody728_233 NamedBody728_236

def NamedBody728_238 : StackLang.HolProg 64 :=
.seq NamedBody728_232 NamedBody728_237

def NamedBody728_239 : StackLang.HolProg 64 :=
.seq NamedBody728_231 NamedBody728_238

def NamedBody728_240 : StackLang.HolProg 64 :=
.seq NamedBody728_230 NamedBody728_239

def NamedBody728_241 : StackLang.HolProg 64 :=
.seq NamedBody728_177 NamedBody728_240

def NamedBody728_242 : StackLang.HolProg 64 :=
.seq NamedBody728_176 NamedBody728_241

def NamedBody728_243 : StackLang.HolProg 64 :=
.seq NamedBody728_175 NamedBody728_242

def NamedBody728_244 : StackLang.HolProg 64 :=
.seq NamedBody728_174 NamedBody728_243

def NamedBody728_245 : StackLang.HolProg 64 :=
.seq NamedBody728_173 NamedBody728_244

def NamedBody728_246 : StackLang.HolProg 64 :=
.seq NamedBody728_96 NamedBody728_245

def NamedBody728_247 : StackLang.HolProg 64 :=
.seq NamedBody728_83 NamedBody728_246

def NamedBody728_248 : StackLang.HolProg 64 :=
.seq NamedBody728_82 NamedBody728_247

def NamedBody728_249 : StackLang.HolProg 64 :=
.seq NamedBody728_81 NamedBody728_248

def NamedBody728_250 : StackLang.HolProg 64 :=
.seq NamedBody728_80 NamedBody728_249

def NamedBody728_251 : StackLang.HolProg 64 :=
.seq NamedBody728_23 NamedBody728_250

def NamedBody728_252 : StackLang.HolProg 64 :=
.seq NamedBody728_20 NamedBody728_251

def NamedBody728_253 : StackLang.HolProg 64 :=
.seq NamedBody728_19 NamedBody728_252

def NamedBody728_254 : StackLang.HolProg 64 :=
.seq NamedBody728_18 NamedBody728_253

def NamedBody728_255 : StackLang.HolProg 64 :=
.seq NamedBody728_17 NamedBody728_254

def NamedBody728_256 : StackLang.HolProg 64 :=
.seq NamedBody728_16 NamedBody728_255

def NamedBody728_257 : StackLang.HolProg 64 :=
.seq NamedBody728_15 NamedBody728_256

def NamedBody728_258 : StackLang.HolProg 64 :=
.seq NamedBody728_14 NamedBody728_257

def NamedBody728_259 : StackLang.HolProg 64 :=
.seq NamedBody728_13 NamedBody728_258

def NamedBody728_260 : StackLang.HolProg 64 :=
.seq NamedBody728_12 NamedBody728_259

def NamedBody728_261 : StackLang.HolProg 64 :=
.seq NamedBody728_11 NamedBody728_260

def NamedBody728_262 : StackLang.HolProg 64 :=
.seq NamedBody728_10 NamedBody728_261

def NamedBody728_263 : StackLang.HolProg 64 :=
.seq NamedBody728_9 NamedBody728_262

def NamedBody728_264 : StackLang.HolProg 64 :=
.seq NamedBody728_6 NamedBody728_263

def Named728 : Nat × StackLang.HolProg 64 := (728, NamedBody728_264)
theorem Named728_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed728 = Named728 := by
  kernel_rfl
#print axioms Named728_eq
end InitECandidate.Proofs.BackendStages
