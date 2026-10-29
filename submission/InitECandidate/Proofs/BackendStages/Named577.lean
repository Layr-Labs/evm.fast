import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed577
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody577_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody577_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody577_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody577_3 : StackLang.HolProg 64 :=
.seq NamedBody577_1 NamedBody577_2

def NamedBody577_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody577_3 NamedBody577_4

def NamedBody577_6 : StackLang.HolProg 64 :=
.seq NamedBody577_0 NamedBody577_5

def NamedBody577_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody577_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody577_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2018#64)

def NamedBody577_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody577_13 : StackLang.HolProg 64 :=
.seq NamedBody577_11 NamedBody577_12

def NamedBody577_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody577_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody577_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody577_17 : StackLang.HolProg 64 :=
.seq NamedBody577_15 NamedBody577_16

def NamedBody577_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody577_17 NamedBody577_18

def NamedBody577_20 : StackLang.HolProg 64 :=
.seq NamedBody577_14 NamedBody577_19

def NamedBody577_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody577_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody577_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 577 3

def NamedBody577_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody577_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody577_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody577_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody577_30 : StackLang.HolProg 64 :=
.seq NamedBody577_28 NamedBody577_29

def NamedBody577_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody577_32 : StackLang.HolProg 64 :=
.seq NamedBody577_30 NamedBody577_31

def NamedBody577_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_34 : StackLang.HolProg 64 :=
.seq NamedBody577_32 NamedBody577_33

def NamedBody577_35 : StackLang.HolProg 64 :=
.seq NamedBody577_27 NamedBody577_34

def NamedBody577_36 : StackLang.HolProg 64 :=
.seq NamedBody577_26 NamedBody577_35

def NamedBody577_37 : StackLang.HolProg 64 :=
.seq NamedBody577_25 NamedBody577_36

def NamedBody577_38 : StackLang.HolProg 64 :=
.seq NamedBody577_24 NamedBody577_37

def NamedBody577_39 : StackLang.HolProg 64 :=
.seq NamedBody577_23 NamedBody577_38

def NamedBody577_40 : StackLang.HolProg 64 :=
.seq NamedBody577_22 NamedBody577_39

def NamedBody577_41 : StackLang.HolProg 64 :=
.seq NamedBody577_21 NamedBody577_40

def NamedBody577_42 : StackLang.HolProg 64 :=
.seq NamedBody577_20 NamedBody577_41

def NamedBody577_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody577_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody577_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_50 : StackLang.HolProg 64 :=
.seq NamedBody577_48 NamedBody577_49

def NamedBody577_51 : StackLang.HolProg 64 :=
.seq NamedBody577_47 NamedBody577_50

def NamedBody577_52 : StackLang.HolProg 64 :=
.seq NamedBody577_46 NamedBody577_51

def NamedBody577_53 : StackLang.HolProg 64 :=
.seq NamedBody577_45 NamedBody577_52

def NamedBody577_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody577_56 : StackLang.HolProg 64 :=
.seq NamedBody577_54 NamedBody577_55

def NamedBody577_57 : StackLang.HolProg 64 :=
.call (some (NamedBody577_53, 1, 577, 2)) (Sum.inl 470) (some (NamedBody577_56, 577, 3))

def NamedBody577_58 : StackLang.HolProg 64 :=
.seq NamedBody577_44 NamedBody577_57

def NamedBody577_59 : StackLang.HolProg 64 :=
.seq NamedBody577_43 NamedBody577_58

def NamedBody577_60 : StackLang.HolProg 64 :=
.seq NamedBody577_42 NamedBody577_59

def NamedBody577_61 : StackLang.HolProg 64 :=
.seq NamedBody577_13 NamedBody577_60

def NamedBody577_62 : StackLang.HolProg 64 :=
.seq NamedBody577_10 NamedBody577_61

def NamedBody577_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody577_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2019#64)

def NamedBody577_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody577_68 : StackLang.HolProg 64 :=
.seq NamedBody577_66 NamedBody577_67

def NamedBody577_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody577_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody577_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody577_72 : StackLang.HolProg 64 :=
.seq NamedBody577_70 NamedBody577_71

def NamedBody577_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody577_72 NamedBody577_73

def NamedBody577_75 : StackLang.HolProg 64 :=
.seq NamedBody577_69 NamedBody577_74

def NamedBody577_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody577_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody577_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 577 5

def NamedBody577_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody577_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody577_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody577_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody577_85 : StackLang.HolProg 64 :=
.seq NamedBody577_83 NamedBody577_84

def NamedBody577_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody577_87 : StackLang.HolProg 64 :=
.seq NamedBody577_85 NamedBody577_86

def NamedBody577_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_89 : StackLang.HolProg 64 :=
.seq NamedBody577_87 NamedBody577_88

def NamedBody577_90 : StackLang.HolProg 64 :=
.seq NamedBody577_82 NamedBody577_89

def NamedBody577_91 : StackLang.HolProg 64 :=
.seq NamedBody577_81 NamedBody577_90

def NamedBody577_92 : StackLang.HolProg 64 :=
.seq NamedBody577_80 NamedBody577_91

def NamedBody577_93 : StackLang.HolProg 64 :=
.seq NamedBody577_79 NamedBody577_92

def NamedBody577_94 : StackLang.HolProg 64 :=
.seq NamedBody577_78 NamedBody577_93

def NamedBody577_95 : StackLang.HolProg 64 :=
.seq NamedBody577_77 NamedBody577_94

def NamedBody577_96 : StackLang.HolProg 64 :=
.seq NamedBody577_76 NamedBody577_95

def NamedBody577_97 : StackLang.HolProg 64 :=
.seq NamedBody577_75 NamedBody577_96

def NamedBody577_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody577_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody577_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody577_105 : StackLang.HolProg 64 :=
.seq NamedBody577_103 NamedBody577_104

def NamedBody577_106 : StackLang.HolProg 64 :=
.seq NamedBody577_102 NamedBody577_105

def NamedBody577_107 : StackLang.HolProg 64 :=
.seq NamedBody577_101 NamedBody577_106

def NamedBody577_108 : StackLang.HolProg 64 :=
.seq NamedBody577_100 NamedBody577_107

def NamedBody577_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody577_111 : StackLang.HolProg 64 :=
.seq NamedBody577_109 NamedBody577_110

def NamedBody577_112 : StackLang.HolProg 64 :=
.call (some (NamedBody577_108, 1, 577, 4)) (Sum.inl 572) (some (NamedBody577_111, 577, 5))

def NamedBody577_113 : StackLang.HolProg 64 :=
.seq NamedBody577_99 NamedBody577_112

def NamedBody577_114 : StackLang.HolProg 64 :=
.seq NamedBody577_98 NamedBody577_113

def NamedBody577_115 : StackLang.HolProg 64 :=
.seq NamedBody577_97 NamedBody577_114

def NamedBody577_116 : StackLang.HolProg 64 :=
.seq NamedBody577_68 NamedBody577_115

def NamedBody577_117 : StackLang.HolProg 64 :=
.seq NamedBody577_65 NamedBody577_116

def NamedBody577_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody577_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody577_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2020#64)

def NamedBody577_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody577_125 : StackLang.HolProg 64 :=
.seq NamedBody577_123 NamedBody577_124

def NamedBody577_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody577_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody577_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody577_129 : StackLang.HolProg 64 :=
.seq NamedBody577_127 NamedBody577_128

def NamedBody577_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody577_129 NamedBody577_130

def NamedBody577_132 : StackLang.HolProg 64 :=
.seq NamedBody577_126 NamedBody577_131

def NamedBody577_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody577_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody577_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 577 7

def NamedBody577_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody577_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody577_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody577_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody577_142 : StackLang.HolProg 64 :=
.seq NamedBody577_140 NamedBody577_141

def NamedBody577_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody577_144 : StackLang.HolProg 64 :=
.seq NamedBody577_142 NamedBody577_143

def NamedBody577_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_146 : StackLang.HolProg 64 :=
.seq NamedBody577_144 NamedBody577_145

def NamedBody577_147 : StackLang.HolProg 64 :=
.seq NamedBody577_139 NamedBody577_146

def NamedBody577_148 : StackLang.HolProg 64 :=
.seq NamedBody577_138 NamedBody577_147

def NamedBody577_149 : StackLang.HolProg 64 :=
.seq NamedBody577_137 NamedBody577_148

def NamedBody577_150 : StackLang.HolProg 64 :=
.seq NamedBody577_136 NamedBody577_149

def NamedBody577_151 : StackLang.HolProg 64 :=
.seq NamedBody577_135 NamedBody577_150

def NamedBody577_152 : StackLang.HolProg 64 :=
.seq NamedBody577_134 NamedBody577_151

def NamedBody577_153 : StackLang.HolProg 64 :=
.seq NamedBody577_133 NamedBody577_152

def NamedBody577_154 : StackLang.HolProg 64 :=
.seq NamedBody577_132 NamedBody577_153

def NamedBody577_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody577_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody577_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody577_162 : StackLang.HolProg 64 :=
.seq NamedBody577_160 NamedBody577_161

def NamedBody577_163 : StackLang.HolProg 64 :=
.seq NamedBody577_159 NamedBody577_162

def NamedBody577_164 : StackLang.HolProg 64 :=
.seq NamedBody577_158 NamedBody577_163

def NamedBody577_165 : StackLang.HolProg 64 :=
.seq NamedBody577_157 NamedBody577_164

def NamedBody577_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody577_168 : StackLang.HolProg 64 :=
.seq NamedBody577_166 NamedBody577_167

def NamedBody577_169 : StackLang.HolProg 64 :=
.call (some (NamedBody577_165, 1, 577, 6)) (Sum.inl 467) (some (NamedBody577_168, 577, 7))

def NamedBody577_170 : StackLang.HolProg 64 :=
.seq NamedBody577_156 NamedBody577_169

def NamedBody577_171 : StackLang.HolProg 64 :=
.seq NamedBody577_155 NamedBody577_170

def NamedBody577_172 : StackLang.HolProg 64 :=
.seq NamedBody577_154 NamedBody577_171

def NamedBody577_173 : StackLang.HolProg 64 :=
.seq NamedBody577_125 NamedBody577_172

def NamedBody577_174 : StackLang.HolProg 64 :=
.seq NamedBody577_122 NamedBody577_173

def NamedBody577_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody577_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody577_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2021#64)

def NamedBody577_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody577_180 : StackLang.HolProg 64 :=
.seq NamedBody577_178 NamedBody577_179

def NamedBody577_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody577_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody577_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody577_184 : StackLang.HolProg 64 :=
.seq NamedBody577_182 NamedBody577_183

def NamedBody577_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody577_184 NamedBody577_185

def NamedBody577_187 : StackLang.HolProg 64 :=
.seq NamedBody577_181 NamedBody577_186

def NamedBody577_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody577_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody577_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 577 9

def NamedBody577_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody577_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody577_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody577_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody577_197 : StackLang.HolProg 64 :=
.seq NamedBody577_195 NamedBody577_196

def NamedBody577_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody577_199 : StackLang.HolProg 64 :=
.seq NamedBody577_197 NamedBody577_198

def NamedBody577_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_201 : StackLang.HolProg 64 :=
.seq NamedBody577_199 NamedBody577_200

def NamedBody577_202 : StackLang.HolProg 64 :=
.seq NamedBody577_194 NamedBody577_201

def NamedBody577_203 : StackLang.HolProg 64 :=
.seq NamedBody577_193 NamedBody577_202

def NamedBody577_204 : StackLang.HolProg 64 :=
.seq NamedBody577_192 NamedBody577_203

def NamedBody577_205 : StackLang.HolProg 64 :=
.seq NamedBody577_191 NamedBody577_204

def NamedBody577_206 : StackLang.HolProg 64 :=
.seq NamedBody577_190 NamedBody577_205

def NamedBody577_207 : StackLang.HolProg 64 :=
.seq NamedBody577_189 NamedBody577_206

def NamedBody577_208 : StackLang.HolProg 64 :=
.seq NamedBody577_188 NamedBody577_207

def NamedBody577_209 : StackLang.HolProg 64 :=
.seq NamedBody577_187 NamedBody577_208

def NamedBody577_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody577_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody577_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_217 : StackLang.HolProg 64 :=
.seq NamedBody577_215 NamedBody577_216

def NamedBody577_218 : StackLang.HolProg 64 :=
.seq NamedBody577_214 NamedBody577_217

def NamedBody577_219 : StackLang.HolProg 64 :=
.seq NamedBody577_213 NamedBody577_218

def NamedBody577_220 : StackLang.HolProg 64 :=
.seq NamedBody577_212 NamedBody577_219

def NamedBody577_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_222 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody577_223 : StackLang.HolProg 64 :=
.seq NamedBody577_221 NamedBody577_222

def NamedBody577_224 : StackLang.HolProg 64 :=
.call (some (NamedBody577_220, 1, 577, 8)) (Sum.inl 476) (some (NamedBody577_223, 577, 9))

def NamedBody577_225 : StackLang.HolProg 64 :=
.seq NamedBody577_211 NamedBody577_224

def NamedBody577_226 : StackLang.HolProg 64 :=
.seq NamedBody577_210 NamedBody577_225

def NamedBody577_227 : StackLang.HolProg 64 :=
.seq NamedBody577_209 NamedBody577_226

def NamedBody577_228 : StackLang.HolProg 64 :=
.seq NamedBody577_180 NamedBody577_227

def NamedBody577_229 : StackLang.HolProg 64 :=
.seq NamedBody577_177 NamedBody577_228

def NamedBody577_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody577_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody577_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2022#64)

def NamedBody577_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody577_236 : StackLang.HolProg 64 :=
.seq NamedBody577_234 NamedBody577_235

def NamedBody577_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody577_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody577_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody577_240 : StackLang.HolProg 64 :=
.seq NamedBody577_238 NamedBody577_239

def NamedBody577_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_242 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody577_240 NamedBody577_241

def NamedBody577_243 : StackLang.HolProg 64 :=
.seq NamedBody577_237 NamedBody577_242

def NamedBody577_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody577_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody577_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 577 11

def NamedBody577_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody577_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody577_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody577_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody577_253 : StackLang.HolProg 64 :=
.seq NamedBody577_251 NamedBody577_252

def NamedBody577_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody577_255 : StackLang.HolProg 64 :=
.seq NamedBody577_253 NamedBody577_254

def NamedBody577_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_257 : StackLang.HolProg 64 :=
.seq NamedBody577_255 NamedBody577_256

def NamedBody577_258 : StackLang.HolProg 64 :=
.seq NamedBody577_250 NamedBody577_257

def NamedBody577_259 : StackLang.HolProg 64 :=
.seq NamedBody577_249 NamedBody577_258

def NamedBody577_260 : StackLang.HolProg 64 :=
.seq NamedBody577_248 NamedBody577_259

def NamedBody577_261 : StackLang.HolProg 64 :=
.seq NamedBody577_247 NamedBody577_260

def NamedBody577_262 : StackLang.HolProg 64 :=
.seq NamedBody577_246 NamedBody577_261

def NamedBody577_263 : StackLang.HolProg 64 :=
.seq NamedBody577_245 NamedBody577_262

def NamedBody577_264 : StackLang.HolProg 64 :=
.seq NamedBody577_244 NamedBody577_263

def NamedBody577_265 : StackLang.HolProg 64 :=
.seq NamedBody577_243 NamedBody577_264

def NamedBody577_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody577_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody577_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody577_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody577_273 : StackLang.HolProg 64 :=
.seq NamedBody577_271 NamedBody577_272

def NamedBody577_274 : StackLang.HolProg 64 :=
.seq NamedBody577_270 NamedBody577_273

def NamedBody577_275 : StackLang.HolProg 64 :=
.seq NamedBody577_269 NamedBody577_274

def NamedBody577_276 : StackLang.HolProg 64 :=
.seq NamedBody577_268 NamedBody577_275

def NamedBody577_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody577_278 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody577_279 : StackLang.HolProg 64 :=
.seq NamedBody577_277 NamedBody577_278

def NamedBody577_280 : StackLang.HolProg 64 :=
.call (some (NamedBody577_276, 1, 577, 10)) (Sum.inl 490) (some (NamedBody577_279, 577, 11))

def NamedBody577_281 : StackLang.HolProg 64 :=
.seq NamedBody577_267 NamedBody577_280

def NamedBody577_282 : StackLang.HolProg 64 :=
.seq NamedBody577_266 NamedBody577_281

def NamedBody577_283 : StackLang.HolProg 64 :=
.seq NamedBody577_265 NamedBody577_282

def NamedBody577_284 : StackLang.HolProg 64 :=
.seq NamedBody577_236 NamedBody577_283

def NamedBody577_285 : StackLang.HolProg 64 :=
.seq NamedBody577_233 NamedBody577_284

def NamedBody577_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody577_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody577_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody577_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody577_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody577_291 : StackLang.HolProg 64 :=
.seq NamedBody577_289 NamedBody577_290

def NamedBody577_292 : StackLang.HolProg 64 :=
.seq NamedBody577_288 NamedBody577_291

def NamedBody577_293 : StackLang.HolProg 64 :=
.seq NamedBody577_287 NamedBody577_292

def NamedBody577_294 : StackLang.HolProg 64 :=
.seq NamedBody577_286 NamedBody577_293

def NamedBody577_295 : StackLang.HolProg 64 :=
.seq NamedBody577_285 NamedBody577_294

def NamedBody577_296 : StackLang.HolProg 64 :=
.seq NamedBody577_232 NamedBody577_295

def NamedBody577_297 : StackLang.HolProg 64 :=
.seq NamedBody577_231 NamedBody577_296

def NamedBody577_298 : StackLang.HolProg 64 :=
.seq NamedBody577_230 NamedBody577_297

def NamedBody577_299 : StackLang.HolProg 64 :=
.seq NamedBody577_229 NamedBody577_298

def NamedBody577_300 : StackLang.HolProg 64 :=
.seq NamedBody577_176 NamedBody577_299

def NamedBody577_301 : StackLang.HolProg 64 :=
.seq NamedBody577_175 NamedBody577_300

def NamedBody577_302 : StackLang.HolProg 64 :=
.seq NamedBody577_174 NamedBody577_301

def NamedBody577_303 : StackLang.HolProg 64 :=
.seq NamedBody577_121 NamedBody577_302

def NamedBody577_304 : StackLang.HolProg 64 :=
.seq NamedBody577_120 NamedBody577_303

def NamedBody577_305 : StackLang.HolProg 64 :=
.seq NamedBody577_119 NamedBody577_304

def NamedBody577_306 : StackLang.HolProg 64 :=
.seq NamedBody577_118 NamedBody577_305

def NamedBody577_307 : StackLang.HolProg 64 :=
.seq NamedBody577_117 NamedBody577_306

def NamedBody577_308 : StackLang.HolProg 64 :=
.seq NamedBody577_64 NamedBody577_307

def NamedBody577_309 : StackLang.HolProg 64 :=
.seq NamedBody577_63 NamedBody577_308

def NamedBody577_310 : StackLang.HolProg 64 :=
.seq NamedBody577_62 NamedBody577_309

def NamedBody577_311 : StackLang.HolProg 64 :=
.seq NamedBody577_9 NamedBody577_310

def NamedBody577_312 : StackLang.HolProg 64 :=
.seq NamedBody577_8 NamedBody577_311

def NamedBody577_313 : StackLang.HolProg 64 :=
.seq NamedBody577_7 NamedBody577_312

def NamedBody577_314 : StackLang.HolProg 64 :=
.seq NamedBody577_6 NamedBody577_313

def Named577 : Nat × StackLang.HolProg 64 := (577, NamedBody577_314)
theorem Named577_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed577 = Named577 := by
  kernel_rfl
#print axioms Named577_eq
end InitECandidate.Proofs.BackendStages
