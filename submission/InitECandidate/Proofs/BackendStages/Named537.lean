import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed537
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody537_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody537_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody537_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody537_3 : StackLang.HolProg 64 :=
.seq NamedBody537_1 NamedBody537_2

def NamedBody537_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody537_3 NamedBody537_4

def NamedBody537_6 : StackLang.HolProg 64 :=
.seq NamedBody537_0 NamedBody537_5

def NamedBody537_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody537_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody537_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody537_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody537_11 : StackLang.HolProg 64 :=
.seq NamedBody537_9 NamedBody537_10

def NamedBody537_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1784#64)

def NamedBody537_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody537_15 : StackLang.HolProg 64 :=
.seq NamedBody537_13 NamedBody537_14

def NamedBody537_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody537_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody537_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody537_19 : StackLang.HolProg 64 :=
.seq NamedBody537_17 NamedBody537_18

def NamedBody537_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody537_19 NamedBody537_20

def NamedBody537_22 : StackLang.HolProg 64 :=
.seq NamedBody537_16 NamedBody537_21

def NamedBody537_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody537_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody537_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 537 3

def NamedBody537_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody537_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody537_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody537_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody537_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody537_32 : StackLang.HolProg 64 :=
.seq NamedBody537_30 NamedBody537_31

def NamedBody537_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody537_34 : StackLang.HolProg 64 :=
.seq NamedBody537_32 NamedBody537_33

def NamedBody537_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody537_36 : StackLang.HolProg 64 :=
.seq NamedBody537_34 NamedBody537_35

def NamedBody537_37 : StackLang.HolProg 64 :=
.seq NamedBody537_29 NamedBody537_36

def NamedBody537_38 : StackLang.HolProg 64 :=
.seq NamedBody537_28 NamedBody537_37

def NamedBody537_39 : StackLang.HolProg 64 :=
.seq NamedBody537_27 NamedBody537_38

def NamedBody537_40 : StackLang.HolProg 64 :=
.seq NamedBody537_26 NamedBody537_39

def NamedBody537_41 : StackLang.HolProg 64 :=
.seq NamedBody537_25 NamedBody537_40

def NamedBody537_42 : StackLang.HolProg 64 :=
.seq NamedBody537_24 NamedBody537_41

def NamedBody537_43 : StackLang.HolProg 64 :=
.seq NamedBody537_23 NamedBody537_42

def NamedBody537_44 : StackLang.HolProg 64 :=
.seq NamedBody537_22 NamedBody537_43

def NamedBody537_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody537_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody537_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody537_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody537_52 : StackLang.HolProg 64 :=
.seq NamedBody537_50 NamedBody537_51

def NamedBody537_53 : StackLang.HolProg 64 :=
.seq NamedBody537_49 NamedBody537_52

def NamedBody537_54 : StackLang.HolProg 64 :=
.seq NamedBody537_48 NamedBody537_53

def NamedBody537_55 : StackLang.HolProg 64 :=
.seq NamedBody537_47 NamedBody537_54

def NamedBody537_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody537_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody537_58 : StackLang.HolProg 64 :=
.seq NamedBody537_56 NamedBody537_57

def NamedBody537_59 : StackLang.HolProg 64 :=
.call (some (NamedBody537_55, 1, 537, 2)) (Sum.inl 470) (some (NamedBody537_58, 537, 3))

def NamedBody537_60 : StackLang.HolProg 64 :=
.seq NamedBody537_46 NamedBody537_59

def NamedBody537_61 : StackLang.HolProg 64 :=
.seq NamedBody537_45 NamedBody537_60

def NamedBody537_62 : StackLang.HolProg 64 :=
.seq NamedBody537_44 NamedBody537_61

def NamedBody537_63 : StackLang.HolProg 64 :=
.seq NamedBody537_15 NamedBody537_62

def NamedBody537_64 : StackLang.HolProg 64 :=
.seq NamedBody537_12 NamedBody537_63

def NamedBody537_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody537_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody537_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody537_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody537_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody537_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody537_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody537_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody537_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody537_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody537_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_78 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody537_79 : StackLang.HolProg 64 :=
.seq NamedBody537_77 NamedBody537_78

def NamedBody537_80 : StackLang.HolProg 64 :=
.seq NamedBody537_76 NamedBody537_79

def NamedBody537_81 : StackLang.HolProg 64 :=
.seq NamedBody537_75 NamedBody537_80

def NamedBody537_82 : StackLang.HolProg 64 :=
.seq NamedBody537_74 NamedBody537_81

def NamedBody537_83 : StackLang.HolProg 64 :=
.seq NamedBody537_73 NamedBody537_82

def NamedBody537_84 : StackLang.HolProg 64 :=
.seq NamedBody537_72 NamedBody537_83

def NamedBody537_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody537_84 NamedBody537_85

def NamedBody537_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody537_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody537_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody537_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody537_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody537_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody537_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody537_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody537_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody537_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody537_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody537_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody537_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1785#64)

def NamedBody537_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody537_109 : StackLang.HolProg 64 :=
.seq NamedBody537_107 NamedBody537_108

def NamedBody537_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody537_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody537_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody537_113 : StackLang.HolProg 64 :=
.seq NamedBody537_111 NamedBody537_112

def NamedBody537_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody537_113 NamedBody537_114

def NamedBody537_116 : StackLang.HolProg 64 :=
.seq NamedBody537_110 NamedBody537_115

def NamedBody537_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody537_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody537_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 537 5

def NamedBody537_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody537_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody537_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody537_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody537_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody537_126 : StackLang.HolProg 64 :=
.seq NamedBody537_124 NamedBody537_125

def NamedBody537_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody537_128 : StackLang.HolProg 64 :=
.seq NamedBody537_126 NamedBody537_127

def NamedBody537_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody537_130 : StackLang.HolProg 64 :=
.seq NamedBody537_128 NamedBody537_129

def NamedBody537_131 : StackLang.HolProg 64 :=
.seq NamedBody537_123 NamedBody537_130

def NamedBody537_132 : StackLang.HolProg 64 :=
.seq NamedBody537_122 NamedBody537_131

def NamedBody537_133 : StackLang.HolProg 64 :=
.seq NamedBody537_121 NamedBody537_132

def NamedBody537_134 : StackLang.HolProg 64 :=
.seq NamedBody537_120 NamedBody537_133

def NamedBody537_135 : StackLang.HolProg 64 :=
.seq NamedBody537_119 NamedBody537_134

def NamedBody537_136 : StackLang.HolProg 64 :=
.seq NamedBody537_118 NamedBody537_135

def NamedBody537_137 : StackLang.HolProg 64 :=
.seq NamedBody537_117 NamedBody537_136

def NamedBody537_138 : StackLang.HolProg 64 :=
.seq NamedBody537_116 NamedBody537_137

def NamedBody537_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody537_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody537_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody537_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_146 : StackLang.HolProg 64 :=
.seq NamedBody537_144 NamedBody537_145

def NamedBody537_147 : StackLang.HolProg 64 :=
.seq NamedBody537_143 NamedBody537_146

def NamedBody537_148 : StackLang.HolProg 64 :=
.seq NamedBody537_142 NamedBody537_147

def NamedBody537_149 : StackLang.HolProg 64 :=
.seq NamedBody537_141 NamedBody537_148

def NamedBody537_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody537_152 : StackLang.HolProg 64 :=
.seq NamedBody537_150 NamedBody537_151

def NamedBody537_153 : StackLang.HolProg 64 :=
.call (some (NamedBody537_149, 1, 537, 4)) (Sum.inl 476) (some (NamedBody537_152, 537, 5))

def NamedBody537_154 : StackLang.HolProg 64 :=
.seq NamedBody537_140 NamedBody537_153

def NamedBody537_155 : StackLang.HolProg 64 :=
.seq NamedBody537_139 NamedBody537_154

def NamedBody537_156 : StackLang.HolProg 64 :=
.seq NamedBody537_138 NamedBody537_155

def NamedBody537_157 : StackLang.HolProg 64 :=
.seq NamedBody537_109 NamedBody537_156

def NamedBody537_158 : StackLang.HolProg 64 :=
.seq NamedBody537_106 NamedBody537_157

def NamedBody537_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody537_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody537_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1786#64)

def NamedBody537_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody537_165 : StackLang.HolProg 64 :=
.seq NamedBody537_163 NamedBody537_164

def NamedBody537_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody537_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody537_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody537_169 : StackLang.HolProg 64 :=
.seq NamedBody537_167 NamedBody537_168

def NamedBody537_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody537_169 NamedBody537_170

def NamedBody537_172 : StackLang.HolProg 64 :=
.seq NamedBody537_166 NamedBody537_171

def NamedBody537_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody537_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody537_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 537 7

def NamedBody537_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody537_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody537_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody537_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody537_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody537_182 : StackLang.HolProg 64 :=
.seq NamedBody537_180 NamedBody537_181

def NamedBody537_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody537_184 : StackLang.HolProg 64 :=
.seq NamedBody537_182 NamedBody537_183

def NamedBody537_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody537_186 : StackLang.HolProg 64 :=
.seq NamedBody537_184 NamedBody537_185

def NamedBody537_187 : StackLang.HolProg 64 :=
.seq NamedBody537_179 NamedBody537_186

def NamedBody537_188 : StackLang.HolProg 64 :=
.seq NamedBody537_178 NamedBody537_187

def NamedBody537_189 : StackLang.HolProg 64 :=
.seq NamedBody537_177 NamedBody537_188

def NamedBody537_190 : StackLang.HolProg 64 :=
.seq NamedBody537_176 NamedBody537_189

def NamedBody537_191 : StackLang.HolProg 64 :=
.seq NamedBody537_175 NamedBody537_190

def NamedBody537_192 : StackLang.HolProg 64 :=
.seq NamedBody537_174 NamedBody537_191

def NamedBody537_193 : StackLang.HolProg 64 :=
.seq NamedBody537_173 NamedBody537_192

def NamedBody537_194 : StackLang.HolProg 64 :=
.seq NamedBody537_172 NamedBody537_193

def NamedBody537_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody537_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody537_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody537_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody537_202 : StackLang.HolProg 64 :=
.seq NamedBody537_200 NamedBody537_201

def NamedBody537_203 : StackLang.HolProg 64 :=
.seq NamedBody537_199 NamedBody537_202

def NamedBody537_204 : StackLang.HolProg 64 :=
.seq NamedBody537_198 NamedBody537_203

def NamedBody537_205 : StackLang.HolProg 64 :=
.seq NamedBody537_197 NamedBody537_204

def NamedBody537_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody537_207 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody537_208 : StackLang.HolProg 64 :=
.seq NamedBody537_206 NamedBody537_207

def NamedBody537_209 : StackLang.HolProg 64 :=
.call (some (NamedBody537_205, 1, 537, 6)) (Sum.inl 490) (some (NamedBody537_208, 537, 7))

def NamedBody537_210 : StackLang.HolProg 64 :=
.seq NamedBody537_196 NamedBody537_209

def NamedBody537_211 : StackLang.HolProg 64 :=
.seq NamedBody537_195 NamedBody537_210

def NamedBody537_212 : StackLang.HolProg 64 :=
.seq NamedBody537_194 NamedBody537_211

def NamedBody537_213 : StackLang.HolProg 64 :=
.seq NamedBody537_165 NamedBody537_212

def NamedBody537_214 : StackLang.HolProg 64 :=
.seq NamedBody537_162 NamedBody537_213

def NamedBody537_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody537_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody537_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody537_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody537_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody537_220 : StackLang.HolProg 64 :=
.seq NamedBody537_218 NamedBody537_219

def NamedBody537_221 : StackLang.HolProg 64 :=
.seq NamedBody537_217 NamedBody537_220

def NamedBody537_222 : StackLang.HolProg 64 :=
.seq NamedBody537_216 NamedBody537_221

def NamedBody537_223 : StackLang.HolProg 64 :=
.seq NamedBody537_215 NamedBody537_222

def NamedBody537_224 : StackLang.HolProg 64 :=
.seq NamedBody537_214 NamedBody537_223

def NamedBody537_225 : StackLang.HolProg 64 :=
.seq NamedBody537_161 NamedBody537_224

def NamedBody537_226 : StackLang.HolProg 64 :=
.seq NamedBody537_160 NamedBody537_225

def NamedBody537_227 : StackLang.HolProg 64 :=
.seq NamedBody537_159 NamedBody537_226

def NamedBody537_228 : StackLang.HolProg 64 :=
.seq NamedBody537_158 NamedBody537_227

def NamedBody537_229 : StackLang.HolProg 64 :=
.seq NamedBody537_105 NamedBody537_228

def NamedBody537_230 : StackLang.HolProg 64 :=
.seq NamedBody537_104 NamedBody537_229

def NamedBody537_231 : StackLang.HolProg 64 :=
.seq NamedBody537_103 NamedBody537_230

def NamedBody537_232 : StackLang.HolProg 64 :=
.seq NamedBody537_102 NamedBody537_231

def NamedBody537_233 : StackLang.HolProg 64 :=
.seq NamedBody537_101 NamedBody537_232

def NamedBody537_234 : StackLang.HolProg 64 :=
.seq NamedBody537_100 NamedBody537_233

def NamedBody537_235 : StackLang.HolProg 64 :=
.seq NamedBody537_99 NamedBody537_234

def NamedBody537_236 : StackLang.HolProg 64 :=
.seq NamedBody537_98 NamedBody537_235

def NamedBody537_237 : StackLang.HolProg 64 :=
.seq NamedBody537_97 NamedBody537_236

def NamedBody537_238 : StackLang.HolProg 64 :=
.seq NamedBody537_96 NamedBody537_237

def NamedBody537_239 : StackLang.HolProg 64 :=
.seq NamedBody537_95 NamedBody537_238

def NamedBody537_240 : StackLang.HolProg 64 :=
.seq NamedBody537_94 NamedBody537_239

def NamedBody537_241 : StackLang.HolProg 64 :=
.seq NamedBody537_93 NamedBody537_240

def NamedBody537_242 : StackLang.HolProg 64 :=
.seq NamedBody537_92 NamedBody537_241

def NamedBody537_243 : StackLang.HolProg 64 :=
.seq NamedBody537_91 NamedBody537_242

def NamedBody537_244 : StackLang.HolProg 64 :=
.seq NamedBody537_90 NamedBody537_243

def NamedBody537_245 : StackLang.HolProg 64 :=
.seq NamedBody537_89 NamedBody537_244

def NamedBody537_246 : StackLang.HolProg 64 :=
.seq NamedBody537_88 NamedBody537_245

def NamedBody537_247 : StackLang.HolProg 64 :=
.seq NamedBody537_87 NamedBody537_246

def NamedBody537_248 : StackLang.HolProg 64 :=
.seq NamedBody537_86 NamedBody537_247

def NamedBody537_249 : StackLang.HolProg 64 :=
.seq NamedBody537_71 NamedBody537_248

def NamedBody537_250 : StackLang.HolProg 64 :=
.seq NamedBody537_70 NamedBody537_249

def NamedBody537_251 : StackLang.HolProg 64 :=
.seq NamedBody537_69 NamedBody537_250

def NamedBody537_252 : StackLang.HolProg 64 :=
.seq NamedBody537_68 NamedBody537_251

def NamedBody537_253 : StackLang.HolProg 64 :=
.seq NamedBody537_67 NamedBody537_252

def NamedBody537_254 : StackLang.HolProg 64 :=
.seq NamedBody537_66 NamedBody537_253

def NamedBody537_255 : StackLang.HolProg 64 :=
.seq NamedBody537_65 NamedBody537_254

def NamedBody537_256 : StackLang.HolProg 64 :=
.seq NamedBody537_64 NamedBody537_255

def NamedBody537_257 : StackLang.HolProg 64 :=
.seq NamedBody537_11 NamedBody537_256

def NamedBody537_258 : StackLang.HolProg 64 :=
.seq NamedBody537_8 NamedBody537_257

def NamedBody537_259 : StackLang.HolProg 64 :=
.seq NamedBody537_7 NamedBody537_258

def NamedBody537_260 : StackLang.HolProg 64 :=
.seq NamedBody537_6 NamedBody537_259

def Named537 : Nat × StackLang.HolProg 64 := (537, NamedBody537_260)
theorem Named537_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed537 = Named537 := by
  kernel_rfl
#print axioms Named537_eq
end InitECandidate.Proofs.BackendStages
