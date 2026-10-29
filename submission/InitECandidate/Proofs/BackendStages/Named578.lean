import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed578
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody578_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody578_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody578_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody578_3 : StackLang.HolProg 64 :=
.seq NamedBody578_1 NamedBody578_2

def NamedBody578_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody578_3 NamedBody578_4

def NamedBody578_6 : StackLang.HolProg 64 :=
.seq NamedBody578_0 NamedBody578_5

def NamedBody578_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody578_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody578_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2023#64)

def NamedBody578_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody578_13 : StackLang.HolProg 64 :=
.seq NamedBody578_11 NamedBody578_12

def NamedBody578_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody578_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody578_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody578_17 : StackLang.HolProg 64 :=
.seq NamedBody578_15 NamedBody578_16

def NamedBody578_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody578_17 NamedBody578_18

def NamedBody578_20 : StackLang.HolProg 64 :=
.seq NamedBody578_14 NamedBody578_19

def NamedBody578_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody578_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody578_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 3

def NamedBody578_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody578_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody578_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody578_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody578_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody578_30 : StackLang.HolProg 64 :=
.seq NamedBody578_28 NamedBody578_29

def NamedBody578_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody578_32 : StackLang.HolProg 64 :=
.seq NamedBody578_30 NamedBody578_31

def NamedBody578_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody578_34 : StackLang.HolProg 64 :=
.seq NamedBody578_32 NamedBody578_33

def NamedBody578_35 : StackLang.HolProg 64 :=
.seq NamedBody578_27 NamedBody578_34

def NamedBody578_36 : StackLang.HolProg 64 :=
.seq NamedBody578_26 NamedBody578_35

def NamedBody578_37 : StackLang.HolProg 64 :=
.seq NamedBody578_25 NamedBody578_36

def NamedBody578_38 : StackLang.HolProg 64 :=
.seq NamedBody578_24 NamedBody578_37

def NamedBody578_39 : StackLang.HolProg 64 :=
.seq NamedBody578_23 NamedBody578_38

def NamedBody578_40 : StackLang.HolProg 64 :=
.seq NamedBody578_22 NamedBody578_39

def NamedBody578_41 : StackLang.HolProg 64 :=
.seq NamedBody578_21 NamedBody578_40

def NamedBody578_42 : StackLang.HolProg 64 :=
.seq NamedBody578_20 NamedBody578_41

def NamedBody578_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody578_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody578_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody578_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_50 : StackLang.HolProg 64 :=
.seq NamedBody578_48 NamedBody578_49

def NamedBody578_51 : StackLang.HolProg 64 :=
.seq NamedBody578_47 NamedBody578_50

def NamedBody578_52 : StackLang.HolProg 64 :=
.seq NamedBody578_46 NamedBody578_51

def NamedBody578_53 : StackLang.HolProg 64 :=
.seq NamedBody578_45 NamedBody578_52

def NamedBody578_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody578_56 : StackLang.HolProg 64 :=
.seq NamedBody578_54 NamedBody578_55

def NamedBody578_57 : StackLang.HolProg 64 :=
.call (some (NamedBody578_53, 1, 578, 2)) (Sum.inl 470) (some (NamedBody578_56, 578, 3))

def NamedBody578_58 : StackLang.HolProg 64 :=
.seq NamedBody578_44 NamedBody578_57

def NamedBody578_59 : StackLang.HolProg 64 :=
.seq NamedBody578_43 NamedBody578_58

def NamedBody578_60 : StackLang.HolProg 64 :=
.seq NamedBody578_42 NamedBody578_59

def NamedBody578_61 : StackLang.HolProg 64 :=
.seq NamedBody578_13 NamedBody578_60

def NamedBody578_62 : StackLang.HolProg 64 :=
.seq NamedBody578_10 NamedBody578_61

def NamedBody578_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody578_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2024#64)

def NamedBody578_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody578_68 : StackLang.HolProg 64 :=
.seq NamedBody578_66 NamedBody578_67

def NamedBody578_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody578_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody578_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody578_72 : StackLang.HolProg 64 :=
.seq NamedBody578_70 NamedBody578_71

def NamedBody578_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody578_72 NamedBody578_73

def NamedBody578_75 : StackLang.HolProg 64 :=
.seq NamedBody578_69 NamedBody578_74

def NamedBody578_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody578_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody578_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 5

def NamedBody578_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody578_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody578_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody578_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody578_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody578_85 : StackLang.HolProg 64 :=
.seq NamedBody578_83 NamedBody578_84

def NamedBody578_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody578_87 : StackLang.HolProg 64 :=
.seq NamedBody578_85 NamedBody578_86

def NamedBody578_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody578_89 : StackLang.HolProg 64 :=
.seq NamedBody578_87 NamedBody578_88

def NamedBody578_90 : StackLang.HolProg 64 :=
.seq NamedBody578_82 NamedBody578_89

def NamedBody578_91 : StackLang.HolProg 64 :=
.seq NamedBody578_81 NamedBody578_90

def NamedBody578_92 : StackLang.HolProg 64 :=
.seq NamedBody578_80 NamedBody578_91

def NamedBody578_93 : StackLang.HolProg 64 :=
.seq NamedBody578_79 NamedBody578_92

def NamedBody578_94 : StackLang.HolProg 64 :=
.seq NamedBody578_78 NamedBody578_93

def NamedBody578_95 : StackLang.HolProg 64 :=
.seq NamedBody578_77 NamedBody578_94

def NamedBody578_96 : StackLang.HolProg 64 :=
.seq NamedBody578_76 NamedBody578_95

def NamedBody578_97 : StackLang.HolProg 64 :=
.seq NamedBody578_75 NamedBody578_96

def NamedBody578_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody578_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody578_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody578_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody578_105 : StackLang.HolProg 64 :=
.seq NamedBody578_103 NamedBody578_104

def NamedBody578_106 : StackLang.HolProg 64 :=
.seq NamedBody578_102 NamedBody578_105

def NamedBody578_107 : StackLang.HolProg 64 :=
.seq NamedBody578_101 NamedBody578_106

def NamedBody578_108 : StackLang.HolProg 64 :=
.seq NamedBody578_100 NamedBody578_107

def NamedBody578_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody578_111 : StackLang.HolProg 64 :=
.seq NamedBody578_109 NamedBody578_110

def NamedBody578_112 : StackLang.HolProg 64 :=
.call (some (NamedBody578_108, 1, 578, 4)) (Sum.inl 572) (some (NamedBody578_111, 578, 5))

def NamedBody578_113 : StackLang.HolProg 64 :=
.seq NamedBody578_99 NamedBody578_112

def NamedBody578_114 : StackLang.HolProg 64 :=
.seq NamedBody578_98 NamedBody578_113

def NamedBody578_115 : StackLang.HolProg 64 :=
.seq NamedBody578_97 NamedBody578_114

def NamedBody578_116 : StackLang.HolProg 64 :=
.seq NamedBody578_68 NamedBody578_115

def NamedBody578_117 : StackLang.HolProg 64 :=
.seq NamedBody578_65 NamedBody578_116

def NamedBody578_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody578_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 80#64))

def NamedBody578_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2025#64)

def NamedBody578_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody578_125 : StackLang.HolProg 64 :=
.seq NamedBody578_123 NamedBody578_124

def NamedBody578_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody578_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody578_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody578_129 : StackLang.HolProg 64 :=
.seq NamedBody578_127 NamedBody578_128

def NamedBody578_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody578_129 NamedBody578_130

def NamedBody578_132 : StackLang.HolProg 64 :=
.seq NamedBody578_126 NamedBody578_131

def NamedBody578_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody578_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody578_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 7

def NamedBody578_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody578_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody578_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody578_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody578_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody578_142 : StackLang.HolProg 64 :=
.seq NamedBody578_140 NamedBody578_141

def NamedBody578_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody578_144 : StackLang.HolProg 64 :=
.seq NamedBody578_142 NamedBody578_143

def NamedBody578_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody578_146 : StackLang.HolProg 64 :=
.seq NamedBody578_144 NamedBody578_145

def NamedBody578_147 : StackLang.HolProg 64 :=
.seq NamedBody578_139 NamedBody578_146

def NamedBody578_148 : StackLang.HolProg 64 :=
.seq NamedBody578_138 NamedBody578_147

def NamedBody578_149 : StackLang.HolProg 64 :=
.seq NamedBody578_137 NamedBody578_148

def NamedBody578_150 : StackLang.HolProg 64 :=
.seq NamedBody578_136 NamedBody578_149

def NamedBody578_151 : StackLang.HolProg 64 :=
.seq NamedBody578_135 NamedBody578_150

def NamedBody578_152 : StackLang.HolProg 64 :=
.seq NamedBody578_134 NamedBody578_151

def NamedBody578_153 : StackLang.HolProg 64 :=
.seq NamedBody578_133 NamedBody578_152

def NamedBody578_154 : StackLang.HolProg 64 :=
.seq NamedBody578_132 NamedBody578_153

def NamedBody578_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody578_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody578_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody578_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_162 : StackLang.HolProg 64 :=
.seq NamedBody578_160 NamedBody578_161

def NamedBody578_163 : StackLang.HolProg 64 :=
.seq NamedBody578_159 NamedBody578_162

def NamedBody578_164 : StackLang.HolProg 64 :=
.seq NamedBody578_158 NamedBody578_163

def NamedBody578_165 : StackLang.HolProg 64 :=
.seq NamedBody578_157 NamedBody578_164

def NamedBody578_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody578_168 : StackLang.HolProg 64 :=
.seq NamedBody578_166 NamedBody578_167

def NamedBody578_169 : StackLang.HolProg 64 :=
.call (some (NamedBody578_165, 1, 578, 6)) (Sum.inl 477) (some (NamedBody578_168, 578, 7))

def NamedBody578_170 : StackLang.HolProg 64 :=
.seq NamedBody578_156 NamedBody578_169

def NamedBody578_171 : StackLang.HolProg 64 :=
.seq NamedBody578_155 NamedBody578_170

def NamedBody578_172 : StackLang.HolProg 64 :=
.seq NamedBody578_154 NamedBody578_171

def NamedBody578_173 : StackLang.HolProg 64 :=
.seq NamedBody578_125 NamedBody578_172

def NamedBody578_174 : StackLang.HolProg 64 :=
.seq NamedBody578_122 NamedBody578_173

def NamedBody578_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody578_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody578_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2026#64)

def NamedBody578_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody578_181 : StackLang.HolProg 64 :=
.seq NamedBody578_179 NamedBody578_180

def NamedBody578_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody578_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody578_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody578_185 : StackLang.HolProg 64 :=
.seq NamedBody578_183 NamedBody578_184

def NamedBody578_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody578_185 NamedBody578_186

def NamedBody578_188 : StackLang.HolProg 64 :=
.seq NamedBody578_182 NamedBody578_187

def NamedBody578_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody578_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody578_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 9

def NamedBody578_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody578_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody578_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody578_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody578_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody578_198 : StackLang.HolProg 64 :=
.seq NamedBody578_196 NamedBody578_197

def NamedBody578_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody578_200 : StackLang.HolProg 64 :=
.seq NamedBody578_198 NamedBody578_199

def NamedBody578_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody578_202 : StackLang.HolProg 64 :=
.seq NamedBody578_200 NamedBody578_201

def NamedBody578_203 : StackLang.HolProg 64 :=
.seq NamedBody578_195 NamedBody578_202

def NamedBody578_204 : StackLang.HolProg 64 :=
.seq NamedBody578_194 NamedBody578_203

def NamedBody578_205 : StackLang.HolProg 64 :=
.seq NamedBody578_193 NamedBody578_204

def NamedBody578_206 : StackLang.HolProg 64 :=
.seq NamedBody578_192 NamedBody578_205

def NamedBody578_207 : StackLang.HolProg 64 :=
.seq NamedBody578_191 NamedBody578_206

def NamedBody578_208 : StackLang.HolProg 64 :=
.seq NamedBody578_190 NamedBody578_207

def NamedBody578_209 : StackLang.HolProg 64 :=
.seq NamedBody578_189 NamedBody578_208

def NamedBody578_210 : StackLang.HolProg 64 :=
.seq NamedBody578_188 NamedBody578_209

def NamedBody578_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody578_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody578_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody578_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody578_218 : StackLang.HolProg 64 :=
.seq NamedBody578_216 NamedBody578_217

def NamedBody578_219 : StackLang.HolProg 64 :=
.seq NamedBody578_215 NamedBody578_218

def NamedBody578_220 : StackLang.HolProg 64 :=
.seq NamedBody578_214 NamedBody578_219

def NamedBody578_221 : StackLang.HolProg 64 :=
.seq NamedBody578_213 NamedBody578_220

def NamedBody578_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody578_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody578_224 : StackLang.HolProg 64 :=
.seq NamedBody578_222 NamedBody578_223

def NamedBody578_225 : StackLang.HolProg 64 :=
.call (some (NamedBody578_221, 1, 578, 8)) (Sum.inl 490) (some (NamedBody578_224, 578, 9))

def NamedBody578_226 : StackLang.HolProg 64 :=
.seq NamedBody578_212 NamedBody578_225

def NamedBody578_227 : StackLang.HolProg 64 :=
.seq NamedBody578_211 NamedBody578_226

def NamedBody578_228 : StackLang.HolProg 64 :=
.seq NamedBody578_210 NamedBody578_227

def NamedBody578_229 : StackLang.HolProg 64 :=
.seq NamedBody578_181 NamedBody578_228

def NamedBody578_230 : StackLang.HolProg 64 :=
.seq NamedBody578_178 NamedBody578_229

def NamedBody578_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody578_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody578_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody578_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody578_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody578_236 : StackLang.HolProg 64 :=
.seq NamedBody578_234 NamedBody578_235

def NamedBody578_237 : StackLang.HolProg 64 :=
.seq NamedBody578_233 NamedBody578_236

def NamedBody578_238 : StackLang.HolProg 64 :=
.seq NamedBody578_232 NamedBody578_237

def NamedBody578_239 : StackLang.HolProg 64 :=
.seq NamedBody578_231 NamedBody578_238

def NamedBody578_240 : StackLang.HolProg 64 :=
.seq NamedBody578_230 NamedBody578_239

def NamedBody578_241 : StackLang.HolProg 64 :=
.seq NamedBody578_177 NamedBody578_240

def NamedBody578_242 : StackLang.HolProg 64 :=
.seq NamedBody578_176 NamedBody578_241

def NamedBody578_243 : StackLang.HolProg 64 :=
.seq NamedBody578_175 NamedBody578_242

def NamedBody578_244 : StackLang.HolProg 64 :=
.seq NamedBody578_174 NamedBody578_243

def NamedBody578_245 : StackLang.HolProg 64 :=
.seq NamedBody578_121 NamedBody578_244

def NamedBody578_246 : StackLang.HolProg 64 :=
.seq NamedBody578_120 NamedBody578_245

def NamedBody578_247 : StackLang.HolProg 64 :=
.seq NamedBody578_119 NamedBody578_246

def NamedBody578_248 : StackLang.HolProg 64 :=
.seq NamedBody578_118 NamedBody578_247

def NamedBody578_249 : StackLang.HolProg 64 :=
.seq NamedBody578_117 NamedBody578_248

def NamedBody578_250 : StackLang.HolProg 64 :=
.seq NamedBody578_64 NamedBody578_249

def NamedBody578_251 : StackLang.HolProg 64 :=
.seq NamedBody578_63 NamedBody578_250

def NamedBody578_252 : StackLang.HolProg 64 :=
.seq NamedBody578_62 NamedBody578_251

def NamedBody578_253 : StackLang.HolProg 64 :=
.seq NamedBody578_9 NamedBody578_252

def NamedBody578_254 : StackLang.HolProg 64 :=
.seq NamedBody578_8 NamedBody578_253

def NamedBody578_255 : StackLang.HolProg 64 :=
.seq NamedBody578_7 NamedBody578_254

def NamedBody578_256 : StackLang.HolProg 64 :=
.seq NamedBody578_6 NamedBody578_255

def Named578 : Nat × StackLang.HolProg 64 := (578, NamedBody578_256)
theorem Named578_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed578 = Named578 := by
  kernel_rfl
#print axioms Named578_eq
end InitECandidate.Proofs.BackendStages
