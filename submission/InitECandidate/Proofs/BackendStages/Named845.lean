import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed845
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody845_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody845_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody845_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody845_3 : StackLang.HolProg 64 :=
.seq NamedBody845_1 NamedBody845_2

def NamedBody845_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody845_3 NamedBody845_4

def NamedBody845_6 : StackLang.HolProg 64 :=
.seq NamedBody845_0 NamedBody845_5

def NamedBody845_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody845_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody845_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody845_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_11 : StackLang.HolProg 64 :=
.seq NamedBody845_9 NamedBody845_10

def NamedBody845_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4227#64)

def NamedBody845_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody845_15 : StackLang.HolProg 64 :=
.seq NamedBody845_13 NamedBody845_14

def NamedBody845_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody845_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody845_19 : StackLang.HolProg 64 :=
.seq NamedBody845_17 NamedBody845_18

def NamedBody845_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody845_19 NamedBody845_20

def NamedBody845_22 : StackLang.HolProg 64 :=
.seq NamedBody845_16 NamedBody845_21

def NamedBody845_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody845_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody845_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 845 3

def NamedBody845_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody845_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody845_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody845_32 : StackLang.HolProg 64 :=
.seq NamedBody845_30 NamedBody845_31

def NamedBody845_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody845_34 : StackLang.HolProg 64 :=
.seq NamedBody845_32 NamedBody845_33

def NamedBody845_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_36 : StackLang.HolProg 64 :=
.seq NamedBody845_34 NamedBody845_35

def NamedBody845_37 : StackLang.HolProg 64 :=
.seq NamedBody845_29 NamedBody845_36

def NamedBody845_38 : StackLang.HolProg 64 :=
.seq NamedBody845_28 NamedBody845_37

def NamedBody845_39 : StackLang.HolProg 64 :=
.seq NamedBody845_27 NamedBody845_38

def NamedBody845_40 : StackLang.HolProg 64 :=
.seq NamedBody845_26 NamedBody845_39

def NamedBody845_41 : StackLang.HolProg 64 :=
.seq NamedBody845_25 NamedBody845_40

def NamedBody845_42 : StackLang.HolProg 64 :=
.seq NamedBody845_24 NamedBody845_41

def NamedBody845_43 : StackLang.HolProg 64 :=
.seq NamedBody845_23 NamedBody845_42

def NamedBody845_44 : StackLang.HolProg 64 :=
.seq NamedBody845_22 NamedBody845_43

def NamedBody845_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody845_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_53 : StackLang.HolProg 64 :=
.seq NamedBody845_51 NamedBody845_52

def NamedBody845_54 : StackLang.HolProg 64 :=
.seq NamedBody845_50 NamedBody845_53

def NamedBody845_55 : StackLang.HolProg 64 :=
.seq NamedBody845_49 NamedBody845_54

def NamedBody845_56 : StackLang.HolProg 64 :=
.seq NamedBody845_48 NamedBody845_55

def NamedBody845_57 : StackLang.HolProg 64 :=
.seq NamedBody845_47 NamedBody845_56

def NamedBody845_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody845_60 : StackLang.HolProg 64 :=
.seq NamedBody845_58 NamedBody845_59

def NamedBody845_61 : StackLang.HolProg 64 :=
.call (some (NamedBody845_57, 1, 845, 2)) (Sum.inl 68) (some (NamedBody845_60, 845, 3))

def NamedBody845_62 : StackLang.HolProg 64 :=
.seq NamedBody845_46 NamedBody845_61

def NamedBody845_63 : StackLang.HolProg 64 :=
.seq NamedBody845_45 NamedBody845_62

def NamedBody845_64 : StackLang.HolProg 64 :=
.seq NamedBody845_44 NamedBody845_63

def NamedBody845_65 : StackLang.HolProg 64 :=
.seq NamedBody845_15 NamedBody845_64

def NamedBody845_66 : StackLang.HolProg 64 :=
.seq NamedBody845_12 NamedBody845_65

def NamedBody845_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody845_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def NamedBody845_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def NamedBody845_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody845_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody845_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody845_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody845_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody845_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody845_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody845_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody845_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody845_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody845_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody845_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody845_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody845_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody845_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody845_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody845_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody845_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody845_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody845_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody845_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody845_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody845_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody845_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody845_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody845_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody845_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody845_118 : StackLang.HolProg 64 :=
.seq NamedBody845_116 NamedBody845_117

def NamedBody845_119 : StackLang.HolProg 64 :=
.seq NamedBody845_115 NamedBody845_118

def NamedBody845_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4228#64)

def NamedBody845_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody845_123 : StackLang.HolProg 64 :=
.seq NamedBody845_121 NamedBody845_122

def NamedBody845_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody845_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody845_127 : StackLang.HolProg 64 :=
.seq NamedBody845_125 NamedBody845_126

def NamedBody845_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody845_127 NamedBody845_128

def NamedBody845_130 : StackLang.HolProg 64 :=
.seq NamedBody845_124 NamedBody845_129

def NamedBody845_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody845_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody845_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 845 5

def NamedBody845_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody845_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody845_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody845_140 : StackLang.HolProg 64 :=
.seq NamedBody845_138 NamedBody845_139

def NamedBody845_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody845_142 : StackLang.HolProg 64 :=
.seq NamedBody845_140 NamedBody845_141

def NamedBody845_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_144 : StackLang.HolProg 64 :=
.seq NamedBody845_142 NamedBody845_143

def NamedBody845_145 : StackLang.HolProg 64 :=
.seq NamedBody845_137 NamedBody845_144

def NamedBody845_146 : StackLang.HolProg 64 :=
.seq NamedBody845_136 NamedBody845_145

def NamedBody845_147 : StackLang.HolProg 64 :=
.seq NamedBody845_135 NamedBody845_146

def NamedBody845_148 : StackLang.HolProg 64 :=
.seq NamedBody845_134 NamedBody845_147

def NamedBody845_149 : StackLang.HolProg 64 :=
.seq NamedBody845_133 NamedBody845_148

def NamedBody845_150 : StackLang.HolProg 64 :=
.seq NamedBody845_132 NamedBody845_149

def NamedBody845_151 : StackLang.HolProg 64 :=
.seq NamedBody845_131 NamedBody845_150

def NamedBody845_152 : StackLang.HolProg 64 :=
.seq NamedBody845_130 NamedBody845_151

def NamedBody845_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody845_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_162 : StackLang.HolProg 64 :=
.seq NamedBody845_160 NamedBody845_161

def NamedBody845_163 : StackLang.HolProg 64 :=
.seq NamedBody845_159 NamedBody845_162

def NamedBody845_164 : StackLang.HolProg 64 :=
.seq NamedBody845_158 NamedBody845_163

def NamedBody845_165 : StackLang.HolProg 64 :=
.seq NamedBody845_157 NamedBody845_164

def NamedBody845_166 : StackLang.HolProg 64 :=
.seq NamedBody845_156 NamedBody845_165

def NamedBody845_167 : StackLang.HolProg 64 :=
.seq NamedBody845_155 NamedBody845_166

def NamedBody845_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_170 : StackLang.HolProg 64 :=
.seq NamedBody845_168 NamedBody845_169

def NamedBody845_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody845_172 : StackLang.HolProg 64 :=
.seq NamedBody845_170 NamedBody845_171

def NamedBody845_173 : StackLang.HolProg 64 :=
.call (some (NamedBody845_167, 1, 845, 4)) (Sum.inl 177) (some (NamedBody845_172, 845, 5))

def NamedBody845_174 : StackLang.HolProg 64 :=
.seq NamedBody845_154 NamedBody845_173

def NamedBody845_175 : StackLang.HolProg 64 :=
.seq NamedBody845_153 NamedBody845_174

def NamedBody845_176 : StackLang.HolProg 64 :=
.seq NamedBody845_152 NamedBody845_175

def NamedBody845_177 : StackLang.HolProg 64 :=
.seq NamedBody845_123 NamedBody845_176

def NamedBody845_178 : StackLang.HolProg 64 :=
.seq NamedBody845_120 NamedBody845_177

def NamedBody845_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody845_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody845_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody845_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody845_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def NamedBody845_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody845_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 10#64)))

def NamedBody845_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody845_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 11#64)))

def NamedBody845_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody845_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def NamedBody845_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody845_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 13#64)))

def NamedBody845_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody845_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 14#64)))

def NamedBody845_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody845_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def NamedBody845_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody845_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody845_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody845_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody845_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody845_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody845_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody845_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody845_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody845_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody845_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody845_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody845_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody845_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_230 : StackLang.HolProg 64 :=
.seq NamedBody845_228 NamedBody845_229

def NamedBody845_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4229#64)

def NamedBody845_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody845_234 : StackLang.HolProg 64 :=
.seq NamedBody845_232 NamedBody845_233

def NamedBody845_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody845_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody845_238 : StackLang.HolProg 64 :=
.seq NamedBody845_236 NamedBody845_237

def NamedBody845_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_240 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody845_238 NamedBody845_239

def NamedBody845_241 : StackLang.HolProg 64 :=
.seq NamedBody845_235 NamedBody845_240

def NamedBody845_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody845_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody845_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 845 7

def NamedBody845_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody845_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody845_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody845_251 : StackLang.HolProg 64 :=
.seq NamedBody845_249 NamedBody845_250

def NamedBody845_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody845_253 : StackLang.HolProg 64 :=
.seq NamedBody845_251 NamedBody845_252

def NamedBody845_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_255 : StackLang.HolProg 64 :=
.seq NamedBody845_253 NamedBody845_254

def NamedBody845_256 : StackLang.HolProg 64 :=
.seq NamedBody845_248 NamedBody845_255

def NamedBody845_257 : StackLang.HolProg 64 :=
.seq NamedBody845_247 NamedBody845_256

def NamedBody845_258 : StackLang.HolProg 64 :=
.seq NamedBody845_246 NamedBody845_257

def NamedBody845_259 : StackLang.HolProg 64 :=
.seq NamedBody845_245 NamedBody845_258

def NamedBody845_260 : StackLang.HolProg 64 :=
.seq NamedBody845_244 NamedBody845_259

def NamedBody845_261 : StackLang.HolProg 64 :=
.seq NamedBody845_243 NamedBody845_260

def NamedBody845_262 : StackLang.HolProg 64 :=
.seq NamedBody845_242 NamedBody845_261

def NamedBody845_263 : StackLang.HolProg 64 :=
.seq NamedBody845_241 NamedBody845_262

def NamedBody845_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody845_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_273 : StackLang.HolProg 64 :=
.seq NamedBody845_271 NamedBody845_272

def NamedBody845_274 : StackLang.HolProg 64 :=
.seq NamedBody845_270 NamedBody845_273

def NamedBody845_275 : StackLang.HolProg 64 :=
.seq NamedBody845_269 NamedBody845_274

def NamedBody845_276 : StackLang.HolProg 64 :=
.seq NamedBody845_268 NamedBody845_275

def NamedBody845_277 : StackLang.HolProg 64 :=
.seq NamedBody845_267 NamedBody845_276

def NamedBody845_278 : StackLang.HolProg 64 :=
.seq NamedBody845_266 NamedBody845_277

def NamedBody845_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_281 : StackLang.HolProg 64 :=
.seq NamedBody845_279 NamedBody845_280

def NamedBody845_282 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody845_283 : StackLang.HolProg 64 :=
.seq NamedBody845_281 NamedBody845_282

def NamedBody845_284 : StackLang.HolProg 64 :=
.call (some (NamedBody845_278, 1, 845, 6)) (Sum.inl 177) (some (NamedBody845_283, 845, 7))

def NamedBody845_285 : StackLang.HolProg 64 :=
.seq NamedBody845_265 NamedBody845_284

def NamedBody845_286 : StackLang.HolProg 64 :=
.seq NamedBody845_264 NamedBody845_285

def NamedBody845_287 : StackLang.HolProg 64 :=
.seq NamedBody845_263 NamedBody845_286

def NamedBody845_288 : StackLang.HolProg 64 :=
.seq NamedBody845_234 NamedBody845_287

def NamedBody845_289 : StackLang.HolProg 64 :=
.seq NamedBody845_231 NamedBody845_288

def NamedBody845_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody845_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody845_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody845_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 20#64)

def NamedBody845_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_298 : StackLang.HolProg 64 :=
.seq NamedBody845_296 NamedBody845_297

def NamedBody845_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4230#64)

def NamedBody845_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody845_302 : StackLang.HolProg 64 :=
.seq NamedBody845_300 NamedBody845_301

def NamedBody845_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody845_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody845_306 : StackLang.HolProg 64 :=
.seq NamedBody845_304 NamedBody845_305

def NamedBody845_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_308 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody845_306 NamedBody845_307

def NamedBody845_309 : StackLang.HolProg 64 :=
.seq NamedBody845_303 NamedBody845_308

def NamedBody845_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody845_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody845_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 845 9

def NamedBody845_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody845_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody845_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody845_319 : StackLang.HolProg 64 :=
.seq NamedBody845_317 NamedBody845_318

def NamedBody845_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody845_321 : StackLang.HolProg 64 :=
.seq NamedBody845_319 NamedBody845_320

def NamedBody845_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_323 : StackLang.HolProg 64 :=
.seq NamedBody845_321 NamedBody845_322

def NamedBody845_324 : StackLang.HolProg 64 :=
.seq NamedBody845_316 NamedBody845_323

def NamedBody845_325 : StackLang.HolProg 64 :=
.seq NamedBody845_315 NamedBody845_324

def NamedBody845_326 : StackLang.HolProg 64 :=
.seq NamedBody845_314 NamedBody845_325

def NamedBody845_327 : StackLang.HolProg 64 :=
.seq NamedBody845_313 NamedBody845_326

def NamedBody845_328 : StackLang.HolProg 64 :=
.seq NamedBody845_312 NamedBody845_327

def NamedBody845_329 : StackLang.HolProg 64 :=
.seq NamedBody845_311 NamedBody845_328

def NamedBody845_330 : StackLang.HolProg 64 :=
.seq NamedBody845_310 NamedBody845_329

def NamedBody845_331 : StackLang.HolProg 64 :=
.seq NamedBody845_309 NamedBody845_330

def NamedBody845_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody845_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody845_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_343 : StackLang.HolProg 64 :=
.seq NamedBody845_341 NamedBody845_342

def NamedBody845_344 : StackLang.HolProg 64 :=
.seq NamedBody845_340 NamedBody845_343

def NamedBody845_345 : StackLang.HolProg 64 :=
.seq NamedBody845_339 NamedBody845_344

def NamedBody845_346 : StackLang.HolProg 64 :=
.seq NamedBody845_338 NamedBody845_345

def NamedBody845_347 : StackLang.HolProg 64 :=
.seq NamedBody845_337 NamedBody845_346

def NamedBody845_348 : StackLang.HolProg 64 :=
.seq NamedBody845_336 NamedBody845_347

def NamedBody845_349 : StackLang.HolProg 64 :=
.seq NamedBody845_335 NamedBody845_348

def NamedBody845_350 : StackLang.HolProg 64 :=
.seq NamedBody845_334 NamedBody845_349

def NamedBody845_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody845_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_355 : StackLang.HolProg 64 :=
.seq NamedBody845_353 NamedBody845_354

def NamedBody845_356 : StackLang.HolProg 64 :=
.seq NamedBody845_352 NamedBody845_355

def NamedBody845_357 : StackLang.HolProg 64 :=
.seq NamedBody845_351 NamedBody845_356

def NamedBody845_358 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody845_359 : StackLang.HolProg 64 :=
.seq NamedBody845_357 NamedBody845_358

def NamedBody845_360 : StackLang.HolProg 64 :=
.call (some (NamedBody845_350, 1, 845, 8)) (Sum.inl 176) (some (NamedBody845_359, 845, 9))

def NamedBody845_361 : StackLang.HolProg 64 :=
.seq NamedBody845_333 NamedBody845_360

def NamedBody845_362 : StackLang.HolProg 64 :=
.seq NamedBody845_332 NamedBody845_361

def NamedBody845_363 : StackLang.HolProg 64 :=
.seq NamedBody845_331 NamedBody845_362

def NamedBody845_364 : StackLang.HolProg 64 :=
.seq NamedBody845_302 NamedBody845_363

def NamedBody845_365 : StackLang.HolProg 64 :=
.seq NamedBody845_299 NamedBody845_364

def NamedBody845_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody845_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody845_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 36#64)))

def NamedBody845_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody845_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 37#64)))

def NamedBody845_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody845_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 38#64)))

def NamedBody845_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody845_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 39#64)))

def NamedBody845_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody845_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody845_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody845_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 41#64)))

def NamedBody845_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody845_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 42#64)))

def NamedBody845_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody845_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 43#64)))

def NamedBody845_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody845_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody845_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody845_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody845_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody845_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody845_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody845_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody845_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody845_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody845_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody845_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody845_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody845_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4231#64)

def NamedBody845_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody845_419 : StackLang.HolProg 64 :=
.seq NamedBody845_417 NamedBody845_418

def NamedBody845_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody845_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody845_423 : StackLang.HolProg 64 :=
.seq NamedBody845_421 NamedBody845_422

def NamedBody845_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_425 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody845_423 NamedBody845_424

def NamedBody845_426 : StackLang.HolProg 64 :=
.seq NamedBody845_420 NamedBody845_425

def NamedBody845_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody845_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody845_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 845 11

def NamedBody845_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody845_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody845_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody845_436 : StackLang.HolProg 64 :=
.seq NamedBody845_434 NamedBody845_435

def NamedBody845_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody845_438 : StackLang.HolProg 64 :=
.seq NamedBody845_436 NamedBody845_437

def NamedBody845_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_440 : StackLang.HolProg 64 :=
.seq NamedBody845_438 NamedBody845_439

def NamedBody845_441 : StackLang.HolProg 64 :=
.seq NamedBody845_433 NamedBody845_440

def NamedBody845_442 : StackLang.HolProg 64 :=
.seq NamedBody845_432 NamedBody845_441

def NamedBody845_443 : StackLang.HolProg 64 :=
.seq NamedBody845_431 NamedBody845_442

def NamedBody845_444 : StackLang.HolProg 64 :=
.seq NamedBody845_430 NamedBody845_443

def NamedBody845_445 : StackLang.HolProg 64 :=
.seq NamedBody845_429 NamedBody845_444

def NamedBody845_446 : StackLang.HolProg 64 :=
.seq NamedBody845_428 NamedBody845_445

def NamedBody845_447 : StackLang.HolProg 64 :=
.seq NamedBody845_427 NamedBody845_446

def NamedBody845_448 : StackLang.HolProg 64 :=
.seq NamedBody845_426 NamedBody845_447

def NamedBody845_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody845_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_458 : StackLang.HolProg 64 :=
.seq NamedBody845_456 NamedBody845_457

def NamedBody845_459 : StackLang.HolProg 64 :=
.seq NamedBody845_455 NamedBody845_458

def NamedBody845_460 : StackLang.HolProg 64 :=
.seq NamedBody845_454 NamedBody845_459

def NamedBody845_461 : StackLang.HolProg 64 :=
.seq NamedBody845_453 NamedBody845_460

def NamedBody845_462 : StackLang.HolProg 64 :=
.seq NamedBody845_452 NamedBody845_461

def NamedBody845_463 : StackLang.HolProg 64 :=
.seq NamedBody845_451 NamedBody845_462

def NamedBody845_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_466 : StackLang.HolProg 64 :=
.seq NamedBody845_464 NamedBody845_465

def NamedBody845_467 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody845_468 : StackLang.HolProg 64 :=
.seq NamedBody845_466 NamedBody845_467

def NamedBody845_469 : StackLang.HolProg 64 :=
.call (some (NamedBody845_463, 1, 845, 10)) (Sum.inl 177) (some (NamedBody845_468, 845, 11))

def NamedBody845_470 : StackLang.HolProg 64 :=
.seq NamedBody845_450 NamedBody845_469

def NamedBody845_471 : StackLang.HolProg 64 :=
.seq NamedBody845_449 NamedBody845_470

def NamedBody845_472 : StackLang.HolProg 64 :=
.seq NamedBody845_448 NamedBody845_471

def NamedBody845_473 : StackLang.HolProg 64 :=
.seq NamedBody845_419 NamedBody845_472

def NamedBody845_474 : StackLang.HolProg 64 :=
.seq NamedBody845_416 NamedBody845_473

def NamedBody845_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody845_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody845_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody845_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_480 : StackLang.HolProg 64 :=
.seq NamedBody845_478 NamedBody845_479

def NamedBody845_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4232#64)

def NamedBody845_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody845_484 : StackLang.HolProg 64 :=
.seq NamedBody845_482 NamedBody845_483

def NamedBody845_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody845_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody845_488 : StackLang.HolProg 64 :=
.seq NamedBody845_486 NamedBody845_487

def NamedBody845_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_490 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody845_488 NamedBody845_489

def NamedBody845_491 : StackLang.HolProg 64 :=
.seq NamedBody845_485 NamedBody845_490

def NamedBody845_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody845_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody845_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 845 13

def NamedBody845_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody845_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody845_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody845_501 : StackLang.HolProg 64 :=
.seq NamedBody845_499 NamedBody845_500

def NamedBody845_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody845_503 : StackLang.HolProg 64 :=
.seq NamedBody845_501 NamedBody845_502

def NamedBody845_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_505 : StackLang.HolProg 64 :=
.seq NamedBody845_503 NamedBody845_504

def NamedBody845_506 : StackLang.HolProg 64 :=
.seq NamedBody845_498 NamedBody845_505

def NamedBody845_507 : StackLang.HolProg 64 :=
.seq NamedBody845_497 NamedBody845_506

def NamedBody845_508 : StackLang.HolProg 64 :=
.seq NamedBody845_496 NamedBody845_507

def NamedBody845_509 : StackLang.HolProg 64 :=
.seq NamedBody845_495 NamedBody845_508

def NamedBody845_510 : StackLang.HolProg 64 :=
.seq NamedBody845_494 NamedBody845_509

def NamedBody845_511 : StackLang.HolProg 64 :=
.seq NamedBody845_493 NamedBody845_510

def NamedBody845_512 : StackLang.HolProg 64 :=
.seq NamedBody845_492 NamedBody845_511

def NamedBody845_513 : StackLang.HolProg 64 :=
.seq NamedBody845_491 NamedBody845_512

def NamedBody845_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody845_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody845_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody845_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody845_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody845_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody845_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_523 : StackLang.HolProg 64 :=
.seq NamedBody845_521 NamedBody845_522

def NamedBody845_524 : StackLang.HolProg 64 :=
.seq NamedBody845_520 NamedBody845_523

def NamedBody845_525 : StackLang.HolProg 64 :=
.seq NamedBody845_519 NamedBody845_524

def NamedBody845_526 : StackLang.HolProg 64 :=
.seq NamedBody845_518 NamedBody845_525

def NamedBody845_527 : StackLang.HolProg 64 :=
.seq NamedBody845_517 NamedBody845_526

def NamedBody845_528 : StackLang.HolProg 64 :=
.seq NamedBody845_516 NamedBody845_527

def NamedBody845_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody845_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody845_531 : StackLang.HolProg 64 :=
.seq NamedBody845_529 NamedBody845_530

def NamedBody845_532 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody845_533 : StackLang.HolProg 64 :=
.seq NamedBody845_531 NamedBody845_532

def NamedBody845_534 : StackLang.HolProg 64 :=
.call (some (NamedBody845_528, 1, 845, 12)) (Sum.inl 840) (some (NamedBody845_533, 845, 13))

def NamedBody845_535 : StackLang.HolProg 64 :=
.seq NamedBody845_515 NamedBody845_534

def NamedBody845_536 : StackLang.HolProg 64 :=
.seq NamedBody845_514 NamedBody845_535

def NamedBody845_537 : StackLang.HolProg 64 :=
.seq NamedBody845_513 NamedBody845_536

def NamedBody845_538 : StackLang.HolProg 64 :=
.seq NamedBody845_484 NamedBody845_537

def NamedBody845_539 : StackLang.HolProg 64 :=
.seq NamedBody845_481 NamedBody845_538

def NamedBody845_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody845_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody845_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody845_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody845_544 : StackLang.HolProg 64 :=
.seq NamedBody845_542 NamedBody845_543

def NamedBody845_545 : StackLang.HolProg 64 :=
.seq NamedBody845_541 NamedBody845_544

def NamedBody845_546 : StackLang.HolProg 64 :=
.seq NamedBody845_540 NamedBody845_545

def NamedBody845_547 : StackLang.HolProg 64 :=
.seq NamedBody845_539 NamedBody845_546

def NamedBody845_548 : StackLang.HolProg 64 :=
.seq NamedBody845_480 NamedBody845_547

def NamedBody845_549 : StackLang.HolProg 64 :=
.seq NamedBody845_477 NamedBody845_548

def NamedBody845_550 : StackLang.HolProg 64 :=
.seq NamedBody845_476 NamedBody845_549

def NamedBody845_551 : StackLang.HolProg 64 :=
.seq NamedBody845_475 NamedBody845_550

def NamedBody845_552 : StackLang.HolProg 64 :=
.seq NamedBody845_474 NamedBody845_551

def NamedBody845_553 : StackLang.HolProg 64 :=
.seq NamedBody845_415 NamedBody845_552

def NamedBody845_554 : StackLang.HolProg 64 :=
.seq NamedBody845_414 NamedBody845_553

def NamedBody845_555 : StackLang.HolProg 64 :=
.seq NamedBody845_413 NamedBody845_554

def NamedBody845_556 : StackLang.HolProg 64 :=
.seq NamedBody845_412 NamedBody845_555

def NamedBody845_557 : StackLang.HolProg 64 :=
.seq NamedBody845_411 NamedBody845_556

def NamedBody845_558 : StackLang.HolProg 64 :=
.seq NamedBody845_410 NamedBody845_557

def NamedBody845_559 : StackLang.HolProg 64 :=
.seq NamedBody845_409 NamedBody845_558

def NamedBody845_560 : StackLang.HolProg 64 :=
.seq NamedBody845_408 NamedBody845_559

def NamedBody845_561 : StackLang.HolProg 64 :=
.seq NamedBody845_407 NamedBody845_560

def NamedBody845_562 : StackLang.HolProg 64 :=
.seq NamedBody845_406 NamedBody845_561

def NamedBody845_563 : StackLang.HolProg 64 :=
.seq NamedBody845_405 NamedBody845_562

def NamedBody845_564 : StackLang.HolProg 64 :=
.seq NamedBody845_404 NamedBody845_563

def NamedBody845_565 : StackLang.HolProg 64 :=
.seq NamedBody845_403 NamedBody845_564

def NamedBody845_566 : StackLang.HolProg 64 :=
.seq NamedBody845_402 NamedBody845_565

def NamedBody845_567 : StackLang.HolProg 64 :=
.seq NamedBody845_401 NamedBody845_566

def NamedBody845_568 : StackLang.HolProg 64 :=
.seq NamedBody845_400 NamedBody845_567

def NamedBody845_569 : StackLang.HolProg 64 :=
.seq NamedBody845_399 NamedBody845_568

def NamedBody845_570 : StackLang.HolProg 64 :=
.seq NamedBody845_398 NamedBody845_569

def NamedBody845_571 : StackLang.HolProg 64 :=
.seq NamedBody845_397 NamedBody845_570

def NamedBody845_572 : StackLang.HolProg 64 :=
.seq NamedBody845_396 NamedBody845_571

def NamedBody845_573 : StackLang.HolProg 64 :=
.seq NamedBody845_395 NamedBody845_572

def NamedBody845_574 : StackLang.HolProg 64 :=
.seq NamedBody845_394 NamedBody845_573

def NamedBody845_575 : StackLang.HolProg 64 :=
.seq NamedBody845_393 NamedBody845_574

def NamedBody845_576 : StackLang.HolProg 64 :=
.seq NamedBody845_392 NamedBody845_575

def NamedBody845_577 : StackLang.HolProg 64 :=
.seq NamedBody845_391 NamedBody845_576

def NamedBody845_578 : StackLang.HolProg 64 :=
.seq NamedBody845_390 NamedBody845_577

def NamedBody845_579 : StackLang.HolProg 64 :=
.seq NamedBody845_389 NamedBody845_578

def NamedBody845_580 : StackLang.HolProg 64 :=
.seq NamedBody845_388 NamedBody845_579

def NamedBody845_581 : StackLang.HolProg 64 :=
.seq NamedBody845_387 NamedBody845_580

def NamedBody845_582 : StackLang.HolProg 64 :=
.seq NamedBody845_386 NamedBody845_581

def NamedBody845_583 : StackLang.HolProg 64 :=
.seq NamedBody845_385 NamedBody845_582

def NamedBody845_584 : StackLang.HolProg 64 :=
.seq NamedBody845_384 NamedBody845_583

def NamedBody845_585 : StackLang.HolProg 64 :=
.seq NamedBody845_383 NamedBody845_584

def NamedBody845_586 : StackLang.HolProg 64 :=
.seq NamedBody845_382 NamedBody845_585

def NamedBody845_587 : StackLang.HolProg 64 :=
.seq NamedBody845_381 NamedBody845_586

def NamedBody845_588 : StackLang.HolProg 64 :=
.seq NamedBody845_380 NamedBody845_587

def NamedBody845_589 : StackLang.HolProg 64 :=
.seq NamedBody845_379 NamedBody845_588

def NamedBody845_590 : StackLang.HolProg 64 :=
.seq NamedBody845_378 NamedBody845_589

def NamedBody845_591 : StackLang.HolProg 64 :=
.seq NamedBody845_377 NamedBody845_590

def NamedBody845_592 : StackLang.HolProg 64 :=
.seq NamedBody845_376 NamedBody845_591

def NamedBody845_593 : StackLang.HolProg 64 :=
.seq NamedBody845_375 NamedBody845_592

def NamedBody845_594 : StackLang.HolProg 64 :=
.seq NamedBody845_374 NamedBody845_593

def NamedBody845_595 : StackLang.HolProg 64 :=
.seq NamedBody845_373 NamedBody845_594

def NamedBody845_596 : StackLang.HolProg 64 :=
.seq NamedBody845_372 NamedBody845_595

def NamedBody845_597 : StackLang.HolProg 64 :=
.seq NamedBody845_371 NamedBody845_596

def NamedBody845_598 : StackLang.HolProg 64 :=
.seq NamedBody845_370 NamedBody845_597

def NamedBody845_599 : StackLang.HolProg 64 :=
.seq NamedBody845_369 NamedBody845_598

def NamedBody845_600 : StackLang.HolProg 64 :=
.seq NamedBody845_368 NamedBody845_599

def NamedBody845_601 : StackLang.HolProg 64 :=
.seq NamedBody845_367 NamedBody845_600

def NamedBody845_602 : StackLang.HolProg 64 :=
.seq NamedBody845_366 NamedBody845_601

def NamedBody845_603 : StackLang.HolProg 64 :=
.seq NamedBody845_365 NamedBody845_602

def NamedBody845_604 : StackLang.HolProg 64 :=
.seq NamedBody845_298 NamedBody845_603

def NamedBody845_605 : StackLang.HolProg 64 :=
.seq NamedBody845_295 NamedBody845_604

def NamedBody845_606 : StackLang.HolProg 64 :=
.seq NamedBody845_294 NamedBody845_605

def NamedBody845_607 : StackLang.HolProg 64 :=
.seq NamedBody845_293 NamedBody845_606

def NamedBody845_608 : StackLang.HolProg 64 :=
.seq NamedBody845_292 NamedBody845_607

def NamedBody845_609 : StackLang.HolProg 64 :=
.seq NamedBody845_291 NamedBody845_608

def NamedBody845_610 : StackLang.HolProg 64 :=
.seq NamedBody845_290 NamedBody845_609

def NamedBody845_611 : StackLang.HolProg 64 :=
.seq NamedBody845_289 NamedBody845_610

def NamedBody845_612 : StackLang.HolProg 64 :=
.seq NamedBody845_230 NamedBody845_611

def NamedBody845_613 : StackLang.HolProg 64 :=
.seq NamedBody845_227 NamedBody845_612

def NamedBody845_614 : StackLang.HolProg 64 :=
.seq NamedBody845_226 NamedBody845_613

def NamedBody845_615 : StackLang.HolProg 64 :=
.seq NamedBody845_225 NamedBody845_614

def NamedBody845_616 : StackLang.HolProg 64 :=
.seq NamedBody845_224 NamedBody845_615

def NamedBody845_617 : StackLang.HolProg 64 :=
.seq NamedBody845_223 NamedBody845_616

def NamedBody845_618 : StackLang.HolProg 64 :=
.seq NamedBody845_222 NamedBody845_617

def NamedBody845_619 : StackLang.HolProg 64 :=
.seq NamedBody845_221 NamedBody845_618

def NamedBody845_620 : StackLang.HolProg 64 :=
.seq NamedBody845_220 NamedBody845_619

def NamedBody845_621 : StackLang.HolProg 64 :=
.seq NamedBody845_219 NamedBody845_620

def NamedBody845_622 : StackLang.HolProg 64 :=
.seq NamedBody845_218 NamedBody845_621

def NamedBody845_623 : StackLang.HolProg 64 :=
.seq NamedBody845_217 NamedBody845_622

def NamedBody845_624 : StackLang.HolProg 64 :=
.seq NamedBody845_216 NamedBody845_623

def NamedBody845_625 : StackLang.HolProg 64 :=
.seq NamedBody845_215 NamedBody845_624

def NamedBody845_626 : StackLang.HolProg 64 :=
.seq NamedBody845_214 NamedBody845_625

def NamedBody845_627 : StackLang.HolProg 64 :=
.seq NamedBody845_213 NamedBody845_626

def NamedBody845_628 : StackLang.HolProg 64 :=
.seq NamedBody845_212 NamedBody845_627

def NamedBody845_629 : StackLang.HolProg 64 :=
.seq NamedBody845_211 NamedBody845_628

def NamedBody845_630 : StackLang.HolProg 64 :=
.seq NamedBody845_210 NamedBody845_629

def NamedBody845_631 : StackLang.HolProg 64 :=
.seq NamedBody845_209 NamedBody845_630

def NamedBody845_632 : StackLang.HolProg 64 :=
.seq NamedBody845_208 NamedBody845_631

def NamedBody845_633 : StackLang.HolProg 64 :=
.seq NamedBody845_207 NamedBody845_632

def NamedBody845_634 : StackLang.HolProg 64 :=
.seq NamedBody845_206 NamedBody845_633

def NamedBody845_635 : StackLang.HolProg 64 :=
.seq NamedBody845_205 NamedBody845_634

def NamedBody845_636 : StackLang.HolProg 64 :=
.seq NamedBody845_204 NamedBody845_635

def NamedBody845_637 : StackLang.HolProg 64 :=
.seq NamedBody845_203 NamedBody845_636

def NamedBody845_638 : StackLang.HolProg 64 :=
.seq NamedBody845_202 NamedBody845_637

def NamedBody845_639 : StackLang.HolProg 64 :=
.seq NamedBody845_201 NamedBody845_638

def NamedBody845_640 : StackLang.HolProg 64 :=
.seq NamedBody845_200 NamedBody845_639

def NamedBody845_641 : StackLang.HolProg 64 :=
.seq NamedBody845_199 NamedBody845_640

def NamedBody845_642 : StackLang.HolProg 64 :=
.seq NamedBody845_198 NamedBody845_641

def NamedBody845_643 : StackLang.HolProg 64 :=
.seq NamedBody845_197 NamedBody845_642

def NamedBody845_644 : StackLang.HolProg 64 :=
.seq NamedBody845_196 NamedBody845_643

def NamedBody845_645 : StackLang.HolProg 64 :=
.seq NamedBody845_195 NamedBody845_644

def NamedBody845_646 : StackLang.HolProg 64 :=
.seq NamedBody845_194 NamedBody845_645

def NamedBody845_647 : StackLang.HolProg 64 :=
.seq NamedBody845_193 NamedBody845_646

def NamedBody845_648 : StackLang.HolProg 64 :=
.seq NamedBody845_192 NamedBody845_647

def NamedBody845_649 : StackLang.HolProg 64 :=
.seq NamedBody845_191 NamedBody845_648

def NamedBody845_650 : StackLang.HolProg 64 :=
.seq NamedBody845_190 NamedBody845_649

def NamedBody845_651 : StackLang.HolProg 64 :=
.seq NamedBody845_189 NamedBody845_650

def NamedBody845_652 : StackLang.HolProg 64 :=
.seq NamedBody845_188 NamedBody845_651

def NamedBody845_653 : StackLang.HolProg 64 :=
.seq NamedBody845_187 NamedBody845_652

def NamedBody845_654 : StackLang.HolProg 64 :=
.seq NamedBody845_186 NamedBody845_653

def NamedBody845_655 : StackLang.HolProg 64 :=
.seq NamedBody845_185 NamedBody845_654

def NamedBody845_656 : StackLang.HolProg 64 :=
.seq NamedBody845_184 NamedBody845_655

def NamedBody845_657 : StackLang.HolProg 64 :=
.seq NamedBody845_183 NamedBody845_656

def NamedBody845_658 : StackLang.HolProg 64 :=
.seq NamedBody845_182 NamedBody845_657

def NamedBody845_659 : StackLang.HolProg 64 :=
.seq NamedBody845_181 NamedBody845_658

def NamedBody845_660 : StackLang.HolProg 64 :=
.seq NamedBody845_180 NamedBody845_659

def NamedBody845_661 : StackLang.HolProg 64 :=
.seq NamedBody845_179 NamedBody845_660

def NamedBody845_662 : StackLang.HolProg 64 :=
.seq NamedBody845_178 NamedBody845_661

def NamedBody845_663 : StackLang.HolProg 64 :=
.seq NamedBody845_119 NamedBody845_662

def NamedBody845_664 : StackLang.HolProg 64 :=
.seq NamedBody845_114 NamedBody845_663

def NamedBody845_665 : StackLang.HolProg 64 :=
.seq NamedBody845_113 NamedBody845_664

def NamedBody845_666 : StackLang.HolProg 64 :=
.seq NamedBody845_112 NamedBody845_665

def NamedBody845_667 : StackLang.HolProg 64 :=
.seq NamedBody845_111 NamedBody845_666

def NamedBody845_668 : StackLang.HolProg 64 :=
.seq NamedBody845_110 NamedBody845_667

def NamedBody845_669 : StackLang.HolProg 64 :=
.seq NamedBody845_109 NamedBody845_668

def NamedBody845_670 : StackLang.HolProg 64 :=
.seq NamedBody845_108 NamedBody845_669

def NamedBody845_671 : StackLang.HolProg 64 :=
.seq NamedBody845_107 NamedBody845_670

def NamedBody845_672 : StackLang.HolProg 64 :=
.seq NamedBody845_106 NamedBody845_671

def NamedBody845_673 : StackLang.HolProg 64 :=
.seq NamedBody845_105 NamedBody845_672

def NamedBody845_674 : StackLang.HolProg 64 :=
.seq NamedBody845_104 NamedBody845_673

def NamedBody845_675 : StackLang.HolProg 64 :=
.seq NamedBody845_103 NamedBody845_674

def NamedBody845_676 : StackLang.HolProg 64 :=
.seq NamedBody845_102 NamedBody845_675

def NamedBody845_677 : StackLang.HolProg 64 :=
.seq NamedBody845_101 NamedBody845_676

def NamedBody845_678 : StackLang.HolProg 64 :=
.seq NamedBody845_100 NamedBody845_677

def NamedBody845_679 : StackLang.HolProg 64 :=
.seq NamedBody845_99 NamedBody845_678

def NamedBody845_680 : StackLang.HolProg 64 :=
.seq NamedBody845_98 NamedBody845_679

def NamedBody845_681 : StackLang.HolProg 64 :=
.seq NamedBody845_97 NamedBody845_680

def NamedBody845_682 : StackLang.HolProg 64 :=
.seq NamedBody845_96 NamedBody845_681

def NamedBody845_683 : StackLang.HolProg 64 :=
.seq NamedBody845_95 NamedBody845_682

def NamedBody845_684 : StackLang.HolProg 64 :=
.seq NamedBody845_94 NamedBody845_683

def NamedBody845_685 : StackLang.HolProg 64 :=
.seq NamedBody845_93 NamedBody845_684

def NamedBody845_686 : StackLang.HolProg 64 :=
.seq NamedBody845_92 NamedBody845_685

def NamedBody845_687 : StackLang.HolProg 64 :=
.seq NamedBody845_91 NamedBody845_686

def NamedBody845_688 : StackLang.HolProg 64 :=
.seq NamedBody845_90 NamedBody845_687

def NamedBody845_689 : StackLang.HolProg 64 :=
.seq NamedBody845_89 NamedBody845_688

def NamedBody845_690 : StackLang.HolProg 64 :=
.seq NamedBody845_88 NamedBody845_689

def NamedBody845_691 : StackLang.HolProg 64 :=
.seq NamedBody845_87 NamedBody845_690

def NamedBody845_692 : StackLang.HolProg 64 :=
.seq NamedBody845_86 NamedBody845_691

def NamedBody845_693 : StackLang.HolProg 64 :=
.seq NamedBody845_85 NamedBody845_692

def NamedBody845_694 : StackLang.HolProg 64 :=
.seq NamedBody845_84 NamedBody845_693

def NamedBody845_695 : StackLang.HolProg 64 :=
.seq NamedBody845_83 NamedBody845_694

def NamedBody845_696 : StackLang.HolProg 64 :=
.seq NamedBody845_82 NamedBody845_695

def NamedBody845_697 : StackLang.HolProg 64 :=
.seq NamedBody845_81 NamedBody845_696

def NamedBody845_698 : StackLang.HolProg 64 :=
.seq NamedBody845_80 NamedBody845_697

def NamedBody845_699 : StackLang.HolProg 64 :=
.seq NamedBody845_79 NamedBody845_698

def NamedBody845_700 : StackLang.HolProg 64 :=
.seq NamedBody845_78 NamedBody845_699

def NamedBody845_701 : StackLang.HolProg 64 :=
.seq NamedBody845_77 NamedBody845_700

def NamedBody845_702 : StackLang.HolProg 64 :=
.seq NamedBody845_76 NamedBody845_701

def NamedBody845_703 : StackLang.HolProg 64 :=
.seq NamedBody845_75 NamedBody845_702

def NamedBody845_704 : StackLang.HolProg 64 :=
.seq NamedBody845_74 NamedBody845_703

def NamedBody845_705 : StackLang.HolProg 64 :=
.seq NamedBody845_73 NamedBody845_704

def NamedBody845_706 : StackLang.HolProg 64 :=
.seq NamedBody845_72 NamedBody845_705

def NamedBody845_707 : StackLang.HolProg 64 :=
.seq NamedBody845_71 NamedBody845_706

def NamedBody845_708 : StackLang.HolProg 64 :=
.seq NamedBody845_70 NamedBody845_707

def NamedBody845_709 : StackLang.HolProg 64 :=
.seq NamedBody845_69 NamedBody845_708

def NamedBody845_710 : StackLang.HolProg 64 :=
.seq NamedBody845_68 NamedBody845_709

def NamedBody845_711 : StackLang.HolProg 64 :=
.seq NamedBody845_67 NamedBody845_710

def NamedBody845_712 : StackLang.HolProg 64 :=
.seq NamedBody845_66 NamedBody845_711

def NamedBody845_713 : StackLang.HolProg 64 :=
.seq NamedBody845_11 NamedBody845_712

def NamedBody845_714 : StackLang.HolProg 64 :=
.seq NamedBody845_8 NamedBody845_713

def NamedBody845_715 : StackLang.HolProg 64 :=
.seq NamedBody845_7 NamedBody845_714

def NamedBody845_716 : StackLang.HolProg 64 :=
.seq NamedBody845_6 NamedBody845_715

def Named845 : Nat × StackLang.HolProg 64 := (845, NamedBody845_716)
theorem Named845_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed845 = Named845 := by
  kernel_rfl
#print axioms Named845_eq
end InitECandidate.Proofs.BackendStages
