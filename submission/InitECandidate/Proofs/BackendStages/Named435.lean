import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed435
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody435_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody435_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody435_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody435_3 : StackLang.HolProg 64 :=
.seq NamedBody435_1 NamedBody435_2

def NamedBody435_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody435_3 NamedBody435_4

def NamedBody435_6 : StackLang.HolProg 64 :=
.seq NamedBody435_0 NamedBody435_5

def NamedBody435_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody435_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 24#64)

def NamedBody435_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody435_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody435_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody435_12 : StackLang.HolProg 64 :=
.seq NamedBody435_10 NamedBody435_11

def NamedBody435_13 : StackLang.HolProg 64 :=
.seq NamedBody435_9 NamedBody435_12

def NamedBody435_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1313#64)

def NamedBody435_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody435_17 : StackLang.HolProg 64 :=
.seq NamedBody435_15 NamedBody435_16

def NamedBody435_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody435_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody435_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody435_21 : StackLang.HolProg 64 :=
.seq NamedBody435_19 NamedBody435_20

def NamedBody435_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody435_21 NamedBody435_22

def NamedBody435_24 : StackLang.HolProg 64 :=
.seq NamedBody435_18 NamedBody435_23

def NamedBody435_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody435_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody435_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 435 3

def NamedBody435_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody435_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody435_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody435_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody435_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody435_34 : StackLang.HolProg 64 :=
.seq NamedBody435_32 NamedBody435_33

def NamedBody435_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody435_36 : StackLang.HolProg 64 :=
.seq NamedBody435_34 NamedBody435_35

def NamedBody435_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody435_38 : StackLang.HolProg 64 :=
.seq NamedBody435_36 NamedBody435_37

def NamedBody435_39 : StackLang.HolProg 64 :=
.seq NamedBody435_31 NamedBody435_38

def NamedBody435_40 : StackLang.HolProg 64 :=
.seq NamedBody435_30 NamedBody435_39

def NamedBody435_41 : StackLang.HolProg 64 :=
.seq NamedBody435_29 NamedBody435_40

def NamedBody435_42 : StackLang.HolProg 64 :=
.seq NamedBody435_28 NamedBody435_41

def NamedBody435_43 : StackLang.HolProg 64 :=
.seq NamedBody435_27 NamedBody435_42

def NamedBody435_44 : StackLang.HolProg 64 :=
.seq NamedBody435_26 NamedBody435_43

def NamedBody435_45 : StackLang.HolProg 64 :=
.seq NamedBody435_25 NamedBody435_44

def NamedBody435_46 : StackLang.HolProg 64 :=
.seq NamedBody435_24 NamedBody435_45

def NamedBody435_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody435_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody435_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody435_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody435_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody435_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody435_56 : StackLang.HolProg 64 :=
.seq NamedBody435_54 NamedBody435_55

def NamedBody435_57 : StackLang.HolProg 64 :=
.seq NamedBody435_53 NamedBody435_56

def NamedBody435_58 : StackLang.HolProg 64 :=
.seq NamedBody435_52 NamedBody435_57

def NamedBody435_59 : StackLang.HolProg 64 :=
.seq NamedBody435_51 NamedBody435_58

def NamedBody435_60 : StackLang.HolProg 64 :=
.seq NamedBody435_50 NamedBody435_59

def NamedBody435_61 : StackLang.HolProg 64 :=
.seq NamedBody435_49 NamedBody435_60

def NamedBody435_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody435_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody435_64 : StackLang.HolProg 64 :=
.seq NamedBody435_62 NamedBody435_63

def NamedBody435_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody435_66 : StackLang.HolProg 64 :=
.seq NamedBody435_64 NamedBody435_65

def NamedBody435_67 : StackLang.HolProg 64 :=
.call (some (NamedBody435_61, 1, 435, 2)) (Sum.inl 68) (some (NamedBody435_66, 435, 3))

def NamedBody435_68 : StackLang.HolProg 64 :=
.seq NamedBody435_48 NamedBody435_67

def NamedBody435_69 : StackLang.HolProg 64 :=
.seq NamedBody435_47 NamedBody435_68

def NamedBody435_70 : StackLang.HolProg 64 :=
.seq NamedBody435_46 NamedBody435_69

def NamedBody435_71 : StackLang.HolProg 64 :=
.seq NamedBody435_17 NamedBody435_70

def NamedBody435_72 : StackLang.HolProg 64 :=
.seq NamedBody435_14 NamedBody435_71

def NamedBody435_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody435_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody435_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody435_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody435_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody435_78 : StackLang.HolProg 64 :=
.seq NamedBody435_76 NamedBody435_77

def NamedBody435_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1314#64)

def NamedBody435_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody435_82 : StackLang.HolProg 64 :=
.seq NamedBody435_80 NamedBody435_81

def NamedBody435_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody435_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody435_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody435_86 : StackLang.HolProg 64 :=
.seq NamedBody435_84 NamedBody435_85

def NamedBody435_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody435_86 NamedBody435_87

def NamedBody435_89 : StackLang.HolProg 64 :=
.seq NamedBody435_83 NamedBody435_88

def NamedBody435_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody435_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody435_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 435 5

def NamedBody435_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody435_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody435_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody435_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody435_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody435_99 : StackLang.HolProg 64 :=
.seq NamedBody435_97 NamedBody435_98

def NamedBody435_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody435_101 : StackLang.HolProg 64 :=
.seq NamedBody435_99 NamedBody435_100

def NamedBody435_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody435_103 : StackLang.HolProg 64 :=
.seq NamedBody435_101 NamedBody435_102

def NamedBody435_104 : StackLang.HolProg 64 :=
.seq NamedBody435_96 NamedBody435_103

def NamedBody435_105 : StackLang.HolProg 64 :=
.seq NamedBody435_95 NamedBody435_104

def NamedBody435_106 : StackLang.HolProg 64 :=
.seq NamedBody435_94 NamedBody435_105

def NamedBody435_107 : StackLang.HolProg 64 :=
.seq NamedBody435_93 NamedBody435_106

def NamedBody435_108 : StackLang.HolProg 64 :=
.seq NamedBody435_92 NamedBody435_107

def NamedBody435_109 : StackLang.HolProg 64 :=
.seq NamedBody435_91 NamedBody435_108

def NamedBody435_110 : StackLang.HolProg 64 :=
.seq NamedBody435_90 NamedBody435_109

def NamedBody435_111 : StackLang.HolProg 64 :=
.seq NamedBody435_89 NamedBody435_110

def NamedBody435_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody435_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody435_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody435_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody435_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody435_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody435_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody435_122 : StackLang.HolProg 64 :=
.seq NamedBody435_120 NamedBody435_121

def NamedBody435_123 : StackLang.HolProg 64 :=
.seq NamedBody435_119 NamedBody435_122

def NamedBody435_124 : StackLang.HolProg 64 :=
.seq NamedBody435_118 NamedBody435_123

def NamedBody435_125 : StackLang.HolProg 64 :=
.seq NamedBody435_117 NamedBody435_124

def NamedBody435_126 : StackLang.HolProg 64 :=
.seq NamedBody435_116 NamedBody435_125

def NamedBody435_127 : StackLang.HolProg 64 :=
.seq NamedBody435_115 NamedBody435_126

def NamedBody435_128 : StackLang.HolProg 64 :=
.seq NamedBody435_114 NamedBody435_127

def NamedBody435_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody435_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody435_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody435_132 : StackLang.HolProg 64 :=
.seq NamedBody435_130 NamedBody435_131

def NamedBody435_133 : StackLang.HolProg 64 :=
.seq NamedBody435_129 NamedBody435_132

def NamedBody435_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody435_135 : StackLang.HolProg 64 :=
.seq NamedBody435_133 NamedBody435_134

def NamedBody435_136 : StackLang.HolProg 64 :=
.call (some (NamedBody435_128, 1, 435, 4)) (Sum.inl 68) (some (NamedBody435_135, 435, 5))

def NamedBody435_137 : StackLang.HolProg 64 :=
.seq NamedBody435_113 NamedBody435_136

def NamedBody435_138 : StackLang.HolProg 64 :=
.seq NamedBody435_112 NamedBody435_137

def NamedBody435_139 : StackLang.HolProg 64 :=
.seq NamedBody435_111 NamedBody435_138

def NamedBody435_140 : StackLang.HolProg 64 :=
.seq NamedBody435_82 NamedBody435_139

def NamedBody435_141 : StackLang.HolProg 64 :=
.seq NamedBody435_79 NamedBody435_140

def NamedBody435_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody435_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody435_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody435_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody435_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody435_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody435_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody435_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody435_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody435_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody435_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody435_157 : StackLang.HolProg 64 :=
.seq NamedBody435_155 NamedBody435_156

def NamedBody435_158 : StackLang.HolProg 64 :=
.seq NamedBody435_154 NamedBody435_157

def NamedBody435_159 : StackLang.HolProg 64 :=
.seq NamedBody435_153 NamedBody435_158

def NamedBody435_160 : StackLang.HolProg 64 :=
.seq NamedBody435_152 NamedBody435_159

def NamedBody435_161 : StackLang.HolProg 64 :=
.seq NamedBody435_151 NamedBody435_160

def NamedBody435_162 : StackLang.HolProg 64 :=
.seq NamedBody435_150 NamedBody435_161

def NamedBody435_163 : StackLang.HolProg 64 :=
.seq NamedBody435_149 NamedBody435_162

def NamedBody435_164 : StackLang.HolProg 64 :=
.seq NamedBody435_148 NamedBody435_163

def NamedBody435_165 : StackLang.HolProg 64 :=
.seq NamedBody435_147 NamedBody435_164

def NamedBody435_166 : StackLang.HolProg 64 :=
.seq NamedBody435_146 NamedBody435_165

def NamedBody435_167 : StackLang.HolProg 64 :=
.seq NamedBody435_145 NamedBody435_166

def NamedBody435_168 : StackLang.HolProg 64 :=
.seq NamedBody435_144 NamedBody435_167

def NamedBody435_169 : StackLang.HolProg 64 :=
.seq NamedBody435_143 NamedBody435_168

def NamedBody435_170 : StackLang.HolProg 64 :=
.seq NamedBody435_142 NamedBody435_169

def NamedBody435_171 : StackLang.HolProg 64 :=
.seq NamedBody435_141 NamedBody435_170

def NamedBody435_172 : StackLang.HolProg 64 :=
.seq NamedBody435_78 NamedBody435_171

def NamedBody435_173 : StackLang.HolProg 64 :=
.seq NamedBody435_75 NamedBody435_172

def NamedBody435_174 : StackLang.HolProg 64 :=
.seq NamedBody435_74 NamedBody435_173

def NamedBody435_175 : StackLang.HolProg 64 :=
.seq NamedBody435_73 NamedBody435_174

def NamedBody435_176 : StackLang.HolProg 64 :=
.seq NamedBody435_72 NamedBody435_175

def NamedBody435_177 : StackLang.HolProg 64 :=
.seq NamedBody435_13 NamedBody435_176

def NamedBody435_178 : StackLang.HolProg 64 :=
.seq NamedBody435_8 NamedBody435_177

def NamedBody435_179 : StackLang.HolProg 64 :=
.seq NamedBody435_7 NamedBody435_178

def NamedBody435_180 : StackLang.HolProg 64 :=
.seq NamedBody435_6 NamedBody435_179

def Named435 : Nat × StackLang.HolProg 64 := (435, NamedBody435_180)
theorem Named435_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed435 = Named435 := by
  kernel_rfl
#print axioms Named435_eq
end InitECandidate.Proofs.BackendStages
