import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed606
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody606_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody606_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody606_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody606_3 : StackLang.HolProg 64 :=
.seq NamedBody606_1 NamedBody606_2

def NamedBody606_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody606_3 NamedBody606_4

def NamedBody606_6 : StackLang.HolProg 64 :=
.seq NamedBody606_0 NamedBody606_5

def NamedBody606_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1024#64)

def NamedBody606_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody606_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 128#64))

def NamedBody606_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7#64)

def NamedBody606_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody606_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody606_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_18 : StackLang.HolProg 64 :=
.seq NamedBody606_16 NamedBody606_17

def NamedBody606_19 : StackLang.HolProg 64 :=
.seq NamedBody606_15 NamedBody606_18

def NamedBody606_20 : StackLang.HolProg 64 :=
.seq NamedBody606_14 NamedBody606_19

def NamedBody606_21 : StackLang.HolProg 64 :=
.seq NamedBody606_13 NamedBody606_20

def NamedBody606_22 : StackLang.HolProg 64 :=
.seq NamedBody606_12 NamedBody606_21

def NamedBody606_23 : StackLang.HolProg 64 :=
.seq NamedBody606_11 NamedBody606_22

def NamedBody606_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody606_23 NamedBody606_24

def NamedBody606_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody606_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody606_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody606_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody606_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551328#64))

def NamedBody606_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody606_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody606_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody606_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody606_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody606_40 : StackLang.HolProg 64 :=
.seq NamedBody606_38 NamedBody606_39

def NamedBody606_41 : StackLang.HolProg 64 :=
.seq NamedBody606_37 NamedBody606_40

def NamedBody606_42 : StackLang.HolProg 64 :=
.seq NamedBody606_36 NamedBody606_41

def NamedBody606_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2318#64)

def NamedBody606_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_46 : StackLang.HolProg 64 :=
.seq NamedBody606_44 NamedBody606_45

def NamedBody606_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody606_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody606_50 : StackLang.HolProg 64 :=
.seq NamedBody606_48 NamedBody606_49

def NamedBody606_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_52 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody606_50 NamedBody606_51

def NamedBody606_53 : StackLang.HolProg 64 :=
.seq NamedBody606_47 NamedBody606_52

def NamedBody606_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody606_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 3

def NamedBody606_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody606_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody606_63 : StackLang.HolProg 64 :=
.seq NamedBody606_61 NamedBody606_62

def NamedBody606_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody606_65 : StackLang.HolProg 64 :=
.seq NamedBody606_63 NamedBody606_64

def NamedBody606_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_67 : StackLang.HolProg 64 :=
.seq NamedBody606_65 NamedBody606_66

def NamedBody606_68 : StackLang.HolProg 64 :=
.seq NamedBody606_60 NamedBody606_67

def NamedBody606_69 : StackLang.HolProg 64 :=
.seq NamedBody606_59 NamedBody606_68

def NamedBody606_70 : StackLang.HolProg 64 :=
.seq NamedBody606_58 NamedBody606_69

def NamedBody606_71 : StackLang.HolProg 64 :=
.seq NamedBody606_57 NamedBody606_70

def NamedBody606_72 : StackLang.HolProg 64 :=
.seq NamedBody606_56 NamedBody606_71

def NamedBody606_73 : StackLang.HolProg 64 :=
.seq NamedBody606_55 NamedBody606_72

def NamedBody606_74 : StackLang.HolProg 64 :=
.seq NamedBody606_54 NamedBody606_73

def NamedBody606_75 : StackLang.HolProg 64 :=
.seq NamedBody606_53 NamedBody606_74

def NamedBody606_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody606_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_84 : StackLang.HolProg 64 :=
.seq NamedBody606_82 NamedBody606_83

def NamedBody606_85 : StackLang.HolProg 64 :=
.seq NamedBody606_81 NamedBody606_84

def NamedBody606_86 : StackLang.HolProg 64 :=
.seq NamedBody606_80 NamedBody606_85

def NamedBody606_87 : StackLang.HolProg 64 :=
.seq NamedBody606_79 NamedBody606_86

def NamedBody606_88 : StackLang.HolProg 64 :=
.seq NamedBody606_78 NamedBody606_87

def NamedBody606_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_91 : StackLang.HolProg 64 :=
.seq NamedBody606_89 NamedBody606_90

def NamedBody606_92 : StackLang.HolProg 64 :=
.call (some (NamedBody606_88, 1, 606, 2)) (Sum.inl 596) (some (NamedBody606_91, 606, 3))

def NamedBody606_93 : StackLang.HolProg 64 :=
.seq NamedBody606_77 NamedBody606_92

def NamedBody606_94 : StackLang.HolProg 64 :=
.seq NamedBody606_76 NamedBody606_93

def NamedBody606_95 : StackLang.HolProg 64 :=
.seq NamedBody606_75 NamedBody606_94

def NamedBody606_96 : StackLang.HolProg 64 :=
.seq NamedBody606_46 NamedBody606_95

def NamedBody606_97 : StackLang.HolProg 64 :=
.seq NamedBody606_43 NamedBody606_96

def NamedBody606_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 128#64))

def NamedBody606_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody606_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_105 : StackLang.HolProg 64 :=
.seq NamedBody606_103 NamedBody606_104

def NamedBody606_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2319#64)

def NamedBody606_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_109 : StackLang.HolProg 64 :=
.seq NamedBody606_107 NamedBody606_108

def NamedBody606_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody606_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody606_113 : StackLang.HolProg 64 :=
.seq NamedBody606_111 NamedBody606_112

def NamedBody606_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody606_113 NamedBody606_114

def NamedBody606_116 : StackLang.HolProg 64 :=
.seq NamedBody606_110 NamedBody606_115

def NamedBody606_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody606_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 5

def NamedBody606_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody606_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody606_126 : StackLang.HolProg 64 :=
.seq NamedBody606_124 NamedBody606_125

def NamedBody606_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody606_128 : StackLang.HolProg 64 :=
.seq NamedBody606_126 NamedBody606_127

def NamedBody606_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_130 : StackLang.HolProg 64 :=
.seq NamedBody606_128 NamedBody606_129

def NamedBody606_131 : StackLang.HolProg 64 :=
.seq NamedBody606_123 NamedBody606_130

def NamedBody606_132 : StackLang.HolProg 64 :=
.seq NamedBody606_122 NamedBody606_131

def NamedBody606_133 : StackLang.HolProg 64 :=
.seq NamedBody606_121 NamedBody606_132

def NamedBody606_134 : StackLang.HolProg 64 :=
.seq NamedBody606_120 NamedBody606_133

def NamedBody606_135 : StackLang.HolProg 64 :=
.seq NamedBody606_119 NamedBody606_134

def NamedBody606_136 : StackLang.HolProg 64 :=
.seq NamedBody606_118 NamedBody606_135

def NamedBody606_137 : StackLang.HolProg 64 :=
.seq NamedBody606_117 NamedBody606_136

def NamedBody606_138 : StackLang.HolProg 64 :=
.seq NamedBody606_116 NamedBody606_137

def NamedBody606_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody606_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_149 : StackLang.HolProg 64 :=
.seq NamedBody606_147 NamedBody606_148

def NamedBody606_150 : StackLang.HolProg 64 :=
.seq NamedBody606_146 NamedBody606_149

def NamedBody606_151 : StackLang.HolProg 64 :=
.seq NamedBody606_145 NamedBody606_150

def NamedBody606_152 : StackLang.HolProg 64 :=
.seq NamedBody606_144 NamedBody606_151

def NamedBody606_153 : StackLang.HolProg 64 :=
.seq NamedBody606_143 NamedBody606_152

def NamedBody606_154 : StackLang.HolProg 64 :=
.seq NamedBody606_142 NamedBody606_153

def NamedBody606_155 : StackLang.HolProg 64 :=
.seq NamedBody606_141 NamedBody606_154

def NamedBody606_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_159 : StackLang.HolProg 64 :=
.seq NamedBody606_157 NamedBody606_158

def NamedBody606_160 : StackLang.HolProg 64 :=
.seq NamedBody606_156 NamedBody606_159

def NamedBody606_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_162 : StackLang.HolProg 64 :=
.seq NamedBody606_160 NamedBody606_161

def NamedBody606_163 : StackLang.HolProg 64 :=
.call (some (NamedBody606_155, 1, 606, 4)) (Sum.inl 390) (some (NamedBody606_162, 606, 5))

def NamedBody606_164 : StackLang.HolProg 64 :=
.seq NamedBody606_140 NamedBody606_163

def NamedBody606_165 : StackLang.HolProg 64 :=
.seq NamedBody606_139 NamedBody606_164

def NamedBody606_166 : StackLang.HolProg 64 :=
.seq NamedBody606_138 NamedBody606_165

def NamedBody606_167 : StackLang.HolProg 64 :=
.seq NamedBody606_109 NamedBody606_166

def NamedBody606_168 : StackLang.HolProg 64 :=
.seq NamedBody606_106 NamedBody606_167

def NamedBody606_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody606_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody606_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_175 : StackLang.HolProg 64 :=
.seq NamedBody606_173 NamedBody606_174

def NamedBody606_176 : StackLang.HolProg 64 :=
.seq NamedBody606_172 NamedBody606_175

def NamedBody606_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2320#64)

def NamedBody606_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_180 : StackLang.HolProg 64 :=
.seq NamedBody606_178 NamedBody606_179

def NamedBody606_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody606_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody606_184 : StackLang.HolProg 64 :=
.seq NamedBody606_182 NamedBody606_183

def NamedBody606_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody606_184 NamedBody606_185

def NamedBody606_187 : StackLang.HolProg 64 :=
.seq NamedBody606_181 NamedBody606_186

def NamedBody606_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody606_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 17

def NamedBody606_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody606_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody606_197 : StackLang.HolProg 64 :=
.seq NamedBody606_195 NamedBody606_196

def NamedBody606_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody606_199 : StackLang.HolProg 64 :=
.seq NamedBody606_197 NamedBody606_198

def NamedBody606_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_201 : StackLang.HolProg 64 :=
.seq NamedBody606_199 NamedBody606_200

def NamedBody606_202 : StackLang.HolProg 64 :=
.seq NamedBody606_194 NamedBody606_201

def NamedBody606_203 : StackLang.HolProg 64 :=
.seq NamedBody606_193 NamedBody606_202

def NamedBody606_204 : StackLang.HolProg 64 :=
.seq NamedBody606_192 NamedBody606_203

def NamedBody606_205 : StackLang.HolProg 64 :=
.seq NamedBody606_191 NamedBody606_204

def NamedBody606_206 : StackLang.HolProg 64 :=
.seq NamedBody606_190 NamedBody606_205

def NamedBody606_207 : StackLang.HolProg 64 :=
.seq NamedBody606_189 NamedBody606_206

def NamedBody606_208 : StackLang.HolProg 64 :=
.seq NamedBody606_188 NamedBody606_207

def NamedBody606_209 : StackLang.HolProg 64 :=
.seq NamedBody606_187 NamedBody606_208

def NamedBody606_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_217 : StackLang.HolProg 64 :=
.seq NamedBody606_215 NamedBody606_216

def NamedBody606_218 : StackLang.HolProg 64 :=
.seq NamedBody606_214 NamedBody606_217

def NamedBody606_219 : StackLang.HolProg 64 :=
.seq NamedBody606_213 NamedBody606_218

def NamedBody606_220 : StackLang.HolProg 64 :=
.seq NamedBody606_212 NamedBody606_219

def NamedBody606_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody606_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody606_224 : StackLang.HolProg 64 :=
.seq NamedBody606_222 NamedBody606_223

def NamedBody606_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_227 : StackLang.HolProg 64 :=
.seq NamedBody606_225 NamedBody606_226

def NamedBody606_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody606_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody606_232 : StackLang.HolProg 64 :=
.seq NamedBody606_230 NamedBody606_231

def NamedBody606_233 : StackLang.HolProg 64 :=
.seq NamedBody606_229 NamedBody606_232

def NamedBody606_234 : StackLang.HolProg 64 :=
.seq NamedBody606_228 NamedBody606_233

def NamedBody606_235 : StackLang.HolProg 64 :=
.seq NamedBody606_227 NamedBody606_234

def NamedBody606_236 : StackLang.HolProg 64 :=
.seq NamedBody606_224 NamedBody606_235

def NamedBody606_237 : StackLang.HolProg 64 :=
.seq NamedBody606_221 NamedBody606_236

def NamedBody606_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_240 : StackLang.HolProg 64 :=
.seq NamedBody606_238 NamedBody606_239

def NamedBody606_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody606_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody606_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody606_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 208#64))

def NamedBody606_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody606_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_251 : StackLang.HolProg 64 :=
.seq NamedBody606_249 NamedBody606_250

def NamedBody606_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody606_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_254 : StackLang.HolProg 64 :=
.seq NamedBody606_252 NamedBody606_253

def NamedBody606_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_256 : StackLang.HolProg 64 :=
.seq NamedBody606_254 NamedBody606_255

def NamedBody606_257 : StackLang.HolProg 64 :=
.seq NamedBody606_251 NamedBody606_256

def NamedBody606_258 : StackLang.HolProg 64 :=
.seq NamedBody606_248 NamedBody606_257

def NamedBody606_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2321#64)

def NamedBody606_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_262 : StackLang.HolProg 64 :=
.seq NamedBody606_260 NamedBody606_261

def NamedBody606_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody606_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody606_266 : StackLang.HolProg 64 :=
.seq NamedBody606_264 NamedBody606_265

def NamedBody606_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_268 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody606_266 NamedBody606_267

def NamedBody606_269 : StackLang.HolProg 64 :=
.seq NamedBody606_263 NamedBody606_268

def NamedBody606_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody606_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 8

def NamedBody606_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody606_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody606_279 : StackLang.HolProg 64 :=
.seq NamedBody606_277 NamedBody606_278

def NamedBody606_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody606_281 : StackLang.HolProg 64 :=
.seq NamedBody606_279 NamedBody606_280

def NamedBody606_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_283 : StackLang.HolProg 64 :=
.seq NamedBody606_281 NamedBody606_282

def NamedBody606_284 : StackLang.HolProg 64 :=
.seq NamedBody606_276 NamedBody606_283

def NamedBody606_285 : StackLang.HolProg 64 :=
.seq NamedBody606_275 NamedBody606_284

def NamedBody606_286 : StackLang.HolProg 64 :=
.seq NamedBody606_274 NamedBody606_285

def NamedBody606_287 : StackLang.HolProg 64 :=
.seq NamedBody606_273 NamedBody606_286

def NamedBody606_288 : StackLang.HolProg 64 :=
.seq NamedBody606_272 NamedBody606_287

def NamedBody606_289 : StackLang.HolProg 64 :=
.seq NamedBody606_271 NamedBody606_288

def NamedBody606_290 : StackLang.HolProg 64 :=
.seq NamedBody606_270 NamedBody606_289

def NamedBody606_291 : StackLang.HolProg 64 :=
.seq NamedBody606_269 NamedBody606_290

def NamedBody606_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_299 : StackLang.HolProg 64 :=
.seq NamedBody606_297 NamedBody606_298

def NamedBody606_300 : StackLang.HolProg 64 :=
.seq NamedBody606_296 NamedBody606_299

def NamedBody606_301 : StackLang.HolProg 64 :=
.seq NamedBody606_295 NamedBody606_300

def NamedBody606_302 : StackLang.HolProg 64 :=
.seq NamedBody606_294 NamedBody606_301

def NamedBody606_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_305 : StackLang.HolProg 64 :=
.seq NamedBody606_303 NamedBody606_304

def NamedBody606_306 : StackLang.HolProg 64 :=
.call (some (NamedBody606_302, 1, 606, 7)) (Sum.inl 76) (some (NamedBody606_305, 606, 8))

def NamedBody606_307 : StackLang.HolProg 64 :=
.seq NamedBody606_293 NamedBody606_306

def NamedBody606_308 : StackLang.HolProg 64 :=
.seq NamedBody606_292 NamedBody606_307

def NamedBody606_309 : StackLang.HolProg 64 :=
.seq NamedBody606_291 NamedBody606_308

def NamedBody606_310 : StackLang.HolProg 64 :=
.seq NamedBody606_262 NamedBody606_309

def NamedBody606_311 : StackLang.HolProg 64 :=
.seq NamedBody606_259 NamedBody606_310

def NamedBody606_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 224#64))

def NamedBody606_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2322#64)

def NamedBody606_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_319 : StackLang.HolProg 64 :=
.seq NamedBody606_317 NamedBody606_318

def NamedBody606_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody606_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody606_323 : StackLang.HolProg 64 :=
.seq NamedBody606_321 NamedBody606_322

def NamedBody606_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_325 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody606_323 NamedBody606_324

def NamedBody606_326 : StackLang.HolProg 64 :=
.seq NamedBody606_320 NamedBody606_325

def NamedBody606_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody606_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 10

def NamedBody606_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody606_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody606_336 : StackLang.HolProg 64 :=
.seq NamedBody606_334 NamedBody606_335

def NamedBody606_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody606_338 : StackLang.HolProg 64 :=
.seq NamedBody606_336 NamedBody606_337

def NamedBody606_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_340 : StackLang.HolProg 64 :=
.seq NamedBody606_338 NamedBody606_339

def NamedBody606_341 : StackLang.HolProg 64 :=
.seq NamedBody606_333 NamedBody606_340

def NamedBody606_342 : StackLang.HolProg 64 :=
.seq NamedBody606_332 NamedBody606_341

def NamedBody606_343 : StackLang.HolProg 64 :=
.seq NamedBody606_331 NamedBody606_342

def NamedBody606_344 : StackLang.HolProg 64 :=
.seq NamedBody606_330 NamedBody606_343

def NamedBody606_345 : StackLang.HolProg 64 :=
.seq NamedBody606_329 NamedBody606_344

def NamedBody606_346 : StackLang.HolProg 64 :=
.seq NamedBody606_328 NamedBody606_345

def NamedBody606_347 : StackLang.HolProg 64 :=
.seq NamedBody606_327 NamedBody606_346

def NamedBody606_348 : StackLang.HolProg 64 :=
.seq NamedBody606_326 NamedBody606_347

def NamedBody606_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody606_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_358 : StackLang.HolProg 64 :=
.seq NamedBody606_356 NamedBody606_357

def NamedBody606_359 : StackLang.HolProg 64 :=
.seq NamedBody606_355 NamedBody606_358

def NamedBody606_360 : StackLang.HolProg 64 :=
.seq NamedBody606_354 NamedBody606_359

def NamedBody606_361 : StackLang.HolProg 64 :=
.seq NamedBody606_353 NamedBody606_360

def NamedBody606_362 : StackLang.HolProg 64 :=
.seq NamedBody606_352 NamedBody606_361

def NamedBody606_363 : StackLang.HolProg 64 :=
.seq NamedBody606_351 NamedBody606_362

def NamedBody606_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody606_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_367 : StackLang.HolProg 64 :=
.seq NamedBody606_365 NamedBody606_366

def NamedBody606_368 : StackLang.HolProg 64 :=
.seq NamedBody606_364 NamedBody606_367

def NamedBody606_369 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_370 : StackLang.HolProg 64 :=
.seq NamedBody606_368 NamedBody606_369

def NamedBody606_371 : StackLang.HolProg 64 :=
.call (some (NamedBody606_363, 1, 606, 9)) (Sum.inl 73) (some (NamedBody606_370, 606, 10))

def NamedBody606_372 : StackLang.HolProg 64 :=
.seq NamedBody606_350 NamedBody606_371

def NamedBody606_373 : StackLang.HolProg 64 :=
.seq NamedBody606_349 NamedBody606_372

def NamedBody606_374 : StackLang.HolProg 64 :=
.seq NamedBody606_348 NamedBody606_373

def NamedBody606_375 : StackLang.HolProg 64 :=
.seq NamedBody606_319 NamedBody606_374

def NamedBody606_376 : StackLang.HolProg 64 :=
.seq NamedBody606_316 NamedBody606_375

def NamedBody606_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody606_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody606_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody606_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def NamedBody606_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody606_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody606_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody606_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody606_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551328#64)))

def NamedBody606_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody606_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody606_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody606_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_394 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_395 : StackLang.HolProg 64 :=
.seq NamedBody606_393 NamedBody606_394

def NamedBody606_396 : StackLang.HolProg 64 :=
.seq NamedBody606_392 NamedBody606_395

def NamedBody606_397 : StackLang.HolProg 64 :=
.seq NamedBody606_391 NamedBody606_396

def NamedBody606_398 : StackLang.HolProg 64 :=
.seq NamedBody606_390 NamedBody606_397

def NamedBody606_399 : StackLang.HolProg 64 :=
.seq NamedBody606_389 NamedBody606_398

def NamedBody606_400 : StackLang.HolProg 64 :=
.seq NamedBody606_388 NamedBody606_399

def NamedBody606_401 : StackLang.HolProg 64 :=
.seq NamedBody606_387 NamedBody606_400

def NamedBody606_402 : StackLang.HolProg 64 :=
.seq NamedBody606_386 NamedBody606_401

def NamedBody606_403 : StackLang.HolProg 64 :=
.seq NamedBody606_385 NamedBody606_402

def NamedBody606_404 : StackLang.HolProg 64 :=
.seq NamedBody606_384 NamedBody606_403

def NamedBody606_405 : StackLang.HolProg 64 :=
.seq NamedBody606_383 NamedBody606_404

def NamedBody606_406 : StackLang.HolProg 64 :=
.seq NamedBody606_382 NamedBody606_405

def NamedBody606_407 : StackLang.HolProg 64 :=
.seq NamedBody606_381 NamedBody606_406

def NamedBody606_408 : StackLang.HolProg 64 :=
.seq NamedBody606_380 NamedBody606_407

def NamedBody606_409 : StackLang.HolProg 64 :=
.seq NamedBody606_379 NamedBody606_408

def NamedBody606_410 : StackLang.HolProg 64 :=
.seq NamedBody606_378 NamedBody606_409

def NamedBody606_411 : StackLang.HolProg 64 :=
.seq NamedBody606_377 NamedBody606_410

def NamedBody606_412 : StackLang.HolProg 64 :=
.seq NamedBody606_376 NamedBody606_411

def NamedBody606_413 : StackLang.HolProg 64 :=
.seq NamedBody606_315 NamedBody606_412

def NamedBody606_414 : StackLang.HolProg 64 :=
.seq NamedBody606_314 NamedBody606_413

def NamedBody606_415 : StackLang.HolProg 64 :=
.seq NamedBody606_313 NamedBody606_414

def NamedBody606_416 : StackLang.HolProg 64 :=
.seq NamedBody606_312 NamedBody606_415

def NamedBody606_417 : StackLang.HolProg 64 :=
.seq NamedBody606_311 NamedBody606_416

def NamedBody606_418 : StackLang.HolProg 64 :=
.seq NamedBody606_258 NamedBody606_417

def NamedBody606_419 : StackLang.HolProg 64 :=
.seq NamedBody606_247 NamedBody606_418

def NamedBody606_420 : StackLang.HolProg 64 :=
.seq NamedBody606_246 NamedBody606_419

def NamedBody606_421 : StackLang.HolProg 64 :=
.seq NamedBody606_245 NamedBody606_420

def NamedBody606_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_424 : StackLang.HolProg 64 :=
.seq NamedBody606_422 NamedBody606_423

def NamedBody606_425 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody606_421 NamedBody606_424

def NamedBody606_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody606_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2323#64)

def NamedBody606_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_431 : StackLang.HolProg 64 :=
.seq NamedBody606_429 NamedBody606_430

def NamedBody606_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody606_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody606_435 : StackLang.HolProg 64 :=
.seq NamedBody606_433 NamedBody606_434

def NamedBody606_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_437 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody606_435 NamedBody606_436

def NamedBody606_438 : StackLang.HolProg 64 :=
.seq NamedBody606_432 NamedBody606_437

def NamedBody606_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody606_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 12

def NamedBody606_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody606_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody606_448 : StackLang.HolProg 64 :=
.seq NamedBody606_446 NamedBody606_447

def NamedBody606_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody606_450 : StackLang.HolProg 64 :=
.seq NamedBody606_448 NamedBody606_449

def NamedBody606_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_452 : StackLang.HolProg 64 :=
.seq NamedBody606_450 NamedBody606_451

def NamedBody606_453 : StackLang.HolProg 64 :=
.seq NamedBody606_445 NamedBody606_452

def NamedBody606_454 : StackLang.HolProg 64 :=
.seq NamedBody606_444 NamedBody606_453

def NamedBody606_455 : StackLang.HolProg 64 :=
.seq NamedBody606_443 NamedBody606_454

def NamedBody606_456 : StackLang.HolProg 64 :=
.seq NamedBody606_442 NamedBody606_455

def NamedBody606_457 : StackLang.HolProg 64 :=
.seq NamedBody606_441 NamedBody606_456

def NamedBody606_458 : StackLang.HolProg 64 :=
.seq NamedBody606_440 NamedBody606_457

def NamedBody606_459 : StackLang.HolProg 64 :=
.seq NamedBody606_439 NamedBody606_458

def NamedBody606_460 : StackLang.HolProg 64 :=
.seq NamedBody606_438 NamedBody606_459

def NamedBody606_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody606_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_470 : StackLang.HolProg 64 :=
.seq NamedBody606_468 NamedBody606_469

def NamedBody606_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody606_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody606_473 : StackLang.HolProg 64 :=
.seq NamedBody606_471 NamedBody606_472

def NamedBody606_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody606_475 : StackLang.HolProg 64 :=
.seq NamedBody606_473 NamedBody606_474

def NamedBody606_476 : StackLang.HolProg 64 :=
.seq NamedBody606_470 NamedBody606_475

def NamedBody606_477 : StackLang.HolProg 64 :=
.seq NamedBody606_467 NamedBody606_476

def NamedBody606_478 : StackLang.HolProg 64 :=
.seq NamedBody606_466 NamedBody606_477

def NamedBody606_479 : StackLang.HolProg 64 :=
.seq NamedBody606_465 NamedBody606_478

def NamedBody606_480 : StackLang.HolProg 64 :=
.seq NamedBody606_464 NamedBody606_479

def NamedBody606_481 : StackLang.HolProg 64 :=
.seq NamedBody606_463 NamedBody606_480

def NamedBody606_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody606_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_485 : StackLang.HolProg 64 :=
.seq NamedBody606_483 NamedBody606_484

def NamedBody606_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody606_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody606_488 : StackLang.HolProg 64 :=
.seq NamedBody606_486 NamedBody606_487

def NamedBody606_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody606_490 : StackLang.HolProg 64 :=
.seq NamedBody606_488 NamedBody606_489

def NamedBody606_491 : StackLang.HolProg 64 :=
.seq NamedBody606_485 NamedBody606_490

def NamedBody606_492 : StackLang.HolProg 64 :=
.seq NamedBody606_482 NamedBody606_491

def NamedBody606_493 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_494 : StackLang.HolProg 64 :=
.seq NamedBody606_492 NamedBody606_493

def NamedBody606_495 : StackLang.HolProg 64 :=
.call (some (NamedBody606_481, 1, 606, 11)) (Sum.inl 391) (some (NamedBody606_494, 606, 12))

def NamedBody606_496 : StackLang.HolProg 64 :=
.seq NamedBody606_462 NamedBody606_495

def NamedBody606_497 : StackLang.HolProg 64 :=
.seq NamedBody606_461 NamedBody606_496

def NamedBody606_498 : StackLang.HolProg 64 :=
.seq NamedBody606_460 NamedBody606_497

def NamedBody606_499 : StackLang.HolProg 64 :=
.seq NamedBody606_431 NamedBody606_498

def NamedBody606_500 : StackLang.HolProg 64 :=
.seq NamedBody606_428 NamedBody606_499

def NamedBody606_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody606_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody606_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody606_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody606_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody606_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody606_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 200#64)))

def NamedBody606_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody606_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody606_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2324#64)

def NamedBody606_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_518 : StackLang.HolProg 64 :=
.seq NamedBody606_516 NamedBody606_517

def NamedBody606_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody606_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody606_522 : StackLang.HolProg 64 :=
.seq NamedBody606_520 NamedBody606_521

def NamedBody606_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_524 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody606_522 NamedBody606_523

def NamedBody606_525 : StackLang.HolProg 64 :=
.seq NamedBody606_519 NamedBody606_524

def NamedBody606_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody606_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 14

def NamedBody606_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody606_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody606_535 : StackLang.HolProg 64 :=
.seq NamedBody606_533 NamedBody606_534

def NamedBody606_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody606_537 : StackLang.HolProg 64 :=
.seq NamedBody606_535 NamedBody606_536

def NamedBody606_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_539 : StackLang.HolProg 64 :=
.seq NamedBody606_537 NamedBody606_538

def NamedBody606_540 : StackLang.HolProg 64 :=
.seq NamedBody606_532 NamedBody606_539

def NamedBody606_541 : StackLang.HolProg 64 :=
.seq NamedBody606_531 NamedBody606_540

def NamedBody606_542 : StackLang.HolProg 64 :=
.seq NamedBody606_530 NamedBody606_541

def NamedBody606_543 : StackLang.HolProg 64 :=
.seq NamedBody606_529 NamedBody606_542

def NamedBody606_544 : StackLang.HolProg 64 :=
.seq NamedBody606_528 NamedBody606_543

def NamedBody606_545 : StackLang.HolProg 64 :=
.seq NamedBody606_527 NamedBody606_544

def NamedBody606_546 : StackLang.HolProg 64 :=
.seq NamedBody606_526 NamedBody606_545

def NamedBody606_547 : StackLang.HolProg 64 :=
.seq NamedBody606_525 NamedBody606_546

def NamedBody606_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_557 : StackLang.HolProg 64 :=
.seq NamedBody606_555 NamedBody606_556

def NamedBody606_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_560 : StackLang.HolProg 64 :=
.seq NamedBody606_558 NamedBody606_559

def NamedBody606_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody606_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_563 : StackLang.HolProg 64 :=
.seq NamedBody606_561 NamedBody606_562

def NamedBody606_564 : StackLang.HolProg 64 :=
.seq NamedBody606_560 NamedBody606_563

def NamedBody606_565 : StackLang.HolProg 64 :=
.seq NamedBody606_557 NamedBody606_564

def NamedBody606_566 : StackLang.HolProg 64 :=
.seq NamedBody606_554 NamedBody606_565

def NamedBody606_567 : StackLang.HolProg 64 :=
.seq NamedBody606_553 NamedBody606_566

def NamedBody606_568 : StackLang.HolProg 64 :=
.seq NamedBody606_552 NamedBody606_567

def NamedBody606_569 : StackLang.HolProg 64 :=
.seq NamedBody606_551 NamedBody606_568

def NamedBody606_570 : StackLang.HolProg 64 :=
.seq NamedBody606_550 NamedBody606_569

def NamedBody606_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_574 : StackLang.HolProg 64 :=
.seq NamedBody606_572 NamedBody606_573

def NamedBody606_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_577 : StackLang.HolProg 64 :=
.seq NamedBody606_575 NamedBody606_576

def NamedBody606_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody606_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_580 : StackLang.HolProg 64 :=
.seq NamedBody606_578 NamedBody606_579

def NamedBody606_581 : StackLang.HolProg 64 :=
.seq NamedBody606_577 NamedBody606_580

def NamedBody606_582 : StackLang.HolProg 64 :=
.seq NamedBody606_574 NamedBody606_581

def NamedBody606_583 : StackLang.HolProg 64 :=
.seq NamedBody606_571 NamedBody606_582

def NamedBody606_584 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_585 : StackLang.HolProg 64 :=
.seq NamedBody606_583 NamedBody606_584

def NamedBody606_586 : StackLang.HolProg 64 :=
.call (some (NamedBody606_570, 1, 606, 13)) (Sum.inl 474) (some (NamedBody606_585, 606, 14))

def NamedBody606_587 : StackLang.HolProg 64 :=
.seq NamedBody606_549 NamedBody606_586

def NamedBody606_588 : StackLang.HolProg 64 :=
.seq NamedBody606_548 NamedBody606_587

def NamedBody606_589 : StackLang.HolProg 64 :=
.seq NamedBody606_547 NamedBody606_588

def NamedBody606_590 : StackLang.HolProg 64 :=
.seq NamedBody606_518 NamedBody606_589

def NamedBody606_591 : StackLang.HolProg 64 :=
.seq NamedBody606_515 NamedBody606_590

def NamedBody606_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody606_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2325#64)

def NamedBody606_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_597 : StackLang.HolProg 64 :=
.seq NamedBody606_595 NamedBody606_596

def NamedBody606_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody606_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody606_601 : StackLang.HolProg 64 :=
.seq NamedBody606_599 NamedBody606_600

def NamedBody606_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_603 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody606_601 NamedBody606_602

def NamedBody606_604 : StackLang.HolProg 64 :=
.seq NamedBody606_598 NamedBody606_603

def NamedBody606_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody606_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 16

def NamedBody606_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody606_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody606_614 : StackLang.HolProg 64 :=
.seq NamedBody606_612 NamedBody606_613

def NamedBody606_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody606_616 : StackLang.HolProg 64 :=
.seq NamedBody606_614 NamedBody606_615

def NamedBody606_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_618 : StackLang.HolProg 64 :=
.seq NamedBody606_616 NamedBody606_617

def NamedBody606_619 : StackLang.HolProg 64 :=
.seq NamedBody606_611 NamedBody606_618

def NamedBody606_620 : StackLang.HolProg 64 :=
.seq NamedBody606_610 NamedBody606_619

def NamedBody606_621 : StackLang.HolProg 64 :=
.seq NamedBody606_609 NamedBody606_620

def NamedBody606_622 : StackLang.HolProg 64 :=
.seq NamedBody606_608 NamedBody606_621

def NamedBody606_623 : StackLang.HolProg 64 :=
.seq NamedBody606_607 NamedBody606_622

def NamedBody606_624 : StackLang.HolProg 64 :=
.seq NamedBody606_606 NamedBody606_623

def NamedBody606_625 : StackLang.HolProg 64 :=
.seq NamedBody606_605 NamedBody606_624

def NamedBody606_626 : StackLang.HolProg 64 :=
.seq NamedBody606_604 NamedBody606_625

def NamedBody606_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody606_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_637 : StackLang.HolProg 64 :=
.seq NamedBody606_635 NamedBody606_636

def NamedBody606_638 : StackLang.HolProg 64 :=
.seq NamedBody606_634 NamedBody606_637

def NamedBody606_639 : StackLang.HolProg 64 :=
.seq NamedBody606_633 NamedBody606_638

def NamedBody606_640 : StackLang.HolProg 64 :=
.seq NamedBody606_632 NamedBody606_639

def NamedBody606_641 : StackLang.HolProg 64 :=
.seq NamedBody606_631 NamedBody606_640

def NamedBody606_642 : StackLang.HolProg 64 :=
.seq NamedBody606_630 NamedBody606_641

def NamedBody606_643 : StackLang.HolProg 64 :=
.seq NamedBody606_629 NamedBody606_642

def NamedBody606_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody606_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody606_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody606_648 : StackLang.HolProg 64 :=
.seq NamedBody606_646 NamedBody606_647

def NamedBody606_649 : StackLang.HolProg 64 :=
.seq NamedBody606_645 NamedBody606_648

def NamedBody606_650 : StackLang.HolProg 64 :=
.seq NamedBody606_644 NamedBody606_649

def NamedBody606_651 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_652 : StackLang.HolProg 64 :=
.seq NamedBody606_650 NamedBody606_651

def NamedBody606_653 : StackLang.HolProg 64 :=
.call (some (NamedBody606_643, 1, 606, 15)) (Sum.inl 604) (some (NamedBody606_652, 606, 16))

def NamedBody606_654 : StackLang.HolProg 64 :=
.seq NamedBody606_628 NamedBody606_653

def NamedBody606_655 : StackLang.HolProg 64 :=
.seq NamedBody606_627 NamedBody606_654

def NamedBody606_656 : StackLang.HolProg 64 :=
.seq NamedBody606_626 NamedBody606_655

def NamedBody606_657 : StackLang.HolProg 64 :=
.seq NamedBody606_597 NamedBody606_656

def NamedBody606_658 : StackLang.HolProg 64 :=
.seq NamedBody606_594 NamedBody606_657

def NamedBody606_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody606_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody606_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody606_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def NamedBody606_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody606_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody606_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody606_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody606_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551328#64)))

def NamedBody606_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody606_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody606_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody606_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody606_675 : StackLang.HolProg 64 :=
.seq NamedBody606_673 NamedBody606_674

def NamedBody606_676 : StackLang.HolProg 64 :=
.seq NamedBody606_672 NamedBody606_675

def NamedBody606_677 : StackLang.HolProg 64 :=
.seq NamedBody606_671 NamedBody606_676

def NamedBody606_678 : StackLang.HolProg 64 :=
.seq NamedBody606_670 NamedBody606_677

def NamedBody606_679 : StackLang.HolProg 64 :=
.seq NamedBody606_669 NamedBody606_678

def NamedBody606_680 : StackLang.HolProg 64 :=
.seq NamedBody606_668 NamedBody606_679

def NamedBody606_681 : StackLang.HolProg 64 :=
.seq NamedBody606_667 NamedBody606_680

def NamedBody606_682 : StackLang.HolProg 64 :=
.seq NamedBody606_666 NamedBody606_681

def NamedBody606_683 : StackLang.HolProg 64 :=
.seq NamedBody606_665 NamedBody606_682

def NamedBody606_684 : StackLang.HolProg 64 :=
.seq NamedBody606_664 NamedBody606_683

def NamedBody606_685 : StackLang.HolProg 64 :=
.seq NamedBody606_663 NamedBody606_684

def NamedBody606_686 : StackLang.HolProg 64 :=
.seq NamedBody606_662 NamedBody606_685

def NamedBody606_687 : StackLang.HolProg 64 :=
.seq NamedBody606_661 NamedBody606_686

def NamedBody606_688 : StackLang.HolProg 64 :=
.seq NamedBody606_660 NamedBody606_687

def NamedBody606_689 : StackLang.HolProg 64 :=
.seq NamedBody606_659 NamedBody606_688

def NamedBody606_690 : StackLang.HolProg 64 :=
.seq NamedBody606_658 NamedBody606_689

def NamedBody606_691 : StackLang.HolProg 64 :=
.seq NamedBody606_593 NamedBody606_690

def NamedBody606_692 : StackLang.HolProg 64 :=
.seq NamedBody606_592 NamedBody606_691

def NamedBody606_693 : StackLang.HolProg 64 :=
.seq NamedBody606_591 NamedBody606_692

def NamedBody606_694 : StackLang.HolProg 64 :=
.seq NamedBody606_514 NamedBody606_693

def NamedBody606_695 : StackLang.HolProg 64 :=
.seq NamedBody606_513 NamedBody606_694

def NamedBody606_696 : StackLang.HolProg 64 :=
.seq NamedBody606_512 NamedBody606_695

def NamedBody606_697 : StackLang.HolProg 64 :=
.seq NamedBody606_511 NamedBody606_696

def NamedBody606_698 : StackLang.HolProg 64 :=
.seq NamedBody606_510 NamedBody606_697

def NamedBody606_699 : StackLang.HolProg 64 :=
.seq NamedBody606_509 NamedBody606_698

def NamedBody606_700 : StackLang.HolProg 64 :=
.seq NamedBody606_508 NamedBody606_699

def NamedBody606_701 : StackLang.HolProg 64 :=
.seq NamedBody606_507 NamedBody606_700

def NamedBody606_702 : StackLang.HolProg 64 :=
.seq NamedBody606_506 NamedBody606_701

def NamedBody606_703 : StackLang.HolProg 64 :=
.seq NamedBody606_505 NamedBody606_702

def NamedBody606_704 : StackLang.HolProg 64 :=
.seq NamedBody606_504 NamedBody606_703

def NamedBody606_705 : StackLang.HolProg 64 :=
.seq NamedBody606_503 NamedBody606_704

def NamedBody606_706 : StackLang.HolProg 64 :=
.seq NamedBody606_502 NamedBody606_705

def NamedBody606_707 : StackLang.HolProg 64 :=
.seq NamedBody606_501 NamedBody606_706

def NamedBody606_708 : StackLang.HolProg 64 :=
.seq NamedBody606_500 NamedBody606_707

def NamedBody606_709 : StackLang.HolProg 64 :=
.seq NamedBody606_427 NamedBody606_708

def NamedBody606_710 : StackLang.HolProg 64 :=
.seq NamedBody606_426 NamedBody606_709

def NamedBody606_711 : StackLang.HolProg 64 :=
.seq NamedBody606_425 NamedBody606_710

def NamedBody606_712 : StackLang.HolProg 64 :=
.seq NamedBody606_244 NamedBody606_711

def NamedBody606_713 : StackLang.HolProg 64 :=
.seq NamedBody606_243 NamedBody606_712

def NamedBody606_714 : StackLang.HolProg 64 :=
.seq NamedBody606_242 NamedBody606_713

def NamedBody606_715 : StackLang.HolProg 64 :=
.seq NamedBody606_241 NamedBody606_714

def NamedBody606_716 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) NamedBody606_240 NamedBody606_715

def NamedBody606_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody606_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_720 : StackLang.HolProg 64 :=
.seq NamedBody606_718 NamedBody606_719

def NamedBody606_721 : StackLang.HolProg 64 :=
.seq NamedBody606_717 NamedBody606_720

def NamedBody606_722 : StackLang.HolProg 64 :=
.seq NamedBody606_716 NamedBody606_721

def NamedBody606_723 : StackLang.HolProg 64 :=
.seq NamedBody606_237 NamedBody606_722

def NamedBody606_724 : StackLang.HolProg 64 :=
.call (some (NamedBody606_220, 1, 606, 6)) (Sum.inl 605) (some (NamedBody606_723, 606, 17))

def NamedBody606_725 : StackLang.HolProg 64 :=
.seq NamedBody606_211 NamedBody606_724

def NamedBody606_726 : StackLang.HolProg 64 :=
.seq NamedBody606_210 NamedBody606_725

def NamedBody606_727 : StackLang.HolProg 64 :=
.seq NamedBody606_209 NamedBody606_726

def NamedBody606_728 : StackLang.HolProg 64 :=
.seq NamedBody606_180 NamedBody606_727

def NamedBody606_729 : StackLang.HolProg 64 :=
.seq NamedBody606_177 NamedBody606_728

def NamedBody606_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_732 : StackLang.HolProg 64 :=
.seq NamedBody606_730 NamedBody606_731

def NamedBody606_733 : StackLang.HolProg 64 :=
.seq NamedBody606_729 NamedBody606_732

def NamedBody606_734 : StackLang.HolProg 64 :=
.seq NamedBody606_176 NamedBody606_733

def NamedBody606_735 : StackLang.HolProg 64 :=
.seq NamedBody606_171 NamedBody606_734

def NamedBody606_736 : StackLang.HolProg 64 :=
.seq NamedBody606_170 NamedBody606_735

def NamedBody606_737 : StackLang.HolProg 64 :=
.seq NamedBody606_169 NamedBody606_736

def NamedBody606_738 : StackLang.HolProg 64 :=
.seq NamedBody606_168 NamedBody606_737

def NamedBody606_739 : StackLang.HolProg 64 :=
.seq NamedBody606_105 NamedBody606_738

def NamedBody606_740 : StackLang.HolProg 64 :=
.seq NamedBody606_102 NamedBody606_739

def NamedBody606_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_743 : StackLang.HolProg 64 :=
.seq NamedBody606_741 NamedBody606_742

def NamedBody606_744 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody606_740 NamedBody606_743

def NamedBody606_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2326#64)

def NamedBody606_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_750 : StackLang.HolProg 64 :=
.seq NamedBody606_748 NamedBody606_749

def NamedBody606_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody606_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody606_754 : StackLang.HolProg 64 :=
.seq NamedBody606_752 NamedBody606_753

def NamedBody606_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_756 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody606_754 NamedBody606_755

def NamedBody606_757 : StackLang.HolProg 64 :=
.seq NamedBody606_751 NamedBody606_756

def NamedBody606_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody606_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 19

def NamedBody606_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody606_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody606_767 : StackLang.HolProg 64 :=
.seq NamedBody606_765 NamedBody606_766

def NamedBody606_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody606_769 : StackLang.HolProg 64 :=
.seq NamedBody606_767 NamedBody606_768

def NamedBody606_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_771 : StackLang.HolProg 64 :=
.seq NamedBody606_769 NamedBody606_770

def NamedBody606_772 : StackLang.HolProg 64 :=
.seq NamedBody606_764 NamedBody606_771

def NamedBody606_773 : StackLang.HolProg 64 :=
.seq NamedBody606_763 NamedBody606_772

def NamedBody606_774 : StackLang.HolProg 64 :=
.seq NamedBody606_762 NamedBody606_773

def NamedBody606_775 : StackLang.HolProg 64 :=
.seq NamedBody606_761 NamedBody606_774

def NamedBody606_776 : StackLang.HolProg 64 :=
.seq NamedBody606_760 NamedBody606_775

def NamedBody606_777 : StackLang.HolProg 64 :=
.seq NamedBody606_759 NamedBody606_776

def NamedBody606_778 : StackLang.HolProg 64 :=
.seq NamedBody606_758 NamedBody606_777

def NamedBody606_779 : StackLang.HolProg 64 :=
.seq NamedBody606_757 NamedBody606_778

def NamedBody606_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody606_787 : StackLang.HolProg 64 :=
.seq NamedBody606_785 NamedBody606_786

def NamedBody606_788 : StackLang.HolProg 64 :=
.seq NamedBody606_784 NamedBody606_787

def NamedBody606_789 : StackLang.HolProg 64 :=
.seq NamedBody606_783 NamedBody606_788

def NamedBody606_790 : StackLang.HolProg 64 :=
.seq NamedBody606_782 NamedBody606_789

def NamedBody606_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_792 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_793 : StackLang.HolProg 64 :=
.seq NamedBody606_791 NamedBody606_792

def NamedBody606_794 : StackLang.HolProg 64 :=
.call (some (NamedBody606_790, 1, 606, 18)) (Sum.inl 390) (some (NamedBody606_793, 606, 19))

def NamedBody606_795 : StackLang.HolProg 64 :=
.seq NamedBody606_781 NamedBody606_794

def NamedBody606_796 : StackLang.HolProg 64 :=
.seq NamedBody606_780 NamedBody606_795

def NamedBody606_797 : StackLang.HolProg 64 :=
.seq NamedBody606_779 NamedBody606_796

def NamedBody606_798 : StackLang.HolProg 64 :=
.seq NamedBody606_750 NamedBody606_797

def NamedBody606_799 : StackLang.HolProg 64 :=
.seq NamedBody606_747 NamedBody606_798

def NamedBody606_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody606_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody606_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody606_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551328#64))

def NamedBody606_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody606_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2327#64)

def NamedBody606_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_812 : StackLang.HolProg 64 :=
.seq NamedBody606_810 NamedBody606_811

def NamedBody606_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody606_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody606_816 : StackLang.HolProg 64 :=
.seq NamedBody606_814 NamedBody606_815

def NamedBody606_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_818 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody606_816 NamedBody606_817

def NamedBody606_819 : StackLang.HolProg 64 :=
.seq NamedBody606_813 NamedBody606_818

def NamedBody606_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody606_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 21

def NamedBody606_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody606_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody606_829 : StackLang.HolProg 64 :=
.seq NamedBody606_827 NamedBody606_828

def NamedBody606_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody606_831 : StackLang.HolProg 64 :=
.seq NamedBody606_829 NamedBody606_830

def NamedBody606_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_833 : StackLang.HolProg 64 :=
.seq NamedBody606_831 NamedBody606_832

def NamedBody606_834 : StackLang.HolProg 64 :=
.seq NamedBody606_826 NamedBody606_833

def NamedBody606_835 : StackLang.HolProg 64 :=
.seq NamedBody606_825 NamedBody606_834

def NamedBody606_836 : StackLang.HolProg 64 :=
.seq NamedBody606_824 NamedBody606_835

def NamedBody606_837 : StackLang.HolProg 64 :=
.seq NamedBody606_823 NamedBody606_836

def NamedBody606_838 : StackLang.HolProg 64 :=
.seq NamedBody606_822 NamedBody606_837

def NamedBody606_839 : StackLang.HolProg 64 :=
.seq NamedBody606_821 NamedBody606_838

def NamedBody606_840 : StackLang.HolProg 64 :=
.seq NamedBody606_820 NamedBody606_839

def NamedBody606_841 : StackLang.HolProg 64 :=
.seq NamedBody606_819 NamedBody606_840

def NamedBody606_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_849 : StackLang.HolProg 64 :=
.seq NamedBody606_847 NamedBody606_848

def NamedBody606_850 : StackLang.HolProg 64 :=
.seq NamedBody606_846 NamedBody606_849

def NamedBody606_851 : StackLang.HolProg 64 :=
.seq NamedBody606_845 NamedBody606_850

def NamedBody606_852 : StackLang.HolProg 64 :=
.seq NamedBody606_844 NamedBody606_851

def NamedBody606_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_854 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_855 : StackLang.HolProg 64 :=
.seq NamedBody606_853 NamedBody606_854

def NamedBody606_856 : StackLang.HolProg 64 :=
.call (some (NamedBody606_852, 1, 606, 20)) (Sum.inl 599) (some (NamedBody606_855, 606, 21))

def NamedBody606_857 : StackLang.HolProg 64 :=
.seq NamedBody606_843 NamedBody606_856

def NamedBody606_858 : StackLang.HolProg 64 :=
.seq NamedBody606_842 NamedBody606_857

def NamedBody606_859 : StackLang.HolProg 64 :=
.seq NamedBody606_841 NamedBody606_858

def NamedBody606_860 : StackLang.HolProg 64 :=
.seq NamedBody606_812 NamedBody606_859

def NamedBody606_861 : StackLang.HolProg 64 :=
.seq NamedBody606_809 NamedBody606_860

def NamedBody606_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2328#64)

def NamedBody606_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_867 : StackLang.HolProg 64 :=
.seq NamedBody606_865 NamedBody606_866

def NamedBody606_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody606_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody606_871 : StackLang.HolProg 64 :=
.seq NamedBody606_869 NamedBody606_870

def NamedBody606_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_873 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody606_871 NamedBody606_872

def NamedBody606_874 : StackLang.HolProg 64 :=
.seq NamedBody606_868 NamedBody606_873

def NamedBody606_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody606_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody606_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 23

def NamedBody606_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody606_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody606_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody606_884 : StackLang.HolProg 64 :=
.seq NamedBody606_882 NamedBody606_883

def NamedBody606_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody606_886 : StackLang.HolProg 64 :=
.seq NamedBody606_884 NamedBody606_885

def NamedBody606_887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_888 : StackLang.HolProg 64 :=
.seq NamedBody606_886 NamedBody606_887

def NamedBody606_889 : StackLang.HolProg 64 :=
.seq NamedBody606_881 NamedBody606_888

def NamedBody606_890 : StackLang.HolProg 64 :=
.seq NamedBody606_880 NamedBody606_889

def NamedBody606_891 : StackLang.HolProg 64 :=
.seq NamedBody606_879 NamedBody606_890

def NamedBody606_892 : StackLang.HolProg 64 :=
.seq NamedBody606_878 NamedBody606_891

def NamedBody606_893 : StackLang.HolProg 64 :=
.seq NamedBody606_877 NamedBody606_892

def NamedBody606_894 : StackLang.HolProg 64 :=
.seq NamedBody606_876 NamedBody606_893

def NamedBody606_895 : StackLang.HolProg 64 :=
.seq NamedBody606_875 NamedBody606_894

def NamedBody606_896 : StackLang.HolProg 64 :=
.seq NamedBody606_874 NamedBody606_895

def NamedBody606_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody606_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody606_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody606_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody606_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody606_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_905 : StackLang.HolProg 64 :=
.seq NamedBody606_903 NamedBody606_904

def NamedBody606_906 : StackLang.HolProg 64 :=
.seq NamedBody606_902 NamedBody606_905

def NamedBody606_907 : StackLang.HolProg 64 :=
.seq NamedBody606_901 NamedBody606_906

def NamedBody606_908 : StackLang.HolProg 64 :=
.seq NamedBody606_900 NamedBody606_907

def NamedBody606_909 : StackLang.HolProg 64 :=
.seq NamedBody606_899 NamedBody606_908

def NamedBody606_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody606_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody606_912 : StackLang.HolProg 64 :=
.seq NamedBody606_910 NamedBody606_911

def NamedBody606_913 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody606_914 : StackLang.HolProg 64 :=
.seq NamedBody606_912 NamedBody606_913

def NamedBody606_915 : StackLang.HolProg 64 :=
.call (some (NamedBody606_909, 1, 606, 22)) (Sum.inl 602) (some (NamedBody606_914, 606, 23))

def NamedBody606_916 : StackLang.HolProg 64 :=
.seq NamedBody606_898 NamedBody606_915

def NamedBody606_917 : StackLang.HolProg 64 :=
.seq NamedBody606_897 NamedBody606_916

def NamedBody606_918 : StackLang.HolProg 64 :=
.seq NamedBody606_896 NamedBody606_917

def NamedBody606_919 : StackLang.HolProg 64 :=
.seq NamedBody606_867 NamedBody606_918

def NamedBody606_920 : StackLang.HolProg 64 :=
.seq NamedBody606_864 NamedBody606_919

def NamedBody606_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody606_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody606_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody606_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody606_925 : StackLang.HolProg 64 :=
.seq NamedBody606_923 NamedBody606_924

def NamedBody606_926 : StackLang.HolProg 64 :=
.seq NamedBody606_922 NamedBody606_925

def NamedBody606_927 : StackLang.HolProg 64 :=
.seq NamedBody606_921 NamedBody606_926

def NamedBody606_928 : StackLang.HolProg 64 :=
.seq NamedBody606_920 NamedBody606_927

def NamedBody606_929 : StackLang.HolProg 64 :=
.seq NamedBody606_863 NamedBody606_928

def NamedBody606_930 : StackLang.HolProg 64 :=
.seq NamedBody606_862 NamedBody606_929

def NamedBody606_931 : StackLang.HolProg 64 :=
.seq NamedBody606_861 NamedBody606_930

def NamedBody606_932 : StackLang.HolProg 64 :=
.seq NamedBody606_808 NamedBody606_931

def NamedBody606_933 : StackLang.HolProg 64 :=
.seq NamedBody606_807 NamedBody606_932

def NamedBody606_934 : StackLang.HolProg 64 :=
.seq NamedBody606_806 NamedBody606_933

def NamedBody606_935 : StackLang.HolProg 64 :=
.seq NamedBody606_805 NamedBody606_934

def NamedBody606_936 : StackLang.HolProg 64 :=
.seq NamedBody606_804 NamedBody606_935

def NamedBody606_937 : StackLang.HolProg 64 :=
.seq NamedBody606_803 NamedBody606_936

def NamedBody606_938 : StackLang.HolProg 64 :=
.seq NamedBody606_802 NamedBody606_937

def NamedBody606_939 : StackLang.HolProg 64 :=
.seq NamedBody606_801 NamedBody606_938

def NamedBody606_940 : StackLang.HolProg 64 :=
.seq NamedBody606_800 NamedBody606_939

def NamedBody606_941 : StackLang.HolProg 64 :=
.seq NamedBody606_799 NamedBody606_940

def NamedBody606_942 : StackLang.HolProg 64 :=
.seq NamedBody606_746 NamedBody606_941

def NamedBody606_943 : StackLang.HolProg 64 :=
.seq NamedBody606_745 NamedBody606_942

def NamedBody606_944 : StackLang.HolProg 64 :=
.seq NamedBody606_744 NamedBody606_943

def NamedBody606_945 : StackLang.HolProg 64 :=
.seq NamedBody606_101 NamedBody606_944

def NamedBody606_946 : StackLang.HolProg 64 :=
.seq NamedBody606_100 NamedBody606_945

def NamedBody606_947 : StackLang.HolProg 64 :=
.seq NamedBody606_99 NamedBody606_946

def NamedBody606_948 : StackLang.HolProg 64 :=
.seq NamedBody606_98 NamedBody606_947

def NamedBody606_949 : StackLang.HolProg 64 :=
.seq NamedBody606_97 NamedBody606_948

def NamedBody606_950 : StackLang.HolProg 64 :=
.seq NamedBody606_42 NamedBody606_949

def NamedBody606_951 : StackLang.HolProg 64 :=
.seq NamedBody606_35 NamedBody606_950

def NamedBody606_952 : StackLang.HolProg 64 :=
.seq NamedBody606_34 NamedBody606_951

def NamedBody606_953 : StackLang.HolProg 64 :=
.seq NamedBody606_33 NamedBody606_952

def NamedBody606_954 : StackLang.HolProg 64 :=
.seq NamedBody606_32 NamedBody606_953

def NamedBody606_955 : StackLang.HolProg 64 :=
.seq NamedBody606_31 NamedBody606_954

def NamedBody606_956 : StackLang.HolProg 64 :=
.seq NamedBody606_30 NamedBody606_955

def NamedBody606_957 : StackLang.HolProg 64 :=
.seq NamedBody606_29 NamedBody606_956

def NamedBody606_958 : StackLang.HolProg 64 :=
.seq NamedBody606_28 NamedBody606_957

def NamedBody606_959 : StackLang.HolProg 64 :=
.seq NamedBody606_27 NamedBody606_958

def NamedBody606_960 : StackLang.HolProg 64 :=
.seq NamedBody606_26 NamedBody606_959

def NamedBody606_961 : StackLang.HolProg 64 :=
.seq NamedBody606_25 NamedBody606_960

def NamedBody606_962 : StackLang.HolProg 64 :=
.seq NamedBody606_10 NamedBody606_961

def NamedBody606_963 : StackLang.HolProg 64 :=
.seq NamedBody606_9 NamedBody606_962

def NamedBody606_964 : StackLang.HolProg 64 :=
.seq NamedBody606_8 NamedBody606_963

def NamedBody606_965 : StackLang.HolProg 64 :=
.seq NamedBody606_7 NamedBody606_964

def NamedBody606_966 : StackLang.HolProg 64 :=
.seq NamedBody606_6 NamedBody606_965

def Named606 : Nat × StackLang.HolProg 64 := (606, NamedBody606_966)
theorem Named606_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed606 = Named606 := by
  kernel_rfl
#print axioms Named606_eq
end InitECandidate.Proofs.BackendStages
