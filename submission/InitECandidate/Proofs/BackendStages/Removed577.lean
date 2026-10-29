import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc577
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody577_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody577_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody577_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody577_3 : StackLang.HolProg 64 :=
.seq RemovedBody577_1 RemovedBody577_2

def RemovedBody577_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody577_3 RemovedBody577_4

def RemovedBody577_6 : StackLang.HolProg 64 :=
.seq RemovedBody577_0 RemovedBody577_5

def RemovedBody577_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody577_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody577_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2018#64)

def RemovedBody577_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody577_13 : StackLang.HolProg 64 :=
.seq RemovedBody577_11 RemovedBody577_12

def RemovedBody577_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody577_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody577_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody577_17 : StackLang.HolProg 64 :=
.seq RemovedBody577_15 RemovedBody577_16

def RemovedBody577_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody577_17 RemovedBody577_18

def RemovedBody577_20 : StackLang.HolProg 64 :=
.seq RemovedBody577_14 RemovedBody577_19

def RemovedBody577_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody577_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody577_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 577 3

def RemovedBody577_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody577_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody577_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody577_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody577_30 : StackLang.HolProg 64 :=
.seq RemovedBody577_28 RemovedBody577_29

def RemovedBody577_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody577_32 : StackLang.HolProg 64 :=
.seq RemovedBody577_30 RemovedBody577_31

def RemovedBody577_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_34 : StackLang.HolProg 64 :=
.seq RemovedBody577_32 RemovedBody577_33

def RemovedBody577_35 : StackLang.HolProg 64 :=
.seq RemovedBody577_27 RemovedBody577_34

def RemovedBody577_36 : StackLang.HolProg 64 :=
.seq RemovedBody577_26 RemovedBody577_35

def RemovedBody577_37 : StackLang.HolProg 64 :=
.seq RemovedBody577_25 RemovedBody577_36

def RemovedBody577_38 : StackLang.HolProg 64 :=
.seq RemovedBody577_24 RemovedBody577_37

def RemovedBody577_39 : StackLang.HolProg 64 :=
.seq RemovedBody577_23 RemovedBody577_38

def RemovedBody577_40 : StackLang.HolProg 64 :=
.seq RemovedBody577_22 RemovedBody577_39

def RemovedBody577_41 : StackLang.HolProg 64 :=
.seq RemovedBody577_21 RemovedBody577_40

def RemovedBody577_42 : StackLang.HolProg 64 :=
.seq RemovedBody577_20 RemovedBody577_41

def RemovedBody577_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody577_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody577_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_50 : StackLang.HolProg 64 :=
.seq RemovedBody577_48 RemovedBody577_49

def RemovedBody577_51 : StackLang.HolProg 64 :=
.seq RemovedBody577_47 RemovedBody577_50

def RemovedBody577_52 : StackLang.HolProg 64 :=
.seq RemovedBody577_46 RemovedBody577_51

def RemovedBody577_53 : StackLang.HolProg 64 :=
.seq RemovedBody577_45 RemovedBody577_52

def RemovedBody577_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody577_56 : StackLang.HolProg 64 :=
.seq RemovedBody577_54 RemovedBody577_55

def RemovedBody577_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody577_53, 0, 577, 2)) (Sum.inl 470) (some (RemovedBody577_56, 577, 3))

def RemovedBody577_58 : StackLang.HolProg 64 :=
.seq RemovedBody577_44 RemovedBody577_57

def RemovedBody577_59 : StackLang.HolProg 64 :=
.seq RemovedBody577_43 RemovedBody577_58

def RemovedBody577_60 : StackLang.HolProg 64 :=
.seq RemovedBody577_42 RemovedBody577_59

def RemovedBody577_61 : StackLang.HolProg 64 :=
.seq RemovedBody577_13 RemovedBody577_60

def RemovedBody577_62 : StackLang.HolProg 64 :=
.seq RemovedBody577_10 RemovedBody577_61

def RemovedBody577_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody577_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2019#64)

def RemovedBody577_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody577_68 : StackLang.HolProg 64 :=
.seq RemovedBody577_66 RemovedBody577_67

def RemovedBody577_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody577_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody577_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody577_72 : StackLang.HolProg 64 :=
.seq RemovedBody577_70 RemovedBody577_71

def RemovedBody577_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody577_72 RemovedBody577_73

def RemovedBody577_75 : StackLang.HolProg 64 :=
.seq RemovedBody577_69 RemovedBody577_74

def RemovedBody577_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody577_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody577_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 577 5

def RemovedBody577_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody577_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody577_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody577_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody577_85 : StackLang.HolProg 64 :=
.seq RemovedBody577_83 RemovedBody577_84

def RemovedBody577_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody577_87 : StackLang.HolProg 64 :=
.seq RemovedBody577_85 RemovedBody577_86

def RemovedBody577_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_89 : StackLang.HolProg 64 :=
.seq RemovedBody577_87 RemovedBody577_88

def RemovedBody577_90 : StackLang.HolProg 64 :=
.seq RemovedBody577_82 RemovedBody577_89

def RemovedBody577_91 : StackLang.HolProg 64 :=
.seq RemovedBody577_81 RemovedBody577_90

def RemovedBody577_92 : StackLang.HolProg 64 :=
.seq RemovedBody577_80 RemovedBody577_91

def RemovedBody577_93 : StackLang.HolProg 64 :=
.seq RemovedBody577_79 RemovedBody577_92

def RemovedBody577_94 : StackLang.HolProg 64 :=
.seq RemovedBody577_78 RemovedBody577_93

def RemovedBody577_95 : StackLang.HolProg 64 :=
.seq RemovedBody577_77 RemovedBody577_94

def RemovedBody577_96 : StackLang.HolProg 64 :=
.seq RemovedBody577_76 RemovedBody577_95

def RemovedBody577_97 : StackLang.HolProg 64 :=
.seq RemovedBody577_75 RemovedBody577_96

def RemovedBody577_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody577_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody577_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody577_105 : StackLang.HolProg 64 :=
.seq RemovedBody577_103 RemovedBody577_104

def RemovedBody577_106 : StackLang.HolProg 64 :=
.seq RemovedBody577_102 RemovedBody577_105

def RemovedBody577_107 : StackLang.HolProg 64 :=
.seq RemovedBody577_101 RemovedBody577_106

def RemovedBody577_108 : StackLang.HolProg 64 :=
.seq RemovedBody577_100 RemovedBody577_107

def RemovedBody577_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody577_111 : StackLang.HolProg 64 :=
.seq RemovedBody577_109 RemovedBody577_110

def RemovedBody577_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody577_108, 0, 577, 4)) (Sum.inl 572) (some (RemovedBody577_111, 577, 5))

def RemovedBody577_113 : StackLang.HolProg 64 :=
.seq RemovedBody577_99 RemovedBody577_112

def RemovedBody577_114 : StackLang.HolProg 64 :=
.seq RemovedBody577_98 RemovedBody577_113

def RemovedBody577_115 : StackLang.HolProg 64 :=
.seq RemovedBody577_97 RemovedBody577_114

def RemovedBody577_116 : StackLang.HolProg 64 :=
.seq RemovedBody577_68 RemovedBody577_115

def RemovedBody577_117 : StackLang.HolProg 64 :=
.seq RemovedBody577_65 RemovedBody577_116

def RemovedBody577_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody577_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody577_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2020#64)

def RemovedBody577_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody577_125 : StackLang.HolProg 64 :=
.seq RemovedBody577_123 RemovedBody577_124

def RemovedBody577_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody577_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody577_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody577_129 : StackLang.HolProg 64 :=
.seq RemovedBody577_127 RemovedBody577_128

def RemovedBody577_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody577_129 RemovedBody577_130

def RemovedBody577_132 : StackLang.HolProg 64 :=
.seq RemovedBody577_126 RemovedBody577_131

def RemovedBody577_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody577_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody577_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 577 7

def RemovedBody577_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody577_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody577_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody577_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody577_142 : StackLang.HolProg 64 :=
.seq RemovedBody577_140 RemovedBody577_141

def RemovedBody577_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody577_144 : StackLang.HolProg 64 :=
.seq RemovedBody577_142 RemovedBody577_143

def RemovedBody577_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_146 : StackLang.HolProg 64 :=
.seq RemovedBody577_144 RemovedBody577_145

def RemovedBody577_147 : StackLang.HolProg 64 :=
.seq RemovedBody577_139 RemovedBody577_146

def RemovedBody577_148 : StackLang.HolProg 64 :=
.seq RemovedBody577_138 RemovedBody577_147

def RemovedBody577_149 : StackLang.HolProg 64 :=
.seq RemovedBody577_137 RemovedBody577_148

def RemovedBody577_150 : StackLang.HolProg 64 :=
.seq RemovedBody577_136 RemovedBody577_149

def RemovedBody577_151 : StackLang.HolProg 64 :=
.seq RemovedBody577_135 RemovedBody577_150

def RemovedBody577_152 : StackLang.HolProg 64 :=
.seq RemovedBody577_134 RemovedBody577_151

def RemovedBody577_153 : StackLang.HolProg 64 :=
.seq RemovedBody577_133 RemovedBody577_152

def RemovedBody577_154 : StackLang.HolProg 64 :=
.seq RemovedBody577_132 RemovedBody577_153

def RemovedBody577_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody577_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody577_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody577_162 : StackLang.HolProg 64 :=
.seq RemovedBody577_160 RemovedBody577_161

def RemovedBody577_163 : StackLang.HolProg 64 :=
.seq RemovedBody577_159 RemovedBody577_162

def RemovedBody577_164 : StackLang.HolProg 64 :=
.seq RemovedBody577_158 RemovedBody577_163

def RemovedBody577_165 : StackLang.HolProg 64 :=
.seq RemovedBody577_157 RemovedBody577_164

def RemovedBody577_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody577_168 : StackLang.HolProg 64 :=
.seq RemovedBody577_166 RemovedBody577_167

def RemovedBody577_169 : StackLang.HolProg 64 :=
.call (some (RemovedBody577_165, 0, 577, 6)) (Sum.inl 467) (some (RemovedBody577_168, 577, 7))

def RemovedBody577_170 : StackLang.HolProg 64 :=
.seq RemovedBody577_156 RemovedBody577_169

def RemovedBody577_171 : StackLang.HolProg 64 :=
.seq RemovedBody577_155 RemovedBody577_170

def RemovedBody577_172 : StackLang.HolProg 64 :=
.seq RemovedBody577_154 RemovedBody577_171

def RemovedBody577_173 : StackLang.HolProg 64 :=
.seq RemovedBody577_125 RemovedBody577_172

def RemovedBody577_174 : StackLang.HolProg 64 :=
.seq RemovedBody577_122 RemovedBody577_173

def RemovedBody577_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody577_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody577_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2021#64)

def RemovedBody577_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody577_180 : StackLang.HolProg 64 :=
.seq RemovedBody577_178 RemovedBody577_179

def RemovedBody577_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody577_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody577_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody577_184 : StackLang.HolProg 64 :=
.seq RemovedBody577_182 RemovedBody577_183

def RemovedBody577_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody577_184 RemovedBody577_185

def RemovedBody577_187 : StackLang.HolProg 64 :=
.seq RemovedBody577_181 RemovedBody577_186

def RemovedBody577_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody577_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody577_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 577 9

def RemovedBody577_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody577_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody577_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody577_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody577_197 : StackLang.HolProg 64 :=
.seq RemovedBody577_195 RemovedBody577_196

def RemovedBody577_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody577_199 : StackLang.HolProg 64 :=
.seq RemovedBody577_197 RemovedBody577_198

def RemovedBody577_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_201 : StackLang.HolProg 64 :=
.seq RemovedBody577_199 RemovedBody577_200

def RemovedBody577_202 : StackLang.HolProg 64 :=
.seq RemovedBody577_194 RemovedBody577_201

def RemovedBody577_203 : StackLang.HolProg 64 :=
.seq RemovedBody577_193 RemovedBody577_202

def RemovedBody577_204 : StackLang.HolProg 64 :=
.seq RemovedBody577_192 RemovedBody577_203

def RemovedBody577_205 : StackLang.HolProg 64 :=
.seq RemovedBody577_191 RemovedBody577_204

def RemovedBody577_206 : StackLang.HolProg 64 :=
.seq RemovedBody577_190 RemovedBody577_205

def RemovedBody577_207 : StackLang.HolProg 64 :=
.seq RemovedBody577_189 RemovedBody577_206

def RemovedBody577_208 : StackLang.HolProg 64 :=
.seq RemovedBody577_188 RemovedBody577_207

def RemovedBody577_209 : StackLang.HolProg 64 :=
.seq RemovedBody577_187 RemovedBody577_208

def RemovedBody577_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody577_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody577_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_217 : StackLang.HolProg 64 :=
.seq RemovedBody577_215 RemovedBody577_216

def RemovedBody577_218 : StackLang.HolProg 64 :=
.seq RemovedBody577_214 RemovedBody577_217

def RemovedBody577_219 : StackLang.HolProg 64 :=
.seq RemovedBody577_213 RemovedBody577_218

def RemovedBody577_220 : StackLang.HolProg 64 :=
.seq RemovedBody577_212 RemovedBody577_219

def RemovedBody577_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_222 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody577_223 : StackLang.HolProg 64 :=
.seq RemovedBody577_221 RemovedBody577_222

def RemovedBody577_224 : StackLang.HolProg 64 :=
.call (some (RemovedBody577_220, 0, 577, 8)) (Sum.inl 476) (some (RemovedBody577_223, 577, 9))

def RemovedBody577_225 : StackLang.HolProg 64 :=
.seq RemovedBody577_211 RemovedBody577_224

def RemovedBody577_226 : StackLang.HolProg 64 :=
.seq RemovedBody577_210 RemovedBody577_225

def RemovedBody577_227 : StackLang.HolProg 64 :=
.seq RemovedBody577_209 RemovedBody577_226

def RemovedBody577_228 : StackLang.HolProg 64 :=
.seq RemovedBody577_180 RemovedBody577_227

def RemovedBody577_229 : StackLang.HolProg 64 :=
.seq RemovedBody577_177 RemovedBody577_228

def RemovedBody577_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody577_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody577_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2022#64)

def RemovedBody577_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody577_236 : StackLang.HolProg 64 :=
.seq RemovedBody577_234 RemovedBody577_235

def RemovedBody577_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody577_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody577_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody577_240 : StackLang.HolProg 64 :=
.seq RemovedBody577_238 RemovedBody577_239

def RemovedBody577_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_242 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody577_240 RemovedBody577_241

def RemovedBody577_243 : StackLang.HolProg 64 :=
.seq RemovedBody577_237 RemovedBody577_242

def RemovedBody577_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody577_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody577_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 577 11

def RemovedBody577_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody577_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody577_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody577_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody577_253 : StackLang.HolProg 64 :=
.seq RemovedBody577_251 RemovedBody577_252

def RemovedBody577_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody577_255 : StackLang.HolProg 64 :=
.seq RemovedBody577_253 RemovedBody577_254

def RemovedBody577_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_257 : StackLang.HolProg 64 :=
.seq RemovedBody577_255 RemovedBody577_256

def RemovedBody577_258 : StackLang.HolProg 64 :=
.seq RemovedBody577_250 RemovedBody577_257

def RemovedBody577_259 : StackLang.HolProg 64 :=
.seq RemovedBody577_249 RemovedBody577_258

def RemovedBody577_260 : StackLang.HolProg 64 :=
.seq RemovedBody577_248 RemovedBody577_259

def RemovedBody577_261 : StackLang.HolProg 64 :=
.seq RemovedBody577_247 RemovedBody577_260

def RemovedBody577_262 : StackLang.HolProg 64 :=
.seq RemovedBody577_246 RemovedBody577_261

def RemovedBody577_263 : StackLang.HolProg 64 :=
.seq RemovedBody577_245 RemovedBody577_262

def RemovedBody577_264 : StackLang.HolProg 64 :=
.seq RemovedBody577_244 RemovedBody577_263

def RemovedBody577_265 : StackLang.HolProg 64 :=
.seq RemovedBody577_243 RemovedBody577_264

def RemovedBody577_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody577_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody577_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody577_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody577_273 : StackLang.HolProg 64 :=
.seq RemovedBody577_271 RemovedBody577_272

def RemovedBody577_274 : StackLang.HolProg 64 :=
.seq RemovedBody577_270 RemovedBody577_273

def RemovedBody577_275 : StackLang.HolProg 64 :=
.seq RemovedBody577_269 RemovedBody577_274

def RemovedBody577_276 : StackLang.HolProg 64 :=
.seq RemovedBody577_268 RemovedBody577_275

def RemovedBody577_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody577_278 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody577_279 : StackLang.HolProg 64 :=
.seq RemovedBody577_277 RemovedBody577_278

def RemovedBody577_280 : StackLang.HolProg 64 :=
.call (some (RemovedBody577_276, 0, 577, 10)) (Sum.inl 490) (some (RemovedBody577_279, 577, 11))

def RemovedBody577_281 : StackLang.HolProg 64 :=
.seq RemovedBody577_267 RemovedBody577_280

def RemovedBody577_282 : StackLang.HolProg 64 :=
.seq RemovedBody577_266 RemovedBody577_281

def RemovedBody577_283 : StackLang.HolProg 64 :=
.seq RemovedBody577_265 RemovedBody577_282

def RemovedBody577_284 : StackLang.HolProg 64 :=
.seq RemovedBody577_236 RemovedBody577_283

def RemovedBody577_285 : StackLang.HolProg 64 :=
.seq RemovedBody577_233 RemovedBody577_284

def RemovedBody577_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody577_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody577_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody577_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody577_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody577_291 : StackLang.HolProg 64 :=
.seq RemovedBody577_289 RemovedBody577_290

def RemovedBody577_292 : StackLang.HolProg 64 :=
.seq RemovedBody577_288 RemovedBody577_291

def RemovedBody577_293 : StackLang.HolProg 64 :=
.seq RemovedBody577_287 RemovedBody577_292

def RemovedBody577_294 : StackLang.HolProg 64 :=
.seq RemovedBody577_286 RemovedBody577_293

def RemovedBody577_295 : StackLang.HolProg 64 :=
.seq RemovedBody577_285 RemovedBody577_294

def RemovedBody577_296 : StackLang.HolProg 64 :=
.seq RemovedBody577_232 RemovedBody577_295

def RemovedBody577_297 : StackLang.HolProg 64 :=
.seq RemovedBody577_231 RemovedBody577_296

def RemovedBody577_298 : StackLang.HolProg 64 :=
.seq RemovedBody577_230 RemovedBody577_297

def RemovedBody577_299 : StackLang.HolProg 64 :=
.seq RemovedBody577_229 RemovedBody577_298

def RemovedBody577_300 : StackLang.HolProg 64 :=
.seq RemovedBody577_176 RemovedBody577_299

def RemovedBody577_301 : StackLang.HolProg 64 :=
.seq RemovedBody577_175 RemovedBody577_300

def RemovedBody577_302 : StackLang.HolProg 64 :=
.seq RemovedBody577_174 RemovedBody577_301

def RemovedBody577_303 : StackLang.HolProg 64 :=
.seq RemovedBody577_121 RemovedBody577_302

def RemovedBody577_304 : StackLang.HolProg 64 :=
.seq RemovedBody577_120 RemovedBody577_303

def RemovedBody577_305 : StackLang.HolProg 64 :=
.seq RemovedBody577_119 RemovedBody577_304

def RemovedBody577_306 : StackLang.HolProg 64 :=
.seq RemovedBody577_118 RemovedBody577_305

def RemovedBody577_307 : StackLang.HolProg 64 :=
.seq RemovedBody577_117 RemovedBody577_306

def RemovedBody577_308 : StackLang.HolProg 64 :=
.seq RemovedBody577_64 RemovedBody577_307

def RemovedBody577_309 : StackLang.HolProg 64 :=
.seq RemovedBody577_63 RemovedBody577_308

def RemovedBody577_310 : StackLang.HolProg 64 :=
.seq RemovedBody577_62 RemovedBody577_309

def RemovedBody577_311 : StackLang.HolProg 64 :=
.seq RemovedBody577_9 RemovedBody577_310

def RemovedBody577_312 : StackLang.HolProg 64 :=
.seq RemovedBody577_8 RemovedBody577_311

def RemovedBody577_313 : StackLang.HolProg 64 :=
.seq RemovedBody577_7 RemovedBody577_312

def RemovedBody577_314 : StackLang.HolProg 64 :=
.seq RemovedBody577_6 RemovedBody577_313

def Removed577 : Nat × StackLang.HolProg 64 := (577, RemovedBody577_314)
theorem Removed577_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc577 = Removed577 := by
  kernel_rfl
#print axioms Removed577_eq
end InitECandidate.Proofs.BackendStages
