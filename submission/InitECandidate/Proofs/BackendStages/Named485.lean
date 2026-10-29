import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed485
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody485_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody485_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody485_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody485_3 : StackLang.HolProg 64 :=
.seq NamedBody485_1 NamedBody485_2

def NamedBody485_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody485_3 NamedBody485_4

def NamedBody485_6 : StackLang.HolProg 64 :=
.seq NamedBody485_0 NamedBody485_5

def NamedBody485_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody485_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody485_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody485_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody485_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody485_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody485_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody485_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody485_15 : StackLang.HolProg 64 :=
.seq NamedBody485_13 NamedBody485_14

def NamedBody485_16 : StackLang.HolProg 64 :=
.seq NamedBody485_12 NamedBody485_15

def NamedBody485_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1523#64)

def NamedBody485_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody485_20 : StackLang.HolProg 64 :=
.seq NamedBody485_18 NamedBody485_19

def NamedBody485_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody485_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody485_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody485_24 : StackLang.HolProg 64 :=
.seq NamedBody485_22 NamedBody485_23

def NamedBody485_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody485_24 NamedBody485_25

def NamedBody485_27 : StackLang.HolProg 64 :=
.seq NamedBody485_21 NamedBody485_26

def NamedBody485_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody485_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody485_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 485 3

def NamedBody485_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody485_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody485_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody485_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody485_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody485_37 : StackLang.HolProg 64 :=
.seq NamedBody485_35 NamedBody485_36

def NamedBody485_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody485_39 : StackLang.HolProg 64 :=
.seq NamedBody485_37 NamedBody485_38

def NamedBody485_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody485_41 : StackLang.HolProg 64 :=
.seq NamedBody485_39 NamedBody485_40

def NamedBody485_42 : StackLang.HolProg 64 :=
.seq NamedBody485_34 NamedBody485_41

def NamedBody485_43 : StackLang.HolProg 64 :=
.seq NamedBody485_33 NamedBody485_42

def NamedBody485_44 : StackLang.HolProg 64 :=
.seq NamedBody485_32 NamedBody485_43

def NamedBody485_45 : StackLang.HolProg 64 :=
.seq NamedBody485_31 NamedBody485_44

def NamedBody485_46 : StackLang.HolProg 64 :=
.seq NamedBody485_30 NamedBody485_45

def NamedBody485_47 : StackLang.HolProg 64 :=
.seq NamedBody485_29 NamedBody485_46

def NamedBody485_48 : StackLang.HolProg 64 :=
.seq NamedBody485_28 NamedBody485_47

def NamedBody485_49 : StackLang.HolProg 64 :=
.seq NamedBody485_27 NamedBody485_48

def NamedBody485_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody485_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody485_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody485_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody485_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody485_58 : StackLang.HolProg 64 :=
.seq NamedBody485_56 NamedBody485_57

def NamedBody485_59 : StackLang.HolProg 64 :=
.seq NamedBody485_55 NamedBody485_58

def NamedBody485_60 : StackLang.HolProg 64 :=
.seq NamedBody485_54 NamedBody485_59

def NamedBody485_61 : StackLang.HolProg 64 :=
.seq NamedBody485_53 NamedBody485_60

def NamedBody485_62 : StackLang.HolProg 64 :=
.seq NamedBody485_52 NamedBody485_61

def NamedBody485_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody485_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody485_65 : StackLang.HolProg 64 :=
.seq NamedBody485_63 NamedBody485_64

def NamedBody485_66 : StackLang.HolProg 64 :=
.call (some (NamedBody485_62, 1, 485, 2)) (Sum.inl 74) (some (NamedBody485_65, 485, 3))

def NamedBody485_67 : StackLang.HolProg 64 :=
.seq NamedBody485_51 NamedBody485_66

def NamedBody485_68 : StackLang.HolProg 64 :=
.seq NamedBody485_50 NamedBody485_67

def NamedBody485_69 : StackLang.HolProg 64 :=
.seq NamedBody485_49 NamedBody485_68

def NamedBody485_70 : StackLang.HolProg 64 :=
.seq NamedBody485_20 NamedBody485_69

def NamedBody485_71 : StackLang.HolProg 64 :=
.seq NamedBody485_17 NamedBody485_70

def NamedBody485_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody485_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody485_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody485_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody485_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody485_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody485_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody485_80 : StackLang.HolProg 64 :=
.seq NamedBody485_78 NamedBody485_79

def NamedBody485_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1524#64)

def NamedBody485_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody485_84 : StackLang.HolProg 64 :=
.seq NamedBody485_82 NamedBody485_83

def NamedBody485_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody485_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody485_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody485_88 : StackLang.HolProg 64 :=
.seq NamedBody485_86 NamedBody485_87

def NamedBody485_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody485_88 NamedBody485_89

def NamedBody485_91 : StackLang.HolProg 64 :=
.seq NamedBody485_85 NamedBody485_90

def NamedBody485_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody485_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody485_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 485 5

def NamedBody485_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody485_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody485_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody485_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody485_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody485_101 : StackLang.HolProg 64 :=
.seq NamedBody485_99 NamedBody485_100

def NamedBody485_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody485_103 : StackLang.HolProg 64 :=
.seq NamedBody485_101 NamedBody485_102

def NamedBody485_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody485_105 : StackLang.HolProg 64 :=
.seq NamedBody485_103 NamedBody485_104

def NamedBody485_106 : StackLang.HolProg 64 :=
.seq NamedBody485_98 NamedBody485_105

def NamedBody485_107 : StackLang.HolProg 64 :=
.seq NamedBody485_97 NamedBody485_106

def NamedBody485_108 : StackLang.HolProg 64 :=
.seq NamedBody485_96 NamedBody485_107

def NamedBody485_109 : StackLang.HolProg 64 :=
.seq NamedBody485_95 NamedBody485_108

def NamedBody485_110 : StackLang.HolProg 64 :=
.seq NamedBody485_94 NamedBody485_109

def NamedBody485_111 : StackLang.HolProg 64 :=
.seq NamedBody485_93 NamedBody485_110

def NamedBody485_112 : StackLang.HolProg 64 :=
.seq NamedBody485_92 NamedBody485_111

def NamedBody485_113 : StackLang.HolProg 64 :=
.seq NamedBody485_91 NamedBody485_112

def NamedBody485_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody485_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody485_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody485_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody485_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody485_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody485_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody485_124 : StackLang.HolProg 64 :=
.seq NamedBody485_122 NamedBody485_123

def NamedBody485_125 : StackLang.HolProg 64 :=
.seq NamedBody485_121 NamedBody485_124

def NamedBody485_126 : StackLang.HolProg 64 :=
.seq NamedBody485_120 NamedBody485_125

def NamedBody485_127 : StackLang.HolProg 64 :=
.seq NamedBody485_119 NamedBody485_126

def NamedBody485_128 : StackLang.HolProg 64 :=
.seq NamedBody485_118 NamedBody485_127

def NamedBody485_129 : StackLang.HolProg 64 :=
.seq NamedBody485_117 NamedBody485_128

def NamedBody485_130 : StackLang.HolProg 64 :=
.seq NamedBody485_116 NamedBody485_129

def NamedBody485_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody485_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody485_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody485_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody485_135 : StackLang.HolProg 64 :=
.seq NamedBody485_133 NamedBody485_134

def NamedBody485_136 : StackLang.HolProg 64 :=
.seq NamedBody485_132 NamedBody485_135

def NamedBody485_137 : StackLang.HolProg 64 :=
.seq NamedBody485_131 NamedBody485_136

def NamedBody485_138 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody485_139 : StackLang.HolProg 64 :=
.seq NamedBody485_137 NamedBody485_138

def NamedBody485_140 : StackLang.HolProg 64 :=
.call (some (NamedBody485_130, 1, 485, 4)) (Sum.inl 78) (some (NamedBody485_139, 485, 5))

def NamedBody485_141 : StackLang.HolProg 64 :=
.seq NamedBody485_115 NamedBody485_140

def NamedBody485_142 : StackLang.HolProg 64 :=
.seq NamedBody485_114 NamedBody485_141

def NamedBody485_143 : StackLang.HolProg 64 :=
.seq NamedBody485_113 NamedBody485_142

def NamedBody485_144 : StackLang.HolProg 64 :=
.seq NamedBody485_84 NamedBody485_143

def NamedBody485_145 : StackLang.HolProg 64 :=
.seq NamedBody485_81 NamedBody485_144

def NamedBody485_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody485_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody485_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody485_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def NamedBody485_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 91#64)

def NamedBody485_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody485_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody485_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody485_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody485_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody485_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody485_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody485_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody485_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody485_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_176 : StackLang.HolProg 64 :=
.seq NamedBody485_174 NamedBody485_175

def NamedBody485_177 : StackLang.HolProg 64 :=
.seq NamedBody485_173 NamedBody485_176

def NamedBody485_178 : StackLang.HolProg 64 :=
.seq NamedBody485_172 NamedBody485_177

def NamedBody485_179 : StackLang.HolProg 64 :=
.seq NamedBody485_171 NamedBody485_178

def NamedBody485_180 : StackLang.HolProg 64 :=
.seq NamedBody485_170 NamedBody485_179

def NamedBody485_181 : StackLang.HolProg 64 :=
.seq NamedBody485_169 NamedBody485_180

def NamedBody485_182 : StackLang.HolProg 64 :=
.seq NamedBody485_168 NamedBody485_181

def NamedBody485_183 : StackLang.HolProg 64 :=
.seq NamedBody485_167 NamedBody485_182

def NamedBody485_184 : StackLang.HolProg 64 :=
.seq NamedBody485_166 NamedBody485_183

def NamedBody485_185 : StackLang.HolProg 64 :=
.seq NamedBody485_165 NamedBody485_184

def NamedBody485_186 : StackLang.HolProg 64 :=
.seq NamedBody485_164 NamedBody485_185

def NamedBody485_187 : StackLang.HolProg 64 :=
.seq NamedBody485_163 NamedBody485_186

def NamedBody485_188 : StackLang.HolProg 64 :=
.seq NamedBody485_162 NamedBody485_187

def NamedBody485_189 : StackLang.HolProg 64 :=
.seq NamedBody485_161 NamedBody485_188

def NamedBody485_190 : StackLang.HolProg 64 :=
.seq NamedBody485_160 NamedBody485_189

def NamedBody485_191 : StackLang.HolProg 64 :=
.seq NamedBody485_159 NamedBody485_190

def NamedBody485_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 96#64)

def NamedBody485_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def NamedBody485_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_198 : StackLang.HolProg 64 :=
.seq NamedBody485_196 NamedBody485_197

def NamedBody485_199 : StackLang.HolProg 64 :=
.seq NamedBody485_195 NamedBody485_198

def NamedBody485_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def NamedBody485_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_203 : StackLang.HolProg 64 :=
.seq NamedBody485_201 NamedBody485_202

def NamedBody485_204 : StackLang.HolProg 64 :=
.seq NamedBody485_200 NamedBody485_203

def NamedBody485_205 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody485_199 NamedBody485_204

def NamedBody485_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 127#64)

def NamedBody485_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody485_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_212 : StackLang.HolProg 64 :=
.seq NamedBody485_210 NamedBody485_211

def NamedBody485_213 : StackLang.HolProg 64 :=
.seq NamedBody485_209 NamedBody485_212

def NamedBody485_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody485_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_217 : StackLang.HolProg 64 :=
.seq NamedBody485_215 NamedBody485_216

def NamedBody485_218 : StackLang.HolProg 64 :=
.seq NamedBody485_214 NamedBody485_217

def NamedBody485_219 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody485_213 NamedBody485_218

def NamedBody485_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody485_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551522#64)))

def NamedBody485_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_226 : StackLang.HolProg 64 :=
.seq NamedBody485_224 NamedBody485_225

def NamedBody485_227 : StackLang.HolProg 64 :=
.seq NamedBody485_223 NamedBody485_226

def NamedBody485_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 230#64)

def NamedBody485_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def NamedBody485_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_232 : StackLang.HolProg 64 :=
.seq NamedBody485_230 NamedBody485_231

def NamedBody485_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def NamedBody485_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_235 : StackLang.HolProg 64 :=
.seq NamedBody485_233 NamedBody485_234

def NamedBody485_236 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody485_232 NamedBody485_235

def NamedBody485_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 231#64)

def NamedBody485_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody485_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_242 : StackLang.HolProg 64 :=
.seq NamedBody485_240 NamedBody485_241

def NamedBody485_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody485_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_245 : StackLang.HolProg 64 :=
.seq NamedBody485_243 NamedBody485_244

def NamedBody485_246 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody485_242 NamedBody485_245

def NamedBody485_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 0#64)

def NamedBody485_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody485_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2#64)

def NamedBody485_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody485_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody485_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody485_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody485_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 91#64)

def NamedBody485_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def NamedBody485_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_265 : StackLang.HolProg 64 :=
.seq NamedBody485_263 NamedBody485_264

def NamedBody485_266 : StackLang.HolProg 64 :=
.seq NamedBody485_262 NamedBody485_265

def NamedBody485_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def NamedBody485_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_270 : StackLang.HolProg 64 :=
.seq NamedBody485_268 NamedBody485_269

def NamedBody485_271 : StackLang.HolProg 64 :=
.seq NamedBody485_267 NamedBody485_270

def NamedBody485_272 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) NamedBody485_266 NamedBody485_271

def NamedBody485_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 127#64)

def NamedBody485_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody485_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_279 : StackLang.HolProg 64 :=
.seq NamedBody485_277 NamedBody485_278

def NamedBody485_280 : StackLang.HolProg 64 :=
.seq NamedBody485_276 NamedBody485_279

def NamedBody485_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody485_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_284 : StackLang.HolProg 64 :=
.seq NamedBody485_282 NamedBody485_283

def NamedBody485_285 : StackLang.HolProg 64 :=
.seq NamedBody485_281 NamedBody485_284

def NamedBody485_286 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 27 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody485_280 NamedBody485_285

def NamedBody485_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody485_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def NamedBody485_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_292 : StackLang.HolProg 64 :=
.seq NamedBody485_290 NamedBody485_291

def NamedBody485_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_294 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody485_292 NamedBody485_293

def NamedBody485_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_297 : StackLang.HolProg 64 :=
.seq NamedBody485_295 NamedBody485_296

def NamedBody485_298 : StackLang.HolProg 64 :=
.seq NamedBody485_294 NamedBody485_297

def NamedBody485_299 : StackLang.HolProg 64 :=
.seq NamedBody485_289 NamedBody485_298

def NamedBody485_300 : StackLang.HolProg 64 :=
.seq NamedBody485_288 NamedBody485_299

def NamedBody485_301 : StackLang.HolProg 64 :=
.seq NamedBody485_287 NamedBody485_300

def NamedBody485_302 : StackLang.HolProg 64 :=
.seq NamedBody485_286 NamedBody485_301

def NamedBody485_303 : StackLang.HolProg 64 :=
.seq NamedBody485_275 NamedBody485_302

def NamedBody485_304 : StackLang.HolProg 64 :=
.seq NamedBody485_274 NamedBody485_303

def NamedBody485_305 : StackLang.HolProg 64 :=
.seq NamedBody485_273 NamedBody485_304

def NamedBody485_306 : StackLang.HolProg 64 :=
.seq NamedBody485_272 NamedBody485_305

def NamedBody485_307 : StackLang.HolProg 64 :=
.seq NamedBody485_261 NamedBody485_306

def NamedBody485_308 : StackLang.HolProg 64 :=
.seq NamedBody485_260 NamedBody485_307

def NamedBody485_309 : StackLang.HolProg 64 :=
.seq NamedBody485_259 NamedBody485_308

def NamedBody485_310 : StackLang.HolProg 64 :=
.seq NamedBody485_258 NamedBody485_309

def NamedBody485_311 : StackLang.HolProg 64 :=
.seq NamedBody485_257 NamedBody485_310

def NamedBody485_312 : StackLang.HolProg 64 :=
.seq NamedBody485_256 NamedBody485_311

def NamedBody485_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_315 : StackLang.HolProg 64 :=
.seq NamedBody485_313 NamedBody485_314

def NamedBody485_316 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody485_312 NamedBody485_315

def NamedBody485_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_319 : StackLang.HolProg 64 :=
.seq NamedBody485_317 NamedBody485_318

def NamedBody485_320 : StackLang.HolProg 64 :=
.seq NamedBody485_316 NamedBody485_319

def NamedBody485_321 : StackLang.HolProg 64 :=
.seq NamedBody485_255 NamedBody485_320

def NamedBody485_322 : StackLang.HolProg 64 :=
.seq NamedBody485_254 NamedBody485_321

def NamedBody485_323 : StackLang.HolProg 64 :=
.seq NamedBody485_253 NamedBody485_322

def NamedBody485_324 : StackLang.HolProg 64 :=
.seq NamedBody485_252 NamedBody485_323

def NamedBody485_325 : StackLang.HolProg 64 :=
.seq NamedBody485_251 NamedBody485_324

def NamedBody485_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_328 : StackLang.HolProg 64 :=
.seq NamedBody485_326 NamedBody485_327

def NamedBody485_329 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 27 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody485_325 NamedBody485_328

def NamedBody485_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 232#64)

def NamedBody485_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2#64)

def NamedBody485_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody485_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody485_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody485_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 82#64)

def NamedBody485_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody485_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_347 : StackLang.HolProg 64 :=
.seq NamedBody485_345 NamedBody485_346

def NamedBody485_348 : StackLang.HolProg 64 :=
.seq NamedBody485_344 NamedBody485_347

def NamedBody485_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody485_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_352 : StackLang.HolProg 64 :=
.seq NamedBody485_350 NamedBody485_351

def NamedBody485_353 : StackLang.HolProg 64 :=
.seq NamedBody485_349 NamedBody485_352

def NamedBody485_354 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody485_348 NamedBody485_353

def NamedBody485_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 127#64)

def NamedBody485_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody485_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_361 : StackLang.HolProg 64 :=
.seq NamedBody485_359 NamedBody485_360

def NamedBody485_362 : StackLang.HolProg 64 :=
.seq NamedBody485_358 NamedBody485_361

def NamedBody485_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody485_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_366 : StackLang.HolProg 64 :=
.seq NamedBody485_364 NamedBody485_365

def NamedBody485_367 : StackLang.HolProg 64 :=
.seq NamedBody485_363 NamedBody485_366

def NamedBody485_368 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody485_362 NamedBody485_367

def NamedBody485_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody485_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def NamedBody485_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_374 : StackLang.HolProg 64 :=
.seq NamedBody485_372 NamedBody485_373

def NamedBody485_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_376 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody485_374 NamedBody485_375

def NamedBody485_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_379 : StackLang.HolProg 64 :=
.seq NamedBody485_377 NamedBody485_378

def NamedBody485_380 : StackLang.HolProg 64 :=
.seq NamedBody485_376 NamedBody485_379

def NamedBody485_381 : StackLang.HolProg 64 :=
.seq NamedBody485_371 NamedBody485_380

def NamedBody485_382 : StackLang.HolProg 64 :=
.seq NamedBody485_370 NamedBody485_381

def NamedBody485_383 : StackLang.HolProg 64 :=
.seq NamedBody485_369 NamedBody485_382

def NamedBody485_384 : StackLang.HolProg 64 :=
.seq NamedBody485_368 NamedBody485_383

def NamedBody485_385 : StackLang.HolProg 64 :=
.seq NamedBody485_357 NamedBody485_384

def NamedBody485_386 : StackLang.HolProg 64 :=
.seq NamedBody485_356 NamedBody485_385

def NamedBody485_387 : StackLang.HolProg 64 :=
.seq NamedBody485_355 NamedBody485_386

def NamedBody485_388 : StackLang.HolProg 64 :=
.seq NamedBody485_354 NamedBody485_387

def NamedBody485_389 : StackLang.HolProg 64 :=
.seq NamedBody485_343 NamedBody485_388

def NamedBody485_390 : StackLang.HolProg 64 :=
.seq NamedBody485_342 NamedBody485_389

def NamedBody485_391 : StackLang.HolProg 64 :=
.seq NamedBody485_341 NamedBody485_390

def NamedBody485_392 : StackLang.HolProg 64 :=
.seq NamedBody485_340 NamedBody485_391

def NamedBody485_393 : StackLang.HolProg 64 :=
.seq NamedBody485_339 NamedBody485_392

def NamedBody485_394 : StackLang.HolProg 64 :=
.seq NamedBody485_338 NamedBody485_393

def NamedBody485_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_397 : StackLang.HolProg 64 :=
.seq NamedBody485_395 NamedBody485_396

def NamedBody485_398 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody485_394 NamedBody485_397

def NamedBody485_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_401 : StackLang.HolProg 64 :=
.seq NamedBody485_399 NamedBody485_400

def NamedBody485_402 : StackLang.HolProg 64 :=
.seq NamedBody485_398 NamedBody485_401

def NamedBody485_403 : StackLang.HolProg 64 :=
.seq NamedBody485_337 NamedBody485_402

def NamedBody485_404 : StackLang.HolProg 64 :=
.seq NamedBody485_336 NamedBody485_403

def NamedBody485_405 : StackLang.HolProg 64 :=
.seq NamedBody485_335 NamedBody485_404

def NamedBody485_406 : StackLang.HolProg 64 :=
.seq NamedBody485_334 NamedBody485_405

def NamedBody485_407 : StackLang.HolProg 64 :=
.seq NamedBody485_333 NamedBody485_406

def NamedBody485_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_410 : StackLang.HolProg 64 :=
.seq NamedBody485_408 NamedBody485_409

def NamedBody485_411 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody485_407 NamedBody485_410

def NamedBody485_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_414 : StackLang.HolProg 64 :=
.seq NamedBody485_412 NamedBody485_413

def NamedBody485_415 : StackLang.HolProg 64 :=
.seq NamedBody485_411 NamedBody485_414

def NamedBody485_416 : StackLang.HolProg 64 :=
.seq NamedBody485_332 NamedBody485_415

def NamedBody485_417 : StackLang.HolProg 64 :=
.seq NamedBody485_331 NamedBody485_416

def NamedBody485_418 : StackLang.HolProg 64 :=
.seq NamedBody485_330 NamedBody485_417

def NamedBody485_419 : StackLang.HolProg 64 :=
.seq NamedBody485_329 NamedBody485_418

def NamedBody485_420 : StackLang.HolProg 64 :=
.seq NamedBody485_250 NamedBody485_419

def NamedBody485_421 : StackLang.HolProg 64 :=
.seq NamedBody485_249 NamedBody485_420

def NamedBody485_422 : StackLang.HolProg 64 :=
.seq NamedBody485_248 NamedBody485_421

def NamedBody485_423 : StackLang.HolProg 64 :=
.seq NamedBody485_247 NamedBody485_422

def NamedBody485_424 : StackLang.HolProg 64 :=
.seq NamedBody485_246 NamedBody485_423

def NamedBody485_425 : StackLang.HolProg 64 :=
.seq NamedBody485_239 NamedBody485_424

def NamedBody485_426 : StackLang.HolProg 64 :=
.seq NamedBody485_238 NamedBody485_425

def NamedBody485_427 : StackLang.HolProg 64 :=
.seq NamedBody485_237 NamedBody485_426

def NamedBody485_428 : StackLang.HolProg 64 :=
.seq NamedBody485_236 NamedBody485_427

def NamedBody485_429 : StackLang.HolProg 64 :=
.seq NamedBody485_229 NamedBody485_428

def NamedBody485_430 : StackLang.HolProg 64 :=
.seq NamedBody485_228 NamedBody485_429

def NamedBody485_431 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody485_227 NamedBody485_430

def NamedBody485_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_434 : StackLang.HolProg 64 :=
.seq NamedBody485_432 NamedBody485_433

def NamedBody485_435 : StackLang.HolProg 64 :=
.seq NamedBody485_431 NamedBody485_434

def NamedBody485_436 : StackLang.HolProg 64 :=
.seq NamedBody485_222 NamedBody485_435

def NamedBody485_437 : StackLang.HolProg 64 :=
.seq NamedBody485_221 NamedBody485_436

def NamedBody485_438 : StackLang.HolProg 64 :=
.seq NamedBody485_220 NamedBody485_437

def NamedBody485_439 : StackLang.HolProg 64 :=
.seq NamedBody485_219 NamedBody485_438

def NamedBody485_440 : StackLang.HolProg 64 :=
.seq NamedBody485_208 NamedBody485_439

def NamedBody485_441 : StackLang.HolProg 64 :=
.seq NamedBody485_207 NamedBody485_440

def NamedBody485_442 : StackLang.HolProg 64 :=
.seq NamedBody485_206 NamedBody485_441

def NamedBody485_443 : StackLang.HolProg 64 :=
.seq NamedBody485_205 NamedBody485_442

def NamedBody485_444 : StackLang.HolProg 64 :=
.seq NamedBody485_194 NamedBody485_443

def NamedBody485_445 : StackLang.HolProg 64 :=
.seq NamedBody485_193 NamedBody485_444

def NamedBody485_446 : StackLang.HolProg 64 :=
.seq NamedBody485_192 NamedBody485_445

def NamedBody485_447 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody485_191 NamedBody485_446

def NamedBody485_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody485_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody485_453 : StackLang.HolProg 64 :=
.seq NamedBody485_451 NamedBody485_452

def NamedBody485_454 : StackLang.HolProg 64 :=
.seq NamedBody485_450 NamedBody485_453

def NamedBody485_455 : StackLang.HolProg 64 :=
.seq NamedBody485_449 NamedBody485_454

def NamedBody485_456 : StackLang.HolProg 64 :=
.seq NamedBody485_448 NamedBody485_455

def NamedBody485_457 : StackLang.HolProg 64 :=
.seq NamedBody485_447 NamedBody485_456

def NamedBody485_458 : StackLang.HolProg 64 :=
.seq NamedBody485_158 NamedBody485_457

def NamedBody485_459 : StackLang.HolProg 64 :=
.seq NamedBody485_157 NamedBody485_458

def NamedBody485_460 : StackLang.HolProg 64 :=
.seq NamedBody485_156 NamedBody485_459

def NamedBody485_461 : StackLang.HolProg 64 :=
.seq NamedBody485_155 NamedBody485_460

def NamedBody485_462 : StackLang.HolProg 64 :=
.seq NamedBody485_154 NamedBody485_461

def NamedBody485_463 : StackLang.HolProg 64 :=
.seq NamedBody485_153 NamedBody485_462

def NamedBody485_464 : StackLang.HolProg 64 :=
.seq NamedBody485_152 NamedBody485_463

def NamedBody485_465 : StackLang.HolProg 64 :=
.seq NamedBody485_151 NamedBody485_464

def NamedBody485_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody485_468 : StackLang.HolProg 64 :=
.seq NamedBody485_466 NamedBody485_467

def NamedBody485_469 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody485_465 NamedBody485_468

def NamedBody485_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody485_472 : StackLang.HolProg 64 :=
.seq NamedBody485_470 NamedBody485_471

def NamedBody485_473 : StackLang.HolProg 64 :=
.seq NamedBody485_469 NamedBody485_472

def NamedBody485_474 : StackLang.HolProg 64 :=
.seq NamedBody485_150 NamedBody485_473

def NamedBody485_475 : StackLang.HolProg 64 :=
.loop NamedBody485_474

def NamedBody485_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody485_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody485_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody485_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def NamedBody485_480 : StackLang.HolProg 64 :=
.seq NamedBody485_478 NamedBody485_479

def NamedBody485_481 : StackLang.HolProg 64 :=
.seq NamedBody485_477 NamedBody485_480

def NamedBody485_482 : StackLang.HolProg 64 :=
.seq NamedBody485_476 NamedBody485_481

def NamedBody485_483 : StackLang.HolProg 64 :=
.seq NamedBody485_475 NamedBody485_482

def NamedBody485_484 : StackLang.HolProg 64 :=
.seq NamedBody485_149 NamedBody485_483

def NamedBody485_485 : StackLang.HolProg 64 :=
.seq NamedBody485_148 NamedBody485_484

def NamedBody485_486 : StackLang.HolProg 64 :=
.seq NamedBody485_147 NamedBody485_485

def NamedBody485_487 : StackLang.HolProg 64 :=
.seq NamedBody485_146 NamedBody485_486

def NamedBody485_488 : StackLang.HolProg 64 :=
.seq NamedBody485_145 NamedBody485_487

def NamedBody485_489 : StackLang.HolProg 64 :=
.seq NamedBody485_80 NamedBody485_488

def NamedBody485_490 : StackLang.HolProg 64 :=
.seq NamedBody485_77 NamedBody485_489

def NamedBody485_491 : StackLang.HolProg 64 :=
.seq NamedBody485_76 NamedBody485_490

def NamedBody485_492 : StackLang.HolProg 64 :=
.seq NamedBody485_75 NamedBody485_491

def NamedBody485_493 : StackLang.HolProg 64 :=
.seq NamedBody485_74 NamedBody485_492

def NamedBody485_494 : StackLang.HolProg 64 :=
.seq NamedBody485_73 NamedBody485_493

def NamedBody485_495 : StackLang.HolProg 64 :=
.seq NamedBody485_72 NamedBody485_494

def NamedBody485_496 : StackLang.HolProg 64 :=
.seq NamedBody485_71 NamedBody485_495

def NamedBody485_497 : StackLang.HolProg 64 :=
.seq NamedBody485_16 NamedBody485_496

def NamedBody485_498 : StackLang.HolProg 64 :=
.seq NamedBody485_11 NamedBody485_497

def NamedBody485_499 : StackLang.HolProg 64 :=
.seq NamedBody485_10 NamedBody485_498

def NamedBody485_500 : StackLang.HolProg 64 :=
.seq NamedBody485_9 NamedBody485_499

def NamedBody485_501 : StackLang.HolProg 64 :=
.seq NamedBody485_8 NamedBody485_500

def NamedBody485_502 : StackLang.HolProg 64 :=
.seq NamedBody485_7 NamedBody485_501

def NamedBody485_503 : StackLang.HolProg 64 :=
.seq NamedBody485_6 NamedBody485_502

def Named485 : Nat × StackLang.HolProg 64 := (485, NamedBody485_503)
theorem Named485_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed485 = Named485 := by
  kernel_rfl
#print axioms Named485_eq
end InitECandidate.Proofs.BackendStages
