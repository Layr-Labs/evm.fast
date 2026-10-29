import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed689
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody689_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody689_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody689_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody689_3 : StackLang.HolProg 64 :=
.seq NamedBody689_1 NamedBody689_2

def NamedBody689_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody689_3 NamedBody689_4

def NamedBody689_6 : StackLang.HolProg 64 :=
.seq NamedBody689_0 NamedBody689_5

def NamedBody689_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody689_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody689_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody689_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody689_12 : StackLang.HolProg 64 :=
.seq NamedBody689_10 NamedBody689_11

def NamedBody689_13 : StackLang.HolProg 64 :=
.seq NamedBody689_9 NamedBody689_12

def NamedBody689_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody689_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody689_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody689_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody689_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody689_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody689_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody689_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody689_26 : StackLang.HolProg 64 :=
.seq NamedBody689_24 NamedBody689_25

def NamedBody689_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2938#64)

def NamedBody689_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody689_30 : StackLang.HolProg 64 :=
.seq NamedBody689_28 NamedBody689_29

def NamedBody689_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody689_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody689_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody689_34 : StackLang.HolProg 64 :=
.seq NamedBody689_32 NamedBody689_33

def NamedBody689_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody689_34 NamedBody689_35

def NamedBody689_37 : StackLang.HolProg 64 :=
.seq NamedBody689_31 NamedBody689_36

def NamedBody689_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody689_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody689_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 689 3

def NamedBody689_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody689_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody689_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody689_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody689_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody689_47 : StackLang.HolProg 64 :=
.seq NamedBody689_45 NamedBody689_46

def NamedBody689_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody689_49 : StackLang.HolProg 64 :=
.seq NamedBody689_47 NamedBody689_48

def NamedBody689_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody689_51 : StackLang.HolProg 64 :=
.seq NamedBody689_49 NamedBody689_50

def NamedBody689_52 : StackLang.HolProg 64 :=
.seq NamedBody689_44 NamedBody689_51

def NamedBody689_53 : StackLang.HolProg 64 :=
.seq NamedBody689_43 NamedBody689_52

def NamedBody689_54 : StackLang.HolProg 64 :=
.seq NamedBody689_42 NamedBody689_53

def NamedBody689_55 : StackLang.HolProg 64 :=
.seq NamedBody689_41 NamedBody689_54

def NamedBody689_56 : StackLang.HolProg 64 :=
.seq NamedBody689_40 NamedBody689_55

def NamedBody689_57 : StackLang.HolProg 64 :=
.seq NamedBody689_39 NamedBody689_56

def NamedBody689_58 : StackLang.HolProg 64 :=
.seq NamedBody689_38 NamedBody689_57

def NamedBody689_59 : StackLang.HolProg 64 :=
.seq NamedBody689_37 NamedBody689_58

def NamedBody689_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody689_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody689_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody689_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody689_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody689_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody689_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody689_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody689_71 : StackLang.HolProg 64 :=
.seq NamedBody689_69 NamedBody689_70

def NamedBody689_72 : StackLang.HolProg 64 :=
.seq NamedBody689_68 NamedBody689_71

def NamedBody689_73 : StackLang.HolProg 64 :=
.seq NamedBody689_67 NamedBody689_72

def NamedBody689_74 : StackLang.HolProg 64 :=
.seq NamedBody689_66 NamedBody689_73

def NamedBody689_75 : StackLang.HolProg 64 :=
.seq NamedBody689_65 NamedBody689_74

def NamedBody689_76 : StackLang.HolProg 64 :=
.seq NamedBody689_64 NamedBody689_75

def NamedBody689_77 : StackLang.HolProg 64 :=
.seq NamedBody689_63 NamedBody689_76

def NamedBody689_78 : StackLang.HolProg 64 :=
.seq NamedBody689_62 NamedBody689_77

def NamedBody689_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody689_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody689_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody689_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody689_83 : StackLang.HolProg 64 :=
.seq NamedBody689_81 NamedBody689_82

def NamedBody689_84 : StackLang.HolProg 64 :=
.seq NamedBody689_80 NamedBody689_83

def NamedBody689_85 : StackLang.HolProg 64 :=
.seq NamedBody689_79 NamedBody689_84

def NamedBody689_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody689_87 : StackLang.HolProg 64 :=
.seq NamedBody689_85 NamedBody689_86

def NamedBody689_88 : StackLang.HolProg 64 :=
.call (some (NamedBody689_78, 1, 689, 2)) (Sum.inl 80) (some (NamedBody689_87, 689, 3))

def NamedBody689_89 : StackLang.HolProg 64 :=
.seq NamedBody689_61 NamedBody689_88

def NamedBody689_90 : StackLang.HolProg 64 :=
.seq NamedBody689_60 NamedBody689_89

def NamedBody689_91 : StackLang.HolProg 64 :=
.seq NamedBody689_59 NamedBody689_90

def NamedBody689_92 : StackLang.HolProg 64 :=
.seq NamedBody689_30 NamedBody689_91

def NamedBody689_93 : StackLang.HolProg 64 :=
.seq NamedBody689_27 NamedBody689_92

def NamedBody689_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody689_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody689_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody689_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody689_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody689_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody689_101 : StackLang.HolProg 64 :=
.seq NamedBody689_99 NamedBody689_100

def NamedBody689_102 : StackLang.HolProg 64 :=
.seq NamedBody689_98 NamedBody689_101

def NamedBody689_103 : StackLang.HolProg 64 :=
.seq NamedBody689_97 NamedBody689_102

def NamedBody689_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody689_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody689_103 NamedBody689_104

def NamedBody689_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody689_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody689_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody689_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody689_110 : StackLang.HolProg 64 :=
.seq NamedBody689_108 NamedBody689_109

def NamedBody689_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody689_112 : StackLang.HolProg 64 :=
.seq NamedBody689_110 NamedBody689_111

def NamedBody689_113 : StackLang.HolProg 64 :=
.seq NamedBody689_107 NamedBody689_112

def NamedBody689_114 : StackLang.HolProg 64 :=
.seq NamedBody689_106 NamedBody689_113

def NamedBody689_115 : StackLang.HolProg 64 :=
.seq NamedBody689_105 NamedBody689_114

def NamedBody689_116 : StackLang.HolProg 64 :=
.seq NamedBody689_96 NamedBody689_115

def NamedBody689_117 : StackLang.HolProg 64 :=
.seq NamedBody689_95 NamedBody689_116

def NamedBody689_118 : StackLang.HolProg 64 :=
.seq NamedBody689_94 NamedBody689_117

def NamedBody689_119 : StackLang.HolProg 64 :=
.seq NamedBody689_93 NamedBody689_118

def NamedBody689_120 : StackLang.HolProg 64 :=
.seq NamedBody689_26 NamedBody689_119

def NamedBody689_121 : StackLang.HolProg 64 :=
.seq NamedBody689_23 NamedBody689_120

def NamedBody689_122 : StackLang.HolProg 64 :=
.seq NamedBody689_22 NamedBody689_121

def NamedBody689_123 : StackLang.HolProg 64 :=
.seq NamedBody689_21 NamedBody689_122

def NamedBody689_124 : StackLang.HolProg 64 :=
.seq NamedBody689_20 NamedBody689_123

def NamedBody689_125 : StackLang.HolProg 64 :=
.seq NamedBody689_19 NamedBody689_124

def NamedBody689_126 : StackLang.HolProg 64 :=
.seq NamedBody689_18 NamedBody689_125

def NamedBody689_127 : StackLang.HolProg 64 :=
.seq NamedBody689_17 NamedBody689_126

def NamedBody689_128 : StackLang.HolProg 64 :=
.seq NamedBody689_16 NamedBody689_127

def NamedBody689_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody689_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody689_131 : StackLang.HolProg 64 :=
.seq NamedBody689_129 NamedBody689_130

def NamedBody689_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody689_128 NamedBody689_131

def NamedBody689_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody689_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody689_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody689_136 : StackLang.HolProg 64 :=
.seq NamedBody689_134 NamedBody689_135

def NamedBody689_137 : StackLang.HolProg 64 :=
.seq NamedBody689_133 NamedBody689_136

def NamedBody689_138 : StackLang.HolProg 64 :=
.seq NamedBody689_132 NamedBody689_137

def NamedBody689_139 : StackLang.HolProg 64 :=
.seq NamedBody689_15 NamedBody689_138

def NamedBody689_140 : StackLang.HolProg 64 :=
.seq NamedBody689_14 NamedBody689_139

def NamedBody689_141 : StackLang.HolProg 64 :=
.loop NamedBody689_140

def NamedBody689_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody689_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody689_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody689_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody689_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody689_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody689_148 : StackLang.HolProg 64 :=
.seq NamedBody689_146 NamedBody689_147

def NamedBody689_149 : StackLang.HolProg 64 :=
.seq NamedBody689_145 NamedBody689_148

def NamedBody689_150 : StackLang.HolProg 64 :=
.seq NamedBody689_144 NamedBody689_149

def NamedBody689_151 : StackLang.HolProg 64 :=
.seq NamedBody689_143 NamedBody689_150

def NamedBody689_152 : StackLang.HolProg 64 :=
.seq NamedBody689_142 NamedBody689_151

def NamedBody689_153 : StackLang.HolProg 64 :=
.seq NamedBody689_141 NamedBody689_152

def NamedBody689_154 : StackLang.HolProg 64 :=
.seq NamedBody689_13 NamedBody689_153

def NamedBody689_155 : StackLang.HolProg 64 :=
.seq NamedBody689_8 NamedBody689_154

def NamedBody689_156 : StackLang.HolProg 64 :=
.seq NamedBody689_7 NamedBody689_155

def NamedBody689_157 : StackLang.HolProg 64 :=
.seq NamedBody689_6 NamedBody689_156

def Named689 : Nat × StackLang.HolProg 64 := (689, NamedBody689_157)
theorem Named689_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed689 = Named689 := by
  kernel_rfl
#print axioms Named689_eq
end InitECandidate.Proofs.BackendStages
