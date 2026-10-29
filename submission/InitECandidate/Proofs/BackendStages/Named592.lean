import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed592
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody592_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody592_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody592_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody592_3 : StackLang.HolProg 64 :=
.seq NamedBody592_1 NamedBody592_2

def NamedBody592_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody592_3 NamedBody592_4

def NamedBody592_6 : StackLang.HolProg 64 :=
.seq NamedBody592_0 NamedBody592_5

def NamedBody592_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody592_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody592_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody592_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_11 : StackLang.HolProg 64 :=
.seq NamedBody592_9 NamedBody592_10

def NamedBody592_12 : StackLang.HolProg 64 :=
.seq NamedBody592_8 NamedBody592_11

def NamedBody592_13 : StackLang.HolProg 64 :=
.seq NamedBody592_7 NamedBody592_12

def NamedBody592_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2128#64)

def NamedBody592_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody592_17 : StackLang.HolProg 64 :=
.seq NamedBody592_15 NamedBody592_16

def NamedBody592_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody592_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody592_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody592_21 : StackLang.HolProg 64 :=
.seq NamedBody592_19 NamedBody592_20

def NamedBody592_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody592_21 NamedBody592_22

def NamedBody592_24 : StackLang.HolProg 64 :=
.seq NamedBody592_18 NamedBody592_23

def NamedBody592_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody592_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody592_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 592 3

def NamedBody592_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody592_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody592_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody592_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody592_34 : StackLang.HolProg 64 :=
.seq NamedBody592_32 NamedBody592_33

def NamedBody592_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody592_36 : StackLang.HolProg 64 :=
.seq NamedBody592_34 NamedBody592_35

def NamedBody592_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody592_38 : StackLang.HolProg 64 :=
.seq NamedBody592_36 NamedBody592_37

def NamedBody592_39 : StackLang.HolProg 64 :=
.seq NamedBody592_31 NamedBody592_38

def NamedBody592_40 : StackLang.HolProg 64 :=
.seq NamedBody592_30 NamedBody592_39

def NamedBody592_41 : StackLang.HolProg 64 :=
.seq NamedBody592_29 NamedBody592_40

def NamedBody592_42 : StackLang.HolProg 64 :=
.seq NamedBody592_28 NamedBody592_41

def NamedBody592_43 : StackLang.HolProg 64 :=
.seq NamedBody592_27 NamedBody592_42

def NamedBody592_44 : StackLang.HolProg 64 :=
.seq NamedBody592_26 NamedBody592_43

def NamedBody592_45 : StackLang.HolProg 64 :=
.seq NamedBody592_25 NamedBody592_44

def NamedBody592_46 : StackLang.HolProg 64 :=
.seq NamedBody592_24 NamedBody592_45

def NamedBody592_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody592_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody592_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody592_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody592_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_57 : StackLang.HolProg 64 :=
.seq NamedBody592_55 NamedBody592_56

def NamedBody592_58 : StackLang.HolProg 64 :=
.seq NamedBody592_54 NamedBody592_57

def NamedBody592_59 : StackLang.HolProg 64 :=
.seq NamedBody592_53 NamedBody592_58

def NamedBody592_60 : StackLang.HolProg 64 :=
.seq NamedBody592_52 NamedBody592_59

def NamedBody592_61 : StackLang.HolProg 64 :=
.seq NamedBody592_51 NamedBody592_60

def NamedBody592_62 : StackLang.HolProg 64 :=
.seq NamedBody592_50 NamedBody592_61

def NamedBody592_63 : StackLang.HolProg 64 :=
.seq NamedBody592_49 NamedBody592_62

def NamedBody592_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody592_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_67 : StackLang.HolProg 64 :=
.seq NamedBody592_65 NamedBody592_66

def NamedBody592_68 : StackLang.HolProg 64 :=
.seq NamedBody592_64 NamedBody592_67

def NamedBody592_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody592_70 : StackLang.HolProg 64 :=
.seq NamedBody592_68 NamedBody592_69

def NamedBody592_71 : StackLang.HolProg 64 :=
.call (some (NamedBody592_63, 1, 592, 2)) (Sum.inl 407) (some (NamedBody592_70, 592, 3))

def NamedBody592_72 : StackLang.HolProg 64 :=
.seq NamedBody592_48 NamedBody592_71

def NamedBody592_73 : StackLang.HolProg 64 :=
.seq NamedBody592_47 NamedBody592_72

def NamedBody592_74 : StackLang.HolProg 64 :=
.seq NamedBody592_46 NamedBody592_73

def NamedBody592_75 : StackLang.HolProg 64 :=
.seq NamedBody592_17 NamedBody592_74

def NamedBody592_76 : StackLang.HolProg 64 :=
.seq NamedBody592_14 NamedBody592_75

def NamedBody592_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody592_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody592_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody592_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2129#64)

def NamedBody592_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody592_84 : StackLang.HolProg 64 :=
.seq NamedBody592_82 NamedBody592_83

def NamedBody592_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody592_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody592_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody592_88 : StackLang.HolProg 64 :=
.seq NamedBody592_86 NamedBody592_87

def NamedBody592_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody592_88 NamedBody592_89

def NamedBody592_91 : StackLang.HolProg 64 :=
.seq NamedBody592_85 NamedBody592_90

def NamedBody592_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody592_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody592_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 592 5

def NamedBody592_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody592_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody592_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody592_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody592_101 : StackLang.HolProg 64 :=
.seq NamedBody592_99 NamedBody592_100

def NamedBody592_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody592_103 : StackLang.HolProg 64 :=
.seq NamedBody592_101 NamedBody592_102

def NamedBody592_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody592_105 : StackLang.HolProg 64 :=
.seq NamedBody592_103 NamedBody592_104

def NamedBody592_106 : StackLang.HolProg 64 :=
.seq NamedBody592_98 NamedBody592_105

def NamedBody592_107 : StackLang.HolProg 64 :=
.seq NamedBody592_97 NamedBody592_106

def NamedBody592_108 : StackLang.HolProg 64 :=
.seq NamedBody592_96 NamedBody592_107

def NamedBody592_109 : StackLang.HolProg 64 :=
.seq NamedBody592_95 NamedBody592_108

def NamedBody592_110 : StackLang.HolProg 64 :=
.seq NamedBody592_94 NamedBody592_109

def NamedBody592_111 : StackLang.HolProg 64 :=
.seq NamedBody592_93 NamedBody592_110

def NamedBody592_112 : StackLang.HolProg 64 :=
.seq NamedBody592_92 NamedBody592_111

def NamedBody592_113 : StackLang.HolProg 64 :=
.seq NamedBody592_91 NamedBody592_112

def NamedBody592_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody592_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody592_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody592_121 : StackLang.HolProg 64 :=
.seq NamedBody592_119 NamedBody592_120

def NamedBody592_122 : StackLang.HolProg 64 :=
.seq NamedBody592_118 NamedBody592_121

def NamedBody592_123 : StackLang.HolProg 64 :=
.seq NamedBody592_117 NamedBody592_122

def NamedBody592_124 : StackLang.HolProg 64 :=
.seq NamedBody592_116 NamedBody592_123

def NamedBody592_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody592_127 : StackLang.HolProg 64 :=
.seq NamedBody592_125 NamedBody592_126

def NamedBody592_128 : StackLang.HolProg 64 :=
.call (some (NamedBody592_124, 1, 592, 4)) (Sum.inl 408) (some (NamedBody592_127, 592, 5))

def NamedBody592_129 : StackLang.HolProg 64 :=
.seq NamedBody592_115 NamedBody592_128

def NamedBody592_130 : StackLang.HolProg 64 :=
.seq NamedBody592_114 NamedBody592_129

def NamedBody592_131 : StackLang.HolProg 64 :=
.seq NamedBody592_113 NamedBody592_130

def NamedBody592_132 : StackLang.HolProg 64 :=
.seq NamedBody592_84 NamedBody592_131

def NamedBody592_133 : StackLang.HolProg 64 :=
.seq NamedBody592_81 NamedBody592_132

def NamedBody592_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody592_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody592_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody592_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody592_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2130#64)

def NamedBody592_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody592_142 : StackLang.HolProg 64 :=
.seq NamedBody592_140 NamedBody592_141

def NamedBody592_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody592_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody592_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody592_146 : StackLang.HolProg 64 :=
.seq NamedBody592_144 NamedBody592_145

def NamedBody592_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody592_146 NamedBody592_147

def NamedBody592_149 : StackLang.HolProg 64 :=
.seq NamedBody592_143 NamedBody592_148

def NamedBody592_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody592_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody592_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 592 7

def NamedBody592_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody592_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody592_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody592_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody592_159 : StackLang.HolProg 64 :=
.seq NamedBody592_157 NamedBody592_158

def NamedBody592_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody592_161 : StackLang.HolProg 64 :=
.seq NamedBody592_159 NamedBody592_160

def NamedBody592_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody592_163 : StackLang.HolProg 64 :=
.seq NamedBody592_161 NamedBody592_162

def NamedBody592_164 : StackLang.HolProg 64 :=
.seq NamedBody592_156 NamedBody592_163

def NamedBody592_165 : StackLang.HolProg 64 :=
.seq NamedBody592_155 NamedBody592_164

def NamedBody592_166 : StackLang.HolProg 64 :=
.seq NamedBody592_154 NamedBody592_165

def NamedBody592_167 : StackLang.HolProg 64 :=
.seq NamedBody592_153 NamedBody592_166

def NamedBody592_168 : StackLang.HolProg 64 :=
.seq NamedBody592_152 NamedBody592_167

def NamedBody592_169 : StackLang.HolProg 64 :=
.seq NamedBody592_151 NamedBody592_168

def NamedBody592_170 : StackLang.HolProg 64 :=
.seq NamedBody592_150 NamedBody592_169

def NamedBody592_171 : StackLang.HolProg 64 :=
.seq NamedBody592_149 NamedBody592_170

def NamedBody592_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody592_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody592_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody592_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody592_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody592_182 : StackLang.HolProg 64 :=
.seq NamedBody592_180 NamedBody592_181

def NamedBody592_183 : StackLang.HolProg 64 :=
.seq NamedBody592_179 NamedBody592_182

def NamedBody592_184 : StackLang.HolProg 64 :=
.seq NamedBody592_178 NamedBody592_183

def NamedBody592_185 : StackLang.HolProg 64 :=
.seq NamedBody592_177 NamedBody592_184

def NamedBody592_186 : StackLang.HolProg 64 :=
.seq NamedBody592_176 NamedBody592_185

def NamedBody592_187 : StackLang.HolProg 64 :=
.seq NamedBody592_175 NamedBody592_186

def NamedBody592_188 : StackLang.HolProg 64 :=
.seq NamedBody592_174 NamedBody592_187

def NamedBody592_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody592_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody592_192 : StackLang.HolProg 64 :=
.seq NamedBody592_190 NamedBody592_191

def NamedBody592_193 : StackLang.HolProg 64 :=
.seq NamedBody592_189 NamedBody592_192

def NamedBody592_194 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody592_195 : StackLang.HolProg 64 :=
.seq NamedBody592_193 NamedBody592_194

def NamedBody592_196 : StackLang.HolProg 64 :=
.call (some (NamedBody592_188, 1, 592, 6)) (Sum.inl 468) (some (NamedBody592_195, 592, 7))

def NamedBody592_197 : StackLang.HolProg 64 :=
.seq NamedBody592_173 NamedBody592_196

def NamedBody592_198 : StackLang.HolProg 64 :=
.seq NamedBody592_172 NamedBody592_197

def NamedBody592_199 : StackLang.HolProg 64 :=
.seq NamedBody592_171 NamedBody592_198

def NamedBody592_200 : StackLang.HolProg 64 :=
.seq NamedBody592_142 NamedBody592_199

def NamedBody592_201 : StackLang.HolProg 64 :=
.seq NamedBody592_139 NamedBody592_200

def NamedBody592_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody592_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody592_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody592_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody592_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody592_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody592_210 : StackLang.HolProg 64 :=
.seq NamedBody592_208 NamedBody592_209

def NamedBody592_211 : StackLang.HolProg 64 :=
.seq NamedBody592_207 NamedBody592_210

def NamedBody592_212 : StackLang.HolProg 64 :=
.seq NamedBody592_206 NamedBody592_211

def NamedBody592_213 : StackLang.HolProg 64 :=
.seq NamedBody592_205 NamedBody592_212

def NamedBody592_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_215 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody592_213 NamedBody592_214

def NamedBody592_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody592_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody592_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_219 : StackLang.HolProg 64 :=
.seq NamedBody592_217 NamedBody592_218

def NamedBody592_220 : StackLang.HolProg 64 :=
.seq NamedBody592_216 NamedBody592_219

def NamedBody592_221 : StackLang.HolProg 64 :=
.seq NamedBody592_215 NamedBody592_220

def NamedBody592_222 : StackLang.HolProg 64 :=
.seq NamedBody592_204 NamedBody592_221

def NamedBody592_223 : StackLang.HolProg 64 :=
.seq NamedBody592_203 NamedBody592_222

def NamedBody592_224 : StackLang.HolProg 64 :=
.seq NamedBody592_202 NamedBody592_223

def NamedBody592_225 : StackLang.HolProg 64 :=
.seq NamedBody592_201 NamedBody592_224

def NamedBody592_226 : StackLang.HolProg 64 :=
.seq NamedBody592_138 NamedBody592_225

def NamedBody592_227 : StackLang.HolProg 64 :=
.seq NamedBody592_137 NamedBody592_226

def NamedBody592_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody592_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody592_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody592_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody592_232 : StackLang.HolProg 64 :=
.seq NamedBody592_230 NamedBody592_231

def NamedBody592_233 : StackLang.HolProg 64 :=
.seq NamedBody592_229 NamedBody592_232

def NamedBody592_234 : StackLang.HolProg 64 :=
.seq NamedBody592_228 NamedBody592_233

def NamedBody592_235 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody592_227 NamedBody592_234

def NamedBody592_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody592_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody592_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 40#64))

def NamedBody592_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody592_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody592_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody592_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody592_246 : StackLang.HolProg 64 :=
.seq NamedBody592_244 NamedBody592_245

def NamedBody592_247 : StackLang.HolProg 64 :=
.seq NamedBody592_243 NamedBody592_246

def NamedBody592_248 : StackLang.HolProg 64 :=
.seq NamedBody592_242 NamedBody592_247

def NamedBody592_249 : StackLang.HolProg 64 :=
.seq NamedBody592_241 NamedBody592_248

def NamedBody592_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_251 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody592_249 NamedBody592_250

def NamedBody592_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody592_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody592_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody592_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody592_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody592_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody592_258 : StackLang.HolProg 64 :=
.seq NamedBody592_256 NamedBody592_257

def NamedBody592_259 : StackLang.HolProg 64 :=
.seq NamedBody592_255 NamedBody592_258

def NamedBody592_260 : StackLang.HolProg 64 :=
.seq NamedBody592_254 NamedBody592_259

def NamedBody592_261 : StackLang.HolProg 64 :=
.seq NamedBody592_253 NamedBody592_260

def NamedBody592_262 : StackLang.HolProg 64 :=
.seq NamedBody592_252 NamedBody592_261

def NamedBody592_263 : StackLang.HolProg 64 :=
.seq NamedBody592_251 NamedBody592_262

def NamedBody592_264 : StackLang.HolProg 64 :=
.seq NamedBody592_240 NamedBody592_263

def NamedBody592_265 : StackLang.HolProg 64 :=
.seq NamedBody592_239 NamedBody592_264

def NamedBody592_266 : StackLang.HolProg 64 :=
.seq NamedBody592_238 NamedBody592_265

def NamedBody592_267 : StackLang.HolProg 64 :=
.seq NamedBody592_237 NamedBody592_266

def NamedBody592_268 : StackLang.HolProg 64 :=
.seq NamedBody592_236 NamedBody592_267

def NamedBody592_269 : StackLang.HolProg 64 :=
.seq NamedBody592_235 NamedBody592_268

def NamedBody592_270 : StackLang.HolProg 64 :=
.seq NamedBody592_136 NamedBody592_269

def NamedBody592_271 : StackLang.HolProg 64 :=
.seq NamedBody592_135 NamedBody592_270

def NamedBody592_272 : StackLang.HolProg 64 :=
.seq NamedBody592_134 NamedBody592_271

def NamedBody592_273 : StackLang.HolProg 64 :=
.seq NamedBody592_133 NamedBody592_272

def NamedBody592_274 : StackLang.HolProg 64 :=
.seq NamedBody592_80 NamedBody592_273

def NamedBody592_275 : StackLang.HolProg 64 :=
.seq NamedBody592_79 NamedBody592_274

def NamedBody592_276 : StackLang.HolProg 64 :=
.seq NamedBody592_78 NamedBody592_275

def NamedBody592_277 : StackLang.HolProg 64 :=
.seq NamedBody592_77 NamedBody592_276

def NamedBody592_278 : StackLang.HolProg 64 :=
.seq NamedBody592_76 NamedBody592_277

def NamedBody592_279 : StackLang.HolProg 64 :=
.seq NamedBody592_13 NamedBody592_278

def NamedBody592_280 : StackLang.HolProg 64 :=
.seq NamedBody592_6 NamedBody592_279

def Named592 : Nat × StackLang.HolProg 64 := (592, NamedBody592_280)
theorem Named592_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed592 = Named592 := by
  kernel_rfl
#print axioms Named592_eq
end InitECandidate.Proofs.BackendStages
