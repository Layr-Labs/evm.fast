import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed830
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody830_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody830_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody830_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody830_3 : StackLang.HolProg 64 :=
.seq NamedBody830_1 NamedBody830_2

def NamedBody830_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody830_3 NamedBody830_4

def NamedBody830_6 : StackLang.HolProg 64 :=
.seq NamedBody830_0 NamedBody830_5

def NamedBody830_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody830_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody830_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody830_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody830_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody830_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 96#64))

def NamedBody830_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody830_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody830_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody830_18 : StackLang.HolProg 64 :=
.seq NamedBody830_16 NamedBody830_17

def NamedBody830_19 : StackLang.HolProg 64 :=
.seq NamedBody830_15 NamedBody830_18

def NamedBody830_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4122#64)

def NamedBody830_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody830_23 : StackLang.HolProg 64 :=
.seq NamedBody830_21 NamedBody830_22

def NamedBody830_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody830_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody830_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody830_27 : StackLang.HolProg 64 :=
.seq NamedBody830_25 NamedBody830_26

def NamedBody830_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody830_27 NamedBody830_28

def NamedBody830_30 : StackLang.HolProg 64 :=
.seq NamedBody830_24 NamedBody830_29

def NamedBody830_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody830_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody830_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 830 3

def NamedBody830_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody830_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody830_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody830_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody830_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody830_40 : StackLang.HolProg 64 :=
.seq NamedBody830_38 NamedBody830_39

def NamedBody830_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody830_42 : StackLang.HolProg 64 :=
.seq NamedBody830_40 NamedBody830_41

def NamedBody830_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody830_44 : StackLang.HolProg 64 :=
.seq NamedBody830_42 NamedBody830_43

def NamedBody830_45 : StackLang.HolProg 64 :=
.seq NamedBody830_37 NamedBody830_44

def NamedBody830_46 : StackLang.HolProg 64 :=
.seq NamedBody830_36 NamedBody830_45

def NamedBody830_47 : StackLang.HolProg 64 :=
.seq NamedBody830_35 NamedBody830_46

def NamedBody830_48 : StackLang.HolProg 64 :=
.seq NamedBody830_34 NamedBody830_47

def NamedBody830_49 : StackLang.HolProg 64 :=
.seq NamedBody830_33 NamedBody830_48

def NamedBody830_50 : StackLang.HolProg 64 :=
.seq NamedBody830_32 NamedBody830_49

def NamedBody830_51 : StackLang.HolProg 64 :=
.seq NamedBody830_31 NamedBody830_50

def NamedBody830_52 : StackLang.HolProg 64 :=
.seq NamedBody830_30 NamedBody830_51

def NamedBody830_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody830_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody830_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody830_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody830_60 : StackLang.HolProg 64 :=
.seq NamedBody830_58 NamedBody830_59

def NamedBody830_61 : StackLang.HolProg 64 :=
.seq NamedBody830_57 NamedBody830_60

def NamedBody830_62 : StackLang.HolProg 64 :=
.seq NamedBody830_56 NamedBody830_61

def NamedBody830_63 : StackLang.HolProg 64 :=
.seq NamedBody830_55 NamedBody830_62

def NamedBody830_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody830_66 : StackLang.HolProg 64 :=
.seq NamedBody830_64 NamedBody830_65

def NamedBody830_67 : StackLang.HolProg 64 :=
.call (some (NamedBody830_63, 1, 830, 2)) (Sum.inl 465) (some (NamedBody830_66, 830, 3))

def NamedBody830_68 : StackLang.HolProg 64 :=
.seq NamedBody830_54 NamedBody830_67

def NamedBody830_69 : StackLang.HolProg 64 :=
.seq NamedBody830_53 NamedBody830_68

def NamedBody830_70 : StackLang.HolProg 64 :=
.seq NamedBody830_52 NamedBody830_69

def NamedBody830_71 : StackLang.HolProg 64 :=
.seq NamedBody830_23 NamedBody830_70

def NamedBody830_72 : StackLang.HolProg 64 :=
.seq NamedBody830_20 NamedBody830_71

def NamedBody830_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody830_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 3#64)

def NamedBody830_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody830_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def NamedBody830_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4123#64)

def NamedBody830_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody830_84 : StackLang.HolProg 64 :=
.seq NamedBody830_82 NamedBody830_83

def NamedBody830_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody830_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody830_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody830_88 : StackLang.HolProg 64 :=
.seq NamedBody830_86 NamedBody830_87

def NamedBody830_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody830_88 NamedBody830_89

def NamedBody830_91 : StackLang.HolProg 64 :=
.seq NamedBody830_85 NamedBody830_90

def NamedBody830_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody830_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody830_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 830 5

def NamedBody830_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody830_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody830_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody830_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody830_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody830_101 : StackLang.HolProg 64 :=
.seq NamedBody830_99 NamedBody830_100

def NamedBody830_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody830_103 : StackLang.HolProg 64 :=
.seq NamedBody830_101 NamedBody830_102

def NamedBody830_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody830_105 : StackLang.HolProg 64 :=
.seq NamedBody830_103 NamedBody830_104

def NamedBody830_106 : StackLang.HolProg 64 :=
.seq NamedBody830_98 NamedBody830_105

def NamedBody830_107 : StackLang.HolProg 64 :=
.seq NamedBody830_97 NamedBody830_106

def NamedBody830_108 : StackLang.HolProg 64 :=
.seq NamedBody830_96 NamedBody830_107

def NamedBody830_109 : StackLang.HolProg 64 :=
.seq NamedBody830_95 NamedBody830_108

def NamedBody830_110 : StackLang.HolProg 64 :=
.seq NamedBody830_94 NamedBody830_109

def NamedBody830_111 : StackLang.HolProg 64 :=
.seq NamedBody830_93 NamedBody830_110

def NamedBody830_112 : StackLang.HolProg 64 :=
.seq NamedBody830_92 NamedBody830_111

def NamedBody830_113 : StackLang.HolProg 64 :=
.seq NamedBody830_91 NamedBody830_112

def NamedBody830_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody830_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody830_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody830_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody830_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody830_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody830_123 : StackLang.HolProg 64 :=
.seq NamedBody830_121 NamedBody830_122

def NamedBody830_124 : StackLang.HolProg 64 :=
.seq NamedBody830_120 NamedBody830_123

def NamedBody830_125 : StackLang.HolProg 64 :=
.seq NamedBody830_119 NamedBody830_124

def NamedBody830_126 : StackLang.HolProg 64 :=
.seq NamedBody830_118 NamedBody830_125

def NamedBody830_127 : StackLang.HolProg 64 :=
.seq NamedBody830_117 NamedBody830_126

def NamedBody830_128 : StackLang.HolProg 64 :=
.seq NamedBody830_116 NamedBody830_127

def NamedBody830_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody830_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody830_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody830_132 : StackLang.HolProg 64 :=
.seq NamedBody830_130 NamedBody830_131

def NamedBody830_133 : StackLang.HolProg 64 :=
.seq NamedBody830_129 NamedBody830_132

def NamedBody830_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody830_135 : StackLang.HolProg 64 :=
.seq NamedBody830_133 NamedBody830_134

def NamedBody830_136 : StackLang.HolProg 64 :=
.call (some (NamedBody830_128, 1, 830, 4)) (Sum.inl 470) (some (NamedBody830_135, 830, 5))

def NamedBody830_137 : StackLang.HolProg 64 :=
.seq NamedBody830_115 NamedBody830_136

def NamedBody830_138 : StackLang.HolProg 64 :=
.seq NamedBody830_114 NamedBody830_137

def NamedBody830_139 : StackLang.HolProg 64 :=
.seq NamedBody830_113 NamedBody830_138

def NamedBody830_140 : StackLang.HolProg 64 :=
.seq NamedBody830_84 NamedBody830_139

def NamedBody830_141 : StackLang.HolProg 64 :=
.seq NamedBody830_81 NamedBody830_140

def NamedBody830_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody830_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody830_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody830_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody830_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody830_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody830_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 88#64))

def NamedBody830_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody830_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody830_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody830_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody830_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody830_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody830_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody830_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody830_161 : StackLang.HolProg 64 :=
.seq NamedBody830_159 NamedBody830_160

def NamedBody830_162 : StackLang.HolProg 64 :=
.seq NamedBody830_158 NamedBody830_161

def NamedBody830_163 : StackLang.HolProg 64 :=
.seq NamedBody830_157 NamedBody830_162

def NamedBody830_164 : StackLang.HolProg 64 :=
.seq NamedBody830_156 NamedBody830_163

def NamedBody830_165 : StackLang.HolProg 64 :=
.seq NamedBody830_155 NamedBody830_164

def NamedBody830_166 : StackLang.HolProg 64 :=
.seq NamedBody830_154 NamedBody830_165

def NamedBody830_167 : StackLang.HolProg 64 :=
.seq NamedBody830_153 NamedBody830_166

def NamedBody830_168 : StackLang.HolProg 64 :=
.seq NamedBody830_152 NamedBody830_167

def NamedBody830_169 : StackLang.HolProg 64 :=
.seq NamedBody830_151 NamedBody830_168

def NamedBody830_170 : StackLang.HolProg 64 :=
.seq NamedBody830_150 NamedBody830_169

def NamedBody830_171 : StackLang.HolProg 64 :=
.seq NamedBody830_149 NamedBody830_170

def NamedBody830_172 : StackLang.HolProg 64 :=
.seq NamedBody830_148 NamedBody830_171

def NamedBody830_173 : StackLang.HolProg 64 :=
.seq NamedBody830_147 NamedBody830_172

def NamedBody830_174 : StackLang.HolProg 64 :=
.seq NamedBody830_146 NamedBody830_173

def NamedBody830_175 : StackLang.HolProg 64 :=
.seq NamedBody830_145 NamedBody830_174

def NamedBody830_176 : StackLang.HolProg 64 :=
.seq NamedBody830_144 NamedBody830_175

def NamedBody830_177 : StackLang.HolProg 64 :=
.seq NamedBody830_143 NamedBody830_176

def NamedBody830_178 : StackLang.HolProg 64 :=
.seq NamedBody830_142 NamedBody830_177

def NamedBody830_179 : StackLang.HolProg 64 :=
.seq NamedBody830_141 NamedBody830_178

def NamedBody830_180 : StackLang.HolProg 64 :=
.seq NamedBody830_80 NamedBody830_179

def NamedBody830_181 : StackLang.HolProg 64 :=
.seq NamedBody830_79 NamedBody830_180

def NamedBody830_182 : StackLang.HolProg 64 :=
.seq NamedBody830_78 NamedBody830_181

def NamedBody830_183 : StackLang.HolProg 64 :=
.seq NamedBody830_77 NamedBody830_182

def NamedBody830_184 : StackLang.HolProg 64 :=
.seq NamedBody830_76 NamedBody830_183

def NamedBody830_185 : StackLang.HolProg 64 :=
.seq NamedBody830_75 NamedBody830_184

def NamedBody830_186 : StackLang.HolProg 64 :=
.seq NamedBody830_74 NamedBody830_185

def NamedBody830_187 : StackLang.HolProg 64 :=
.seq NamedBody830_73 NamedBody830_186

def NamedBody830_188 : StackLang.HolProg 64 :=
.seq NamedBody830_72 NamedBody830_187

def NamedBody830_189 : StackLang.HolProg 64 :=
.seq NamedBody830_19 NamedBody830_188

def NamedBody830_190 : StackLang.HolProg 64 :=
.seq NamedBody830_14 NamedBody830_189

def NamedBody830_191 : StackLang.HolProg 64 :=
.seq NamedBody830_13 NamedBody830_190

def NamedBody830_192 : StackLang.HolProg 64 :=
.seq NamedBody830_12 NamedBody830_191

def NamedBody830_193 : StackLang.HolProg 64 :=
.seq NamedBody830_11 NamedBody830_192

def NamedBody830_194 : StackLang.HolProg 64 :=
.seq NamedBody830_10 NamedBody830_193

def NamedBody830_195 : StackLang.HolProg 64 :=
.seq NamedBody830_9 NamedBody830_194

def NamedBody830_196 : StackLang.HolProg 64 :=
.seq NamedBody830_8 NamedBody830_195

def NamedBody830_197 : StackLang.HolProg 64 :=
.seq NamedBody830_7 NamedBody830_196

def NamedBody830_198 : StackLang.HolProg 64 :=
.seq NamedBody830_6 NamedBody830_197

def Named830 : Nat × StackLang.HolProg 64 := (830, NamedBody830_198)
theorem Named830_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed830 = Named830 := by
  kernel_rfl
#print axioms Named830_eq
end InitECandidate.Proofs.BackendStages
