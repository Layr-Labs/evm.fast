import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed575
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody575_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody575_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody575_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody575_3 : StackLang.HolProg 64 :=
.seq NamedBody575_1 NamedBody575_2

def NamedBody575_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody575_3 NamedBody575_4

def NamedBody575_6 : StackLang.HolProg 64 :=
.seq NamedBody575_0 NamedBody575_5

def NamedBody575_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody575_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody575_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2003#64)

def NamedBody575_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody575_13 : StackLang.HolProg 64 :=
.seq NamedBody575_11 NamedBody575_12

def NamedBody575_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody575_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody575_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody575_17 : StackLang.HolProg 64 :=
.seq NamedBody575_15 NamedBody575_16

def NamedBody575_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody575_17 NamedBody575_18

def NamedBody575_20 : StackLang.HolProg 64 :=
.seq NamedBody575_14 NamedBody575_19

def NamedBody575_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody575_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody575_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 575 3

def NamedBody575_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody575_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody575_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody575_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody575_30 : StackLang.HolProg 64 :=
.seq NamedBody575_28 NamedBody575_29

def NamedBody575_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody575_32 : StackLang.HolProg 64 :=
.seq NamedBody575_30 NamedBody575_31

def NamedBody575_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_34 : StackLang.HolProg 64 :=
.seq NamedBody575_32 NamedBody575_33

def NamedBody575_35 : StackLang.HolProg 64 :=
.seq NamedBody575_27 NamedBody575_34

def NamedBody575_36 : StackLang.HolProg 64 :=
.seq NamedBody575_26 NamedBody575_35

def NamedBody575_37 : StackLang.HolProg 64 :=
.seq NamedBody575_25 NamedBody575_36

def NamedBody575_38 : StackLang.HolProg 64 :=
.seq NamedBody575_24 NamedBody575_37

def NamedBody575_39 : StackLang.HolProg 64 :=
.seq NamedBody575_23 NamedBody575_38

def NamedBody575_40 : StackLang.HolProg 64 :=
.seq NamedBody575_22 NamedBody575_39

def NamedBody575_41 : StackLang.HolProg 64 :=
.seq NamedBody575_21 NamedBody575_40

def NamedBody575_42 : StackLang.HolProg 64 :=
.seq NamedBody575_20 NamedBody575_41

def NamedBody575_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody575_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody575_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_50 : StackLang.HolProg 64 :=
.seq NamedBody575_48 NamedBody575_49

def NamedBody575_51 : StackLang.HolProg 64 :=
.seq NamedBody575_47 NamedBody575_50

def NamedBody575_52 : StackLang.HolProg 64 :=
.seq NamedBody575_46 NamedBody575_51

def NamedBody575_53 : StackLang.HolProg 64 :=
.seq NamedBody575_45 NamedBody575_52

def NamedBody575_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody575_56 : StackLang.HolProg 64 :=
.seq NamedBody575_54 NamedBody575_55

def NamedBody575_57 : StackLang.HolProg 64 :=
.call (some (NamedBody575_53, 1, 575, 2)) (Sum.inl 470) (some (NamedBody575_56, 575, 3))

def NamedBody575_58 : StackLang.HolProg 64 :=
.seq NamedBody575_44 NamedBody575_57

def NamedBody575_59 : StackLang.HolProg 64 :=
.seq NamedBody575_43 NamedBody575_58

def NamedBody575_60 : StackLang.HolProg 64 :=
.seq NamedBody575_42 NamedBody575_59

def NamedBody575_61 : StackLang.HolProg 64 :=
.seq NamedBody575_13 NamedBody575_60

def NamedBody575_62 : StackLang.HolProg 64 :=
.seq NamedBody575_10 NamedBody575_61

def NamedBody575_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody575_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2004#64)

def NamedBody575_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody575_68 : StackLang.HolProg 64 :=
.seq NamedBody575_66 NamedBody575_67

def NamedBody575_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody575_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody575_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody575_72 : StackLang.HolProg 64 :=
.seq NamedBody575_70 NamedBody575_71

def NamedBody575_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody575_72 NamedBody575_73

def NamedBody575_75 : StackLang.HolProg 64 :=
.seq NamedBody575_69 NamedBody575_74

def NamedBody575_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody575_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody575_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 575 5

def NamedBody575_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody575_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody575_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody575_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody575_85 : StackLang.HolProg 64 :=
.seq NamedBody575_83 NamedBody575_84

def NamedBody575_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody575_87 : StackLang.HolProg 64 :=
.seq NamedBody575_85 NamedBody575_86

def NamedBody575_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_89 : StackLang.HolProg 64 :=
.seq NamedBody575_87 NamedBody575_88

def NamedBody575_90 : StackLang.HolProg 64 :=
.seq NamedBody575_82 NamedBody575_89

def NamedBody575_91 : StackLang.HolProg 64 :=
.seq NamedBody575_81 NamedBody575_90

def NamedBody575_92 : StackLang.HolProg 64 :=
.seq NamedBody575_80 NamedBody575_91

def NamedBody575_93 : StackLang.HolProg 64 :=
.seq NamedBody575_79 NamedBody575_92

def NamedBody575_94 : StackLang.HolProg 64 :=
.seq NamedBody575_78 NamedBody575_93

def NamedBody575_95 : StackLang.HolProg 64 :=
.seq NamedBody575_77 NamedBody575_94

def NamedBody575_96 : StackLang.HolProg 64 :=
.seq NamedBody575_76 NamedBody575_95

def NamedBody575_97 : StackLang.HolProg 64 :=
.seq NamedBody575_75 NamedBody575_96

def NamedBody575_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody575_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody575_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody575_105 : StackLang.HolProg 64 :=
.seq NamedBody575_103 NamedBody575_104

def NamedBody575_106 : StackLang.HolProg 64 :=
.seq NamedBody575_102 NamedBody575_105

def NamedBody575_107 : StackLang.HolProg 64 :=
.seq NamedBody575_101 NamedBody575_106

def NamedBody575_108 : StackLang.HolProg 64 :=
.seq NamedBody575_100 NamedBody575_107

def NamedBody575_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody575_111 : StackLang.HolProg 64 :=
.seq NamedBody575_109 NamedBody575_110

def NamedBody575_112 : StackLang.HolProg 64 :=
.call (some (NamedBody575_108, 1, 575, 4)) (Sum.inl 572) (some (NamedBody575_111, 575, 5))

def NamedBody575_113 : StackLang.HolProg 64 :=
.seq NamedBody575_99 NamedBody575_112

def NamedBody575_114 : StackLang.HolProg 64 :=
.seq NamedBody575_98 NamedBody575_113

def NamedBody575_115 : StackLang.HolProg 64 :=
.seq NamedBody575_97 NamedBody575_114

def NamedBody575_116 : StackLang.HolProg 64 :=
.seq NamedBody575_68 NamedBody575_115

def NamedBody575_117 : StackLang.HolProg 64 :=
.seq NamedBody575_65 NamedBody575_116

def NamedBody575_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody575_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 96#64))

def NamedBody575_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2005#64)

def NamedBody575_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody575_125 : StackLang.HolProg 64 :=
.seq NamedBody575_123 NamedBody575_124

def NamedBody575_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody575_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody575_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody575_129 : StackLang.HolProg 64 :=
.seq NamedBody575_127 NamedBody575_128

def NamedBody575_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody575_129 NamedBody575_130

def NamedBody575_132 : StackLang.HolProg 64 :=
.seq NamedBody575_126 NamedBody575_131

def NamedBody575_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody575_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody575_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 575 7

def NamedBody575_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody575_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody575_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody575_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody575_142 : StackLang.HolProg 64 :=
.seq NamedBody575_140 NamedBody575_141

def NamedBody575_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody575_144 : StackLang.HolProg 64 :=
.seq NamedBody575_142 NamedBody575_143

def NamedBody575_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_146 : StackLang.HolProg 64 :=
.seq NamedBody575_144 NamedBody575_145

def NamedBody575_147 : StackLang.HolProg 64 :=
.seq NamedBody575_139 NamedBody575_146

def NamedBody575_148 : StackLang.HolProg 64 :=
.seq NamedBody575_138 NamedBody575_147

def NamedBody575_149 : StackLang.HolProg 64 :=
.seq NamedBody575_137 NamedBody575_148

def NamedBody575_150 : StackLang.HolProg 64 :=
.seq NamedBody575_136 NamedBody575_149

def NamedBody575_151 : StackLang.HolProg 64 :=
.seq NamedBody575_135 NamedBody575_150

def NamedBody575_152 : StackLang.HolProg 64 :=
.seq NamedBody575_134 NamedBody575_151

def NamedBody575_153 : StackLang.HolProg 64 :=
.seq NamedBody575_133 NamedBody575_152

def NamedBody575_154 : StackLang.HolProg 64 :=
.seq NamedBody575_132 NamedBody575_153

def NamedBody575_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody575_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody575_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody575_162 : StackLang.HolProg 64 :=
.seq NamedBody575_160 NamedBody575_161

def NamedBody575_163 : StackLang.HolProg 64 :=
.seq NamedBody575_159 NamedBody575_162

def NamedBody575_164 : StackLang.HolProg 64 :=
.seq NamedBody575_158 NamedBody575_163

def NamedBody575_165 : StackLang.HolProg 64 :=
.seq NamedBody575_157 NamedBody575_164

def NamedBody575_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody575_168 : StackLang.HolProg 64 :=
.seq NamedBody575_166 NamedBody575_167

def NamedBody575_169 : StackLang.HolProg 64 :=
.call (some (NamedBody575_165, 1, 575, 6)) (Sum.inl 280) (some (NamedBody575_168, 575, 7))

def NamedBody575_170 : StackLang.HolProg 64 :=
.seq NamedBody575_156 NamedBody575_169

def NamedBody575_171 : StackLang.HolProg 64 :=
.seq NamedBody575_155 NamedBody575_170

def NamedBody575_172 : StackLang.HolProg 64 :=
.seq NamedBody575_154 NamedBody575_171

def NamedBody575_173 : StackLang.HolProg 64 :=
.seq NamedBody575_125 NamedBody575_172

def NamedBody575_174 : StackLang.HolProg 64 :=
.seq NamedBody575_122 NamedBody575_173

def NamedBody575_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody575_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody575_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2006#64)

def NamedBody575_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody575_180 : StackLang.HolProg 64 :=
.seq NamedBody575_178 NamedBody575_179

def NamedBody575_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody575_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody575_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody575_184 : StackLang.HolProg 64 :=
.seq NamedBody575_182 NamedBody575_183

def NamedBody575_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody575_184 NamedBody575_185

def NamedBody575_187 : StackLang.HolProg 64 :=
.seq NamedBody575_181 NamedBody575_186

def NamedBody575_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody575_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody575_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 575 9

def NamedBody575_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody575_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody575_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody575_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody575_197 : StackLang.HolProg 64 :=
.seq NamedBody575_195 NamedBody575_196

def NamedBody575_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody575_199 : StackLang.HolProg 64 :=
.seq NamedBody575_197 NamedBody575_198

def NamedBody575_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_201 : StackLang.HolProg 64 :=
.seq NamedBody575_199 NamedBody575_200

def NamedBody575_202 : StackLang.HolProg 64 :=
.seq NamedBody575_194 NamedBody575_201

def NamedBody575_203 : StackLang.HolProg 64 :=
.seq NamedBody575_193 NamedBody575_202

def NamedBody575_204 : StackLang.HolProg 64 :=
.seq NamedBody575_192 NamedBody575_203

def NamedBody575_205 : StackLang.HolProg 64 :=
.seq NamedBody575_191 NamedBody575_204

def NamedBody575_206 : StackLang.HolProg 64 :=
.seq NamedBody575_190 NamedBody575_205

def NamedBody575_207 : StackLang.HolProg 64 :=
.seq NamedBody575_189 NamedBody575_206

def NamedBody575_208 : StackLang.HolProg 64 :=
.seq NamedBody575_188 NamedBody575_207

def NamedBody575_209 : StackLang.HolProg 64 :=
.seq NamedBody575_187 NamedBody575_208

def NamedBody575_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody575_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody575_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_217 : StackLang.HolProg 64 :=
.seq NamedBody575_215 NamedBody575_216

def NamedBody575_218 : StackLang.HolProg 64 :=
.seq NamedBody575_214 NamedBody575_217

def NamedBody575_219 : StackLang.HolProg 64 :=
.seq NamedBody575_213 NamedBody575_218

def NamedBody575_220 : StackLang.HolProg 64 :=
.seq NamedBody575_212 NamedBody575_219

def NamedBody575_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_222 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody575_223 : StackLang.HolProg 64 :=
.seq NamedBody575_221 NamedBody575_222

def NamedBody575_224 : StackLang.HolProg 64 :=
.call (some (NamedBody575_220, 1, 575, 8)) (Sum.inl 476) (some (NamedBody575_223, 575, 9))

def NamedBody575_225 : StackLang.HolProg 64 :=
.seq NamedBody575_211 NamedBody575_224

def NamedBody575_226 : StackLang.HolProg 64 :=
.seq NamedBody575_210 NamedBody575_225

def NamedBody575_227 : StackLang.HolProg 64 :=
.seq NamedBody575_209 NamedBody575_226

def NamedBody575_228 : StackLang.HolProg 64 :=
.seq NamedBody575_180 NamedBody575_227

def NamedBody575_229 : StackLang.HolProg 64 :=
.seq NamedBody575_177 NamedBody575_228

def NamedBody575_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody575_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody575_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2007#64)

def NamedBody575_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody575_236 : StackLang.HolProg 64 :=
.seq NamedBody575_234 NamedBody575_235

def NamedBody575_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody575_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody575_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody575_240 : StackLang.HolProg 64 :=
.seq NamedBody575_238 NamedBody575_239

def NamedBody575_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_242 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody575_240 NamedBody575_241

def NamedBody575_243 : StackLang.HolProg 64 :=
.seq NamedBody575_237 NamedBody575_242

def NamedBody575_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody575_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody575_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 575 11

def NamedBody575_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody575_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody575_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody575_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody575_253 : StackLang.HolProg 64 :=
.seq NamedBody575_251 NamedBody575_252

def NamedBody575_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody575_255 : StackLang.HolProg 64 :=
.seq NamedBody575_253 NamedBody575_254

def NamedBody575_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_257 : StackLang.HolProg 64 :=
.seq NamedBody575_255 NamedBody575_256

def NamedBody575_258 : StackLang.HolProg 64 :=
.seq NamedBody575_250 NamedBody575_257

def NamedBody575_259 : StackLang.HolProg 64 :=
.seq NamedBody575_249 NamedBody575_258

def NamedBody575_260 : StackLang.HolProg 64 :=
.seq NamedBody575_248 NamedBody575_259

def NamedBody575_261 : StackLang.HolProg 64 :=
.seq NamedBody575_247 NamedBody575_260

def NamedBody575_262 : StackLang.HolProg 64 :=
.seq NamedBody575_246 NamedBody575_261

def NamedBody575_263 : StackLang.HolProg 64 :=
.seq NamedBody575_245 NamedBody575_262

def NamedBody575_264 : StackLang.HolProg 64 :=
.seq NamedBody575_244 NamedBody575_263

def NamedBody575_265 : StackLang.HolProg 64 :=
.seq NamedBody575_243 NamedBody575_264

def NamedBody575_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody575_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody575_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody575_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody575_273 : StackLang.HolProg 64 :=
.seq NamedBody575_271 NamedBody575_272

def NamedBody575_274 : StackLang.HolProg 64 :=
.seq NamedBody575_270 NamedBody575_273

def NamedBody575_275 : StackLang.HolProg 64 :=
.seq NamedBody575_269 NamedBody575_274

def NamedBody575_276 : StackLang.HolProg 64 :=
.seq NamedBody575_268 NamedBody575_275

def NamedBody575_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody575_278 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody575_279 : StackLang.HolProg 64 :=
.seq NamedBody575_277 NamedBody575_278

def NamedBody575_280 : StackLang.HolProg 64 :=
.call (some (NamedBody575_276, 1, 575, 10)) (Sum.inl 490) (some (NamedBody575_279, 575, 11))

def NamedBody575_281 : StackLang.HolProg 64 :=
.seq NamedBody575_267 NamedBody575_280

def NamedBody575_282 : StackLang.HolProg 64 :=
.seq NamedBody575_266 NamedBody575_281

def NamedBody575_283 : StackLang.HolProg 64 :=
.seq NamedBody575_265 NamedBody575_282

def NamedBody575_284 : StackLang.HolProg 64 :=
.seq NamedBody575_236 NamedBody575_283

def NamedBody575_285 : StackLang.HolProg 64 :=
.seq NamedBody575_233 NamedBody575_284

def NamedBody575_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody575_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody575_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody575_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody575_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody575_291 : StackLang.HolProg 64 :=
.seq NamedBody575_289 NamedBody575_290

def NamedBody575_292 : StackLang.HolProg 64 :=
.seq NamedBody575_288 NamedBody575_291

def NamedBody575_293 : StackLang.HolProg 64 :=
.seq NamedBody575_287 NamedBody575_292

def NamedBody575_294 : StackLang.HolProg 64 :=
.seq NamedBody575_286 NamedBody575_293

def NamedBody575_295 : StackLang.HolProg 64 :=
.seq NamedBody575_285 NamedBody575_294

def NamedBody575_296 : StackLang.HolProg 64 :=
.seq NamedBody575_232 NamedBody575_295

def NamedBody575_297 : StackLang.HolProg 64 :=
.seq NamedBody575_231 NamedBody575_296

def NamedBody575_298 : StackLang.HolProg 64 :=
.seq NamedBody575_230 NamedBody575_297

def NamedBody575_299 : StackLang.HolProg 64 :=
.seq NamedBody575_229 NamedBody575_298

def NamedBody575_300 : StackLang.HolProg 64 :=
.seq NamedBody575_176 NamedBody575_299

def NamedBody575_301 : StackLang.HolProg 64 :=
.seq NamedBody575_175 NamedBody575_300

def NamedBody575_302 : StackLang.HolProg 64 :=
.seq NamedBody575_174 NamedBody575_301

def NamedBody575_303 : StackLang.HolProg 64 :=
.seq NamedBody575_121 NamedBody575_302

def NamedBody575_304 : StackLang.HolProg 64 :=
.seq NamedBody575_120 NamedBody575_303

def NamedBody575_305 : StackLang.HolProg 64 :=
.seq NamedBody575_119 NamedBody575_304

def NamedBody575_306 : StackLang.HolProg 64 :=
.seq NamedBody575_118 NamedBody575_305

def NamedBody575_307 : StackLang.HolProg 64 :=
.seq NamedBody575_117 NamedBody575_306

def NamedBody575_308 : StackLang.HolProg 64 :=
.seq NamedBody575_64 NamedBody575_307

def NamedBody575_309 : StackLang.HolProg 64 :=
.seq NamedBody575_63 NamedBody575_308

def NamedBody575_310 : StackLang.HolProg 64 :=
.seq NamedBody575_62 NamedBody575_309

def NamedBody575_311 : StackLang.HolProg 64 :=
.seq NamedBody575_9 NamedBody575_310

def NamedBody575_312 : StackLang.HolProg 64 :=
.seq NamedBody575_8 NamedBody575_311

def NamedBody575_313 : StackLang.HolProg 64 :=
.seq NamedBody575_7 NamedBody575_312

def NamedBody575_314 : StackLang.HolProg 64 :=
.seq NamedBody575_6 NamedBody575_313

def Named575 : Nat × StackLang.HolProg 64 := (575, NamedBody575_314)
theorem Named575_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed575 = Named575 := by
  kernel_rfl
#print axioms Named575_eq
end InitECandidate.Proofs.BackendStages
