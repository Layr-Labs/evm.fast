import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc544
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody544_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody544_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody544_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody544_3 : StackLang.HolProg 64 :=
.seq RemovedBody544_1 RemovedBody544_2

def RemovedBody544_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody544_3 RemovedBody544_4

def RemovedBody544_6 : StackLang.HolProg 64 :=
.seq RemovedBody544_0 RemovedBody544_5

def RemovedBody544_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody544_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody544_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1800#64)

def RemovedBody544_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody544_13 : StackLang.HolProg 64 :=
.seq RemovedBody544_11 RemovedBody544_12

def RemovedBody544_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody544_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody544_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody544_17 : StackLang.HolProg 64 :=
.seq RemovedBody544_15 RemovedBody544_16

def RemovedBody544_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody544_17 RemovedBody544_18

def RemovedBody544_20 : StackLang.HolProg 64 :=
.seq RemovedBody544_14 RemovedBody544_19

def RemovedBody544_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody544_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody544_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 544 3

def RemovedBody544_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody544_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody544_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody544_30 : StackLang.HolProg 64 :=
.seq RemovedBody544_28 RemovedBody544_29

def RemovedBody544_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody544_32 : StackLang.HolProg 64 :=
.seq RemovedBody544_30 RemovedBody544_31

def RemovedBody544_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_34 : StackLang.HolProg 64 :=
.seq RemovedBody544_32 RemovedBody544_33

def RemovedBody544_35 : StackLang.HolProg 64 :=
.seq RemovedBody544_27 RemovedBody544_34

def RemovedBody544_36 : StackLang.HolProg 64 :=
.seq RemovedBody544_26 RemovedBody544_35

def RemovedBody544_37 : StackLang.HolProg 64 :=
.seq RemovedBody544_25 RemovedBody544_36

def RemovedBody544_38 : StackLang.HolProg 64 :=
.seq RemovedBody544_24 RemovedBody544_37

def RemovedBody544_39 : StackLang.HolProg 64 :=
.seq RemovedBody544_23 RemovedBody544_38

def RemovedBody544_40 : StackLang.HolProg 64 :=
.seq RemovedBody544_22 RemovedBody544_39

def RemovedBody544_41 : StackLang.HolProg 64 :=
.seq RemovedBody544_21 RemovedBody544_40

def RemovedBody544_42 : StackLang.HolProg 64 :=
.seq RemovedBody544_20 RemovedBody544_41

def RemovedBody544_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody544_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_50 : StackLang.HolProg 64 :=
.seq RemovedBody544_48 RemovedBody544_49

def RemovedBody544_51 : StackLang.HolProg 64 :=
.seq RemovedBody544_47 RemovedBody544_50

def RemovedBody544_52 : StackLang.HolProg 64 :=
.seq RemovedBody544_46 RemovedBody544_51

def RemovedBody544_53 : StackLang.HolProg 64 :=
.seq RemovedBody544_45 RemovedBody544_52

def RemovedBody544_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody544_56 : StackLang.HolProg 64 :=
.seq RemovedBody544_54 RemovedBody544_55

def RemovedBody544_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody544_53, 0, 544, 2)) (Sum.inl 470) (some (RemovedBody544_56, 544, 3))

def RemovedBody544_58 : StackLang.HolProg 64 :=
.seq RemovedBody544_44 RemovedBody544_57

def RemovedBody544_59 : StackLang.HolProg 64 :=
.seq RemovedBody544_43 RemovedBody544_58

def RemovedBody544_60 : StackLang.HolProg 64 :=
.seq RemovedBody544_42 RemovedBody544_59

def RemovedBody544_61 : StackLang.HolProg 64 :=
.seq RemovedBody544_13 RemovedBody544_60

def RemovedBody544_62 : StackLang.HolProg 64 :=
.seq RemovedBody544_10 RemovedBody544_61

def RemovedBody544_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1801#64)

def RemovedBody544_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody544_68 : StackLang.HolProg 64 :=
.seq RemovedBody544_66 RemovedBody544_67

def RemovedBody544_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody544_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody544_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody544_72 : StackLang.HolProg 64 :=
.seq RemovedBody544_70 RemovedBody544_71

def RemovedBody544_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody544_72 RemovedBody544_73

def RemovedBody544_75 : StackLang.HolProg 64 :=
.seq RemovedBody544_69 RemovedBody544_74

def RemovedBody544_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody544_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody544_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 544 5

def RemovedBody544_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody544_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody544_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody544_85 : StackLang.HolProg 64 :=
.seq RemovedBody544_83 RemovedBody544_84

def RemovedBody544_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody544_87 : StackLang.HolProg 64 :=
.seq RemovedBody544_85 RemovedBody544_86

def RemovedBody544_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_89 : StackLang.HolProg 64 :=
.seq RemovedBody544_87 RemovedBody544_88

def RemovedBody544_90 : StackLang.HolProg 64 :=
.seq RemovedBody544_82 RemovedBody544_89

def RemovedBody544_91 : StackLang.HolProg 64 :=
.seq RemovedBody544_81 RemovedBody544_90

def RemovedBody544_92 : StackLang.HolProg 64 :=
.seq RemovedBody544_80 RemovedBody544_91

def RemovedBody544_93 : StackLang.HolProg 64 :=
.seq RemovedBody544_79 RemovedBody544_92

def RemovedBody544_94 : StackLang.HolProg 64 :=
.seq RemovedBody544_78 RemovedBody544_93

def RemovedBody544_95 : StackLang.HolProg 64 :=
.seq RemovedBody544_77 RemovedBody544_94

def RemovedBody544_96 : StackLang.HolProg 64 :=
.seq RemovedBody544_76 RemovedBody544_95

def RemovedBody544_97 : StackLang.HolProg 64 :=
.seq RemovedBody544_75 RemovedBody544_96

def RemovedBody544_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody544_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody544_105 : StackLang.HolProg 64 :=
.seq RemovedBody544_103 RemovedBody544_104

def RemovedBody544_106 : StackLang.HolProg 64 :=
.seq RemovedBody544_102 RemovedBody544_105

def RemovedBody544_107 : StackLang.HolProg 64 :=
.seq RemovedBody544_101 RemovedBody544_106

def RemovedBody544_108 : StackLang.HolProg 64 :=
.seq RemovedBody544_100 RemovedBody544_107

def RemovedBody544_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody544_111 : StackLang.HolProg 64 :=
.seq RemovedBody544_109 RemovedBody544_110

def RemovedBody544_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody544_108, 0, 544, 4)) (Sum.inl 540) (some (RemovedBody544_111, 544, 5))

def RemovedBody544_113 : StackLang.HolProg 64 :=
.seq RemovedBody544_99 RemovedBody544_112

def RemovedBody544_114 : StackLang.HolProg 64 :=
.seq RemovedBody544_98 RemovedBody544_113

def RemovedBody544_115 : StackLang.HolProg 64 :=
.seq RemovedBody544_97 RemovedBody544_114

def RemovedBody544_116 : StackLang.HolProg 64 :=
.seq RemovedBody544_68 RemovedBody544_115

def RemovedBody544_117 : StackLang.HolProg 64 :=
.seq RemovedBody544_65 RemovedBody544_116

def RemovedBody544_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 81#64)

def RemovedBody544_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody544_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_124 : StackLang.HolProg 64 :=
.seq RemovedBody544_122 RemovedBody544_123

def RemovedBody544_125 : StackLang.HolProg 64 :=
.seq RemovedBody544_121 RemovedBody544_124

def RemovedBody544_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody544_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_129 : StackLang.HolProg 64 :=
.seq RemovedBody544_127 RemovedBody544_128

def RemovedBody544_130 : StackLang.HolProg 64 :=
.seq RemovedBody544_126 RemovedBody544_129

def RemovedBody544_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody544_125 RemovedBody544_130

def RemovedBody544_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody544_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody544_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_138 : StackLang.HolProg 64 :=
.seq RemovedBody544_136 RemovedBody544_137

def RemovedBody544_139 : StackLang.HolProg 64 :=
.seq RemovedBody544_135 RemovedBody544_138

def RemovedBody544_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody544_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_143 : StackLang.HolProg 64 :=
.seq RemovedBody544_141 RemovedBody544_142

def RemovedBody544_144 : StackLang.HolProg 64 :=
.seq RemovedBody544_140 RemovedBody544_143

def RemovedBody544_145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody544_139 RemovedBody544_144

def RemovedBody544_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody544_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def RemovedBody544_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody544_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody544_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_154 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody544_155 : StackLang.HolProg 64 :=
.seq RemovedBody544_153 RemovedBody544_154

def RemovedBody544_156 : StackLang.HolProg 64 :=
.seq RemovedBody544_152 RemovedBody544_155

def RemovedBody544_157 : StackLang.HolProg 64 :=
.seq RemovedBody544_151 RemovedBody544_156

def RemovedBody544_158 : StackLang.HolProg 64 :=
.seq RemovedBody544_150 RemovedBody544_157

def RemovedBody544_159 : StackLang.HolProg 64 :=
.seq RemovedBody544_149 RemovedBody544_158

def RemovedBody544_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody544_159 RemovedBody544_160

def RemovedBody544_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 143#64)))

def RemovedBody544_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody544_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def RemovedBody544_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody544_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody544_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_176 : StackLang.HolProg 64 :=
.seq RemovedBody544_174 RemovedBody544_175

def RemovedBody544_177 : StackLang.HolProg 64 :=
.seq RemovedBody544_173 RemovedBody544_176

def RemovedBody544_178 : StackLang.HolProg 64 :=
.seq RemovedBody544_172 RemovedBody544_177

def RemovedBody544_179 : StackLang.HolProg 64 :=
.seq RemovedBody544_171 RemovedBody544_178

def RemovedBody544_180 : StackLang.HolProg 64 :=
.seq RemovedBody544_170 RemovedBody544_179

def RemovedBody544_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody544_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 29#64)

def RemovedBody544_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody544_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_188 : StackLang.HolProg 64 :=
.seq RemovedBody544_186 RemovedBody544_187

def RemovedBody544_189 : StackLang.HolProg 64 :=
.seq RemovedBody544_185 RemovedBody544_188

def RemovedBody544_190 : StackLang.HolProg 64 :=
.seq RemovedBody544_184 RemovedBody544_189

def RemovedBody544_191 : StackLang.HolProg 64 :=
.seq RemovedBody544_183 RemovedBody544_190

def RemovedBody544_192 : StackLang.HolProg 64 :=
.seq RemovedBody544_182 RemovedBody544_191

def RemovedBody544_193 : StackLang.HolProg 64 :=
.seq RemovedBody544_181 RemovedBody544_192

def RemovedBody544_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody544_180 RemovedBody544_193

def RemovedBody544_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody544_198 : StackLang.HolProg 64 :=
.seq RemovedBody544_196 RemovedBody544_197

def RemovedBody544_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1802#64)

def RemovedBody544_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody544_202 : StackLang.HolProg 64 :=
.seq RemovedBody544_200 RemovedBody544_201

def RemovedBody544_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody544_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody544_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody544_206 : StackLang.HolProg 64 :=
.seq RemovedBody544_204 RemovedBody544_205

def RemovedBody544_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_208 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody544_206 RemovedBody544_207

def RemovedBody544_209 : StackLang.HolProg 64 :=
.seq RemovedBody544_203 RemovedBody544_208

def RemovedBody544_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody544_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody544_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 544 7

def RemovedBody544_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody544_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody544_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody544_219 : StackLang.HolProg 64 :=
.seq RemovedBody544_217 RemovedBody544_218

def RemovedBody544_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody544_221 : StackLang.HolProg 64 :=
.seq RemovedBody544_219 RemovedBody544_220

def RemovedBody544_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_223 : StackLang.HolProg 64 :=
.seq RemovedBody544_221 RemovedBody544_222

def RemovedBody544_224 : StackLang.HolProg 64 :=
.seq RemovedBody544_216 RemovedBody544_223

def RemovedBody544_225 : StackLang.HolProg 64 :=
.seq RemovedBody544_215 RemovedBody544_224

def RemovedBody544_226 : StackLang.HolProg 64 :=
.seq RemovedBody544_214 RemovedBody544_225

def RemovedBody544_227 : StackLang.HolProg 64 :=
.seq RemovedBody544_213 RemovedBody544_226

def RemovedBody544_228 : StackLang.HolProg 64 :=
.seq RemovedBody544_212 RemovedBody544_227

def RemovedBody544_229 : StackLang.HolProg 64 :=
.seq RemovedBody544_211 RemovedBody544_228

def RemovedBody544_230 : StackLang.HolProg 64 :=
.seq RemovedBody544_210 RemovedBody544_229

def RemovedBody544_231 : StackLang.HolProg 64 :=
.seq RemovedBody544_209 RemovedBody544_230

def RemovedBody544_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody544_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody544_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody544_241 : StackLang.HolProg 64 :=
.seq RemovedBody544_239 RemovedBody544_240

def RemovedBody544_242 : StackLang.HolProg 64 :=
.seq RemovedBody544_238 RemovedBody544_241

def RemovedBody544_243 : StackLang.HolProg 64 :=
.seq RemovedBody544_237 RemovedBody544_242

def RemovedBody544_244 : StackLang.HolProg 64 :=
.seq RemovedBody544_236 RemovedBody544_243

def RemovedBody544_245 : StackLang.HolProg 64 :=
.seq RemovedBody544_235 RemovedBody544_244

def RemovedBody544_246 : StackLang.HolProg 64 :=
.seq RemovedBody544_234 RemovedBody544_245

def RemovedBody544_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody544_249 : StackLang.HolProg 64 :=
.seq RemovedBody544_247 RemovedBody544_248

def RemovedBody544_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody544_251 : StackLang.HolProg 64 :=
.seq RemovedBody544_249 RemovedBody544_250

def RemovedBody544_252 : StackLang.HolProg 64 :=
.call (some (RemovedBody544_246, 0, 544, 6)) (Sum.inl 93) (some (RemovedBody544_251, 544, 7))

def RemovedBody544_253 : StackLang.HolProg 64 :=
.seq RemovedBody544_233 RemovedBody544_252

def RemovedBody544_254 : StackLang.HolProg 64 :=
.seq RemovedBody544_232 RemovedBody544_253

def RemovedBody544_255 : StackLang.HolProg 64 :=
.seq RemovedBody544_231 RemovedBody544_254

def RemovedBody544_256 : StackLang.HolProg 64 :=
.seq RemovedBody544_202 RemovedBody544_255

def RemovedBody544_257 : StackLang.HolProg 64 :=
.seq RemovedBody544_199 RemovedBody544_256

def RemovedBody544_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody544_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody544_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody544_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody544_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody544_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody544_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2#64)

def RemovedBody544_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody544_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody544_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_272 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody544_273 : StackLang.HolProg 64 :=
.seq RemovedBody544_271 RemovedBody544_272

def RemovedBody544_274 : StackLang.HolProg 64 :=
.seq RemovedBody544_270 RemovedBody544_273

def RemovedBody544_275 : StackLang.HolProg 64 :=
.seq RemovedBody544_269 RemovedBody544_274

def RemovedBody544_276 : StackLang.HolProg 64 :=
.seq RemovedBody544_268 RemovedBody544_275

def RemovedBody544_277 : StackLang.HolProg 64 :=
.seq RemovedBody544_267 RemovedBody544_276

def RemovedBody544_278 : StackLang.HolProg 64 :=
.seq RemovedBody544_266 RemovedBody544_277

def RemovedBody544_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_280 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody544_278 RemovedBody544_279

def RemovedBody544_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody544_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1803#64)

def RemovedBody544_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody544_287 : StackLang.HolProg 64 :=
.seq RemovedBody544_285 RemovedBody544_286

def RemovedBody544_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody544_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody544_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody544_291 : StackLang.HolProg 64 :=
.seq RemovedBody544_289 RemovedBody544_290

def RemovedBody544_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_293 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody544_291 RemovedBody544_292

def RemovedBody544_294 : StackLang.HolProg 64 :=
.seq RemovedBody544_288 RemovedBody544_293

def RemovedBody544_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody544_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody544_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 544 9

def RemovedBody544_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody544_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody544_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody544_304 : StackLang.HolProg 64 :=
.seq RemovedBody544_302 RemovedBody544_303

def RemovedBody544_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody544_306 : StackLang.HolProg 64 :=
.seq RemovedBody544_304 RemovedBody544_305

def RemovedBody544_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_308 : StackLang.HolProg 64 :=
.seq RemovedBody544_306 RemovedBody544_307

def RemovedBody544_309 : StackLang.HolProg 64 :=
.seq RemovedBody544_301 RemovedBody544_308

def RemovedBody544_310 : StackLang.HolProg 64 :=
.seq RemovedBody544_300 RemovedBody544_309

def RemovedBody544_311 : StackLang.HolProg 64 :=
.seq RemovedBody544_299 RemovedBody544_310

def RemovedBody544_312 : StackLang.HolProg 64 :=
.seq RemovedBody544_298 RemovedBody544_311

def RemovedBody544_313 : StackLang.HolProg 64 :=
.seq RemovedBody544_297 RemovedBody544_312

def RemovedBody544_314 : StackLang.HolProg 64 :=
.seq RemovedBody544_296 RemovedBody544_313

def RemovedBody544_315 : StackLang.HolProg 64 :=
.seq RemovedBody544_295 RemovedBody544_314

def RemovedBody544_316 : StackLang.HolProg 64 :=
.seq RemovedBody544_294 RemovedBody544_315

def RemovedBody544_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody544_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_324 : StackLang.HolProg 64 :=
.seq RemovedBody544_322 RemovedBody544_323

def RemovedBody544_325 : StackLang.HolProg 64 :=
.seq RemovedBody544_321 RemovedBody544_324

def RemovedBody544_326 : StackLang.HolProg 64 :=
.seq RemovedBody544_320 RemovedBody544_325

def RemovedBody544_327 : StackLang.HolProg 64 :=
.seq RemovedBody544_319 RemovedBody544_326

def RemovedBody544_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_329 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody544_330 : StackLang.HolProg 64 :=
.seq RemovedBody544_328 RemovedBody544_329

def RemovedBody544_331 : StackLang.HolProg 64 :=
.call (some (RemovedBody544_327, 0, 544, 8)) (Sum.inl 538) (some (RemovedBody544_330, 544, 9))

def RemovedBody544_332 : StackLang.HolProg 64 :=
.seq RemovedBody544_318 RemovedBody544_331

def RemovedBody544_333 : StackLang.HolProg 64 :=
.seq RemovedBody544_317 RemovedBody544_332

def RemovedBody544_334 : StackLang.HolProg 64 :=
.seq RemovedBody544_316 RemovedBody544_333

def RemovedBody544_335 : StackLang.HolProg 64 :=
.seq RemovedBody544_287 RemovedBody544_334

def RemovedBody544_336 : StackLang.HolProg 64 :=
.seq RemovedBody544_284 RemovedBody544_335

def RemovedBody544_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody544_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1804#64)

def RemovedBody544_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody544_343 : StackLang.HolProg 64 :=
.seq RemovedBody544_341 RemovedBody544_342

def RemovedBody544_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody544_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody544_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody544_347 : StackLang.HolProg 64 :=
.seq RemovedBody544_345 RemovedBody544_346

def RemovedBody544_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_349 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody544_347 RemovedBody544_348

def RemovedBody544_350 : StackLang.HolProg 64 :=
.seq RemovedBody544_344 RemovedBody544_349

def RemovedBody544_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody544_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody544_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 544 11

def RemovedBody544_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody544_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody544_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody544_360 : StackLang.HolProg 64 :=
.seq RemovedBody544_358 RemovedBody544_359

def RemovedBody544_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody544_362 : StackLang.HolProg 64 :=
.seq RemovedBody544_360 RemovedBody544_361

def RemovedBody544_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_364 : StackLang.HolProg 64 :=
.seq RemovedBody544_362 RemovedBody544_363

def RemovedBody544_365 : StackLang.HolProg 64 :=
.seq RemovedBody544_357 RemovedBody544_364

def RemovedBody544_366 : StackLang.HolProg 64 :=
.seq RemovedBody544_356 RemovedBody544_365

def RemovedBody544_367 : StackLang.HolProg 64 :=
.seq RemovedBody544_355 RemovedBody544_366

def RemovedBody544_368 : StackLang.HolProg 64 :=
.seq RemovedBody544_354 RemovedBody544_367

def RemovedBody544_369 : StackLang.HolProg 64 :=
.seq RemovedBody544_353 RemovedBody544_368

def RemovedBody544_370 : StackLang.HolProg 64 :=
.seq RemovedBody544_352 RemovedBody544_369

def RemovedBody544_371 : StackLang.HolProg 64 :=
.seq RemovedBody544_351 RemovedBody544_370

def RemovedBody544_372 : StackLang.HolProg 64 :=
.seq RemovedBody544_350 RemovedBody544_371

def RemovedBody544_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody544_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody544_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody544_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody544_380 : StackLang.HolProg 64 :=
.seq RemovedBody544_378 RemovedBody544_379

def RemovedBody544_381 : StackLang.HolProg 64 :=
.seq RemovedBody544_377 RemovedBody544_380

def RemovedBody544_382 : StackLang.HolProg 64 :=
.seq RemovedBody544_376 RemovedBody544_381

def RemovedBody544_383 : StackLang.HolProg 64 :=
.seq RemovedBody544_375 RemovedBody544_382

def RemovedBody544_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody544_385 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody544_386 : StackLang.HolProg 64 :=
.seq RemovedBody544_384 RemovedBody544_385

def RemovedBody544_387 : StackLang.HolProg 64 :=
.call (some (RemovedBody544_383, 0, 544, 10)) (Sum.inl 490) (some (RemovedBody544_386, 544, 11))

def RemovedBody544_388 : StackLang.HolProg 64 :=
.seq RemovedBody544_374 RemovedBody544_387

def RemovedBody544_389 : StackLang.HolProg 64 :=
.seq RemovedBody544_373 RemovedBody544_388

def RemovedBody544_390 : StackLang.HolProg 64 :=
.seq RemovedBody544_372 RemovedBody544_389

def RemovedBody544_391 : StackLang.HolProg 64 :=
.seq RemovedBody544_343 RemovedBody544_390

def RemovedBody544_392 : StackLang.HolProg 64 :=
.seq RemovedBody544_340 RemovedBody544_391

def RemovedBody544_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody544_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody544_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody544_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody544_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody544_398 : StackLang.HolProg 64 :=
.seq RemovedBody544_396 RemovedBody544_397

def RemovedBody544_399 : StackLang.HolProg 64 :=
.seq RemovedBody544_395 RemovedBody544_398

def RemovedBody544_400 : StackLang.HolProg 64 :=
.seq RemovedBody544_394 RemovedBody544_399

def RemovedBody544_401 : StackLang.HolProg 64 :=
.seq RemovedBody544_393 RemovedBody544_400

def RemovedBody544_402 : StackLang.HolProg 64 :=
.seq RemovedBody544_392 RemovedBody544_401

def RemovedBody544_403 : StackLang.HolProg 64 :=
.seq RemovedBody544_339 RemovedBody544_402

def RemovedBody544_404 : StackLang.HolProg 64 :=
.seq RemovedBody544_338 RemovedBody544_403

def RemovedBody544_405 : StackLang.HolProg 64 :=
.seq RemovedBody544_337 RemovedBody544_404

def RemovedBody544_406 : StackLang.HolProg 64 :=
.seq RemovedBody544_336 RemovedBody544_405

def RemovedBody544_407 : StackLang.HolProg 64 :=
.seq RemovedBody544_283 RemovedBody544_406

def RemovedBody544_408 : StackLang.HolProg 64 :=
.seq RemovedBody544_282 RemovedBody544_407

def RemovedBody544_409 : StackLang.HolProg 64 :=
.seq RemovedBody544_281 RemovedBody544_408

def RemovedBody544_410 : StackLang.HolProg 64 :=
.seq RemovedBody544_280 RemovedBody544_409

def RemovedBody544_411 : StackLang.HolProg 64 :=
.seq RemovedBody544_265 RemovedBody544_410

def RemovedBody544_412 : StackLang.HolProg 64 :=
.seq RemovedBody544_264 RemovedBody544_411

def RemovedBody544_413 : StackLang.HolProg 64 :=
.seq RemovedBody544_263 RemovedBody544_412

def RemovedBody544_414 : StackLang.HolProg 64 :=
.seq RemovedBody544_262 RemovedBody544_413

def RemovedBody544_415 : StackLang.HolProg 64 :=
.seq RemovedBody544_261 RemovedBody544_414

def RemovedBody544_416 : StackLang.HolProg 64 :=
.seq RemovedBody544_260 RemovedBody544_415

def RemovedBody544_417 : StackLang.HolProg 64 :=
.seq RemovedBody544_259 RemovedBody544_416

def RemovedBody544_418 : StackLang.HolProg 64 :=
.seq RemovedBody544_258 RemovedBody544_417

def RemovedBody544_419 : StackLang.HolProg 64 :=
.seq RemovedBody544_257 RemovedBody544_418

def RemovedBody544_420 : StackLang.HolProg 64 :=
.seq RemovedBody544_198 RemovedBody544_419

def RemovedBody544_421 : StackLang.HolProg 64 :=
.seq RemovedBody544_195 RemovedBody544_420

def RemovedBody544_422 : StackLang.HolProg 64 :=
.seq RemovedBody544_194 RemovedBody544_421

def RemovedBody544_423 : StackLang.HolProg 64 :=
.seq RemovedBody544_169 RemovedBody544_422

def RemovedBody544_424 : StackLang.HolProg 64 :=
.seq RemovedBody544_168 RemovedBody544_423

def RemovedBody544_425 : StackLang.HolProg 64 :=
.seq RemovedBody544_167 RemovedBody544_424

def RemovedBody544_426 : StackLang.HolProg 64 :=
.seq RemovedBody544_166 RemovedBody544_425

def RemovedBody544_427 : StackLang.HolProg 64 :=
.seq RemovedBody544_165 RemovedBody544_426

def RemovedBody544_428 : StackLang.HolProg 64 :=
.seq RemovedBody544_164 RemovedBody544_427

def RemovedBody544_429 : StackLang.HolProg 64 :=
.seq RemovedBody544_163 RemovedBody544_428

def RemovedBody544_430 : StackLang.HolProg 64 :=
.seq RemovedBody544_162 RemovedBody544_429

def RemovedBody544_431 : StackLang.HolProg 64 :=
.seq RemovedBody544_161 RemovedBody544_430

def RemovedBody544_432 : StackLang.HolProg 64 :=
.seq RemovedBody544_148 RemovedBody544_431

def RemovedBody544_433 : StackLang.HolProg 64 :=
.seq RemovedBody544_147 RemovedBody544_432

def RemovedBody544_434 : StackLang.HolProg 64 :=
.seq RemovedBody544_146 RemovedBody544_433

def RemovedBody544_435 : StackLang.HolProg 64 :=
.seq RemovedBody544_145 RemovedBody544_434

def RemovedBody544_436 : StackLang.HolProg 64 :=
.seq RemovedBody544_134 RemovedBody544_435

def RemovedBody544_437 : StackLang.HolProg 64 :=
.seq RemovedBody544_133 RemovedBody544_436

def RemovedBody544_438 : StackLang.HolProg 64 :=
.seq RemovedBody544_132 RemovedBody544_437

def RemovedBody544_439 : StackLang.HolProg 64 :=
.seq RemovedBody544_131 RemovedBody544_438

def RemovedBody544_440 : StackLang.HolProg 64 :=
.seq RemovedBody544_120 RemovedBody544_439

def RemovedBody544_441 : StackLang.HolProg 64 :=
.seq RemovedBody544_119 RemovedBody544_440

def RemovedBody544_442 : StackLang.HolProg 64 :=
.seq RemovedBody544_118 RemovedBody544_441

def RemovedBody544_443 : StackLang.HolProg 64 :=
.seq RemovedBody544_117 RemovedBody544_442

def RemovedBody544_444 : StackLang.HolProg 64 :=
.seq RemovedBody544_64 RemovedBody544_443

def RemovedBody544_445 : StackLang.HolProg 64 :=
.seq RemovedBody544_63 RemovedBody544_444

def RemovedBody544_446 : StackLang.HolProg 64 :=
.seq RemovedBody544_62 RemovedBody544_445

def RemovedBody544_447 : StackLang.HolProg 64 :=
.seq RemovedBody544_9 RemovedBody544_446

def RemovedBody544_448 : StackLang.HolProg 64 :=
.seq RemovedBody544_8 RemovedBody544_447

def RemovedBody544_449 : StackLang.HolProg 64 :=
.seq RemovedBody544_7 RemovedBody544_448

def RemovedBody544_450 : StackLang.HolProg 64 :=
.seq RemovedBody544_6 RemovedBody544_449

def Removed544 : Nat × StackLang.HolProg 64 := (544, RemovedBody544_450)
theorem Removed544_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc544 = Removed544 := by
  kernel_rfl
#print axioms Removed544_eq
end InitECandidate.Proofs.BackendStages
