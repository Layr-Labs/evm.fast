import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed583
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody583_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody583_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody583_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody583_3 : StackLang.HolProg 64 :=
.seq NamedBody583_1 NamedBody583_2

def NamedBody583_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody583_3 NamedBody583_4

def NamedBody583_6 : StackLang.HolProg 64 :=
.seq NamedBody583_0 NamedBody583_5

def NamedBody583_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody583_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody583_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2044#64)

def NamedBody583_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody583_13 : StackLang.HolProg 64 :=
.seq NamedBody583_11 NamedBody583_12

def NamedBody583_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody583_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody583_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody583_17 : StackLang.HolProg 64 :=
.seq NamedBody583_15 NamedBody583_16

def NamedBody583_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody583_17 NamedBody583_18

def NamedBody583_20 : StackLang.HolProg 64 :=
.seq NamedBody583_14 NamedBody583_19

def NamedBody583_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody583_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody583_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 583 3

def NamedBody583_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody583_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody583_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody583_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody583_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody583_30 : StackLang.HolProg 64 :=
.seq NamedBody583_28 NamedBody583_29

def NamedBody583_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody583_32 : StackLang.HolProg 64 :=
.seq NamedBody583_30 NamedBody583_31

def NamedBody583_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody583_34 : StackLang.HolProg 64 :=
.seq NamedBody583_32 NamedBody583_33

def NamedBody583_35 : StackLang.HolProg 64 :=
.seq NamedBody583_27 NamedBody583_34

def NamedBody583_36 : StackLang.HolProg 64 :=
.seq NamedBody583_26 NamedBody583_35

def NamedBody583_37 : StackLang.HolProg 64 :=
.seq NamedBody583_25 NamedBody583_36

def NamedBody583_38 : StackLang.HolProg 64 :=
.seq NamedBody583_24 NamedBody583_37

def NamedBody583_39 : StackLang.HolProg 64 :=
.seq NamedBody583_23 NamedBody583_38

def NamedBody583_40 : StackLang.HolProg 64 :=
.seq NamedBody583_22 NamedBody583_39

def NamedBody583_41 : StackLang.HolProg 64 :=
.seq NamedBody583_21 NamedBody583_40

def NamedBody583_42 : StackLang.HolProg 64 :=
.seq NamedBody583_20 NamedBody583_41

def NamedBody583_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody583_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody583_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody583_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_50 : StackLang.HolProg 64 :=
.seq NamedBody583_48 NamedBody583_49

def NamedBody583_51 : StackLang.HolProg 64 :=
.seq NamedBody583_47 NamedBody583_50

def NamedBody583_52 : StackLang.HolProg 64 :=
.seq NamedBody583_46 NamedBody583_51

def NamedBody583_53 : StackLang.HolProg 64 :=
.seq NamedBody583_45 NamedBody583_52

def NamedBody583_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody583_56 : StackLang.HolProg 64 :=
.seq NamedBody583_54 NamedBody583_55

def NamedBody583_57 : StackLang.HolProg 64 :=
.call (some (NamedBody583_53, 1, 583, 2)) (Sum.inl 470) (some (NamedBody583_56, 583, 3))

def NamedBody583_58 : StackLang.HolProg 64 :=
.seq NamedBody583_44 NamedBody583_57

def NamedBody583_59 : StackLang.HolProg 64 :=
.seq NamedBody583_43 NamedBody583_58

def NamedBody583_60 : StackLang.HolProg 64 :=
.seq NamedBody583_42 NamedBody583_59

def NamedBody583_61 : StackLang.HolProg 64 :=
.seq NamedBody583_13 NamedBody583_60

def NamedBody583_62 : StackLang.HolProg 64 :=
.seq NamedBody583_10 NamedBody583_61

def NamedBody583_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody583_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2045#64)

def NamedBody583_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody583_68 : StackLang.HolProg 64 :=
.seq NamedBody583_66 NamedBody583_67

def NamedBody583_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody583_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody583_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody583_72 : StackLang.HolProg 64 :=
.seq NamedBody583_70 NamedBody583_71

def NamedBody583_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody583_72 NamedBody583_73

def NamedBody583_75 : StackLang.HolProg 64 :=
.seq NamedBody583_69 NamedBody583_74

def NamedBody583_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody583_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody583_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 583 5

def NamedBody583_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody583_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody583_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody583_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody583_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody583_85 : StackLang.HolProg 64 :=
.seq NamedBody583_83 NamedBody583_84

def NamedBody583_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody583_87 : StackLang.HolProg 64 :=
.seq NamedBody583_85 NamedBody583_86

def NamedBody583_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody583_89 : StackLang.HolProg 64 :=
.seq NamedBody583_87 NamedBody583_88

def NamedBody583_90 : StackLang.HolProg 64 :=
.seq NamedBody583_82 NamedBody583_89

def NamedBody583_91 : StackLang.HolProg 64 :=
.seq NamedBody583_81 NamedBody583_90

def NamedBody583_92 : StackLang.HolProg 64 :=
.seq NamedBody583_80 NamedBody583_91

def NamedBody583_93 : StackLang.HolProg 64 :=
.seq NamedBody583_79 NamedBody583_92

def NamedBody583_94 : StackLang.HolProg 64 :=
.seq NamedBody583_78 NamedBody583_93

def NamedBody583_95 : StackLang.HolProg 64 :=
.seq NamedBody583_77 NamedBody583_94

def NamedBody583_96 : StackLang.HolProg 64 :=
.seq NamedBody583_76 NamedBody583_95

def NamedBody583_97 : StackLang.HolProg 64 :=
.seq NamedBody583_75 NamedBody583_96

def NamedBody583_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody583_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody583_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody583_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody583_105 : StackLang.HolProg 64 :=
.seq NamedBody583_103 NamedBody583_104

def NamedBody583_106 : StackLang.HolProg 64 :=
.seq NamedBody583_102 NamedBody583_105

def NamedBody583_107 : StackLang.HolProg 64 :=
.seq NamedBody583_101 NamedBody583_106

def NamedBody583_108 : StackLang.HolProg 64 :=
.seq NamedBody583_100 NamedBody583_107

def NamedBody583_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody583_111 : StackLang.HolProg 64 :=
.seq NamedBody583_109 NamedBody583_110

def NamedBody583_112 : StackLang.HolProg 64 :=
.call (some (NamedBody583_108, 1, 583, 4)) (Sum.inl 572) (some (NamedBody583_111, 583, 5))

def NamedBody583_113 : StackLang.HolProg 64 :=
.seq NamedBody583_99 NamedBody583_112

def NamedBody583_114 : StackLang.HolProg 64 :=
.seq NamedBody583_98 NamedBody583_113

def NamedBody583_115 : StackLang.HolProg 64 :=
.seq NamedBody583_97 NamedBody583_114

def NamedBody583_116 : StackLang.HolProg 64 :=
.seq NamedBody583_68 NamedBody583_115

def NamedBody583_117 : StackLang.HolProg 64 :=
.seq NamedBody583_65 NamedBody583_116

def NamedBody583_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody583_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def NamedBody583_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2046#64)

def NamedBody583_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody583_125 : StackLang.HolProg 64 :=
.seq NamedBody583_123 NamedBody583_124

def NamedBody583_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody583_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody583_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody583_129 : StackLang.HolProg 64 :=
.seq NamedBody583_127 NamedBody583_128

def NamedBody583_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody583_129 NamedBody583_130

def NamedBody583_132 : StackLang.HolProg 64 :=
.seq NamedBody583_126 NamedBody583_131

def NamedBody583_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody583_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody583_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 583 7

def NamedBody583_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody583_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody583_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody583_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody583_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody583_142 : StackLang.HolProg 64 :=
.seq NamedBody583_140 NamedBody583_141

def NamedBody583_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody583_144 : StackLang.HolProg 64 :=
.seq NamedBody583_142 NamedBody583_143

def NamedBody583_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody583_146 : StackLang.HolProg 64 :=
.seq NamedBody583_144 NamedBody583_145

def NamedBody583_147 : StackLang.HolProg 64 :=
.seq NamedBody583_139 NamedBody583_146

def NamedBody583_148 : StackLang.HolProg 64 :=
.seq NamedBody583_138 NamedBody583_147

def NamedBody583_149 : StackLang.HolProg 64 :=
.seq NamedBody583_137 NamedBody583_148

def NamedBody583_150 : StackLang.HolProg 64 :=
.seq NamedBody583_136 NamedBody583_149

def NamedBody583_151 : StackLang.HolProg 64 :=
.seq NamedBody583_135 NamedBody583_150

def NamedBody583_152 : StackLang.HolProg 64 :=
.seq NamedBody583_134 NamedBody583_151

def NamedBody583_153 : StackLang.HolProg 64 :=
.seq NamedBody583_133 NamedBody583_152

def NamedBody583_154 : StackLang.HolProg 64 :=
.seq NamedBody583_132 NamedBody583_153

def NamedBody583_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody583_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody583_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody583_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_162 : StackLang.HolProg 64 :=
.seq NamedBody583_160 NamedBody583_161

def NamedBody583_163 : StackLang.HolProg 64 :=
.seq NamedBody583_159 NamedBody583_162

def NamedBody583_164 : StackLang.HolProg 64 :=
.seq NamedBody583_158 NamedBody583_163

def NamedBody583_165 : StackLang.HolProg 64 :=
.seq NamedBody583_157 NamedBody583_164

def NamedBody583_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody583_168 : StackLang.HolProg 64 :=
.seq NamedBody583_166 NamedBody583_167

def NamedBody583_169 : StackLang.HolProg 64 :=
.call (some (NamedBody583_165, 1, 583, 6)) (Sum.inl 477) (some (NamedBody583_168, 583, 7))

def NamedBody583_170 : StackLang.HolProg 64 :=
.seq NamedBody583_156 NamedBody583_169

def NamedBody583_171 : StackLang.HolProg 64 :=
.seq NamedBody583_155 NamedBody583_170

def NamedBody583_172 : StackLang.HolProg 64 :=
.seq NamedBody583_154 NamedBody583_171

def NamedBody583_173 : StackLang.HolProg 64 :=
.seq NamedBody583_125 NamedBody583_172

def NamedBody583_174 : StackLang.HolProg 64 :=
.seq NamedBody583_122 NamedBody583_173

def NamedBody583_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody583_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody583_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2047#64)

def NamedBody583_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody583_181 : StackLang.HolProg 64 :=
.seq NamedBody583_179 NamedBody583_180

def NamedBody583_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody583_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody583_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody583_185 : StackLang.HolProg 64 :=
.seq NamedBody583_183 NamedBody583_184

def NamedBody583_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody583_185 NamedBody583_186

def NamedBody583_188 : StackLang.HolProg 64 :=
.seq NamedBody583_182 NamedBody583_187

def NamedBody583_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody583_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody583_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 583 9

def NamedBody583_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody583_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody583_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody583_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody583_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody583_198 : StackLang.HolProg 64 :=
.seq NamedBody583_196 NamedBody583_197

def NamedBody583_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody583_200 : StackLang.HolProg 64 :=
.seq NamedBody583_198 NamedBody583_199

def NamedBody583_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody583_202 : StackLang.HolProg 64 :=
.seq NamedBody583_200 NamedBody583_201

def NamedBody583_203 : StackLang.HolProg 64 :=
.seq NamedBody583_195 NamedBody583_202

def NamedBody583_204 : StackLang.HolProg 64 :=
.seq NamedBody583_194 NamedBody583_203

def NamedBody583_205 : StackLang.HolProg 64 :=
.seq NamedBody583_193 NamedBody583_204

def NamedBody583_206 : StackLang.HolProg 64 :=
.seq NamedBody583_192 NamedBody583_205

def NamedBody583_207 : StackLang.HolProg 64 :=
.seq NamedBody583_191 NamedBody583_206

def NamedBody583_208 : StackLang.HolProg 64 :=
.seq NamedBody583_190 NamedBody583_207

def NamedBody583_209 : StackLang.HolProg 64 :=
.seq NamedBody583_189 NamedBody583_208

def NamedBody583_210 : StackLang.HolProg 64 :=
.seq NamedBody583_188 NamedBody583_209

def NamedBody583_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody583_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody583_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody583_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody583_218 : StackLang.HolProg 64 :=
.seq NamedBody583_216 NamedBody583_217

def NamedBody583_219 : StackLang.HolProg 64 :=
.seq NamedBody583_215 NamedBody583_218

def NamedBody583_220 : StackLang.HolProg 64 :=
.seq NamedBody583_214 NamedBody583_219

def NamedBody583_221 : StackLang.HolProg 64 :=
.seq NamedBody583_213 NamedBody583_220

def NamedBody583_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody583_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody583_224 : StackLang.HolProg 64 :=
.seq NamedBody583_222 NamedBody583_223

def NamedBody583_225 : StackLang.HolProg 64 :=
.call (some (NamedBody583_221, 1, 583, 8)) (Sum.inl 490) (some (NamedBody583_224, 583, 9))

def NamedBody583_226 : StackLang.HolProg 64 :=
.seq NamedBody583_212 NamedBody583_225

def NamedBody583_227 : StackLang.HolProg 64 :=
.seq NamedBody583_211 NamedBody583_226

def NamedBody583_228 : StackLang.HolProg 64 :=
.seq NamedBody583_210 NamedBody583_227

def NamedBody583_229 : StackLang.HolProg 64 :=
.seq NamedBody583_181 NamedBody583_228

def NamedBody583_230 : StackLang.HolProg 64 :=
.seq NamedBody583_178 NamedBody583_229

def NamedBody583_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody583_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody583_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody583_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody583_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody583_236 : StackLang.HolProg 64 :=
.seq NamedBody583_234 NamedBody583_235

def NamedBody583_237 : StackLang.HolProg 64 :=
.seq NamedBody583_233 NamedBody583_236

def NamedBody583_238 : StackLang.HolProg 64 :=
.seq NamedBody583_232 NamedBody583_237

def NamedBody583_239 : StackLang.HolProg 64 :=
.seq NamedBody583_231 NamedBody583_238

def NamedBody583_240 : StackLang.HolProg 64 :=
.seq NamedBody583_230 NamedBody583_239

def NamedBody583_241 : StackLang.HolProg 64 :=
.seq NamedBody583_177 NamedBody583_240

def NamedBody583_242 : StackLang.HolProg 64 :=
.seq NamedBody583_176 NamedBody583_241

def NamedBody583_243 : StackLang.HolProg 64 :=
.seq NamedBody583_175 NamedBody583_242

def NamedBody583_244 : StackLang.HolProg 64 :=
.seq NamedBody583_174 NamedBody583_243

def NamedBody583_245 : StackLang.HolProg 64 :=
.seq NamedBody583_121 NamedBody583_244

def NamedBody583_246 : StackLang.HolProg 64 :=
.seq NamedBody583_120 NamedBody583_245

def NamedBody583_247 : StackLang.HolProg 64 :=
.seq NamedBody583_119 NamedBody583_246

def NamedBody583_248 : StackLang.HolProg 64 :=
.seq NamedBody583_118 NamedBody583_247

def NamedBody583_249 : StackLang.HolProg 64 :=
.seq NamedBody583_117 NamedBody583_248

def NamedBody583_250 : StackLang.HolProg 64 :=
.seq NamedBody583_64 NamedBody583_249

def NamedBody583_251 : StackLang.HolProg 64 :=
.seq NamedBody583_63 NamedBody583_250

def NamedBody583_252 : StackLang.HolProg 64 :=
.seq NamedBody583_62 NamedBody583_251

def NamedBody583_253 : StackLang.HolProg 64 :=
.seq NamedBody583_9 NamedBody583_252

def NamedBody583_254 : StackLang.HolProg 64 :=
.seq NamedBody583_8 NamedBody583_253

def NamedBody583_255 : StackLang.HolProg 64 :=
.seq NamedBody583_7 NamedBody583_254

def NamedBody583_256 : StackLang.HolProg 64 :=
.seq NamedBody583_6 NamedBody583_255

def Named583 : Nat × StackLang.HolProg 64 := (583, NamedBody583_256)
theorem Named583_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed583 = Named583 := by
  kernel_rfl
#print axioms Named583_eq
end InitECandidate.Proofs.BackendStages
