import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed388
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody388_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody388_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody388_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody388_3 : StackLang.HolProg 64 :=
.seq NamedBody388_1 NamedBody388_2

def NamedBody388_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody388_3 NamedBody388_4

def NamedBody388_6 : StackLang.HolProg 64 :=
.seq NamedBody388_0 NamedBody388_5

def NamedBody388_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody388_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody388_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody388_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody388_11 : StackLang.HolProg 64 :=
.seq NamedBody388_9 NamedBody388_10

def NamedBody388_12 : StackLang.HolProg 64 :=
.seq NamedBody388_8 NamedBody388_11

def NamedBody388_13 : StackLang.HolProg 64 :=
.seq NamedBody388_7 NamedBody388_12

def NamedBody388_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1157#64)

def NamedBody388_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody388_17 : StackLang.HolProg 64 :=
.seq NamedBody388_15 NamedBody388_16

def NamedBody388_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody388_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody388_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody388_21 : StackLang.HolProg 64 :=
.seq NamedBody388_19 NamedBody388_20

def NamedBody388_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody388_21 NamedBody388_22

def NamedBody388_24 : StackLang.HolProg 64 :=
.seq NamedBody388_18 NamedBody388_23

def NamedBody388_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody388_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody388_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 388 3

def NamedBody388_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody388_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody388_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody388_34 : StackLang.HolProg 64 :=
.seq NamedBody388_32 NamedBody388_33

def NamedBody388_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody388_36 : StackLang.HolProg 64 :=
.seq NamedBody388_34 NamedBody388_35

def NamedBody388_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_38 : StackLang.HolProg 64 :=
.seq NamedBody388_36 NamedBody388_37

def NamedBody388_39 : StackLang.HolProg 64 :=
.seq NamedBody388_31 NamedBody388_38

def NamedBody388_40 : StackLang.HolProg 64 :=
.seq NamedBody388_30 NamedBody388_39

def NamedBody388_41 : StackLang.HolProg 64 :=
.seq NamedBody388_29 NamedBody388_40

def NamedBody388_42 : StackLang.HolProg 64 :=
.seq NamedBody388_28 NamedBody388_41

def NamedBody388_43 : StackLang.HolProg 64 :=
.seq NamedBody388_27 NamedBody388_42

def NamedBody388_44 : StackLang.HolProg 64 :=
.seq NamedBody388_26 NamedBody388_43

def NamedBody388_45 : StackLang.HolProg 64 :=
.seq NamedBody388_25 NamedBody388_44

def NamedBody388_46 : StackLang.HolProg 64 :=
.seq NamedBody388_24 NamedBody388_45

def NamedBody388_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody388_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody388_54 : StackLang.HolProg 64 :=
.seq NamedBody388_52 NamedBody388_53

def NamedBody388_55 : StackLang.HolProg 64 :=
.seq NamedBody388_51 NamedBody388_54

def NamedBody388_56 : StackLang.HolProg 64 :=
.seq NamedBody388_50 NamedBody388_55

def NamedBody388_57 : StackLang.HolProg 64 :=
.seq NamedBody388_49 NamedBody388_56

def NamedBody388_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody388_60 : StackLang.HolProg 64 :=
.seq NamedBody388_58 NamedBody388_59

def NamedBody388_61 : StackLang.HolProg 64 :=
.call (some (NamedBody388_57, 1, 388, 2)) (Sum.inl 186) (some (NamedBody388_60, 388, 3))

def NamedBody388_62 : StackLang.HolProg 64 :=
.seq NamedBody388_48 NamedBody388_61

def NamedBody388_63 : StackLang.HolProg 64 :=
.seq NamedBody388_47 NamedBody388_62

def NamedBody388_64 : StackLang.HolProg 64 :=
.seq NamedBody388_46 NamedBody388_63

def NamedBody388_65 : StackLang.HolProg 64 :=
.seq NamedBody388_17 NamedBody388_64

def NamedBody388_66 : StackLang.HolProg 64 :=
.seq NamedBody388_14 NamedBody388_65

def NamedBody388_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody388_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody388_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody388_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody388_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551600#64))

def NamedBody388_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551408#64))

def NamedBody388_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody388_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody388_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody388_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_78 : StackLang.HolProg 64 :=
.seq NamedBody388_76 NamedBody388_77

def NamedBody388_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1158#64)

def NamedBody388_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody388_82 : StackLang.HolProg 64 :=
.seq NamedBody388_80 NamedBody388_81

def NamedBody388_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody388_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody388_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody388_86 : StackLang.HolProg 64 :=
.seq NamedBody388_84 NamedBody388_85

def NamedBody388_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody388_86 NamedBody388_87

def NamedBody388_89 : StackLang.HolProg 64 :=
.seq NamedBody388_83 NamedBody388_88

def NamedBody388_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody388_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody388_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 388 5

def NamedBody388_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody388_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody388_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody388_99 : StackLang.HolProg 64 :=
.seq NamedBody388_97 NamedBody388_98

def NamedBody388_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody388_101 : StackLang.HolProg 64 :=
.seq NamedBody388_99 NamedBody388_100

def NamedBody388_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_103 : StackLang.HolProg 64 :=
.seq NamedBody388_101 NamedBody388_102

def NamedBody388_104 : StackLang.HolProg 64 :=
.seq NamedBody388_96 NamedBody388_103

def NamedBody388_105 : StackLang.HolProg 64 :=
.seq NamedBody388_95 NamedBody388_104

def NamedBody388_106 : StackLang.HolProg 64 :=
.seq NamedBody388_94 NamedBody388_105

def NamedBody388_107 : StackLang.HolProg 64 :=
.seq NamedBody388_93 NamedBody388_106

def NamedBody388_108 : StackLang.HolProg 64 :=
.seq NamedBody388_92 NamedBody388_107

def NamedBody388_109 : StackLang.HolProg 64 :=
.seq NamedBody388_91 NamedBody388_108

def NamedBody388_110 : StackLang.HolProg 64 :=
.seq NamedBody388_90 NamedBody388_109

def NamedBody388_111 : StackLang.HolProg 64 :=
.seq NamedBody388_89 NamedBody388_110

def NamedBody388_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody388_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody388_119 : StackLang.HolProg 64 :=
.seq NamedBody388_117 NamedBody388_118

def NamedBody388_120 : StackLang.HolProg 64 :=
.seq NamedBody388_116 NamedBody388_119

def NamedBody388_121 : StackLang.HolProg 64 :=
.seq NamedBody388_115 NamedBody388_120

def NamedBody388_122 : StackLang.HolProg 64 :=
.seq NamedBody388_114 NamedBody388_121

def NamedBody388_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody388_124 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody388_125 : StackLang.HolProg 64 :=
.seq NamedBody388_123 NamedBody388_124

def NamedBody388_126 : StackLang.HolProg 64 :=
.call (some (NamedBody388_122, 1, 388, 4)) (Sum.inl 66) (some (NamedBody388_125, 388, 5))

def NamedBody388_127 : StackLang.HolProg 64 :=
.seq NamedBody388_113 NamedBody388_126

def NamedBody388_128 : StackLang.HolProg 64 :=
.seq NamedBody388_112 NamedBody388_127

def NamedBody388_129 : StackLang.HolProg 64 :=
.seq NamedBody388_111 NamedBody388_128

def NamedBody388_130 : StackLang.HolProg 64 :=
.seq NamedBody388_82 NamedBody388_129

def NamedBody388_131 : StackLang.HolProg 64 :=
.seq NamedBody388_79 NamedBody388_130

def NamedBody388_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody388_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_134 : StackLang.HolProg 64 :=
.seq NamedBody388_132 NamedBody388_133

def NamedBody388_135 : StackLang.HolProg 64 :=
.seq NamedBody388_131 NamedBody388_134

def NamedBody388_136 : StackLang.HolProg 64 :=
.seq NamedBody388_78 NamedBody388_135

def NamedBody388_137 : StackLang.HolProg 64 :=
.seq NamedBody388_75 NamedBody388_136

def NamedBody388_138 : StackLang.HolProg 64 :=
.seq NamedBody388_74 NamedBody388_137

def NamedBody388_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody388_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody388_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody388_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_143 : StackLang.HolProg 64 :=
.seq NamedBody388_141 NamedBody388_142

def NamedBody388_144 : StackLang.HolProg 64 :=
.seq NamedBody388_140 NamedBody388_143

def NamedBody388_145 : StackLang.HolProg 64 :=
.seq NamedBody388_139 NamedBody388_144

def NamedBody388_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody388_138 NamedBody388_145

def NamedBody388_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody388_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody388_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody388_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody388_152 : StackLang.HolProg 64 :=
.seq NamedBody388_150 NamedBody388_151

def NamedBody388_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1159#64)

def NamedBody388_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody388_156 : StackLang.HolProg 64 :=
.seq NamedBody388_154 NamedBody388_155

def NamedBody388_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody388_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody388_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody388_160 : StackLang.HolProg 64 :=
.seq NamedBody388_158 NamedBody388_159

def NamedBody388_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody388_160 NamedBody388_161

def NamedBody388_163 : StackLang.HolProg 64 :=
.seq NamedBody388_157 NamedBody388_162

def NamedBody388_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody388_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody388_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 388 7

def NamedBody388_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody388_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody388_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody388_173 : StackLang.HolProg 64 :=
.seq NamedBody388_171 NamedBody388_172

def NamedBody388_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody388_175 : StackLang.HolProg 64 :=
.seq NamedBody388_173 NamedBody388_174

def NamedBody388_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_177 : StackLang.HolProg 64 :=
.seq NamedBody388_175 NamedBody388_176

def NamedBody388_178 : StackLang.HolProg 64 :=
.seq NamedBody388_170 NamedBody388_177

def NamedBody388_179 : StackLang.HolProg 64 :=
.seq NamedBody388_169 NamedBody388_178

def NamedBody388_180 : StackLang.HolProg 64 :=
.seq NamedBody388_168 NamedBody388_179

def NamedBody388_181 : StackLang.HolProg 64 :=
.seq NamedBody388_167 NamedBody388_180

def NamedBody388_182 : StackLang.HolProg 64 :=
.seq NamedBody388_166 NamedBody388_181

def NamedBody388_183 : StackLang.HolProg 64 :=
.seq NamedBody388_165 NamedBody388_182

def NamedBody388_184 : StackLang.HolProg 64 :=
.seq NamedBody388_164 NamedBody388_183

def NamedBody388_185 : StackLang.HolProg 64 :=
.seq NamedBody388_163 NamedBody388_184

def NamedBody388_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody388_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody388_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody388_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody388_195 : StackLang.HolProg 64 :=
.seq NamedBody388_193 NamedBody388_194

def NamedBody388_196 : StackLang.HolProg 64 :=
.seq NamedBody388_192 NamedBody388_195

def NamedBody388_197 : StackLang.HolProg 64 :=
.seq NamedBody388_191 NamedBody388_196

def NamedBody388_198 : StackLang.HolProg 64 :=
.seq NamedBody388_190 NamedBody388_197

def NamedBody388_199 : StackLang.HolProg 64 :=
.seq NamedBody388_189 NamedBody388_198

def NamedBody388_200 : StackLang.HolProg 64 :=
.seq NamedBody388_188 NamedBody388_199

def NamedBody388_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody388_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody388_203 : StackLang.HolProg 64 :=
.seq NamedBody388_201 NamedBody388_202

def NamedBody388_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody388_205 : StackLang.HolProg 64 :=
.seq NamedBody388_203 NamedBody388_204

def NamedBody388_206 : StackLang.HolProg 64 :=
.call (some (NamedBody388_200, 1, 388, 6)) (Sum.inl 68) (some (NamedBody388_205, 388, 7))

def NamedBody388_207 : StackLang.HolProg 64 :=
.seq NamedBody388_187 NamedBody388_206

def NamedBody388_208 : StackLang.HolProg 64 :=
.seq NamedBody388_186 NamedBody388_207

def NamedBody388_209 : StackLang.HolProg 64 :=
.seq NamedBody388_185 NamedBody388_208

def NamedBody388_210 : StackLang.HolProg 64 :=
.seq NamedBody388_156 NamedBody388_209

def NamedBody388_211 : StackLang.HolProg 64 :=
.seq NamedBody388_153 NamedBody388_210

def NamedBody388_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody388_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody388_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody388_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody388_216 : StackLang.HolProg 64 :=
.seq NamedBody388_214 NamedBody388_215

def NamedBody388_217 : StackLang.HolProg 64 :=
.seq NamedBody388_213 NamedBody388_216

def NamedBody388_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1160#64)

def NamedBody388_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody388_221 : StackLang.HolProg 64 :=
.seq NamedBody388_219 NamedBody388_220

def NamedBody388_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody388_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody388_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody388_225 : StackLang.HolProg 64 :=
.seq NamedBody388_223 NamedBody388_224

def NamedBody388_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_227 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody388_225 NamedBody388_226

def NamedBody388_228 : StackLang.HolProg 64 :=
.seq NamedBody388_222 NamedBody388_227

def NamedBody388_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody388_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody388_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 388 9

def NamedBody388_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody388_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody388_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody388_238 : StackLang.HolProg 64 :=
.seq NamedBody388_236 NamedBody388_237

def NamedBody388_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody388_240 : StackLang.HolProg 64 :=
.seq NamedBody388_238 NamedBody388_239

def NamedBody388_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_242 : StackLang.HolProg 64 :=
.seq NamedBody388_240 NamedBody388_241

def NamedBody388_243 : StackLang.HolProg 64 :=
.seq NamedBody388_235 NamedBody388_242

def NamedBody388_244 : StackLang.HolProg 64 :=
.seq NamedBody388_234 NamedBody388_243

def NamedBody388_245 : StackLang.HolProg 64 :=
.seq NamedBody388_233 NamedBody388_244

def NamedBody388_246 : StackLang.HolProg 64 :=
.seq NamedBody388_232 NamedBody388_245

def NamedBody388_247 : StackLang.HolProg 64 :=
.seq NamedBody388_231 NamedBody388_246

def NamedBody388_248 : StackLang.HolProg 64 :=
.seq NamedBody388_230 NamedBody388_247

def NamedBody388_249 : StackLang.HolProg 64 :=
.seq NamedBody388_229 NamedBody388_248

def NamedBody388_250 : StackLang.HolProg 64 :=
.seq NamedBody388_228 NamedBody388_249

def NamedBody388_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody388_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody388_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody388_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody388_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody388_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody388_263 : StackLang.HolProg 64 :=
.seq NamedBody388_261 NamedBody388_262

def NamedBody388_264 : StackLang.HolProg 64 :=
.seq NamedBody388_260 NamedBody388_263

def NamedBody388_265 : StackLang.HolProg 64 :=
.seq NamedBody388_259 NamedBody388_264

def NamedBody388_266 : StackLang.HolProg 64 :=
.seq NamedBody388_258 NamedBody388_265

def NamedBody388_267 : StackLang.HolProg 64 :=
.seq NamedBody388_257 NamedBody388_266

def NamedBody388_268 : StackLang.HolProg 64 :=
.seq NamedBody388_256 NamedBody388_267

def NamedBody388_269 : StackLang.HolProg 64 :=
.seq NamedBody388_255 NamedBody388_268

def NamedBody388_270 : StackLang.HolProg 64 :=
.seq NamedBody388_254 NamedBody388_269

def NamedBody388_271 : StackLang.HolProg 64 :=
.seq NamedBody388_253 NamedBody388_270

def NamedBody388_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody388_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody388_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody388_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody388_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody388_278 : StackLang.HolProg 64 :=
.seq NamedBody388_276 NamedBody388_277

def NamedBody388_279 : StackLang.HolProg 64 :=
.seq NamedBody388_275 NamedBody388_278

def NamedBody388_280 : StackLang.HolProg 64 :=
.seq NamedBody388_274 NamedBody388_279

def NamedBody388_281 : StackLang.HolProg 64 :=
.seq NamedBody388_273 NamedBody388_280

def NamedBody388_282 : StackLang.HolProg 64 :=
.seq NamedBody388_272 NamedBody388_281

def NamedBody388_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody388_284 : StackLang.HolProg 64 :=
.seq NamedBody388_282 NamedBody388_283

def NamedBody388_285 : StackLang.HolProg 64 :=
.call (some (NamedBody388_271, 1, 388, 8)) (Sum.inl 77) (some (NamedBody388_284, 388, 9))

def NamedBody388_286 : StackLang.HolProg 64 :=
.seq NamedBody388_252 NamedBody388_285

def NamedBody388_287 : StackLang.HolProg 64 :=
.seq NamedBody388_251 NamedBody388_286

def NamedBody388_288 : StackLang.HolProg 64 :=
.seq NamedBody388_250 NamedBody388_287

def NamedBody388_289 : StackLang.HolProg 64 :=
.seq NamedBody388_221 NamedBody388_288

def NamedBody388_290 : StackLang.HolProg 64 :=
.seq NamedBody388_218 NamedBody388_289

def NamedBody388_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody388_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody388_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody388_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody388_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 18446744073709551600#64))

def NamedBody388_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody388_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 18446744073709551416#64))

def NamedBody388_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody388_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody388_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody388_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody388_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody388_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody388_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody388_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody388_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody388_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551600#64)))

def NamedBody388_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 18446744073709551600#64))

def NamedBody388_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody388_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody388_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1161#64)

def NamedBody388_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody388_325 : StackLang.HolProg 64 :=
.seq NamedBody388_323 NamedBody388_324

def NamedBody388_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody388_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody388_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody388_329 : StackLang.HolProg 64 :=
.seq NamedBody388_327 NamedBody388_328

def NamedBody388_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_331 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody388_329 NamedBody388_330

def NamedBody388_332 : StackLang.HolProg 64 :=
.seq NamedBody388_326 NamedBody388_331

def NamedBody388_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody388_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody388_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 388 11

def NamedBody388_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody388_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody388_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody388_342 : StackLang.HolProg 64 :=
.seq NamedBody388_340 NamedBody388_341

def NamedBody388_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody388_344 : StackLang.HolProg 64 :=
.seq NamedBody388_342 NamedBody388_343

def NamedBody388_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_346 : StackLang.HolProg 64 :=
.seq NamedBody388_344 NamedBody388_345

def NamedBody388_347 : StackLang.HolProg 64 :=
.seq NamedBody388_339 NamedBody388_346

def NamedBody388_348 : StackLang.HolProg 64 :=
.seq NamedBody388_338 NamedBody388_347

def NamedBody388_349 : StackLang.HolProg 64 :=
.seq NamedBody388_337 NamedBody388_348

def NamedBody388_350 : StackLang.HolProg 64 :=
.seq NamedBody388_336 NamedBody388_349

def NamedBody388_351 : StackLang.HolProg 64 :=
.seq NamedBody388_335 NamedBody388_350

def NamedBody388_352 : StackLang.HolProg 64 :=
.seq NamedBody388_334 NamedBody388_351

def NamedBody388_353 : StackLang.HolProg 64 :=
.seq NamedBody388_333 NamedBody388_352

def NamedBody388_354 : StackLang.HolProg 64 :=
.seq NamedBody388_332 NamedBody388_353

def NamedBody388_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody388_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody388_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody388_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody388_362 : StackLang.HolProg 64 :=
.seq NamedBody388_360 NamedBody388_361

def NamedBody388_363 : StackLang.HolProg 64 :=
.seq NamedBody388_359 NamedBody388_362

def NamedBody388_364 : StackLang.HolProg 64 :=
.seq NamedBody388_358 NamedBody388_363

def NamedBody388_365 : StackLang.HolProg 64 :=
.seq NamedBody388_357 NamedBody388_364

def NamedBody388_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody388_367 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody388_368 : StackLang.HolProg 64 :=
.seq NamedBody388_366 NamedBody388_367

def NamedBody388_369 : StackLang.HolProg 64 :=
.call (some (NamedBody388_365, 1, 388, 10)) (Sum.inl 192) (some (NamedBody388_368, 388, 11))

def NamedBody388_370 : StackLang.HolProg 64 :=
.seq NamedBody388_356 NamedBody388_369

def NamedBody388_371 : StackLang.HolProg 64 :=
.seq NamedBody388_355 NamedBody388_370

def NamedBody388_372 : StackLang.HolProg 64 :=
.seq NamedBody388_354 NamedBody388_371

def NamedBody388_373 : StackLang.HolProg 64 :=
.seq NamedBody388_325 NamedBody388_372

def NamedBody388_374 : StackLang.HolProg 64 :=
.seq NamedBody388_322 NamedBody388_373

def NamedBody388_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody388_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody388_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody388_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody388_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody388_380 : StackLang.HolProg 64 :=
.seq NamedBody388_378 NamedBody388_379

def NamedBody388_381 : StackLang.HolProg 64 :=
.seq NamedBody388_377 NamedBody388_380

def NamedBody388_382 : StackLang.HolProg 64 :=
.seq NamedBody388_376 NamedBody388_381

def NamedBody388_383 : StackLang.HolProg 64 :=
.seq NamedBody388_375 NamedBody388_382

def NamedBody388_384 : StackLang.HolProg 64 :=
.seq NamedBody388_374 NamedBody388_383

def NamedBody388_385 : StackLang.HolProg 64 :=
.seq NamedBody388_321 NamedBody388_384

def NamedBody388_386 : StackLang.HolProg 64 :=
.seq NamedBody388_320 NamedBody388_385

def NamedBody388_387 : StackLang.HolProg 64 :=
.seq NamedBody388_319 NamedBody388_386

def NamedBody388_388 : StackLang.HolProg 64 :=
.seq NamedBody388_318 NamedBody388_387

def NamedBody388_389 : StackLang.HolProg 64 :=
.seq NamedBody388_317 NamedBody388_388

def NamedBody388_390 : StackLang.HolProg 64 :=
.seq NamedBody388_316 NamedBody388_389

def NamedBody388_391 : StackLang.HolProg 64 :=
.seq NamedBody388_315 NamedBody388_390

def NamedBody388_392 : StackLang.HolProg 64 :=
.seq NamedBody388_314 NamedBody388_391

def NamedBody388_393 : StackLang.HolProg 64 :=
.seq NamedBody388_313 NamedBody388_392

def NamedBody388_394 : StackLang.HolProg 64 :=
.seq NamedBody388_312 NamedBody388_393

def NamedBody388_395 : StackLang.HolProg 64 :=
.seq NamedBody388_311 NamedBody388_394

def NamedBody388_396 : StackLang.HolProg 64 :=
.seq NamedBody388_310 NamedBody388_395

def NamedBody388_397 : StackLang.HolProg 64 :=
.seq NamedBody388_309 NamedBody388_396

def NamedBody388_398 : StackLang.HolProg 64 :=
.seq NamedBody388_308 NamedBody388_397

def NamedBody388_399 : StackLang.HolProg 64 :=
.seq NamedBody388_307 NamedBody388_398

def NamedBody388_400 : StackLang.HolProg 64 :=
.seq NamedBody388_306 NamedBody388_399

def NamedBody388_401 : StackLang.HolProg 64 :=
.seq NamedBody388_305 NamedBody388_400

def NamedBody388_402 : StackLang.HolProg 64 :=
.seq NamedBody388_304 NamedBody388_401

def NamedBody388_403 : StackLang.HolProg 64 :=
.seq NamedBody388_303 NamedBody388_402

def NamedBody388_404 : StackLang.HolProg 64 :=
.seq NamedBody388_302 NamedBody388_403

def NamedBody388_405 : StackLang.HolProg 64 :=
.seq NamedBody388_301 NamedBody388_404

def NamedBody388_406 : StackLang.HolProg 64 :=
.seq NamedBody388_300 NamedBody388_405

def NamedBody388_407 : StackLang.HolProg 64 :=
.seq NamedBody388_299 NamedBody388_406

def NamedBody388_408 : StackLang.HolProg 64 :=
.seq NamedBody388_298 NamedBody388_407

def NamedBody388_409 : StackLang.HolProg 64 :=
.seq NamedBody388_297 NamedBody388_408

def NamedBody388_410 : StackLang.HolProg 64 :=
.seq NamedBody388_296 NamedBody388_409

def NamedBody388_411 : StackLang.HolProg 64 :=
.seq NamedBody388_295 NamedBody388_410

def NamedBody388_412 : StackLang.HolProg 64 :=
.seq NamedBody388_294 NamedBody388_411

def NamedBody388_413 : StackLang.HolProg 64 :=
.seq NamedBody388_293 NamedBody388_412

def NamedBody388_414 : StackLang.HolProg 64 :=
.seq NamedBody388_292 NamedBody388_413

def NamedBody388_415 : StackLang.HolProg 64 :=
.seq NamedBody388_291 NamedBody388_414

def NamedBody388_416 : StackLang.HolProg 64 :=
.seq NamedBody388_290 NamedBody388_415

def NamedBody388_417 : StackLang.HolProg 64 :=
.seq NamedBody388_217 NamedBody388_416

def NamedBody388_418 : StackLang.HolProg 64 :=
.seq NamedBody388_212 NamedBody388_417

def NamedBody388_419 : StackLang.HolProg 64 :=
.seq NamedBody388_211 NamedBody388_418

def NamedBody388_420 : StackLang.HolProg 64 :=
.seq NamedBody388_152 NamedBody388_419

def NamedBody388_421 : StackLang.HolProg 64 :=
.seq NamedBody388_149 NamedBody388_420

def NamedBody388_422 : StackLang.HolProg 64 :=
.seq NamedBody388_148 NamedBody388_421

def NamedBody388_423 : StackLang.HolProg 64 :=
.seq NamedBody388_147 NamedBody388_422

def NamedBody388_424 : StackLang.HolProg 64 :=
.seq NamedBody388_146 NamedBody388_423

def NamedBody388_425 : StackLang.HolProg 64 :=
.seq NamedBody388_73 NamedBody388_424

def NamedBody388_426 : StackLang.HolProg 64 :=
.seq NamedBody388_72 NamedBody388_425

def NamedBody388_427 : StackLang.HolProg 64 :=
.seq NamedBody388_71 NamedBody388_426

def NamedBody388_428 : StackLang.HolProg 64 :=
.seq NamedBody388_70 NamedBody388_427

def NamedBody388_429 : StackLang.HolProg 64 :=
.seq NamedBody388_69 NamedBody388_428

def NamedBody388_430 : StackLang.HolProg 64 :=
.seq NamedBody388_68 NamedBody388_429

def NamedBody388_431 : StackLang.HolProg 64 :=
.seq NamedBody388_67 NamedBody388_430

def NamedBody388_432 : StackLang.HolProg 64 :=
.seq NamedBody388_66 NamedBody388_431

def NamedBody388_433 : StackLang.HolProg 64 :=
.seq NamedBody388_13 NamedBody388_432

def NamedBody388_434 : StackLang.HolProg 64 :=
.seq NamedBody388_6 NamedBody388_433

def Named388 : Nat × StackLang.HolProg 64 := (388, NamedBody388_434)
theorem Named388_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed388 = Named388 := by
  kernel_rfl
#print axioms Named388_eq
end InitECandidate.Proofs.BackendStages
