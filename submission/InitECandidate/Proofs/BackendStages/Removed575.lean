import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc575
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody575_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody575_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody575_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody575_3 : StackLang.HolProg 64 :=
.seq RemovedBody575_1 RemovedBody575_2

def RemovedBody575_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody575_3 RemovedBody575_4

def RemovedBody575_6 : StackLang.HolProg 64 :=
.seq RemovedBody575_0 RemovedBody575_5

def RemovedBody575_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody575_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody575_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2003#64)

def RemovedBody575_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody575_13 : StackLang.HolProg 64 :=
.seq RemovedBody575_11 RemovedBody575_12

def RemovedBody575_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody575_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody575_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody575_17 : StackLang.HolProg 64 :=
.seq RemovedBody575_15 RemovedBody575_16

def RemovedBody575_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody575_17 RemovedBody575_18

def RemovedBody575_20 : StackLang.HolProg 64 :=
.seq RemovedBody575_14 RemovedBody575_19

def RemovedBody575_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody575_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody575_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 575 3

def RemovedBody575_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody575_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody575_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody575_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody575_30 : StackLang.HolProg 64 :=
.seq RemovedBody575_28 RemovedBody575_29

def RemovedBody575_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody575_32 : StackLang.HolProg 64 :=
.seq RemovedBody575_30 RemovedBody575_31

def RemovedBody575_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_34 : StackLang.HolProg 64 :=
.seq RemovedBody575_32 RemovedBody575_33

def RemovedBody575_35 : StackLang.HolProg 64 :=
.seq RemovedBody575_27 RemovedBody575_34

def RemovedBody575_36 : StackLang.HolProg 64 :=
.seq RemovedBody575_26 RemovedBody575_35

def RemovedBody575_37 : StackLang.HolProg 64 :=
.seq RemovedBody575_25 RemovedBody575_36

def RemovedBody575_38 : StackLang.HolProg 64 :=
.seq RemovedBody575_24 RemovedBody575_37

def RemovedBody575_39 : StackLang.HolProg 64 :=
.seq RemovedBody575_23 RemovedBody575_38

def RemovedBody575_40 : StackLang.HolProg 64 :=
.seq RemovedBody575_22 RemovedBody575_39

def RemovedBody575_41 : StackLang.HolProg 64 :=
.seq RemovedBody575_21 RemovedBody575_40

def RemovedBody575_42 : StackLang.HolProg 64 :=
.seq RemovedBody575_20 RemovedBody575_41

def RemovedBody575_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody575_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody575_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_50 : StackLang.HolProg 64 :=
.seq RemovedBody575_48 RemovedBody575_49

def RemovedBody575_51 : StackLang.HolProg 64 :=
.seq RemovedBody575_47 RemovedBody575_50

def RemovedBody575_52 : StackLang.HolProg 64 :=
.seq RemovedBody575_46 RemovedBody575_51

def RemovedBody575_53 : StackLang.HolProg 64 :=
.seq RemovedBody575_45 RemovedBody575_52

def RemovedBody575_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody575_56 : StackLang.HolProg 64 :=
.seq RemovedBody575_54 RemovedBody575_55

def RemovedBody575_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody575_53, 0, 575, 2)) (Sum.inl 470) (some (RemovedBody575_56, 575, 3))

def RemovedBody575_58 : StackLang.HolProg 64 :=
.seq RemovedBody575_44 RemovedBody575_57

def RemovedBody575_59 : StackLang.HolProg 64 :=
.seq RemovedBody575_43 RemovedBody575_58

def RemovedBody575_60 : StackLang.HolProg 64 :=
.seq RemovedBody575_42 RemovedBody575_59

def RemovedBody575_61 : StackLang.HolProg 64 :=
.seq RemovedBody575_13 RemovedBody575_60

def RemovedBody575_62 : StackLang.HolProg 64 :=
.seq RemovedBody575_10 RemovedBody575_61

def RemovedBody575_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody575_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2004#64)

def RemovedBody575_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody575_68 : StackLang.HolProg 64 :=
.seq RemovedBody575_66 RemovedBody575_67

def RemovedBody575_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody575_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody575_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody575_72 : StackLang.HolProg 64 :=
.seq RemovedBody575_70 RemovedBody575_71

def RemovedBody575_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody575_72 RemovedBody575_73

def RemovedBody575_75 : StackLang.HolProg 64 :=
.seq RemovedBody575_69 RemovedBody575_74

def RemovedBody575_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody575_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody575_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 575 5

def RemovedBody575_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody575_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody575_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody575_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody575_85 : StackLang.HolProg 64 :=
.seq RemovedBody575_83 RemovedBody575_84

def RemovedBody575_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody575_87 : StackLang.HolProg 64 :=
.seq RemovedBody575_85 RemovedBody575_86

def RemovedBody575_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_89 : StackLang.HolProg 64 :=
.seq RemovedBody575_87 RemovedBody575_88

def RemovedBody575_90 : StackLang.HolProg 64 :=
.seq RemovedBody575_82 RemovedBody575_89

def RemovedBody575_91 : StackLang.HolProg 64 :=
.seq RemovedBody575_81 RemovedBody575_90

def RemovedBody575_92 : StackLang.HolProg 64 :=
.seq RemovedBody575_80 RemovedBody575_91

def RemovedBody575_93 : StackLang.HolProg 64 :=
.seq RemovedBody575_79 RemovedBody575_92

def RemovedBody575_94 : StackLang.HolProg 64 :=
.seq RemovedBody575_78 RemovedBody575_93

def RemovedBody575_95 : StackLang.HolProg 64 :=
.seq RemovedBody575_77 RemovedBody575_94

def RemovedBody575_96 : StackLang.HolProg 64 :=
.seq RemovedBody575_76 RemovedBody575_95

def RemovedBody575_97 : StackLang.HolProg 64 :=
.seq RemovedBody575_75 RemovedBody575_96

def RemovedBody575_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody575_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody575_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody575_105 : StackLang.HolProg 64 :=
.seq RemovedBody575_103 RemovedBody575_104

def RemovedBody575_106 : StackLang.HolProg 64 :=
.seq RemovedBody575_102 RemovedBody575_105

def RemovedBody575_107 : StackLang.HolProg 64 :=
.seq RemovedBody575_101 RemovedBody575_106

def RemovedBody575_108 : StackLang.HolProg 64 :=
.seq RemovedBody575_100 RemovedBody575_107

def RemovedBody575_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody575_111 : StackLang.HolProg 64 :=
.seq RemovedBody575_109 RemovedBody575_110

def RemovedBody575_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody575_108, 0, 575, 4)) (Sum.inl 572) (some (RemovedBody575_111, 575, 5))

def RemovedBody575_113 : StackLang.HolProg 64 :=
.seq RemovedBody575_99 RemovedBody575_112

def RemovedBody575_114 : StackLang.HolProg 64 :=
.seq RemovedBody575_98 RemovedBody575_113

def RemovedBody575_115 : StackLang.HolProg 64 :=
.seq RemovedBody575_97 RemovedBody575_114

def RemovedBody575_116 : StackLang.HolProg 64 :=
.seq RemovedBody575_68 RemovedBody575_115

def RemovedBody575_117 : StackLang.HolProg 64 :=
.seq RemovedBody575_65 RemovedBody575_116

def RemovedBody575_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody575_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def RemovedBody575_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2005#64)

def RemovedBody575_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody575_125 : StackLang.HolProg 64 :=
.seq RemovedBody575_123 RemovedBody575_124

def RemovedBody575_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody575_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody575_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody575_129 : StackLang.HolProg 64 :=
.seq RemovedBody575_127 RemovedBody575_128

def RemovedBody575_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody575_129 RemovedBody575_130

def RemovedBody575_132 : StackLang.HolProg 64 :=
.seq RemovedBody575_126 RemovedBody575_131

def RemovedBody575_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody575_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody575_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 575 7

def RemovedBody575_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody575_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody575_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody575_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody575_142 : StackLang.HolProg 64 :=
.seq RemovedBody575_140 RemovedBody575_141

def RemovedBody575_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody575_144 : StackLang.HolProg 64 :=
.seq RemovedBody575_142 RemovedBody575_143

def RemovedBody575_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_146 : StackLang.HolProg 64 :=
.seq RemovedBody575_144 RemovedBody575_145

def RemovedBody575_147 : StackLang.HolProg 64 :=
.seq RemovedBody575_139 RemovedBody575_146

def RemovedBody575_148 : StackLang.HolProg 64 :=
.seq RemovedBody575_138 RemovedBody575_147

def RemovedBody575_149 : StackLang.HolProg 64 :=
.seq RemovedBody575_137 RemovedBody575_148

def RemovedBody575_150 : StackLang.HolProg 64 :=
.seq RemovedBody575_136 RemovedBody575_149

def RemovedBody575_151 : StackLang.HolProg 64 :=
.seq RemovedBody575_135 RemovedBody575_150

def RemovedBody575_152 : StackLang.HolProg 64 :=
.seq RemovedBody575_134 RemovedBody575_151

def RemovedBody575_153 : StackLang.HolProg 64 :=
.seq RemovedBody575_133 RemovedBody575_152

def RemovedBody575_154 : StackLang.HolProg 64 :=
.seq RemovedBody575_132 RemovedBody575_153

def RemovedBody575_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody575_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody575_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody575_162 : StackLang.HolProg 64 :=
.seq RemovedBody575_160 RemovedBody575_161

def RemovedBody575_163 : StackLang.HolProg 64 :=
.seq RemovedBody575_159 RemovedBody575_162

def RemovedBody575_164 : StackLang.HolProg 64 :=
.seq RemovedBody575_158 RemovedBody575_163

def RemovedBody575_165 : StackLang.HolProg 64 :=
.seq RemovedBody575_157 RemovedBody575_164

def RemovedBody575_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody575_168 : StackLang.HolProg 64 :=
.seq RemovedBody575_166 RemovedBody575_167

def RemovedBody575_169 : StackLang.HolProg 64 :=
.call (some (RemovedBody575_165, 0, 575, 6)) (Sum.inl 280) (some (RemovedBody575_168, 575, 7))

def RemovedBody575_170 : StackLang.HolProg 64 :=
.seq RemovedBody575_156 RemovedBody575_169

def RemovedBody575_171 : StackLang.HolProg 64 :=
.seq RemovedBody575_155 RemovedBody575_170

def RemovedBody575_172 : StackLang.HolProg 64 :=
.seq RemovedBody575_154 RemovedBody575_171

def RemovedBody575_173 : StackLang.HolProg 64 :=
.seq RemovedBody575_125 RemovedBody575_172

def RemovedBody575_174 : StackLang.HolProg 64 :=
.seq RemovedBody575_122 RemovedBody575_173

def RemovedBody575_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody575_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody575_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2006#64)

def RemovedBody575_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody575_180 : StackLang.HolProg 64 :=
.seq RemovedBody575_178 RemovedBody575_179

def RemovedBody575_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody575_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody575_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody575_184 : StackLang.HolProg 64 :=
.seq RemovedBody575_182 RemovedBody575_183

def RemovedBody575_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody575_184 RemovedBody575_185

def RemovedBody575_187 : StackLang.HolProg 64 :=
.seq RemovedBody575_181 RemovedBody575_186

def RemovedBody575_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody575_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody575_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 575 9

def RemovedBody575_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody575_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody575_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody575_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody575_197 : StackLang.HolProg 64 :=
.seq RemovedBody575_195 RemovedBody575_196

def RemovedBody575_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody575_199 : StackLang.HolProg 64 :=
.seq RemovedBody575_197 RemovedBody575_198

def RemovedBody575_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_201 : StackLang.HolProg 64 :=
.seq RemovedBody575_199 RemovedBody575_200

def RemovedBody575_202 : StackLang.HolProg 64 :=
.seq RemovedBody575_194 RemovedBody575_201

def RemovedBody575_203 : StackLang.HolProg 64 :=
.seq RemovedBody575_193 RemovedBody575_202

def RemovedBody575_204 : StackLang.HolProg 64 :=
.seq RemovedBody575_192 RemovedBody575_203

def RemovedBody575_205 : StackLang.HolProg 64 :=
.seq RemovedBody575_191 RemovedBody575_204

def RemovedBody575_206 : StackLang.HolProg 64 :=
.seq RemovedBody575_190 RemovedBody575_205

def RemovedBody575_207 : StackLang.HolProg 64 :=
.seq RemovedBody575_189 RemovedBody575_206

def RemovedBody575_208 : StackLang.HolProg 64 :=
.seq RemovedBody575_188 RemovedBody575_207

def RemovedBody575_209 : StackLang.HolProg 64 :=
.seq RemovedBody575_187 RemovedBody575_208

def RemovedBody575_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody575_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody575_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_217 : StackLang.HolProg 64 :=
.seq RemovedBody575_215 RemovedBody575_216

def RemovedBody575_218 : StackLang.HolProg 64 :=
.seq RemovedBody575_214 RemovedBody575_217

def RemovedBody575_219 : StackLang.HolProg 64 :=
.seq RemovedBody575_213 RemovedBody575_218

def RemovedBody575_220 : StackLang.HolProg 64 :=
.seq RemovedBody575_212 RemovedBody575_219

def RemovedBody575_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_222 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody575_223 : StackLang.HolProg 64 :=
.seq RemovedBody575_221 RemovedBody575_222

def RemovedBody575_224 : StackLang.HolProg 64 :=
.call (some (RemovedBody575_220, 0, 575, 8)) (Sum.inl 476) (some (RemovedBody575_223, 575, 9))

def RemovedBody575_225 : StackLang.HolProg 64 :=
.seq RemovedBody575_211 RemovedBody575_224

def RemovedBody575_226 : StackLang.HolProg 64 :=
.seq RemovedBody575_210 RemovedBody575_225

def RemovedBody575_227 : StackLang.HolProg 64 :=
.seq RemovedBody575_209 RemovedBody575_226

def RemovedBody575_228 : StackLang.HolProg 64 :=
.seq RemovedBody575_180 RemovedBody575_227

def RemovedBody575_229 : StackLang.HolProg 64 :=
.seq RemovedBody575_177 RemovedBody575_228

def RemovedBody575_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody575_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody575_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2007#64)

def RemovedBody575_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody575_236 : StackLang.HolProg 64 :=
.seq RemovedBody575_234 RemovedBody575_235

def RemovedBody575_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody575_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody575_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody575_240 : StackLang.HolProg 64 :=
.seq RemovedBody575_238 RemovedBody575_239

def RemovedBody575_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_242 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody575_240 RemovedBody575_241

def RemovedBody575_243 : StackLang.HolProg 64 :=
.seq RemovedBody575_237 RemovedBody575_242

def RemovedBody575_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody575_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody575_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 575 11

def RemovedBody575_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody575_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody575_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody575_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody575_253 : StackLang.HolProg 64 :=
.seq RemovedBody575_251 RemovedBody575_252

def RemovedBody575_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody575_255 : StackLang.HolProg 64 :=
.seq RemovedBody575_253 RemovedBody575_254

def RemovedBody575_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_257 : StackLang.HolProg 64 :=
.seq RemovedBody575_255 RemovedBody575_256

def RemovedBody575_258 : StackLang.HolProg 64 :=
.seq RemovedBody575_250 RemovedBody575_257

def RemovedBody575_259 : StackLang.HolProg 64 :=
.seq RemovedBody575_249 RemovedBody575_258

def RemovedBody575_260 : StackLang.HolProg 64 :=
.seq RemovedBody575_248 RemovedBody575_259

def RemovedBody575_261 : StackLang.HolProg 64 :=
.seq RemovedBody575_247 RemovedBody575_260

def RemovedBody575_262 : StackLang.HolProg 64 :=
.seq RemovedBody575_246 RemovedBody575_261

def RemovedBody575_263 : StackLang.HolProg 64 :=
.seq RemovedBody575_245 RemovedBody575_262

def RemovedBody575_264 : StackLang.HolProg 64 :=
.seq RemovedBody575_244 RemovedBody575_263

def RemovedBody575_265 : StackLang.HolProg 64 :=
.seq RemovedBody575_243 RemovedBody575_264

def RemovedBody575_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody575_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody575_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody575_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody575_273 : StackLang.HolProg 64 :=
.seq RemovedBody575_271 RemovedBody575_272

def RemovedBody575_274 : StackLang.HolProg 64 :=
.seq RemovedBody575_270 RemovedBody575_273

def RemovedBody575_275 : StackLang.HolProg 64 :=
.seq RemovedBody575_269 RemovedBody575_274

def RemovedBody575_276 : StackLang.HolProg 64 :=
.seq RemovedBody575_268 RemovedBody575_275

def RemovedBody575_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody575_278 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody575_279 : StackLang.HolProg 64 :=
.seq RemovedBody575_277 RemovedBody575_278

def RemovedBody575_280 : StackLang.HolProg 64 :=
.call (some (RemovedBody575_276, 0, 575, 10)) (Sum.inl 490) (some (RemovedBody575_279, 575, 11))

def RemovedBody575_281 : StackLang.HolProg 64 :=
.seq RemovedBody575_267 RemovedBody575_280

def RemovedBody575_282 : StackLang.HolProg 64 :=
.seq RemovedBody575_266 RemovedBody575_281

def RemovedBody575_283 : StackLang.HolProg 64 :=
.seq RemovedBody575_265 RemovedBody575_282

def RemovedBody575_284 : StackLang.HolProg 64 :=
.seq RemovedBody575_236 RemovedBody575_283

def RemovedBody575_285 : StackLang.HolProg 64 :=
.seq RemovedBody575_233 RemovedBody575_284

def RemovedBody575_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody575_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody575_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody575_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody575_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody575_291 : StackLang.HolProg 64 :=
.seq RemovedBody575_289 RemovedBody575_290

def RemovedBody575_292 : StackLang.HolProg 64 :=
.seq RemovedBody575_288 RemovedBody575_291

def RemovedBody575_293 : StackLang.HolProg 64 :=
.seq RemovedBody575_287 RemovedBody575_292

def RemovedBody575_294 : StackLang.HolProg 64 :=
.seq RemovedBody575_286 RemovedBody575_293

def RemovedBody575_295 : StackLang.HolProg 64 :=
.seq RemovedBody575_285 RemovedBody575_294

def RemovedBody575_296 : StackLang.HolProg 64 :=
.seq RemovedBody575_232 RemovedBody575_295

def RemovedBody575_297 : StackLang.HolProg 64 :=
.seq RemovedBody575_231 RemovedBody575_296

def RemovedBody575_298 : StackLang.HolProg 64 :=
.seq RemovedBody575_230 RemovedBody575_297

def RemovedBody575_299 : StackLang.HolProg 64 :=
.seq RemovedBody575_229 RemovedBody575_298

def RemovedBody575_300 : StackLang.HolProg 64 :=
.seq RemovedBody575_176 RemovedBody575_299

def RemovedBody575_301 : StackLang.HolProg 64 :=
.seq RemovedBody575_175 RemovedBody575_300

def RemovedBody575_302 : StackLang.HolProg 64 :=
.seq RemovedBody575_174 RemovedBody575_301

def RemovedBody575_303 : StackLang.HolProg 64 :=
.seq RemovedBody575_121 RemovedBody575_302

def RemovedBody575_304 : StackLang.HolProg 64 :=
.seq RemovedBody575_120 RemovedBody575_303

def RemovedBody575_305 : StackLang.HolProg 64 :=
.seq RemovedBody575_119 RemovedBody575_304

def RemovedBody575_306 : StackLang.HolProg 64 :=
.seq RemovedBody575_118 RemovedBody575_305

def RemovedBody575_307 : StackLang.HolProg 64 :=
.seq RemovedBody575_117 RemovedBody575_306

def RemovedBody575_308 : StackLang.HolProg 64 :=
.seq RemovedBody575_64 RemovedBody575_307

def RemovedBody575_309 : StackLang.HolProg 64 :=
.seq RemovedBody575_63 RemovedBody575_308

def RemovedBody575_310 : StackLang.HolProg 64 :=
.seq RemovedBody575_62 RemovedBody575_309

def RemovedBody575_311 : StackLang.HolProg 64 :=
.seq RemovedBody575_9 RemovedBody575_310

def RemovedBody575_312 : StackLang.HolProg 64 :=
.seq RemovedBody575_8 RemovedBody575_311

def RemovedBody575_313 : StackLang.HolProg 64 :=
.seq RemovedBody575_7 RemovedBody575_312

def RemovedBody575_314 : StackLang.HolProg 64 :=
.seq RemovedBody575_6 RemovedBody575_313

def Removed575 : Nat × StackLang.HolProg 64 := (575, RemovedBody575_314)
theorem Removed575_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc575 = Removed575 := by
  kernel_rfl
#print axioms Removed575_eq
end InitECandidate.Proofs.BackendStages
