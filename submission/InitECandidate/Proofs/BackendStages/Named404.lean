import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed404
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody404_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody404_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody404_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody404_3 : StackLang.HolProg 64 :=
.seq NamedBody404_1 NamedBody404_2

def NamedBody404_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody404_3 NamedBody404_4

def NamedBody404_6 : StackLang.HolProg 64 :=
.seq NamedBody404_0 NamedBody404_5

def NamedBody404_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody404_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody404_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody404_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody404_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551432#64))

def NamedBody404_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody404_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody404_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_17 : StackLang.HolProg 64 :=
.seq NamedBody404_15 NamedBody404_16

def NamedBody404_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1202#64)

def NamedBody404_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody404_21 : StackLang.HolProg 64 :=
.seq NamedBody404_19 NamedBody404_20

def NamedBody404_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody404_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody404_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody404_25 : StackLang.HolProg 64 :=
.seq NamedBody404_23 NamedBody404_24

def NamedBody404_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody404_25 NamedBody404_26

def NamedBody404_28 : StackLang.HolProg 64 :=
.seq NamedBody404_22 NamedBody404_27

def NamedBody404_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody404_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody404_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 3

def NamedBody404_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody404_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody404_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody404_38 : StackLang.HolProg 64 :=
.seq NamedBody404_36 NamedBody404_37

def NamedBody404_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody404_40 : StackLang.HolProg 64 :=
.seq NamedBody404_38 NamedBody404_39

def NamedBody404_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody404_42 : StackLang.HolProg 64 :=
.seq NamedBody404_40 NamedBody404_41

def NamedBody404_43 : StackLang.HolProg 64 :=
.seq NamedBody404_35 NamedBody404_42

def NamedBody404_44 : StackLang.HolProg 64 :=
.seq NamedBody404_34 NamedBody404_43

def NamedBody404_45 : StackLang.HolProg 64 :=
.seq NamedBody404_33 NamedBody404_44

def NamedBody404_46 : StackLang.HolProg 64 :=
.seq NamedBody404_32 NamedBody404_45

def NamedBody404_47 : StackLang.HolProg 64 :=
.seq NamedBody404_31 NamedBody404_46

def NamedBody404_48 : StackLang.HolProg 64 :=
.seq NamedBody404_30 NamedBody404_47

def NamedBody404_49 : StackLang.HolProg 64 :=
.seq NamedBody404_29 NamedBody404_48

def NamedBody404_50 : StackLang.HolProg 64 :=
.seq NamedBody404_28 NamedBody404_49

def NamedBody404_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody404_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody404_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_58 : StackLang.HolProg 64 :=
.seq NamedBody404_56 NamedBody404_57

def NamedBody404_59 : StackLang.HolProg 64 :=
.seq NamedBody404_55 NamedBody404_58

def NamedBody404_60 : StackLang.HolProg 64 :=
.seq NamedBody404_54 NamedBody404_59

def NamedBody404_61 : StackLang.HolProg 64 :=
.seq NamedBody404_53 NamedBody404_60

def NamedBody404_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody404_64 : StackLang.HolProg 64 :=
.seq NamedBody404_62 NamedBody404_63

def NamedBody404_65 : StackLang.HolProg 64 :=
.call (some (NamedBody404_61, 1, 404, 2)) (Sum.inl 192) (some (NamedBody404_64, 404, 3))

def NamedBody404_66 : StackLang.HolProg 64 :=
.seq NamedBody404_52 NamedBody404_65

def NamedBody404_67 : StackLang.HolProg 64 :=
.seq NamedBody404_51 NamedBody404_66

def NamedBody404_68 : StackLang.HolProg 64 :=
.seq NamedBody404_50 NamedBody404_67

def NamedBody404_69 : StackLang.HolProg 64 :=
.seq NamedBody404_21 NamedBody404_68

def NamedBody404_70 : StackLang.HolProg 64 :=
.seq NamedBody404_18 NamedBody404_69

def NamedBody404_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody404_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody404_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody404_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody404_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551440#64))

def NamedBody404_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody404_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1203#64)

def NamedBody404_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody404_81 : StackLang.HolProg 64 :=
.seq NamedBody404_79 NamedBody404_80

def NamedBody404_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody404_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody404_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody404_85 : StackLang.HolProg 64 :=
.seq NamedBody404_83 NamedBody404_84

def NamedBody404_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody404_85 NamedBody404_86

def NamedBody404_88 : StackLang.HolProg 64 :=
.seq NamedBody404_82 NamedBody404_87

def NamedBody404_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody404_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody404_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 5

def NamedBody404_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody404_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody404_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody404_98 : StackLang.HolProg 64 :=
.seq NamedBody404_96 NamedBody404_97

def NamedBody404_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody404_100 : StackLang.HolProg 64 :=
.seq NamedBody404_98 NamedBody404_99

def NamedBody404_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody404_102 : StackLang.HolProg 64 :=
.seq NamedBody404_100 NamedBody404_101

def NamedBody404_103 : StackLang.HolProg 64 :=
.seq NamedBody404_95 NamedBody404_102

def NamedBody404_104 : StackLang.HolProg 64 :=
.seq NamedBody404_94 NamedBody404_103

def NamedBody404_105 : StackLang.HolProg 64 :=
.seq NamedBody404_93 NamedBody404_104

def NamedBody404_106 : StackLang.HolProg 64 :=
.seq NamedBody404_92 NamedBody404_105

def NamedBody404_107 : StackLang.HolProg 64 :=
.seq NamedBody404_91 NamedBody404_106

def NamedBody404_108 : StackLang.HolProg 64 :=
.seq NamedBody404_90 NamedBody404_107

def NamedBody404_109 : StackLang.HolProg 64 :=
.seq NamedBody404_89 NamedBody404_108

def NamedBody404_110 : StackLang.HolProg 64 :=
.seq NamedBody404_88 NamedBody404_109

def NamedBody404_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody404_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody404_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody404_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_120 : StackLang.HolProg 64 :=
.seq NamedBody404_118 NamedBody404_119

def NamedBody404_121 : StackLang.HolProg 64 :=
.seq NamedBody404_117 NamedBody404_120

def NamedBody404_122 : StackLang.HolProg 64 :=
.seq NamedBody404_116 NamedBody404_121

def NamedBody404_123 : StackLang.HolProg 64 :=
.seq NamedBody404_115 NamedBody404_122

def NamedBody404_124 : StackLang.HolProg 64 :=
.seq NamedBody404_114 NamedBody404_123

def NamedBody404_125 : StackLang.HolProg 64 :=
.seq NamedBody404_113 NamedBody404_124

def NamedBody404_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_128 : StackLang.HolProg 64 :=
.seq NamedBody404_126 NamedBody404_127

def NamedBody404_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody404_130 : StackLang.HolProg 64 :=
.seq NamedBody404_128 NamedBody404_129

def NamedBody404_131 : StackLang.HolProg 64 :=
.call (some (NamedBody404_125, 1, 404, 4)) (Sum.inl 186) (some (NamedBody404_130, 404, 5))

def NamedBody404_132 : StackLang.HolProg 64 :=
.seq NamedBody404_112 NamedBody404_131

def NamedBody404_133 : StackLang.HolProg 64 :=
.seq NamedBody404_111 NamedBody404_132

def NamedBody404_134 : StackLang.HolProg 64 :=
.seq NamedBody404_110 NamedBody404_133

def NamedBody404_135 : StackLang.HolProg 64 :=
.seq NamedBody404_81 NamedBody404_134

def NamedBody404_136 : StackLang.HolProg 64 :=
.seq NamedBody404_78 NamedBody404_135

def NamedBody404_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody404_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody404_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody404_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody404_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody404_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody404_144 : StackLang.HolProg 64 :=
.seq NamedBody404_142 NamedBody404_143

def NamedBody404_145 : StackLang.HolProg 64 :=
.seq NamedBody404_141 NamedBody404_144

def NamedBody404_146 : StackLang.HolProg 64 :=
.seq NamedBody404_140 NamedBody404_145

def NamedBody404_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody404_146 NamedBody404_147

def NamedBody404_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody404_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody404_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody404_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_154 : StackLang.HolProg 64 :=
.seq NamedBody404_152 NamedBody404_153

def NamedBody404_155 : StackLang.HolProg 64 :=
.seq NamedBody404_151 NamedBody404_154

def NamedBody404_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1204#64)

def NamedBody404_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody404_159 : StackLang.HolProg 64 :=
.seq NamedBody404_157 NamedBody404_158

def NamedBody404_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody404_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody404_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody404_163 : StackLang.HolProg 64 :=
.seq NamedBody404_161 NamedBody404_162

def NamedBody404_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_165 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody404_163 NamedBody404_164

def NamedBody404_166 : StackLang.HolProg 64 :=
.seq NamedBody404_160 NamedBody404_165

def NamedBody404_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody404_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody404_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 7

def NamedBody404_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody404_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody404_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody404_176 : StackLang.HolProg 64 :=
.seq NamedBody404_174 NamedBody404_175

def NamedBody404_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody404_178 : StackLang.HolProg 64 :=
.seq NamedBody404_176 NamedBody404_177

def NamedBody404_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody404_180 : StackLang.HolProg 64 :=
.seq NamedBody404_178 NamedBody404_179

def NamedBody404_181 : StackLang.HolProg 64 :=
.seq NamedBody404_173 NamedBody404_180

def NamedBody404_182 : StackLang.HolProg 64 :=
.seq NamedBody404_172 NamedBody404_181

def NamedBody404_183 : StackLang.HolProg 64 :=
.seq NamedBody404_171 NamedBody404_182

def NamedBody404_184 : StackLang.HolProg 64 :=
.seq NamedBody404_170 NamedBody404_183

def NamedBody404_185 : StackLang.HolProg 64 :=
.seq NamedBody404_169 NamedBody404_184

def NamedBody404_186 : StackLang.HolProg 64 :=
.seq NamedBody404_168 NamedBody404_185

def NamedBody404_187 : StackLang.HolProg 64 :=
.seq NamedBody404_167 NamedBody404_186

def NamedBody404_188 : StackLang.HolProg 64 :=
.seq NamedBody404_166 NamedBody404_187

def NamedBody404_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody404_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody404_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_196 : StackLang.HolProg 64 :=
.seq NamedBody404_194 NamedBody404_195

def NamedBody404_197 : StackLang.HolProg 64 :=
.seq NamedBody404_193 NamedBody404_196

def NamedBody404_198 : StackLang.HolProg 64 :=
.seq NamedBody404_192 NamedBody404_197

def NamedBody404_199 : StackLang.HolProg 64 :=
.seq NamedBody404_191 NamedBody404_198

def NamedBody404_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody404_202 : StackLang.HolProg 64 :=
.seq NamedBody404_200 NamedBody404_201

def NamedBody404_203 : StackLang.HolProg 64 :=
.call (some (NamedBody404_199, 1, 404, 6)) (Sum.inl 396) (some (NamedBody404_202, 404, 7))

def NamedBody404_204 : StackLang.HolProg 64 :=
.seq NamedBody404_190 NamedBody404_203

def NamedBody404_205 : StackLang.HolProg 64 :=
.seq NamedBody404_189 NamedBody404_204

def NamedBody404_206 : StackLang.HolProg 64 :=
.seq NamedBody404_188 NamedBody404_205

def NamedBody404_207 : StackLang.HolProg 64 :=
.seq NamedBody404_159 NamedBody404_206

def NamedBody404_208 : StackLang.HolProg 64 :=
.seq NamedBody404_156 NamedBody404_207

def NamedBody404_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody404_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody404_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1205#64)

def NamedBody404_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody404_214 : StackLang.HolProg 64 :=
.seq NamedBody404_212 NamedBody404_213

def NamedBody404_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody404_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody404_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody404_218 : StackLang.HolProg 64 :=
.seq NamedBody404_216 NamedBody404_217

def NamedBody404_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_220 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody404_218 NamedBody404_219

def NamedBody404_221 : StackLang.HolProg 64 :=
.seq NamedBody404_215 NamedBody404_220

def NamedBody404_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody404_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody404_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 9

def NamedBody404_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody404_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody404_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody404_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody404_231 : StackLang.HolProg 64 :=
.seq NamedBody404_229 NamedBody404_230

def NamedBody404_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody404_233 : StackLang.HolProg 64 :=
.seq NamedBody404_231 NamedBody404_232

def NamedBody404_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody404_235 : StackLang.HolProg 64 :=
.seq NamedBody404_233 NamedBody404_234

def NamedBody404_236 : StackLang.HolProg 64 :=
.seq NamedBody404_228 NamedBody404_235

def NamedBody404_237 : StackLang.HolProg 64 :=
.seq NamedBody404_227 NamedBody404_236

def NamedBody404_238 : StackLang.HolProg 64 :=
.seq NamedBody404_226 NamedBody404_237

def NamedBody404_239 : StackLang.HolProg 64 :=
.seq NamedBody404_225 NamedBody404_238

def NamedBody404_240 : StackLang.HolProg 64 :=
.seq NamedBody404_224 NamedBody404_239

def NamedBody404_241 : StackLang.HolProg 64 :=
.seq NamedBody404_223 NamedBody404_240

def NamedBody404_242 : StackLang.HolProg 64 :=
.seq NamedBody404_222 NamedBody404_241

def NamedBody404_243 : StackLang.HolProg 64 :=
.seq NamedBody404_221 NamedBody404_242

def NamedBody404_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody404_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody404_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody404_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody404_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_252 : StackLang.HolProg 64 :=
.seq NamedBody404_250 NamedBody404_251

def NamedBody404_253 : StackLang.HolProg 64 :=
.seq NamedBody404_249 NamedBody404_252

def NamedBody404_254 : StackLang.HolProg 64 :=
.seq NamedBody404_248 NamedBody404_253

def NamedBody404_255 : StackLang.HolProg 64 :=
.seq NamedBody404_247 NamedBody404_254

def NamedBody404_256 : StackLang.HolProg 64 :=
.seq NamedBody404_246 NamedBody404_255

def NamedBody404_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody404_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody404_259 : StackLang.HolProg 64 :=
.seq NamedBody404_257 NamedBody404_258

def NamedBody404_260 : StackLang.HolProg 64 :=
.call (some (NamedBody404_256, 1, 404, 8)) (Sum.inl 398) (some (NamedBody404_259, 404, 9))

def NamedBody404_261 : StackLang.HolProg 64 :=
.seq NamedBody404_245 NamedBody404_260

def NamedBody404_262 : StackLang.HolProg 64 :=
.seq NamedBody404_244 NamedBody404_261

def NamedBody404_263 : StackLang.HolProg 64 :=
.seq NamedBody404_243 NamedBody404_262

def NamedBody404_264 : StackLang.HolProg 64 :=
.seq NamedBody404_214 NamedBody404_263

def NamedBody404_265 : StackLang.HolProg 64 :=
.seq NamedBody404_211 NamedBody404_264

def NamedBody404_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody404_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody404_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody404_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody404_270 : StackLang.HolProg 64 :=
.seq NamedBody404_268 NamedBody404_269

def NamedBody404_271 : StackLang.HolProg 64 :=
.seq NamedBody404_267 NamedBody404_270

def NamedBody404_272 : StackLang.HolProg 64 :=
.seq NamedBody404_266 NamedBody404_271

def NamedBody404_273 : StackLang.HolProg 64 :=
.seq NamedBody404_265 NamedBody404_272

def NamedBody404_274 : StackLang.HolProg 64 :=
.seq NamedBody404_210 NamedBody404_273

def NamedBody404_275 : StackLang.HolProg 64 :=
.seq NamedBody404_209 NamedBody404_274

def NamedBody404_276 : StackLang.HolProg 64 :=
.seq NamedBody404_208 NamedBody404_275

def NamedBody404_277 : StackLang.HolProg 64 :=
.seq NamedBody404_155 NamedBody404_276

def NamedBody404_278 : StackLang.HolProg 64 :=
.seq NamedBody404_150 NamedBody404_277

def NamedBody404_279 : StackLang.HolProg 64 :=
.seq NamedBody404_149 NamedBody404_278

def NamedBody404_280 : StackLang.HolProg 64 :=
.seq NamedBody404_148 NamedBody404_279

def NamedBody404_281 : StackLang.HolProg 64 :=
.seq NamedBody404_139 NamedBody404_280

def NamedBody404_282 : StackLang.HolProg 64 :=
.seq NamedBody404_138 NamedBody404_281

def NamedBody404_283 : StackLang.HolProg 64 :=
.seq NamedBody404_137 NamedBody404_282

def NamedBody404_284 : StackLang.HolProg 64 :=
.seq NamedBody404_136 NamedBody404_283

def NamedBody404_285 : StackLang.HolProg 64 :=
.seq NamedBody404_77 NamedBody404_284

def NamedBody404_286 : StackLang.HolProg 64 :=
.seq NamedBody404_76 NamedBody404_285

def NamedBody404_287 : StackLang.HolProg 64 :=
.seq NamedBody404_75 NamedBody404_286

def NamedBody404_288 : StackLang.HolProg 64 :=
.seq NamedBody404_74 NamedBody404_287

def NamedBody404_289 : StackLang.HolProg 64 :=
.seq NamedBody404_73 NamedBody404_288

def NamedBody404_290 : StackLang.HolProg 64 :=
.seq NamedBody404_72 NamedBody404_289

def NamedBody404_291 : StackLang.HolProg 64 :=
.seq NamedBody404_71 NamedBody404_290

def NamedBody404_292 : StackLang.HolProg 64 :=
.seq NamedBody404_70 NamedBody404_291

def NamedBody404_293 : StackLang.HolProg 64 :=
.seq NamedBody404_17 NamedBody404_292

def NamedBody404_294 : StackLang.HolProg 64 :=
.seq NamedBody404_14 NamedBody404_293

def NamedBody404_295 : StackLang.HolProg 64 :=
.seq NamedBody404_13 NamedBody404_294

def NamedBody404_296 : StackLang.HolProg 64 :=
.seq NamedBody404_12 NamedBody404_295

def NamedBody404_297 : StackLang.HolProg 64 :=
.seq NamedBody404_11 NamedBody404_296

def NamedBody404_298 : StackLang.HolProg 64 :=
.seq NamedBody404_10 NamedBody404_297

def NamedBody404_299 : StackLang.HolProg 64 :=
.seq NamedBody404_9 NamedBody404_298

def NamedBody404_300 : StackLang.HolProg 64 :=
.seq NamedBody404_8 NamedBody404_299

def NamedBody404_301 : StackLang.HolProg 64 :=
.seq NamedBody404_7 NamedBody404_300

def NamedBody404_302 : StackLang.HolProg 64 :=
.seq NamedBody404_6 NamedBody404_301

def Named404 : Nat × StackLang.HolProg 64 := (404, NamedBody404_302)
theorem Named404_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed404 = Named404 := by
  kernel_rfl
#print axioms Named404_eq
end InitECandidate.Proofs.BackendStages
