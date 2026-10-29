import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed807
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody807_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody807_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody807_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody807_3 : StackLang.HolProg 64 :=
.seq NamedBody807_1 NamedBody807_2

def NamedBody807_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody807_3 NamedBody807_4

def NamedBody807_6 : StackLang.HolProg 64 :=
.seq NamedBody807_0 NamedBody807_5

def NamedBody807_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody807_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody807_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody807_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody807_11 : StackLang.HolProg 64 :=
.seq NamedBody807_9 NamedBody807_10

def NamedBody807_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3954#64)

def NamedBody807_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody807_15 : StackLang.HolProg 64 :=
.seq NamedBody807_13 NamedBody807_14

def NamedBody807_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody807_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody807_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody807_19 : StackLang.HolProg 64 :=
.seq NamedBody807_17 NamedBody807_18

def NamedBody807_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody807_19 NamedBody807_20

def NamedBody807_22 : StackLang.HolProg 64 :=
.seq NamedBody807_16 NamedBody807_21

def NamedBody807_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody807_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody807_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 807 3

def NamedBody807_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody807_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody807_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody807_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody807_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody807_32 : StackLang.HolProg 64 :=
.seq NamedBody807_30 NamedBody807_31

def NamedBody807_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody807_34 : StackLang.HolProg 64 :=
.seq NamedBody807_32 NamedBody807_33

def NamedBody807_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody807_36 : StackLang.HolProg 64 :=
.seq NamedBody807_34 NamedBody807_35

def NamedBody807_37 : StackLang.HolProg 64 :=
.seq NamedBody807_29 NamedBody807_36

def NamedBody807_38 : StackLang.HolProg 64 :=
.seq NamedBody807_28 NamedBody807_37

def NamedBody807_39 : StackLang.HolProg 64 :=
.seq NamedBody807_27 NamedBody807_38

def NamedBody807_40 : StackLang.HolProg 64 :=
.seq NamedBody807_26 NamedBody807_39

def NamedBody807_41 : StackLang.HolProg 64 :=
.seq NamedBody807_25 NamedBody807_40

def NamedBody807_42 : StackLang.HolProg 64 :=
.seq NamedBody807_24 NamedBody807_41

def NamedBody807_43 : StackLang.HolProg 64 :=
.seq NamedBody807_23 NamedBody807_42

def NamedBody807_44 : StackLang.HolProg 64 :=
.seq NamedBody807_22 NamedBody807_43

def NamedBody807_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody807_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody807_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody807_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody807_52 : StackLang.HolProg 64 :=
.seq NamedBody807_50 NamedBody807_51

def NamedBody807_53 : StackLang.HolProg 64 :=
.seq NamedBody807_49 NamedBody807_52

def NamedBody807_54 : StackLang.HolProg 64 :=
.seq NamedBody807_48 NamedBody807_53

def NamedBody807_55 : StackLang.HolProg 64 :=
.seq NamedBody807_47 NamedBody807_54

def NamedBody807_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody807_58 : StackLang.HolProg 64 :=
.seq NamedBody807_56 NamedBody807_57

def NamedBody807_59 : StackLang.HolProg 64 :=
.call (some (NamedBody807_55, 1, 807, 2)) (Sum.inl 146) (some (NamedBody807_58, 807, 3))

def NamedBody807_60 : StackLang.HolProg 64 :=
.seq NamedBody807_46 NamedBody807_59

def NamedBody807_61 : StackLang.HolProg 64 :=
.seq NamedBody807_45 NamedBody807_60

def NamedBody807_62 : StackLang.HolProg 64 :=
.seq NamedBody807_44 NamedBody807_61

def NamedBody807_63 : StackLang.HolProg 64 :=
.seq NamedBody807_15 NamedBody807_62

def NamedBody807_64 : StackLang.HolProg 64 :=
.seq NamedBody807_12 NamedBody807_63

def NamedBody807_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody807_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody807_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody807_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody807_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551224#64))

def NamedBody807_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 1344#64))

def NamedBody807_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 1352#64))

def NamedBody807_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 1360#64))

def NamedBody807_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 1368#64))

def NamedBody807_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody807_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody807_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody807_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody807_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody807_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody807_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody807_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody807_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody807_86 : StackLang.HolProg 64 :=
.seq NamedBody807_84 NamedBody807_85

def NamedBody807_87 : StackLang.HolProg 64 :=
.seq NamedBody807_83 NamedBody807_86

def NamedBody807_88 : StackLang.HolProg 64 :=
.seq NamedBody807_82 NamedBody807_87

def NamedBody807_89 : StackLang.HolProg 64 :=
.seq NamedBody807_81 NamedBody807_88

def NamedBody807_90 : StackLang.HolProg 64 :=
.seq NamedBody807_80 NamedBody807_89

def NamedBody807_91 : StackLang.HolProg 64 :=
.seq NamedBody807_79 NamedBody807_90

def NamedBody807_92 : StackLang.HolProg 64 :=
.seq NamedBody807_78 NamedBody807_91

def NamedBody807_93 : StackLang.HolProg 64 :=
.seq NamedBody807_77 NamedBody807_92

def NamedBody807_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3955#64)

def NamedBody807_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody807_97 : StackLang.HolProg 64 :=
.seq NamedBody807_95 NamedBody807_96

def NamedBody807_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody807_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody807_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody807_101 : StackLang.HolProg 64 :=
.seq NamedBody807_99 NamedBody807_100

def NamedBody807_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody807_101 NamedBody807_102

def NamedBody807_104 : StackLang.HolProg 64 :=
.seq NamedBody807_98 NamedBody807_103

def NamedBody807_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody807_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody807_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 807 5

def NamedBody807_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody807_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody807_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody807_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody807_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody807_114 : StackLang.HolProg 64 :=
.seq NamedBody807_112 NamedBody807_113

def NamedBody807_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody807_116 : StackLang.HolProg 64 :=
.seq NamedBody807_114 NamedBody807_115

def NamedBody807_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody807_118 : StackLang.HolProg 64 :=
.seq NamedBody807_116 NamedBody807_117

def NamedBody807_119 : StackLang.HolProg 64 :=
.seq NamedBody807_111 NamedBody807_118

def NamedBody807_120 : StackLang.HolProg 64 :=
.seq NamedBody807_110 NamedBody807_119

def NamedBody807_121 : StackLang.HolProg 64 :=
.seq NamedBody807_109 NamedBody807_120

def NamedBody807_122 : StackLang.HolProg 64 :=
.seq NamedBody807_108 NamedBody807_121

def NamedBody807_123 : StackLang.HolProg 64 :=
.seq NamedBody807_107 NamedBody807_122

def NamedBody807_124 : StackLang.HolProg 64 :=
.seq NamedBody807_106 NamedBody807_123

def NamedBody807_125 : StackLang.HolProg 64 :=
.seq NamedBody807_105 NamedBody807_124

def NamedBody807_126 : StackLang.HolProg 64 :=
.seq NamedBody807_104 NamedBody807_125

def NamedBody807_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody807_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody807_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody807_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody807_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody807_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody807_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody807_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody807_138 : StackLang.HolProg 64 :=
.seq NamedBody807_136 NamedBody807_137

def NamedBody807_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody807_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody807_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody807_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody807_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody807_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody807_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody807_146 : StackLang.HolProg 64 :=
.seq NamedBody807_144 NamedBody807_145

def NamedBody807_147 : StackLang.HolProg 64 :=
.seq NamedBody807_143 NamedBody807_146

def NamedBody807_148 : StackLang.HolProg 64 :=
.seq NamedBody807_142 NamedBody807_147

def NamedBody807_149 : StackLang.HolProg 64 :=
.seq NamedBody807_141 NamedBody807_148

def NamedBody807_150 : StackLang.HolProg 64 :=
.seq NamedBody807_140 NamedBody807_149

def NamedBody807_151 : StackLang.HolProg 64 :=
.seq NamedBody807_139 NamedBody807_150

def NamedBody807_152 : StackLang.HolProg 64 :=
.seq NamedBody807_138 NamedBody807_151

def NamedBody807_153 : StackLang.HolProg 64 :=
.seq NamedBody807_135 NamedBody807_152

def NamedBody807_154 : StackLang.HolProg 64 :=
.seq NamedBody807_134 NamedBody807_153

def NamedBody807_155 : StackLang.HolProg 64 :=
.seq NamedBody807_133 NamedBody807_154

def NamedBody807_156 : StackLang.HolProg 64 :=
.seq NamedBody807_132 NamedBody807_155

def NamedBody807_157 : StackLang.HolProg 64 :=
.seq NamedBody807_131 NamedBody807_156

def NamedBody807_158 : StackLang.HolProg 64 :=
.seq NamedBody807_130 NamedBody807_157

def NamedBody807_159 : StackLang.HolProg 64 :=
.seq NamedBody807_129 NamedBody807_158

def NamedBody807_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody807_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody807_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody807_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody807_164 : StackLang.HolProg 64 :=
.seq NamedBody807_162 NamedBody807_163

def NamedBody807_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody807_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody807_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody807_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody807_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody807_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody807_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody807_172 : StackLang.HolProg 64 :=
.seq NamedBody807_170 NamedBody807_171

def NamedBody807_173 : StackLang.HolProg 64 :=
.seq NamedBody807_169 NamedBody807_172

def NamedBody807_174 : StackLang.HolProg 64 :=
.seq NamedBody807_168 NamedBody807_173

def NamedBody807_175 : StackLang.HolProg 64 :=
.seq NamedBody807_167 NamedBody807_174

def NamedBody807_176 : StackLang.HolProg 64 :=
.seq NamedBody807_166 NamedBody807_175

def NamedBody807_177 : StackLang.HolProg 64 :=
.seq NamedBody807_165 NamedBody807_176

def NamedBody807_178 : StackLang.HolProg 64 :=
.seq NamedBody807_164 NamedBody807_177

def NamedBody807_179 : StackLang.HolProg 64 :=
.seq NamedBody807_161 NamedBody807_178

def NamedBody807_180 : StackLang.HolProg 64 :=
.seq NamedBody807_160 NamedBody807_179

def NamedBody807_181 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody807_182 : StackLang.HolProg 64 :=
.seq NamedBody807_180 NamedBody807_181

def NamedBody807_183 : StackLang.HolProg 64 :=
.call (some (NamedBody807_159, 1, 807, 4)) (Sum.inl 102) (some (NamedBody807_182, 807, 5))

def NamedBody807_184 : StackLang.HolProg 64 :=
.seq NamedBody807_128 NamedBody807_183

def NamedBody807_185 : StackLang.HolProg 64 :=
.seq NamedBody807_127 NamedBody807_184

def NamedBody807_186 : StackLang.HolProg 64 :=
.seq NamedBody807_126 NamedBody807_185

def NamedBody807_187 : StackLang.HolProg 64 :=
.seq NamedBody807_97 NamedBody807_186

def NamedBody807_188 : StackLang.HolProg 64 :=
.seq NamedBody807_94 NamedBody807_187

def NamedBody807_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody807_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody807_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody807_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody807_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody807_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody807_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody807_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody807_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody807_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody807_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody807_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody807_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody807_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody807_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def NamedBody807_210 : StackLang.HolProg 64 :=
.seq NamedBody807_208 NamedBody807_209

def NamedBody807_211 : StackLang.HolProg 64 :=
.seq NamedBody807_207 NamedBody807_210

def NamedBody807_212 : StackLang.HolProg 64 :=
.seq NamedBody807_206 NamedBody807_211

def NamedBody807_213 : StackLang.HolProg 64 :=
.seq NamedBody807_205 NamedBody807_212

def NamedBody807_214 : StackLang.HolProg 64 :=
.seq NamedBody807_204 NamedBody807_213

def NamedBody807_215 : StackLang.HolProg 64 :=
.seq NamedBody807_203 NamedBody807_214

def NamedBody807_216 : StackLang.HolProg 64 :=
.seq NamedBody807_202 NamedBody807_215

def NamedBody807_217 : StackLang.HolProg 64 :=
.seq NamedBody807_201 NamedBody807_216

def NamedBody807_218 : StackLang.HolProg 64 :=
.seq NamedBody807_200 NamedBody807_217

def NamedBody807_219 : StackLang.HolProg 64 :=
.seq NamedBody807_199 NamedBody807_218

def NamedBody807_220 : StackLang.HolProg 64 :=
.seq NamedBody807_198 NamedBody807_219

def NamedBody807_221 : StackLang.HolProg 64 :=
.seq NamedBody807_197 NamedBody807_220

def NamedBody807_222 : StackLang.HolProg 64 :=
.seq NamedBody807_196 NamedBody807_221

def NamedBody807_223 : StackLang.HolProg 64 :=
.seq NamedBody807_195 NamedBody807_222

def NamedBody807_224 : StackLang.HolProg 64 :=
.seq NamedBody807_194 NamedBody807_223

def NamedBody807_225 : StackLang.HolProg 64 :=
.seq NamedBody807_193 NamedBody807_224

def NamedBody807_226 : StackLang.HolProg 64 :=
.seq NamedBody807_192 NamedBody807_225

def NamedBody807_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody807_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody807_229 : StackLang.HolProg 64 :=
.seq NamedBody807_227 NamedBody807_228

def NamedBody807_230 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody807_226 NamedBody807_229

def NamedBody807_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody807_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody807_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody807_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody807_235 : StackLang.HolProg 64 :=
.seq NamedBody807_233 NamedBody807_234

def NamedBody807_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3956#64)

def NamedBody807_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody807_239 : StackLang.HolProg 64 :=
.seq NamedBody807_237 NamedBody807_238

def NamedBody807_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody807_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody807_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody807_243 : StackLang.HolProg 64 :=
.seq NamedBody807_241 NamedBody807_242

def NamedBody807_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_245 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody807_243 NamedBody807_244

def NamedBody807_246 : StackLang.HolProg 64 :=
.seq NamedBody807_240 NamedBody807_245

def NamedBody807_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody807_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody807_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 807 7

def NamedBody807_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody807_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody807_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody807_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody807_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody807_256 : StackLang.HolProg 64 :=
.seq NamedBody807_254 NamedBody807_255

def NamedBody807_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody807_258 : StackLang.HolProg 64 :=
.seq NamedBody807_256 NamedBody807_257

def NamedBody807_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody807_260 : StackLang.HolProg 64 :=
.seq NamedBody807_258 NamedBody807_259

def NamedBody807_261 : StackLang.HolProg 64 :=
.seq NamedBody807_253 NamedBody807_260

def NamedBody807_262 : StackLang.HolProg 64 :=
.seq NamedBody807_252 NamedBody807_261

def NamedBody807_263 : StackLang.HolProg 64 :=
.seq NamedBody807_251 NamedBody807_262

def NamedBody807_264 : StackLang.HolProg 64 :=
.seq NamedBody807_250 NamedBody807_263

def NamedBody807_265 : StackLang.HolProg 64 :=
.seq NamedBody807_249 NamedBody807_264

def NamedBody807_266 : StackLang.HolProg 64 :=
.seq NamedBody807_248 NamedBody807_265

def NamedBody807_267 : StackLang.HolProg 64 :=
.seq NamedBody807_247 NamedBody807_266

def NamedBody807_268 : StackLang.HolProg 64 :=
.seq NamedBody807_246 NamedBody807_267

def NamedBody807_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody807_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody807_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody807_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody807_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody807_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody807_278 : StackLang.HolProg 64 :=
.seq NamedBody807_276 NamedBody807_277

def NamedBody807_279 : StackLang.HolProg 64 :=
.seq NamedBody807_275 NamedBody807_278

def NamedBody807_280 : StackLang.HolProg 64 :=
.seq NamedBody807_274 NamedBody807_279

def NamedBody807_281 : StackLang.HolProg 64 :=
.seq NamedBody807_273 NamedBody807_280

def NamedBody807_282 : StackLang.HolProg 64 :=
.seq NamedBody807_272 NamedBody807_281

def NamedBody807_283 : StackLang.HolProg 64 :=
.seq NamedBody807_271 NamedBody807_282

def NamedBody807_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody807_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody807_286 : StackLang.HolProg 64 :=
.seq NamedBody807_284 NamedBody807_285

def NamedBody807_287 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody807_288 : StackLang.HolProg 64 :=
.seq NamedBody807_286 NamedBody807_287

def NamedBody807_289 : StackLang.HolProg 64 :=
.call (some (NamedBody807_283, 1, 807, 6)) (Sum.inl 117) (some (NamedBody807_288, 807, 7))

def NamedBody807_290 : StackLang.HolProg 64 :=
.seq NamedBody807_270 NamedBody807_289

def NamedBody807_291 : StackLang.HolProg 64 :=
.seq NamedBody807_269 NamedBody807_290

def NamedBody807_292 : StackLang.HolProg 64 :=
.seq NamedBody807_268 NamedBody807_291

def NamedBody807_293 : StackLang.HolProg 64 :=
.seq NamedBody807_239 NamedBody807_292

def NamedBody807_294 : StackLang.HolProg 64 :=
.seq NamedBody807_236 NamedBody807_293

def NamedBody807_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody807_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody807_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody807_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody807_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody807_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody807_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody807_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody807_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody807_308 : StackLang.HolProg 64 :=
.seq NamedBody807_306 NamedBody807_307

def NamedBody807_309 : StackLang.HolProg 64 :=
.seq NamedBody807_305 NamedBody807_308

def NamedBody807_310 : StackLang.HolProg 64 :=
.seq NamedBody807_304 NamedBody807_309

def NamedBody807_311 : StackLang.HolProg 64 :=
.seq NamedBody807_303 NamedBody807_310

def NamedBody807_312 : StackLang.HolProg 64 :=
.seq NamedBody807_302 NamedBody807_311

def NamedBody807_313 : StackLang.HolProg 64 :=
.seq NamedBody807_301 NamedBody807_312

def NamedBody807_314 : StackLang.HolProg 64 :=
.seq NamedBody807_300 NamedBody807_313

def NamedBody807_315 : StackLang.HolProg 64 :=
.seq NamedBody807_299 NamedBody807_314

def NamedBody807_316 : StackLang.HolProg 64 :=
.seq NamedBody807_298 NamedBody807_315

def NamedBody807_317 : StackLang.HolProg 64 :=
.seq NamedBody807_297 NamedBody807_316

def NamedBody807_318 : StackLang.HolProg 64 :=
.seq NamedBody807_296 NamedBody807_317

def NamedBody807_319 : StackLang.HolProg 64 :=
.seq NamedBody807_295 NamedBody807_318

def NamedBody807_320 : StackLang.HolProg 64 :=
.seq NamedBody807_294 NamedBody807_319

def NamedBody807_321 : StackLang.HolProg 64 :=
.seq NamedBody807_235 NamedBody807_320

def NamedBody807_322 : StackLang.HolProg 64 :=
.seq NamedBody807_232 NamedBody807_321

def NamedBody807_323 : StackLang.HolProg 64 :=
.seq NamedBody807_231 NamedBody807_322

def NamedBody807_324 : StackLang.HolProg 64 :=
.seq NamedBody807_230 NamedBody807_323

def NamedBody807_325 : StackLang.HolProg 64 :=
.seq NamedBody807_191 NamedBody807_324

def NamedBody807_326 : StackLang.HolProg 64 :=
.seq NamedBody807_190 NamedBody807_325

def NamedBody807_327 : StackLang.HolProg 64 :=
.seq NamedBody807_189 NamedBody807_326

def NamedBody807_328 : StackLang.HolProg 64 :=
.seq NamedBody807_188 NamedBody807_327

def NamedBody807_329 : StackLang.HolProg 64 :=
.seq NamedBody807_93 NamedBody807_328

def NamedBody807_330 : StackLang.HolProg 64 :=
.seq NamedBody807_76 NamedBody807_329

def NamedBody807_331 : StackLang.HolProg 64 :=
.seq NamedBody807_75 NamedBody807_330

def NamedBody807_332 : StackLang.HolProg 64 :=
.seq NamedBody807_74 NamedBody807_331

def NamedBody807_333 : StackLang.HolProg 64 :=
.seq NamedBody807_73 NamedBody807_332

def NamedBody807_334 : StackLang.HolProg 64 :=
.seq NamedBody807_72 NamedBody807_333

def NamedBody807_335 : StackLang.HolProg 64 :=
.seq NamedBody807_71 NamedBody807_334

def NamedBody807_336 : StackLang.HolProg 64 :=
.seq NamedBody807_70 NamedBody807_335

def NamedBody807_337 : StackLang.HolProg 64 :=
.seq NamedBody807_69 NamedBody807_336

def NamedBody807_338 : StackLang.HolProg 64 :=
.seq NamedBody807_68 NamedBody807_337

def NamedBody807_339 : StackLang.HolProg 64 :=
.seq NamedBody807_67 NamedBody807_338

def NamedBody807_340 : StackLang.HolProg 64 :=
.seq NamedBody807_66 NamedBody807_339

def NamedBody807_341 : StackLang.HolProg 64 :=
.seq NamedBody807_65 NamedBody807_340

def NamedBody807_342 : StackLang.HolProg 64 :=
.seq NamedBody807_64 NamedBody807_341

def NamedBody807_343 : StackLang.HolProg 64 :=
.seq NamedBody807_11 NamedBody807_342

def NamedBody807_344 : StackLang.HolProg 64 :=
.seq NamedBody807_8 NamedBody807_343

def NamedBody807_345 : StackLang.HolProg 64 :=
.seq NamedBody807_7 NamedBody807_344

def NamedBody807_346 : StackLang.HolProg 64 :=
.seq NamedBody807_6 NamedBody807_345

def Named807 : Nat × StackLang.HolProg 64 := (807, NamedBody807_346)
theorem Named807_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed807 = Named807 := by
  kernel_rfl
#print axioms Named807_eq
end InitECandidate.Proofs.BackendStages
