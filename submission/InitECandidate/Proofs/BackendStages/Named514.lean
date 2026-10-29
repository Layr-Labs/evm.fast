import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed514
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody514_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody514_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody514_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody514_3 : StackLang.HolProg 64 :=
.seq NamedBody514_1 NamedBody514_2

def NamedBody514_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody514_3 NamedBody514_4

def NamedBody514_6 : StackLang.HolProg 64 :=
.seq NamedBody514_0 NamedBody514_5

def NamedBody514_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody514_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1649#64)

def NamedBody514_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody514_11 : StackLang.HolProg 64 :=
.seq NamedBody514_9 NamedBody514_10

def NamedBody514_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody514_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody514_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody514_15 : StackLang.HolProg 64 :=
.seq NamedBody514_13 NamedBody514_14

def NamedBody514_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody514_15 NamedBody514_16

def NamedBody514_18 : StackLang.HolProg 64 :=
.seq NamedBody514_12 NamedBody514_17

def NamedBody514_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody514_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody514_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 3

def NamedBody514_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody514_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody514_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody514_28 : StackLang.HolProg 64 :=
.seq NamedBody514_26 NamedBody514_27

def NamedBody514_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody514_30 : StackLang.HolProg 64 :=
.seq NamedBody514_28 NamedBody514_29

def NamedBody514_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_32 : StackLang.HolProg 64 :=
.seq NamedBody514_30 NamedBody514_31

def NamedBody514_33 : StackLang.HolProg 64 :=
.seq NamedBody514_25 NamedBody514_32

def NamedBody514_34 : StackLang.HolProg 64 :=
.seq NamedBody514_24 NamedBody514_33

def NamedBody514_35 : StackLang.HolProg 64 :=
.seq NamedBody514_23 NamedBody514_34

def NamedBody514_36 : StackLang.HolProg 64 :=
.seq NamedBody514_22 NamedBody514_35

def NamedBody514_37 : StackLang.HolProg 64 :=
.seq NamedBody514_21 NamedBody514_36

def NamedBody514_38 : StackLang.HolProg 64 :=
.seq NamedBody514_20 NamedBody514_37

def NamedBody514_39 : StackLang.HolProg 64 :=
.seq NamedBody514_19 NamedBody514_38

def NamedBody514_40 : StackLang.HolProg 64 :=
.seq NamedBody514_18 NamedBody514_39

def NamedBody514_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody514_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody514_48 : StackLang.HolProg 64 :=
.seq NamedBody514_46 NamedBody514_47

def NamedBody514_49 : StackLang.HolProg 64 :=
.seq NamedBody514_45 NamedBody514_48

def NamedBody514_50 : StackLang.HolProg 64 :=
.seq NamedBody514_44 NamedBody514_49

def NamedBody514_51 : StackLang.HolProg 64 :=
.seq NamedBody514_43 NamedBody514_50

def NamedBody514_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody514_54 : StackLang.HolProg 64 :=
.seq NamedBody514_52 NamedBody514_53

def NamedBody514_55 : StackLang.HolProg 64 :=
.call (some (NamedBody514_51, 1, 514, 2)) (Sum.inl 475) (some (NamedBody514_54, 514, 3))

def NamedBody514_56 : StackLang.HolProg 64 :=
.seq NamedBody514_42 NamedBody514_55

def NamedBody514_57 : StackLang.HolProg 64 :=
.seq NamedBody514_41 NamedBody514_56

def NamedBody514_58 : StackLang.HolProg 64 :=
.seq NamedBody514_40 NamedBody514_57

def NamedBody514_59 : StackLang.HolProg 64 :=
.seq NamedBody514_11 NamedBody514_58

def NamedBody514_60 : StackLang.HolProg 64 :=
.seq NamedBody514_8 NamedBody514_59

def NamedBody514_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody514_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody514_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody514_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody514_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody514_66 : StackLang.HolProg 64 :=
.seq NamedBody514_64 NamedBody514_65

def NamedBody514_67 : StackLang.HolProg 64 :=
.seq NamedBody514_63 NamedBody514_66

def NamedBody514_68 : StackLang.HolProg 64 :=
.seq NamedBody514_62 NamedBody514_67

def NamedBody514_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1650#64)

def NamedBody514_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody514_72 : StackLang.HolProg 64 :=
.seq NamedBody514_70 NamedBody514_71

def NamedBody514_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody514_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody514_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody514_76 : StackLang.HolProg 64 :=
.seq NamedBody514_74 NamedBody514_75

def NamedBody514_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody514_76 NamedBody514_77

def NamedBody514_79 : StackLang.HolProg 64 :=
.seq NamedBody514_73 NamedBody514_78

def NamedBody514_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody514_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody514_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 5

def NamedBody514_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody514_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody514_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody514_89 : StackLang.HolProg 64 :=
.seq NamedBody514_87 NamedBody514_88

def NamedBody514_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody514_91 : StackLang.HolProg 64 :=
.seq NamedBody514_89 NamedBody514_90

def NamedBody514_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_93 : StackLang.HolProg 64 :=
.seq NamedBody514_91 NamedBody514_92

def NamedBody514_94 : StackLang.HolProg 64 :=
.seq NamedBody514_86 NamedBody514_93

def NamedBody514_95 : StackLang.HolProg 64 :=
.seq NamedBody514_85 NamedBody514_94

def NamedBody514_96 : StackLang.HolProg 64 :=
.seq NamedBody514_84 NamedBody514_95

def NamedBody514_97 : StackLang.HolProg 64 :=
.seq NamedBody514_83 NamedBody514_96

def NamedBody514_98 : StackLang.HolProg 64 :=
.seq NamedBody514_82 NamedBody514_97

def NamedBody514_99 : StackLang.HolProg 64 :=
.seq NamedBody514_81 NamedBody514_98

def NamedBody514_100 : StackLang.HolProg 64 :=
.seq NamedBody514_80 NamedBody514_99

def NamedBody514_101 : StackLang.HolProg 64 :=
.seq NamedBody514_79 NamedBody514_100

def NamedBody514_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody514_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody514_109 : StackLang.HolProg 64 :=
.seq NamedBody514_107 NamedBody514_108

def NamedBody514_110 : StackLang.HolProg 64 :=
.seq NamedBody514_106 NamedBody514_109

def NamedBody514_111 : StackLang.HolProg 64 :=
.seq NamedBody514_105 NamedBody514_110

def NamedBody514_112 : StackLang.HolProg 64 :=
.seq NamedBody514_104 NamedBody514_111

def NamedBody514_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody514_115 : StackLang.HolProg 64 :=
.seq NamedBody514_113 NamedBody514_114

def NamedBody514_116 : StackLang.HolProg 64 :=
.call (some (NamedBody514_112, 1, 514, 4)) (Sum.inl 475) (some (NamedBody514_115, 514, 5))

def NamedBody514_117 : StackLang.HolProg 64 :=
.seq NamedBody514_103 NamedBody514_116

def NamedBody514_118 : StackLang.HolProg 64 :=
.seq NamedBody514_102 NamedBody514_117

def NamedBody514_119 : StackLang.HolProg 64 :=
.seq NamedBody514_101 NamedBody514_118

def NamedBody514_120 : StackLang.HolProg 64 :=
.seq NamedBody514_72 NamedBody514_119

def NamedBody514_121 : StackLang.HolProg 64 :=
.seq NamedBody514_69 NamedBody514_120

def NamedBody514_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody514_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody514_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody514_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody514_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody514_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_128 : StackLang.HolProg 64 :=
.seq NamedBody514_126 NamedBody514_127

def NamedBody514_129 : StackLang.HolProg 64 :=
.seq NamedBody514_125 NamedBody514_128

def NamedBody514_130 : StackLang.HolProg 64 :=
.seq NamedBody514_124 NamedBody514_129

def NamedBody514_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1651#64)

def NamedBody514_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody514_134 : StackLang.HolProg 64 :=
.seq NamedBody514_132 NamedBody514_133

def NamedBody514_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody514_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody514_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody514_138 : StackLang.HolProg 64 :=
.seq NamedBody514_136 NamedBody514_137

def NamedBody514_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody514_138 NamedBody514_139

def NamedBody514_141 : StackLang.HolProg 64 :=
.seq NamedBody514_135 NamedBody514_140

def NamedBody514_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody514_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody514_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 7

def NamedBody514_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody514_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody514_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody514_151 : StackLang.HolProg 64 :=
.seq NamedBody514_149 NamedBody514_150

def NamedBody514_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody514_153 : StackLang.HolProg 64 :=
.seq NamedBody514_151 NamedBody514_152

def NamedBody514_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_155 : StackLang.HolProg 64 :=
.seq NamedBody514_153 NamedBody514_154

def NamedBody514_156 : StackLang.HolProg 64 :=
.seq NamedBody514_148 NamedBody514_155

def NamedBody514_157 : StackLang.HolProg 64 :=
.seq NamedBody514_147 NamedBody514_156

def NamedBody514_158 : StackLang.HolProg 64 :=
.seq NamedBody514_146 NamedBody514_157

def NamedBody514_159 : StackLang.HolProg 64 :=
.seq NamedBody514_145 NamedBody514_158

def NamedBody514_160 : StackLang.HolProg 64 :=
.seq NamedBody514_144 NamedBody514_159

def NamedBody514_161 : StackLang.HolProg 64 :=
.seq NamedBody514_143 NamedBody514_160

def NamedBody514_162 : StackLang.HolProg 64 :=
.seq NamedBody514_142 NamedBody514_161

def NamedBody514_163 : StackLang.HolProg 64 :=
.seq NamedBody514_141 NamedBody514_162

def NamedBody514_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody514_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody514_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody514_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody514_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody514_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody514_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody514_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody514_178 : StackLang.HolProg 64 :=
.seq NamedBody514_176 NamedBody514_177

def NamedBody514_179 : StackLang.HolProg 64 :=
.seq NamedBody514_175 NamedBody514_178

def NamedBody514_180 : StackLang.HolProg 64 :=
.seq NamedBody514_174 NamedBody514_179

def NamedBody514_181 : StackLang.HolProg 64 :=
.seq NamedBody514_173 NamedBody514_180

def NamedBody514_182 : StackLang.HolProg 64 :=
.seq NamedBody514_172 NamedBody514_181

def NamedBody514_183 : StackLang.HolProg 64 :=
.seq NamedBody514_171 NamedBody514_182

def NamedBody514_184 : StackLang.HolProg 64 :=
.seq NamedBody514_170 NamedBody514_183

def NamedBody514_185 : StackLang.HolProg 64 :=
.seq NamedBody514_169 NamedBody514_184

def NamedBody514_186 : StackLang.HolProg 64 :=
.seq NamedBody514_168 NamedBody514_185

def NamedBody514_187 : StackLang.HolProg 64 :=
.seq NamedBody514_167 NamedBody514_186

def NamedBody514_188 : StackLang.HolProg 64 :=
.seq NamedBody514_166 NamedBody514_187

def NamedBody514_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody514_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody514_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody514_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody514_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody514_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody514_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody514_197 : StackLang.HolProg 64 :=
.seq NamedBody514_195 NamedBody514_196

def NamedBody514_198 : StackLang.HolProg 64 :=
.seq NamedBody514_194 NamedBody514_197

def NamedBody514_199 : StackLang.HolProg 64 :=
.seq NamedBody514_193 NamedBody514_198

def NamedBody514_200 : StackLang.HolProg 64 :=
.seq NamedBody514_192 NamedBody514_199

def NamedBody514_201 : StackLang.HolProg 64 :=
.seq NamedBody514_191 NamedBody514_200

def NamedBody514_202 : StackLang.HolProg 64 :=
.seq NamedBody514_190 NamedBody514_201

def NamedBody514_203 : StackLang.HolProg 64 :=
.seq NamedBody514_189 NamedBody514_202

def NamedBody514_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody514_205 : StackLang.HolProg 64 :=
.seq NamedBody514_203 NamedBody514_204

def NamedBody514_206 : StackLang.HolProg 64 :=
.call (some (NamedBody514_188, 1, 514, 6)) (Sum.inl 470) (some (NamedBody514_205, 514, 7))

def NamedBody514_207 : StackLang.HolProg 64 :=
.seq NamedBody514_165 NamedBody514_206

def NamedBody514_208 : StackLang.HolProg 64 :=
.seq NamedBody514_164 NamedBody514_207

def NamedBody514_209 : StackLang.HolProg 64 :=
.seq NamedBody514_163 NamedBody514_208

def NamedBody514_210 : StackLang.HolProg 64 :=
.seq NamedBody514_134 NamedBody514_209

def NamedBody514_211 : StackLang.HolProg 64 :=
.seq NamedBody514_131 NamedBody514_210

def NamedBody514_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody514_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody514_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody514_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody514_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody514_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1652#64)

def NamedBody514_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody514_225 : StackLang.HolProg 64 :=
.seq NamedBody514_223 NamedBody514_224

def NamedBody514_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody514_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody514_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody514_229 : StackLang.HolProg 64 :=
.seq NamedBody514_227 NamedBody514_228

def NamedBody514_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_231 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody514_229 NamedBody514_230

def NamedBody514_232 : StackLang.HolProg 64 :=
.seq NamedBody514_226 NamedBody514_231

def NamedBody514_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody514_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody514_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 9

def NamedBody514_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody514_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody514_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody514_242 : StackLang.HolProg 64 :=
.seq NamedBody514_240 NamedBody514_241

def NamedBody514_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody514_244 : StackLang.HolProg 64 :=
.seq NamedBody514_242 NamedBody514_243

def NamedBody514_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_246 : StackLang.HolProg 64 :=
.seq NamedBody514_244 NamedBody514_245

def NamedBody514_247 : StackLang.HolProg 64 :=
.seq NamedBody514_239 NamedBody514_246

def NamedBody514_248 : StackLang.HolProg 64 :=
.seq NamedBody514_238 NamedBody514_247

def NamedBody514_249 : StackLang.HolProg 64 :=
.seq NamedBody514_237 NamedBody514_248

def NamedBody514_250 : StackLang.HolProg 64 :=
.seq NamedBody514_236 NamedBody514_249

def NamedBody514_251 : StackLang.HolProg 64 :=
.seq NamedBody514_235 NamedBody514_250

def NamedBody514_252 : StackLang.HolProg 64 :=
.seq NamedBody514_234 NamedBody514_251

def NamedBody514_253 : StackLang.HolProg 64 :=
.seq NamedBody514_233 NamedBody514_252

def NamedBody514_254 : StackLang.HolProg 64 :=
.seq NamedBody514_232 NamedBody514_253

def NamedBody514_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody514_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_262 : StackLang.HolProg 64 :=
.seq NamedBody514_260 NamedBody514_261

def NamedBody514_263 : StackLang.HolProg 64 :=
.seq NamedBody514_259 NamedBody514_262

def NamedBody514_264 : StackLang.HolProg 64 :=
.seq NamedBody514_258 NamedBody514_263

def NamedBody514_265 : StackLang.HolProg 64 :=
.seq NamedBody514_257 NamedBody514_264

def NamedBody514_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody514_268 : StackLang.HolProg 64 :=
.seq NamedBody514_266 NamedBody514_267

def NamedBody514_269 : StackLang.HolProg 64 :=
.call (some (NamedBody514_265, 1, 514, 8)) (Sum.inl 476) (some (NamedBody514_268, 514, 9))

def NamedBody514_270 : StackLang.HolProg 64 :=
.seq NamedBody514_256 NamedBody514_269

def NamedBody514_271 : StackLang.HolProg 64 :=
.seq NamedBody514_255 NamedBody514_270

def NamedBody514_272 : StackLang.HolProg 64 :=
.seq NamedBody514_254 NamedBody514_271

def NamedBody514_273 : StackLang.HolProg 64 :=
.seq NamedBody514_225 NamedBody514_272

def NamedBody514_274 : StackLang.HolProg 64 :=
.seq NamedBody514_222 NamedBody514_273

def NamedBody514_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody514_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody514_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1653#64)

def NamedBody514_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody514_281 : StackLang.HolProg 64 :=
.seq NamedBody514_279 NamedBody514_280

def NamedBody514_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody514_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody514_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody514_285 : StackLang.HolProg 64 :=
.seq NamedBody514_283 NamedBody514_284

def NamedBody514_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_287 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody514_285 NamedBody514_286

def NamedBody514_288 : StackLang.HolProg 64 :=
.seq NamedBody514_282 NamedBody514_287

def NamedBody514_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody514_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody514_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 514 11

def NamedBody514_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody514_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody514_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody514_298 : StackLang.HolProg 64 :=
.seq NamedBody514_296 NamedBody514_297

def NamedBody514_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody514_300 : StackLang.HolProg 64 :=
.seq NamedBody514_298 NamedBody514_299

def NamedBody514_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_302 : StackLang.HolProg 64 :=
.seq NamedBody514_300 NamedBody514_301

def NamedBody514_303 : StackLang.HolProg 64 :=
.seq NamedBody514_295 NamedBody514_302

def NamedBody514_304 : StackLang.HolProg 64 :=
.seq NamedBody514_294 NamedBody514_303

def NamedBody514_305 : StackLang.HolProg 64 :=
.seq NamedBody514_293 NamedBody514_304

def NamedBody514_306 : StackLang.HolProg 64 :=
.seq NamedBody514_292 NamedBody514_305

def NamedBody514_307 : StackLang.HolProg 64 :=
.seq NamedBody514_291 NamedBody514_306

def NamedBody514_308 : StackLang.HolProg 64 :=
.seq NamedBody514_290 NamedBody514_307

def NamedBody514_309 : StackLang.HolProg 64 :=
.seq NamedBody514_289 NamedBody514_308

def NamedBody514_310 : StackLang.HolProg 64 :=
.seq NamedBody514_288 NamedBody514_309

def NamedBody514_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody514_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody514_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody514_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody514_318 : StackLang.HolProg 64 :=
.seq NamedBody514_316 NamedBody514_317

def NamedBody514_319 : StackLang.HolProg 64 :=
.seq NamedBody514_315 NamedBody514_318

def NamedBody514_320 : StackLang.HolProg 64 :=
.seq NamedBody514_314 NamedBody514_319

def NamedBody514_321 : StackLang.HolProg 64 :=
.seq NamedBody514_313 NamedBody514_320

def NamedBody514_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody514_323 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody514_324 : StackLang.HolProg 64 :=
.seq NamedBody514_322 NamedBody514_323

def NamedBody514_325 : StackLang.HolProg 64 :=
.call (some (NamedBody514_321, 1, 514, 10)) (Sum.inl 490) (some (NamedBody514_324, 514, 11))

def NamedBody514_326 : StackLang.HolProg 64 :=
.seq NamedBody514_312 NamedBody514_325

def NamedBody514_327 : StackLang.HolProg 64 :=
.seq NamedBody514_311 NamedBody514_326

def NamedBody514_328 : StackLang.HolProg 64 :=
.seq NamedBody514_310 NamedBody514_327

def NamedBody514_329 : StackLang.HolProg 64 :=
.seq NamedBody514_281 NamedBody514_328

def NamedBody514_330 : StackLang.HolProg 64 :=
.seq NamedBody514_278 NamedBody514_329

def NamedBody514_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody514_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody514_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody514_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody514_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody514_336 : StackLang.HolProg 64 :=
.seq NamedBody514_334 NamedBody514_335

def NamedBody514_337 : StackLang.HolProg 64 :=
.seq NamedBody514_333 NamedBody514_336

def NamedBody514_338 : StackLang.HolProg 64 :=
.seq NamedBody514_332 NamedBody514_337

def NamedBody514_339 : StackLang.HolProg 64 :=
.seq NamedBody514_331 NamedBody514_338

def NamedBody514_340 : StackLang.HolProg 64 :=
.seq NamedBody514_330 NamedBody514_339

def NamedBody514_341 : StackLang.HolProg 64 :=
.seq NamedBody514_277 NamedBody514_340

def NamedBody514_342 : StackLang.HolProg 64 :=
.seq NamedBody514_276 NamedBody514_341

def NamedBody514_343 : StackLang.HolProg 64 :=
.seq NamedBody514_275 NamedBody514_342

def NamedBody514_344 : StackLang.HolProg 64 :=
.seq NamedBody514_274 NamedBody514_343

def NamedBody514_345 : StackLang.HolProg 64 :=
.seq NamedBody514_221 NamedBody514_344

def NamedBody514_346 : StackLang.HolProg 64 :=
.seq NamedBody514_220 NamedBody514_345

def NamedBody514_347 : StackLang.HolProg 64 :=
.seq NamedBody514_219 NamedBody514_346

def NamedBody514_348 : StackLang.HolProg 64 :=
.seq NamedBody514_218 NamedBody514_347

def NamedBody514_349 : StackLang.HolProg 64 :=
.seq NamedBody514_217 NamedBody514_348

def NamedBody514_350 : StackLang.HolProg 64 :=
.seq NamedBody514_216 NamedBody514_349

def NamedBody514_351 : StackLang.HolProg 64 :=
.seq NamedBody514_215 NamedBody514_350

def NamedBody514_352 : StackLang.HolProg 64 :=
.seq NamedBody514_214 NamedBody514_351

def NamedBody514_353 : StackLang.HolProg 64 :=
.seq NamedBody514_213 NamedBody514_352

def NamedBody514_354 : StackLang.HolProg 64 :=
.seq NamedBody514_212 NamedBody514_353

def NamedBody514_355 : StackLang.HolProg 64 :=
.seq NamedBody514_211 NamedBody514_354

def NamedBody514_356 : StackLang.HolProg 64 :=
.seq NamedBody514_130 NamedBody514_355

def NamedBody514_357 : StackLang.HolProg 64 :=
.seq NamedBody514_123 NamedBody514_356

def NamedBody514_358 : StackLang.HolProg 64 :=
.seq NamedBody514_122 NamedBody514_357

def NamedBody514_359 : StackLang.HolProg 64 :=
.seq NamedBody514_121 NamedBody514_358

def NamedBody514_360 : StackLang.HolProg 64 :=
.seq NamedBody514_68 NamedBody514_359

def NamedBody514_361 : StackLang.HolProg 64 :=
.seq NamedBody514_61 NamedBody514_360

def NamedBody514_362 : StackLang.HolProg 64 :=
.seq NamedBody514_60 NamedBody514_361

def NamedBody514_363 : StackLang.HolProg 64 :=
.seq NamedBody514_7 NamedBody514_362

def NamedBody514_364 : StackLang.HolProg 64 :=
.seq NamedBody514_6 NamedBody514_363

def Named514 : Nat × StackLang.HolProg 64 := (514, NamedBody514_364)
theorem Named514_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed514 = Named514 := by
  kernel_rfl
#print axioms Named514_eq
end InitECandidate.Proofs.BackendStages
