import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed447
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody447_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody447_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody447_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody447_3 : StackLang.HolProg 64 :=
.seq NamedBody447_1 NamedBody447_2

def NamedBody447_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody447_3 NamedBody447_4

def NamedBody447_6 : StackLang.HolProg 64 :=
.seq NamedBody447_0 NamedBody447_5

def NamedBody447_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody447_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody447_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody447_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody447_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551440#64))

def NamedBody447_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody447_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody447_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody447_15 : StackLang.HolProg 64 :=
.seq NamedBody447_13 NamedBody447_14

def NamedBody447_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1346#64)

def NamedBody447_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody447_19 : StackLang.HolProg 64 :=
.seq NamedBody447_17 NamedBody447_18

def NamedBody447_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody447_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody447_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody447_23 : StackLang.HolProg 64 :=
.seq NamedBody447_21 NamedBody447_22

def NamedBody447_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody447_23 NamedBody447_24

def NamedBody447_26 : StackLang.HolProg 64 :=
.seq NamedBody447_20 NamedBody447_25

def NamedBody447_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody447_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody447_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 447 3

def NamedBody447_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody447_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody447_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody447_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody447_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody447_36 : StackLang.HolProg 64 :=
.seq NamedBody447_34 NamedBody447_35

def NamedBody447_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody447_38 : StackLang.HolProg 64 :=
.seq NamedBody447_36 NamedBody447_37

def NamedBody447_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody447_40 : StackLang.HolProg 64 :=
.seq NamedBody447_38 NamedBody447_39

def NamedBody447_41 : StackLang.HolProg 64 :=
.seq NamedBody447_33 NamedBody447_40

def NamedBody447_42 : StackLang.HolProg 64 :=
.seq NamedBody447_32 NamedBody447_41

def NamedBody447_43 : StackLang.HolProg 64 :=
.seq NamedBody447_31 NamedBody447_42

def NamedBody447_44 : StackLang.HolProg 64 :=
.seq NamedBody447_30 NamedBody447_43

def NamedBody447_45 : StackLang.HolProg 64 :=
.seq NamedBody447_29 NamedBody447_44

def NamedBody447_46 : StackLang.HolProg 64 :=
.seq NamedBody447_28 NamedBody447_45

def NamedBody447_47 : StackLang.HolProg 64 :=
.seq NamedBody447_27 NamedBody447_46

def NamedBody447_48 : StackLang.HolProg 64 :=
.seq NamedBody447_26 NamedBody447_47

def NamedBody447_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody447_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody447_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody447_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody447_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody447_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody447_58 : StackLang.HolProg 64 :=
.seq NamedBody447_56 NamedBody447_57

def NamedBody447_59 : StackLang.HolProg 64 :=
.seq NamedBody447_55 NamedBody447_58

def NamedBody447_60 : StackLang.HolProg 64 :=
.seq NamedBody447_54 NamedBody447_59

def NamedBody447_61 : StackLang.HolProg 64 :=
.seq NamedBody447_53 NamedBody447_60

def NamedBody447_62 : StackLang.HolProg 64 :=
.seq NamedBody447_52 NamedBody447_61

def NamedBody447_63 : StackLang.HolProg 64 :=
.seq NamedBody447_51 NamedBody447_62

def NamedBody447_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody447_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody447_66 : StackLang.HolProg 64 :=
.seq NamedBody447_64 NamedBody447_65

def NamedBody447_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody447_68 : StackLang.HolProg 64 :=
.seq NamedBody447_66 NamedBody447_67

def NamedBody447_69 : StackLang.HolProg 64 :=
.call (some (NamedBody447_63, 1, 447, 2)) (Sum.inl 186) (some (NamedBody447_68, 447, 3))

def NamedBody447_70 : StackLang.HolProg 64 :=
.seq NamedBody447_50 NamedBody447_69

def NamedBody447_71 : StackLang.HolProg 64 :=
.seq NamedBody447_49 NamedBody447_70

def NamedBody447_72 : StackLang.HolProg 64 :=
.seq NamedBody447_48 NamedBody447_71

def NamedBody447_73 : StackLang.HolProg 64 :=
.seq NamedBody447_19 NamedBody447_72

def NamedBody447_74 : StackLang.HolProg 64 :=
.seq NamedBody447_16 NamedBody447_73

def NamedBody447_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody447_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody447_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody447_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody447_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody447_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody447_82 : StackLang.HolProg 64 :=
.seq NamedBody447_80 NamedBody447_81

def NamedBody447_83 : StackLang.HolProg 64 :=
.seq NamedBody447_79 NamedBody447_82

def NamedBody447_84 : StackLang.HolProg 64 :=
.seq NamedBody447_78 NamedBody447_83

def NamedBody447_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody447_84 NamedBody447_85

def NamedBody447_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody447_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody447_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody447_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody447_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody447_92 : StackLang.HolProg 64 :=
.seq NamedBody447_90 NamedBody447_91

def NamedBody447_93 : StackLang.HolProg 64 :=
.seq NamedBody447_89 NamedBody447_92

def NamedBody447_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1347#64)

def NamedBody447_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody447_97 : StackLang.HolProg 64 :=
.seq NamedBody447_95 NamedBody447_96

def NamedBody447_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody447_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody447_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody447_101 : StackLang.HolProg 64 :=
.seq NamedBody447_99 NamedBody447_100

def NamedBody447_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody447_101 NamedBody447_102

def NamedBody447_104 : StackLang.HolProg 64 :=
.seq NamedBody447_98 NamedBody447_103

def NamedBody447_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody447_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody447_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 447 5

def NamedBody447_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody447_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody447_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody447_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody447_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody447_114 : StackLang.HolProg 64 :=
.seq NamedBody447_112 NamedBody447_113

def NamedBody447_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody447_116 : StackLang.HolProg 64 :=
.seq NamedBody447_114 NamedBody447_115

def NamedBody447_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody447_118 : StackLang.HolProg 64 :=
.seq NamedBody447_116 NamedBody447_117

def NamedBody447_119 : StackLang.HolProg 64 :=
.seq NamedBody447_111 NamedBody447_118

def NamedBody447_120 : StackLang.HolProg 64 :=
.seq NamedBody447_110 NamedBody447_119

def NamedBody447_121 : StackLang.HolProg 64 :=
.seq NamedBody447_109 NamedBody447_120

def NamedBody447_122 : StackLang.HolProg 64 :=
.seq NamedBody447_108 NamedBody447_121

def NamedBody447_123 : StackLang.HolProg 64 :=
.seq NamedBody447_107 NamedBody447_122

def NamedBody447_124 : StackLang.HolProg 64 :=
.seq NamedBody447_106 NamedBody447_123

def NamedBody447_125 : StackLang.HolProg 64 :=
.seq NamedBody447_105 NamedBody447_124

def NamedBody447_126 : StackLang.HolProg 64 :=
.seq NamedBody447_104 NamedBody447_125

def NamedBody447_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody447_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody447_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody447_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody447_134 : StackLang.HolProg 64 :=
.seq NamedBody447_132 NamedBody447_133

def NamedBody447_135 : StackLang.HolProg 64 :=
.seq NamedBody447_131 NamedBody447_134

def NamedBody447_136 : StackLang.HolProg 64 :=
.seq NamedBody447_130 NamedBody447_135

def NamedBody447_137 : StackLang.HolProg 64 :=
.seq NamedBody447_129 NamedBody447_136

def NamedBody447_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody447_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody447_140 : StackLang.HolProg 64 :=
.seq NamedBody447_138 NamedBody447_139

def NamedBody447_141 : StackLang.HolProg 64 :=
.call (some (NamedBody447_137, 1, 447, 4)) (Sum.inl 396) (some (NamedBody447_140, 447, 5))

def NamedBody447_142 : StackLang.HolProg 64 :=
.seq NamedBody447_128 NamedBody447_141

def NamedBody447_143 : StackLang.HolProg 64 :=
.seq NamedBody447_127 NamedBody447_142

def NamedBody447_144 : StackLang.HolProg 64 :=
.seq NamedBody447_126 NamedBody447_143

def NamedBody447_145 : StackLang.HolProg 64 :=
.seq NamedBody447_97 NamedBody447_144

def NamedBody447_146 : StackLang.HolProg 64 :=
.seq NamedBody447_94 NamedBody447_145

def NamedBody447_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody447_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody447_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1348#64)

def NamedBody447_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody447_152 : StackLang.HolProg 64 :=
.seq NamedBody447_150 NamedBody447_151

def NamedBody447_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody447_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody447_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody447_156 : StackLang.HolProg 64 :=
.seq NamedBody447_154 NamedBody447_155

def NamedBody447_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_158 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody447_156 NamedBody447_157

def NamedBody447_159 : StackLang.HolProg 64 :=
.seq NamedBody447_153 NamedBody447_158

def NamedBody447_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody447_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody447_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 447 7

def NamedBody447_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody447_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody447_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody447_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody447_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody447_169 : StackLang.HolProg 64 :=
.seq NamedBody447_167 NamedBody447_168

def NamedBody447_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody447_171 : StackLang.HolProg 64 :=
.seq NamedBody447_169 NamedBody447_170

def NamedBody447_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody447_173 : StackLang.HolProg 64 :=
.seq NamedBody447_171 NamedBody447_172

def NamedBody447_174 : StackLang.HolProg 64 :=
.seq NamedBody447_166 NamedBody447_173

def NamedBody447_175 : StackLang.HolProg 64 :=
.seq NamedBody447_165 NamedBody447_174

def NamedBody447_176 : StackLang.HolProg 64 :=
.seq NamedBody447_164 NamedBody447_175

def NamedBody447_177 : StackLang.HolProg 64 :=
.seq NamedBody447_163 NamedBody447_176

def NamedBody447_178 : StackLang.HolProg 64 :=
.seq NamedBody447_162 NamedBody447_177

def NamedBody447_179 : StackLang.HolProg 64 :=
.seq NamedBody447_161 NamedBody447_178

def NamedBody447_180 : StackLang.HolProg 64 :=
.seq NamedBody447_160 NamedBody447_179

def NamedBody447_181 : StackLang.HolProg 64 :=
.seq NamedBody447_159 NamedBody447_180

def NamedBody447_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody447_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody447_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody447_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody447_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody447_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody447_190 : StackLang.HolProg 64 :=
.seq NamedBody447_188 NamedBody447_189

def NamedBody447_191 : StackLang.HolProg 64 :=
.seq NamedBody447_187 NamedBody447_190

def NamedBody447_192 : StackLang.HolProg 64 :=
.seq NamedBody447_186 NamedBody447_191

def NamedBody447_193 : StackLang.HolProg 64 :=
.seq NamedBody447_185 NamedBody447_192

def NamedBody447_194 : StackLang.HolProg 64 :=
.seq NamedBody447_184 NamedBody447_193

def NamedBody447_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody447_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody447_197 : StackLang.HolProg 64 :=
.seq NamedBody447_195 NamedBody447_196

def NamedBody447_198 : StackLang.HolProg 64 :=
.call (some (NamedBody447_194, 1, 447, 6)) (Sum.inl 398) (some (NamedBody447_197, 447, 7))

def NamedBody447_199 : StackLang.HolProg 64 :=
.seq NamedBody447_183 NamedBody447_198

def NamedBody447_200 : StackLang.HolProg 64 :=
.seq NamedBody447_182 NamedBody447_199

def NamedBody447_201 : StackLang.HolProg 64 :=
.seq NamedBody447_181 NamedBody447_200

def NamedBody447_202 : StackLang.HolProg 64 :=
.seq NamedBody447_152 NamedBody447_201

def NamedBody447_203 : StackLang.HolProg 64 :=
.seq NamedBody447_149 NamedBody447_202

def NamedBody447_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody447_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody447_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody447_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody447_208 : StackLang.HolProg 64 :=
.seq NamedBody447_206 NamedBody447_207

def NamedBody447_209 : StackLang.HolProg 64 :=
.seq NamedBody447_205 NamedBody447_208

def NamedBody447_210 : StackLang.HolProg 64 :=
.seq NamedBody447_204 NamedBody447_209

def NamedBody447_211 : StackLang.HolProg 64 :=
.seq NamedBody447_203 NamedBody447_210

def NamedBody447_212 : StackLang.HolProg 64 :=
.seq NamedBody447_148 NamedBody447_211

def NamedBody447_213 : StackLang.HolProg 64 :=
.seq NamedBody447_147 NamedBody447_212

def NamedBody447_214 : StackLang.HolProg 64 :=
.seq NamedBody447_146 NamedBody447_213

def NamedBody447_215 : StackLang.HolProg 64 :=
.seq NamedBody447_93 NamedBody447_214

def NamedBody447_216 : StackLang.HolProg 64 :=
.seq NamedBody447_88 NamedBody447_215

def NamedBody447_217 : StackLang.HolProg 64 :=
.seq NamedBody447_87 NamedBody447_216

def NamedBody447_218 : StackLang.HolProg 64 :=
.seq NamedBody447_86 NamedBody447_217

def NamedBody447_219 : StackLang.HolProg 64 :=
.seq NamedBody447_77 NamedBody447_218

def NamedBody447_220 : StackLang.HolProg 64 :=
.seq NamedBody447_76 NamedBody447_219

def NamedBody447_221 : StackLang.HolProg 64 :=
.seq NamedBody447_75 NamedBody447_220

def NamedBody447_222 : StackLang.HolProg 64 :=
.seq NamedBody447_74 NamedBody447_221

def NamedBody447_223 : StackLang.HolProg 64 :=
.seq NamedBody447_15 NamedBody447_222

def NamedBody447_224 : StackLang.HolProg 64 :=
.seq NamedBody447_12 NamedBody447_223

def NamedBody447_225 : StackLang.HolProg 64 :=
.seq NamedBody447_11 NamedBody447_224

def NamedBody447_226 : StackLang.HolProg 64 :=
.seq NamedBody447_10 NamedBody447_225

def NamedBody447_227 : StackLang.HolProg 64 :=
.seq NamedBody447_9 NamedBody447_226

def NamedBody447_228 : StackLang.HolProg 64 :=
.seq NamedBody447_8 NamedBody447_227

def NamedBody447_229 : StackLang.HolProg 64 :=
.seq NamedBody447_7 NamedBody447_228

def NamedBody447_230 : StackLang.HolProg 64 :=
.seq NamedBody447_6 NamedBody447_229

def Named447 : Nat × StackLang.HolProg 64 := (447, NamedBody447_230)
theorem Named447_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed447 = Named447 := by
  kernel_rfl
#print axioms Named447_eq
end InitECandidate.Proofs.BackendStages
