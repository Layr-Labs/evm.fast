import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed764
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody764_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody764_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody764_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody764_3 : StackLang.HolProg 64 :=
.seq NamedBody764_1 NamedBody764_2

def NamedBody764_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody764_3 NamedBody764_4

def NamedBody764_6 : StackLang.HolProg 64 :=
.seq NamedBody764_0 NamedBody764_5

def NamedBody764_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody764_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody764_9 : StackLang.HolProg 64 :=
.seq NamedBody764_7 NamedBody764_8

def NamedBody764_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3424#64)

def NamedBody764_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody764_13 : StackLang.HolProg 64 :=
.seq NamedBody764_11 NamedBody764_12

def NamedBody764_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody764_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody764_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody764_17 : StackLang.HolProg 64 :=
.seq NamedBody764_15 NamedBody764_16

def NamedBody764_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody764_17 NamedBody764_18

def NamedBody764_20 : StackLang.HolProg 64 :=
.seq NamedBody764_14 NamedBody764_19

def NamedBody764_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody764_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody764_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 764 3

def NamedBody764_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody764_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody764_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody764_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody764_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody764_30 : StackLang.HolProg 64 :=
.seq NamedBody764_28 NamedBody764_29

def NamedBody764_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody764_32 : StackLang.HolProg 64 :=
.seq NamedBody764_30 NamedBody764_31

def NamedBody764_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody764_34 : StackLang.HolProg 64 :=
.seq NamedBody764_32 NamedBody764_33

def NamedBody764_35 : StackLang.HolProg 64 :=
.seq NamedBody764_27 NamedBody764_34

def NamedBody764_36 : StackLang.HolProg 64 :=
.seq NamedBody764_26 NamedBody764_35

def NamedBody764_37 : StackLang.HolProg 64 :=
.seq NamedBody764_25 NamedBody764_36

def NamedBody764_38 : StackLang.HolProg 64 :=
.seq NamedBody764_24 NamedBody764_37

def NamedBody764_39 : StackLang.HolProg 64 :=
.seq NamedBody764_23 NamedBody764_38

def NamedBody764_40 : StackLang.HolProg 64 :=
.seq NamedBody764_22 NamedBody764_39

def NamedBody764_41 : StackLang.HolProg 64 :=
.seq NamedBody764_21 NamedBody764_40

def NamedBody764_42 : StackLang.HolProg 64 :=
.seq NamedBody764_20 NamedBody764_41

def NamedBody764_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody764_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody764_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody764_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody764_50 : StackLang.HolProg 64 :=
.seq NamedBody764_48 NamedBody764_49

def NamedBody764_51 : StackLang.HolProg 64 :=
.seq NamedBody764_47 NamedBody764_50

def NamedBody764_52 : StackLang.HolProg 64 :=
.seq NamedBody764_46 NamedBody764_51

def NamedBody764_53 : StackLang.HolProg 64 :=
.seq NamedBody764_45 NamedBody764_52

def NamedBody764_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody764_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody764_56 : StackLang.HolProg 64 :=
.seq NamedBody764_54 NamedBody764_55

def NamedBody764_57 : StackLang.HolProg 64 :=
.call (some (NamedBody764_53, 1, 764, 2)) (Sum.inl 763) (some (NamedBody764_56, 764, 3))

def NamedBody764_58 : StackLang.HolProg 64 :=
.seq NamedBody764_44 NamedBody764_57

def NamedBody764_59 : StackLang.HolProg 64 :=
.seq NamedBody764_43 NamedBody764_58

def NamedBody764_60 : StackLang.HolProg 64 :=
.seq NamedBody764_42 NamedBody764_59

def NamedBody764_61 : StackLang.HolProg 64 :=
.seq NamedBody764_13 NamedBody764_60

def NamedBody764_62 : StackLang.HolProg 64 :=
.seq NamedBody764_10 NamedBody764_61

def NamedBody764_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody764_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody764_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3425#64)

def NamedBody764_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody764_68 : StackLang.HolProg 64 :=
.seq NamedBody764_66 NamedBody764_67

def NamedBody764_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody764_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody764_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody764_72 : StackLang.HolProg 64 :=
.seq NamedBody764_70 NamedBody764_71

def NamedBody764_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody764_72 NamedBody764_73

def NamedBody764_75 : StackLang.HolProg 64 :=
.seq NamedBody764_69 NamedBody764_74

def NamedBody764_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody764_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody764_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 764 5

def NamedBody764_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody764_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody764_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody764_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody764_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody764_85 : StackLang.HolProg 64 :=
.seq NamedBody764_83 NamedBody764_84

def NamedBody764_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody764_87 : StackLang.HolProg 64 :=
.seq NamedBody764_85 NamedBody764_86

def NamedBody764_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody764_89 : StackLang.HolProg 64 :=
.seq NamedBody764_87 NamedBody764_88

def NamedBody764_90 : StackLang.HolProg 64 :=
.seq NamedBody764_82 NamedBody764_89

def NamedBody764_91 : StackLang.HolProg 64 :=
.seq NamedBody764_81 NamedBody764_90

def NamedBody764_92 : StackLang.HolProg 64 :=
.seq NamedBody764_80 NamedBody764_91

def NamedBody764_93 : StackLang.HolProg 64 :=
.seq NamedBody764_79 NamedBody764_92

def NamedBody764_94 : StackLang.HolProg 64 :=
.seq NamedBody764_78 NamedBody764_93

def NamedBody764_95 : StackLang.HolProg 64 :=
.seq NamedBody764_77 NamedBody764_94

def NamedBody764_96 : StackLang.HolProg 64 :=
.seq NamedBody764_76 NamedBody764_95

def NamedBody764_97 : StackLang.HolProg 64 :=
.seq NamedBody764_75 NamedBody764_96

def NamedBody764_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody764_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody764_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody764_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody764_105 : StackLang.HolProg 64 :=
.seq NamedBody764_103 NamedBody764_104

def NamedBody764_106 : StackLang.HolProg 64 :=
.seq NamedBody764_102 NamedBody764_105

def NamedBody764_107 : StackLang.HolProg 64 :=
.seq NamedBody764_101 NamedBody764_106

def NamedBody764_108 : StackLang.HolProg 64 :=
.seq NamedBody764_100 NamedBody764_107

def NamedBody764_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody764_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody764_111 : StackLang.HolProg 64 :=
.seq NamedBody764_109 NamedBody764_110

def NamedBody764_112 : StackLang.HolProg 64 :=
.call (some (NamedBody764_108, 1, 764, 4)) (Sum.inl 760) (some (NamedBody764_111, 764, 5))

def NamedBody764_113 : StackLang.HolProg 64 :=
.seq NamedBody764_99 NamedBody764_112

def NamedBody764_114 : StackLang.HolProg 64 :=
.seq NamedBody764_98 NamedBody764_113

def NamedBody764_115 : StackLang.HolProg 64 :=
.seq NamedBody764_97 NamedBody764_114

def NamedBody764_116 : StackLang.HolProg 64 :=
.seq NamedBody764_68 NamedBody764_115

def NamedBody764_117 : StackLang.HolProg 64 :=
.seq NamedBody764_65 NamedBody764_116

def NamedBody764_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody764_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody764_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody764_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody764_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody764_123 : StackLang.HolProg 64 :=
.seq NamedBody764_121 NamedBody764_122

def NamedBody764_124 : StackLang.HolProg 64 :=
.seq NamedBody764_120 NamedBody764_123

def NamedBody764_125 : StackLang.HolProg 64 :=
.seq NamedBody764_119 NamedBody764_124

def NamedBody764_126 : StackLang.HolProg 64 :=
.seq NamedBody764_118 NamedBody764_125

def NamedBody764_127 : StackLang.HolProg 64 :=
.seq NamedBody764_117 NamedBody764_126

def NamedBody764_128 : StackLang.HolProg 64 :=
.seq NamedBody764_64 NamedBody764_127

def NamedBody764_129 : StackLang.HolProg 64 :=
.seq NamedBody764_63 NamedBody764_128

def NamedBody764_130 : StackLang.HolProg 64 :=
.seq NamedBody764_62 NamedBody764_129

def NamedBody764_131 : StackLang.HolProg 64 :=
.seq NamedBody764_9 NamedBody764_130

def NamedBody764_132 : StackLang.HolProg 64 :=
.seq NamedBody764_6 NamedBody764_131

def Named764 : Nat × StackLang.HolProg 64 := (764, NamedBody764_132)
theorem Named764_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed764 = Named764 := by
  kernel_rfl
#print axioms Named764_eq
end InitECandidate.Proofs.BackendStages
