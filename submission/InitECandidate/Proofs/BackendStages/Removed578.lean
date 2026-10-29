import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc578
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody578_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody578_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody578_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody578_3 : StackLang.HolProg 64 :=
.seq RemovedBody578_1 RemovedBody578_2

def RemovedBody578_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody578_3 RemovedBody578_4

def RemovedBody578_6 : StackLang.HolProg 64 :=
.seq RemovedBody578_0 RemovedBody578_5

def RemovedBody578_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody578_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody578_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2023#64)

def RemovedBody578_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody578_13 : StackLang.HolProg 64 :=
.seq RemovedBody578_11 RemovedBody578_12

def RemovedBody578_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody578_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody578_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody578_17 : StackLang.HolProg 64 :=
.seq RemovedBody578_15 RemovedBody578_16

def RemovedBody578_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody578_17 RemovedBody578_18

def RemovedBody578_20 : StackLang.HolProg 64 :=
.seq RemovedBody578_14 RemovedBody578_19

def RemovedBody578_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody578_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody578_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 3

def RemovedBody578_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody578_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody578_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody578_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody578_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody578_30 : StackLang.HolProg 64 :=
.seq RemovedBody578_28 RemovedBody578_29

def RemovedBody578_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody578_32 : StackLang.HolProg 64 :=
.seq RemovedBody578_30 RemovedBody578_31

def RemovedBody578_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody578_34 : StackLang.HolProg 64 :=
.seq RemovedBody578_32 RemovedBody578_33

def RemovedBody578_35 : StackLang.HolProg 64 :=
.seq RemovedBody578_27 RemovedBody578_34

def RemovedBody578_36 : StackLang.HolProg 64 :=
.seq RemovedBody578_26 RemovedBody578_35

def RemovedBody578_37 : StackLang.HolProg 64 :=
.seq RemovedBody578_25 RemovedBody578_36

def RemovedBody578_38 : StackLang.HolProg 64 :=
.seq RemovedBody578_24 RemovedBody578_37

def RemovedBody578_39 : StackLang.HolProg 64 :=
.seq RemovedBody578_23 RemovedBody578_38

def RemovedBody578_40 : StackLang.HolProg 64 :=
.seq RemovedBody578_22 RemovedBody578_39

def RemovedBody578_41 : StackLang.HolProg 64 :=
.seq RemovedBody578_21 RemovedBody578_40

def RemovedBody578_42 : StackLang.HolProg 64 :=
.seq RemovedBody578_20 RemovedBody578_41

def RemovedBody578_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody578_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody578_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody578_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_50 : StackLang.HolProg 64 :=
.seq RemovedBody578_48 RemovedBody578_49

def RemovedBody578_51 : StackLang.HolProg 64 :=
.seq RemovedBody578_47 RemovedBody578_50

def RemovedBody578_52 : StackLang.HolProg 64 :=
.seq RemovedBody578_46 RemovedBody578_51

def RemovedBody578_53 : StackLang.HolProg 64 :=
.seq RemovedBody578_45 RemovedBody578_52

def RemovedBody578_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody578_56 : StackLang.HolProg 64 :=
.seq RemovedBody578_54 RemovedBody578_55

def RemovedBody578_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody578_53, 0, 578, 2)) (Sum.inl 470) (some (RemovedBody578_56, 578, 3))

def RemovedBody578_58 : StackLang.HolProg 64 :=
.seq RemovedBody578_44 RemovedBody578_57

def RemovedBody578_59 : StackLang.HolProg 64 :=
.seq RemovedBody578_43 RemovedBody578_58

def RemovedBody578_60 : StackLang.HolProg 64 :=
.seq RemovedBody578_42 RemovedBody578_59

def RemovedBody578_61 : StackLang.HolProg 64 :=
.seq RemovedBody578_13 RemovedBody578_60

def RemovedBody578_62 : StackLang.HolProg 64 :=
.seq RemovedBody578_10 RemovedBody578_61

def RemovedBody578_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody578_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2024#64)

def RemovedBody578_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody578_68 : StackLang.HolProg 64 :=
.seq RemovedBody578_66 RemovedBody578_67

def RemovedBody578_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody578_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody578_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody578_72 : StackLang.HolProg 64 :=
.seq RemovedBody578_70 RemovedBody578_71

def RemovedBody578_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody578_72 RemovedBody578_73

def RemovedBody578_75 : StackLang.HolProg 64 :=
.seq RemovedBody578_69 RemovedBody578_74

def RemovedBody578_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody578_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody578_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 5

def RemovedBody578_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody578_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody578_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody578_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody578_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody578_85 : StackLang.HolProg 64 :=
.seq RemovedBody578_83 RemovedBody578_84

def RemovedBody578_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody578_87 : StackLang.HolProg 64 :=
.seq RemovedBody578_85 RemovedBody578_86

def RemovedBody578_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody578_89 : StackLang.HolProg 64 :=
.seq RemovedBody578_87 RemovedBody578_88

def RemovedBody578_90 : StackLang.HolProg 64 :=
.seq RemovedBody578_82 RemovedBody578_89

def RemovedBody578_91 : StackLang.HolProg 64 :=
.seq RemovedBody578_81 RemovedBody578_90

def RemovedBody578_92 : StackLang.HolProg 64 :=
.seq RemovedBody578_80 RemovedBody578_91

def RemovedBody578_93 : StackLang.HolProg 64 :=
.seq RemovedBody578_79 RemovedBody578_92

def RemovedBody578_94 : StackLang.HolProg 64 :=
.seq RemovedBody578_78 RemovedBody578_93

def RemovedBody578_95 : StackLang.HolProg 64 :=
.seq RemovedBody578_77 RemovedBody578_94

def RemovedBody578_96 : StackLang.HolProg 64 :=
.seq RemovedBody578_76 RemovedBody578_95

def RemovedBody578_97 : StackLang.HolProg 64 :=
.seq RemovedBody578_75 RemovedBody578_96

def RemovedBody578_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody578_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody578_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody578_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody578_105 : StackLang.HolProg 64 :=
.seq RemovedBody578_103 RemovedBody578_104

def RemovedBody578_106 : StackLang.HolProg 64 :=
.seq RemovedBody578_102 RemovedBody578_105

def RemovedBody578_107 : StackLang.HolProg 64 :=
.seq RemovedBody578_101 RemovedBody578_106

def RemovedBody578_108 : StackLang.HolProg 64 :=
.seq RemovedBody578_100 RemovedBody578_107

def RemovedBody578_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody578_111 : StackLang.HolProg 64 :=
.seq RemovedBody578_109 RemovedBody578_110

def RemovedBody578_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody578_108, 0, 578, 4)) (Sum.inl 572) (some (RemovedBody578_111, 578, 5))

def RemovedBody578_113 : StackLang.HolProg 64 :=
.seq RemovedBody578_99 RemovedBody578_112

def RemovedBody578_114 : StackLang.HolProg 64 :=
.seq RemovedBody578_98 RemovedBody578_113

def RemovedBody578_115 : StackLang.HolProg 64 :=
.seq RemovedBody578_97 RemovedBody578_114

def RemovedBody578_116 : StackLang.HolProg 64 :=
.seq RemovedBody578_68 RemovedBody578_115

def RemovedBody578_117 : StackLang.HolProg 64 :=
.seq RemovedBody578_65 RemovedBody578_116

def RemovedBody578_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody578_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 80#64))

def RemovedBody578_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2025#64)

def RemovedBody578_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody578_125 : StackLang.HolProg 64 :=
.seq RemovedBody578_123 RemovedBody578_124

def RemovedBody578_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody578_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody578_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody578_129 : StackLang.HolProg 64 :=
.seq RemovedBody578_127 RemovedBody578_128

def RemovedBody578_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody578_129 RemovedBody578_130

def RemovedBody578_132 : StackLang.HolProg 64 :=
.seq RemovedBody578_126 RemovedBody578_131

def RemovedBody578_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody578_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody578_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 7

def RemovedBody578_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody578_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody578_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody578_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody578_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody578_142 : StackLang.HolProg 64 :=
.seq RemovedBody578_140 RemovedBody578_141

def RemovedBody578_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody578_144 : StackLang.HolProg 64 :=
.seq RemovedBody578_142 RemovedBody578_143

def RemovedBody578_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody578_146 : StackLang.HolProg 64 :=
.seq RemovedBody578_144 RemovedBody578_145

def RemovedBody578_147 : StackLang.HolProg 64 :=
.seq RemovedBody578_139 RemovedBody578_146

def RemovedBody578_148 : StackLang.HolProg 64 :=
.seq RemovedBody578_138 RemovedBody578_147

def RemovedBody578_149 : StackLang.HolProg 64 :=
.seq RemovedBody578_137 RemovedBody578_148

def RemovedBody578_150 : StackLang.HolProg 64 :=
.seq RemovedBody578_136 RemovedBody578_149

def RemovedBody578_151 : StackLang.HolProg 64 :=
.seq RemovedBody578_135 RemovedBody578_150

def RemovedBody578_152 : StackLang.HolProg 64 :=
.seq RemovedBody578_134 RemovedBody578_151

def RemovedBody578_153 : StackLang.HolProg 64 :=
.seq RemovedBody578_133 RemovedBody578_152

def RemovedBody578_154 : StackLang.HolProg 64 :=
.seq RemovedBody578_132 RemovedBody578_153

def RemovedBody578_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody578_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody578_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody578_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_162 : StackLang.HolProg 64 :=
.seq RemovedBody578_160 RemovedBody578_161

def RemovedBody578_163 : StackLang.HolProg 64 :=
.seq RemovedBody578_159 RemovedBody578_162

def RemovedBody578_164 : StackLang.HolProg 64 :=
.seq RemovedBody578_158 RemovedBody578_163

def RemovedBody578_165 : StackLang.HolProg 64 :=
.seq RemovedBody578_157 RemovedBody578_164

def RemovedBody578_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody578_168 : StackLang.HolProg 64 :=
.seq RemovedBody578_166 RemovedBody578_167

def RemovedBody578_169 : StackLang.HolProg 64 :=
.call (some (RemovedBody578_165, 0, 578, 6)) (Sum.inl 477) (some (RemovedBody578_168, 578, 7))

def RemovedBody578_170 : StackLang.HolProg 64 :=
.seq RemovedBody578_156 RemovedBody578_169

def RemovedBody578_171 : StackLang.HolProg 64 :=
.seq RemovedBody578_155 RemovedBody578_170

def RemovedBody578_172 : StackLang.HolProg 64 :=
.seq RemovedBody578_154 RemovedBody578_171

def RemovedBody578_173 : StackLang.HolProg 64 :=
.seq RemovedBody578_125 RemovedBody578_172

def RemovedBody578_174 : StackLang.HolProg 64 :=
.seq RemovedBody578_122 RemovedBody578_173

def RemovedBody578_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody578_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody578_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2026#64)

def RemovedBody578_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody578_181 : StackLang.HolProg 64 :=
.seq RemovedBody578_179 RemovedBody578_180

def RemovedBody578_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody578_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody578_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody578_185 : StackLang.HolProg 64 :=
.seq RemovedBody578_183 RemovedBody578_184

def RemovedBody578_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody578_185 RemovedBody578_186

def RemovedBody578_188 : StackLang.HolProg 64 :=
.seq RemovedBody578_182 RemovedBody578_187

def RemovedBody578_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody578_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody578_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 9

def RemovedBody578_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody578_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody578_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody578_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody578_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody578_198 : StackLang.HolProg 64 :=
.seq RemovedBody578_196 RemovedBody578_197

def RemovedBody578_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody578_200 : StackLang.HolProg 64 :=
.seq RemovedBody578_198 RemovedBody578_199

def RemovedBody578_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody578_202 : StackLang.HolProg 64 :=
.seq RemovedBody578_200 RemovedBody578_201

def RemovedBody578_203 : StackLang.HolProg 64 :=
.seq RemovedBody578_195 RemovedBody578_202

def RemovedBody578_204 : StackLang.HolProg 64 :=
.seq RemovedBody578_194 RemovedBody578_203

def RemovedBody578_205 : StackLang.HolProg 64 :=
.seq RemovedBody578_193 RemovedBody578_204

def RemovedBody578_206 : StackLang.HolProg 64 :=
.seq RemovedBody578_192 RemovedBody578_205

def RemovedBody578_207 : StackLang.HolProg 64 :=
.seq RemovedBody578_191 RemovedBody578_206

def RemovedBody578_208 : StackLang.HolProg 64 :=
.seq RemovedBody578_190 RemovedBody578_207

def RemovedBody578_209 : StackLang.HolProg 64 :=
.seq RemovedBody578_189 RemovedBody578_208

def RemovedBody578_210 : StackLang.HolProg 64 :=
.seq RemovedBody578_188 RemovedBody578_209

def RemovedBody578_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody578_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody578_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody578_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody578_218 : StackLang.HolProg 64 :=
.seq RemovedBody578_216 RemovedBody578_217

def RemovedBody578_219 : StackLang.HolProg 64 :=
.seq RemovedBody578_215 RemovedBody578_218

def RemovedBody578_220 : StackLang.HolProg 64 :=
.seq RemovedBody578_214 RemovedBody578_219

def RemovedBody578_221 : StackLang.HolProg 64 :=
.seq RemovedBody578_213 RemovedBody578_220

def RemovedBody578_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody578_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody578_224 : StackLang.HolProg 64 :=
.seq RemovedBody578_222 RemovedBody578_223

def RemovedBody578_225 : StackLang.HolProg 64 :=
.call (some (RemovedBody578_221, 0, 578, 8)) (Sum.inl 490) (some (RemovedBody578_224, 578, 9))

def RemovedBody578_226 : StackLang.HolProg 64 :=
.seq RemovedBody578_212 RemovedBody578_225

def RemovedBody578_227 : StackLang.HolProg 64 :=
.seq RemovedBody578_211 RemovedBody578_226

def RemovedBody578_228 : StackLang.HolProg 64 :=
.seq RemovedBody578_210 RemovedBody578_227

def RemovedBody578_229 : StackLang.HolProg 64 :=
.seq RemovedBody578_181 RemovedBody578_228

def RemovedBody578_230 : StackLang.HolProg 64 :=
.seq RemovedBody578_178 RemovedBody578_229

def RemovedBody578_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody578_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody578_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody578_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody578_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody578_236 : StackLang.HolProg 64 :=
.seq RemovedBody578_234 RemovedBody578_235

def RemovedBody578_237 : StackLang.HolProg 64 :=
.seq RemovedBody578_233 RemovedBody578_236

def RemovedBody578_238 : StackLang.HolProg 64 :=
.seq RemovedBody578_232 RemovedBody578_237

def RemovedBody578_239 : StackLang.HolProg 64 :=
.seq RemovedBody578_231 RemovedBody578_238

def RemovedBody578_240 : StackLang.HolProg 64 :=
.seq RemovedBody578_230 RemovedBody578_239

def RemovedBody578_241 : StackLang.HolProg 64 :=
.seq RemovedBody578_177 RemovedBody578_240

def RemovedBody578_242 : StackLang.HolProg 64 :=
.seq RemovedBody578_176 RemovedBody578_241

def RemovedBody578_243 : StackLang.HolProg 64 :=
.seq RemovedBody578_175 RemovedBody578_242

def RemovedBody578_244 : StackLang.HolProg 64 :=
.seq RemovedBody578_174 RemovedBody578_243

def RemovedBody578_245 : StackLang.HolProg 64 :=
.seq RemovedBody578_121 RemovedBody578_244

def RemovedBody578_246 : StackLang.HolProg 64 :=
.seq RemovedBody578_120 RemovedBody578_245

def RemovedBody578_247 : StackLang.HolProg 64 :=
.seq RemovedBody578_119 RemovedBody578_246

def RemovedBody578_248 : StackLang.HolProg 64 :=
.seq RemovedBody578_118 RemovedBody578_247

def RemovedBody578_249 : StackLang.HolProg 64 :=
.seq RemovedBody578_117 RemovedBody578_248

def RemovedBody578_250 : StackLang.HolProg 64 :=
.seq RemovedBody578_64 RemovedBody578_249

def RemovedBody578_251 : StackLang.HolProg 64 :=
.seq RemovedBody578_63 RemovedBody578_250

def RemovedBody578_252 : StackLang.HolProg 64 :=
.seq RemovedBody578_62 RemovedBody578_251

def RemovedBody578_253 : StackLang.HolProg 64 :=
.seq RemovedBody578_9 RemovedBody578_252

def RemovedBody578_254 : StackLang.HolProg 64 :=
.seq RemovedBody578_8 RemovedBody578_253

def RemovedBody578_255 : StackLang.HolProg 64 :=
.seq RemovedBody578_7 RemovedBody578_254

def RemovedBody578_256 : StackLang.HolProg 64 :=
.seq RemovedBody578_6 RemovedBody578_255

def Removed578 : Nat × StackLang.HolProg 64 := (578, RemovedBody578_256)
theorem Removed578_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc578 = Removed578 := by
  kernel_rfl
#print axioms Removed578_eq
end InitECandidate.Proofs.BackendStages
