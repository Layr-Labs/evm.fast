import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc583
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody583_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody583_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody583_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody583_3 : StackLang.HolProg 64 :=
.seq RemovedBody583_1 RemovedBody583_2

def RemovedBody583_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody583_3 RemovedBody583_4

def RemovedBody583_6 : StackLang.HolProg 64 :=
.seq RemovedBody583_0 RemovedBody583_5

def RemovedBody583_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody583_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody583_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2044#64)

def RemovedBody583_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody583_13 : StackLang.HolProg 64 :=
.seq RemovedBody583_11 RemovedBody583_12

def RemovedBody583_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody583_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody583_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody583_17 : StackLang.HolProg 64 :=
.seq RemovedBody583_15 RemovedBody583_16

def RemovedBody583_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody583_17 RemovedBody583_18

def RemovedBody583_20 : StackLang.HolProg 64 :=
.seq RemovedBody583_14 RemovedBody583_19

def RemovedBody583_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody583_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody583_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 583 3

def RemovedBody583_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody583_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody583_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody583_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody583_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody583_30 : StackLang.HolProg 64 :=
.seq RemovedBody583_28 RemovedBody583_29

def RemovedBody583_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody583_32 : StackLang.HolProg 64 :=
.seq RemovedBody583_30 RemovedBody583_31

def RemovedBody583_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody583_34 : StackLang.HolProg 64 :=
.seq RemovedBody583_32 RemovedBody583_33

def RemovedBody583_35 : StackLang.HolProg 64 :=
.seq RemovedBody583_27 RemovedBody583_34

def RemovedBody583_36 : StackLang.HolProg 64 :=
.seq RemovedBody583_26 RemovedBody583_35

def RemovedBody583_37 : StackLang.HolProg 64 :=
.seq RemovedBody583_25 RemovedBody583_36

def RemovedBody583_38 : StackLang.HolProg 64 :=
.seq RemovedBody583_24 RemovedBody583_37

def RemovedBody583_39 : StackLang.HolProg 64 :=
.seq RemovedBody583_23 RemovedBody583_38

def RemovedBody583_40 : StackLang.HolProg 64 :=
.seq RemovedBody583_22 RemovedBody583_39

def RemovedBody583_41 : StackLang.HolProg 64 :=
.seq RemovedBody583_21 RemovedBody583_40

def RemovedBody583_42 : StackLang.HolProg 64 :=
.seq RemovedBody583_20 RemovedBody583_41

def RemovedBody583_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody583_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody583_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody583_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_50 : StackLang.HolProg 64 :=
.seq RemovedBody583_48 RemovedBody583_49

def RemovedBody583_51 : StackLang.HolProg 64 :=
.seq RemovedBody583_47 RemovedBody583_50

def RemovedBody583_52 : StackLang.HolProg 64 :=
.seq RemovedBody583_46 RemovedBody583_51

def RemovedBody583_53 : StackLang.HolProg 64 :=
.seq RemovedBody583_45 RemovedBody583_52

def RemovedBody583_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody583_56 : StackLang.HolProg 64 :=
.seq RemovedBody583_54 RemovedBody583_55

def RemovedBody583_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody583_53, 0, 583, 2)) (Sum.inl 470) (some (RemovedBody583_56, 583, 3))

def RemovedBody583_58 : StackLang.HolProg 64 :=
.seq RemovedBody583_44 RemovedBody583_57

def RemovedBody583_59 : StackLang.HolProg 64 :=
.seq RemovedBody583_43 RemovedBody583_58

def RemovedBody583_60 : StackLang.HolProg 64 :=
.seq RemovedBody583_42 RemovedBody583_59

def RemovedBody583_61 : StackLang.HolProg 64 :=
.seq RemovedBody583_13 RemovedBody583_60

def RemovedBody583_62 : StackLang.HolProg 64 :=
.seq RemovedBody583_10 RemovedBody583_61

def RemovedBody583_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody583_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2045#64)

def RemovedBody583_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody583_68 : StackLang.HolProg 64 :=
.seq RemovedBody583_66 RemovedBody583_67

def RemovedBody583_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody583_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody583_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody583_72 : StackLang.HolProg 64 :=
.seq RemovedBody583_70 RemovedBody583_71

def RemovedBody583_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody583_72 RemovedBody583_73

def RemovedBody583_75 : StackLang.HolProg 64 :=
.seq RemovedBody583_69 RemovedBody583_74

def RemovedBody583_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody583_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody583_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 583 5

def RemovedBody583_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody583_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody583_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody583_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody583_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody583_85 : StackLang.HolProg 64 :=
.seq RemovedBody583_83 RemovedBody583_84

def RemovedBody583_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody583_87 : StackLang.HolProg 64 :=
.seq RemovedBody583_85 RemovedBody583_86

def RemovedBody583_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody583_89 : StackLang.HolProg 64 :=
.seq RemovedBody583_87 RemovedBody583_88

def RemovedBody583_90 : StackLang.HolProg 64 :=
.seq RemovedBody583_82 RemovedBody583_89

def RemovedBody583_91 : StackLang.HolProg 64 :=
.seq RemovedBody583_81 RemovedBody583_90

def RemovedBody583_92 : StackLang.HolProg 64 :=
.seq RemovedBody583_80 RemovedBody583_91

def RemovedBody583_93 : StackLang.HolProg 64 :=
.seq RemovedBody583_79 RemovedBody583_92

def RemovedBody583_94 : StackLang.HolProg 64 :=
.seq RemovedBody583_78 RemovedBody583_93

def RemovedBody583_95 : StackLang.HolProg 64 :=
.seq RemovedBody583_77 RemovedBody583_94

def RemovedBody583_96 : StackLang.HolProg 64 :=
.seq RemovedBody583_76 RemovedBody583_95

def RemovedBody583_97 : StackLang.HolProg 64 :=
.seq RemovedBody583_75 RemovedBody583_96

def RemovedBody583_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody583_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody583_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody583_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody583_105 : StackLang.HolProg 64 :=
.seq RemovedBody583_103 RemovedBody583_104

def RemovedBody583_106 : StackLang.HolProg 64 :=
.seq RemovedBody583_102 RemovedBody583_105

def RemovedBody583_107 : StackLang.HolProg 64 :=
.seq RemovedBody583_101 RemovedBody583_106

def RemovedBody583_108 : StackLang.HolProg 64 :=
.seq RemovedBody583_100 RemovedBody583_107

def RemovedBody583_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody583_111 : StackLang.HolProg 64 :=
.seq RemovedBody583_109 RemovedBody583_110

def RemovedBody583_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody583_108, 0, 583, 4)) (Sum.inl 572) (some (RemovedBody583_111, 583, 5))

def RemovedBody583_113 : StackLang.HolProg 64 :=
.seq RemovedBody583_99 RemovedBody583_112

def RemovedBody583_114 : StackLang.HolProg 64 :=
.seq RemovedBody583_98 RemovedBody583_113

def RemovedBody583_115 : StackLang.HolProg 64 :=
.seq RemovedBody583_97 RemovedBody583_114

def RemovedBody583_116 : StackLang.HolProg 64 :=
.seq RemovedBody583_68 RemovedBody583_115

def RemovedBody583_117 : StackLang.HolProg 64 :=
.seq RemovedBody583_65 RemovedBody583_116

def RemovedBody583_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody583_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def RemovedBody583_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2046#64)

def RemovedBody583_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody583_125 : StackLang.HolProg 64 :=
.seq RemovedBody583_123 RemovedBody583_124

def RemovedBody583_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody583_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody583_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody583_129 : StackLang.HolProg 64 :=
.seq RemovedBody583_127 RemovedBody583_128

def RemovedBody583_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody583_129 RemovedBody583_130

def RemovedBody583_132 : StackLang.HolProg 64 :=
.seq RemovedBody583_126 RemovedBody583_131

def RemovedBody583_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody583_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody583_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 583 7

def RemovedBody583_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody583_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody583_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody583_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody583_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody583_142 : StackLang.HolProg 64 :=
.seq RemovedBody583_140 RemovedBody583_141

def RemovedBody583_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody583_144 : StackLang.HolProg 64 :=
.seq RemovedBody583_142 RemovedBody583_143

def RemovedBody583_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody583_146 : StackLang.HolProg 64 :=
.seq RemovedBody583_144 RemovedBody583_145

def RemovedBody583_147 : StackLang.HolProg 64 :=
.seq RemovedBody583_139 RemovedBody583_146

def RemovedBody583_148 : StackLang.HolProg 64 :=
.seq RemovedBody583_138 RemovedBody583_147

def RemovedBody583_149 : StackLang.HolProg 64 :=
.seq RemovedBody583_137 RemovedBody583_148

def RemovedBody583_150 : StackLang.HolProg 64 :=
.seq RemovedBody583_136 RemovedBody583_149

def RemovedBody583_151 : StackLang.HolProg 64 :=
.seq RemovedBody583_135 RemovedBody583_150

def RemovedBody583_152 : StackLang.HolProg 64 :=
.seq RemovedBody583_134 RemovedBody583_151

def RemovedBody583_153 : StackLang.HolProg 64 :=
.seq RemovedBody583_133 RemovedBody583_152

def RemovedBody583_154 : StackLang.HolProg 64 :=
.seq RemovedBody583_132 RemovedBody583_153

def RemovedBody583_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody583_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody583_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody583_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_162 : StackLang.HolProg 64 :=
.seq RemovedBody583_160 RemovedBody583_161

def RemovedBody583_163 : StackLang.HolProg 64 :=
.seq RemovedBody583_159 RemovedBody583_162

def RemovedBody583_164 : StackLang.HolProg 64 :=
.seq RemovedBody583_158 RemovedBody583_163

def RemovedBody583_165 : StackLang.HolProg 64 :=
.seq RemovedBody583_157 RemovedBody583_164

def RemovedBody583_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody583_168 : StackLang.HolProg 64 :=
.seq RemovedBody583_166 RemovedBody583_167

def RemovedBody583_169 : StackLang.HolProg 64 :=
.call (some (RemovedBody583_165, 0, 583, 6)) (Sum.inl 477) (some (RemovedBody583_168, 583, 7))

def RemovedBody583_170 : StackLang.HolProg 64 :=
.seq RemovedBody583_156 RemovedBody583_169

def RemovedBody583_171 : StackLang.HolProg 64 :=
.seq RemovedBody583_155 RemovedBody583_170

def RemovedBody583_172 : StackLang.HolProg 64 :=
.seq RemovedBody583_154 RemovedBody583_171

def RemovedBody583_173 : StackLang.HolProg 64 :=
.seq RemovedBody583_125 RemovedBody583_172

def RemovedBody583_174 : StackLang.HolProg 64 :=
.seq RemovedBody583_122 RemovedBody583_173

def RemovedBody583_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody583_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody583_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2047#64)

def RemovedBody583_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody583_181 : StackLang.HolProg 64 :=
.seq RemovedBody583_179 RemovedBody583_180

def RemovedBody583_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody583_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody583_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody583_185 : StackLang.HolProg 64 :=
.seq RemovedBody583_183 RemovedBody583_184

def RemovedBody583_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody583_185 RemovedBody583_186

def RemovedBody583_188 : StackLang.HolProg 64 :=
.seq RemovedBody583_182 RemovedBody583_187

def RemovedBody583_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody583_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody583_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 583 9

def RemovedBody583_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody583_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody583_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody583_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody583_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody583_198 : StackLang.HolProg 64 :=
.seq RemovedBody583_196 RemovedBody583_197

def RemovedBody583_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody583_200 : StackLang.HolProg 64 :=
.seq RemovedBody583_198 RemovedBody583_199

def RemovedBody583_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody583_202 : StackLang.HolProg 64 :=
.seq RemovedBody583_200 RemovedBody583_201

def RemovedBody583_203 : StackLang.HolProg 64 :=
.seq RemovedBody583_195 RemovedBody583_202

def RemovedBody583_204 : StackLang.HolProg 64 :=
.seq RemovedBody583_194 RemovedBody583_203

def RemovedBody583_205 : StackLang.HolProg 64 :=
.seq RemovedBody583_193 RemovedBody583_204

def RemovedBody583_206 : StackLang.HolProg 64 :=
.seq RemovedBody583_192 RemovedBody583_205

def RemovedBody583_207 : StackLang.HolProg 64 :=
.seq RemovedBody583_191 RemovedBody583_206

def RemovedBody583_208 : StackLang.HolProg 64 :=
.seq RemovedBody583_190 RemovedBody583_207

def RemovedBody583_209 : StackLang.HolProg 64 :=
.seq RemovedBody583_189 RemovedBody583_208

def RemovedBody583_210 : StackLang.HolProg 64 :=
.seq RemovedBody583_188 RemovedBody583_209

def RemovedBody583_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody583_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody583_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody583_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody583_218 : StackLang.HolProg 64 :=
.seq RemovedBody583_216 RemovedBody583_217

def RemovedBody583_219 : StackLang.HolProg 64 :=
.seq RemovedBody583_215 RemovedBody583_218

def RemovedBody583_220 : StackLang.HolProg 64 :=
.seq RemovedBody583_214 RemovedBody583_219

def RemovedBody583_221 : StackLang.HolProg 64 :=
.seq RemovedBody583_213 RemovedBody583_220

def RemovedBody583_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody583_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody583_224 : StackLang.HolProg 64 :=
.seq RemovedBody583_222 RemovedBody583_223

def RemovedBody583_225 : StackLang.HolProg 64 :=
.call (some (RemovedBody583_221, 0, 583, 8)) (Sum.inl 490) (some (RemovedBody583_224, 583, 9))

def RemovedBody583_226 : StackLang.HolProg 64 :=
.seq RemovedBody583_212 RemovedBody583_225

def RemovedBody583_227 : StackLang.HolProg 64 :=
.seq RemovedBody583_211 RemovedBody583_226

def RemovedBody583_228 : StackLang.HolProg 64 :=
.seq RemovedBody583_210 RemovedBody583_227

def RemovedBody583_229 : StackLang.HolProg 64 :=
.seq RemovedBody583_181 RemovedBody583_228

def RemovedBody583_230 : StackLang.HolProg 64 :=
.seq RemovedBody583_178 RemovedBody583_229

def RemovedBody583_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody583_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody583_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody583_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody583_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody583_236 : StackLang.HolProg 64 :=
.seq RemovedBody583_234 RemovedBody583_235

def RemovedBody583_237 : StackLang.HolProg 64 :=
.seq RemovedBody583_233 RemovedBody583_236

def RemovedBody583_238 : StackLang.HolProg 64 :=
.seq RemovedBody583_232 RemovedBody583_237

def RemovedBody583_239 : StackLang.HolProg 64 :=
.seq RemovedBody583_231 RemovedBody583_238

def RemovedBody583_240 : StackLang.HolProg 64 :=
.seq RemovedBody583_230 RemovedBody583_239

def RemovedBody583_241 : StackLang.HolProg 64 :=
.seq RemovedBody583_177 RemovedBody583_240

def RemovedBody583_242 : StackLang.HolProg 64 :=
.seq RemovedBody583_176 RemovedBody583_241

def RemovedBody583_243 : StackLang.HolProg 64 :=
.seq RemovedBody583_175 RemovedBody583_242

def RemovedBody583_244 : StackLang.HolProg 64 :=
.seq RemovedBody583_174 RemovedBody583_243

def RemovedBody583_245 : StackLang.HolProg 64 :=
.seq RemovedBody583_121 RemovedBody583_244

def RemovedBody583_246 : StackLang.HolProg 64 :=
.seq RemovedBody583_120 RemovedBody583_245

def RemovedBody583_247 : StackLang.HolProg 64 :=
.seq RemovedBody583_119 RemovedBody583_246

def RemovedBody583_248 : StackLang.HolProg 64 :=
.seq RemovedBody583_118 RemovedBody583_247

def RemovedBody583_249 : StackLang.HolProg 64 :=
.seq RemovedBody583_117 RemovedBody583_248

def RemovedBody583_250 : StackLang.HolProg 64 :=
.seq RemovedBody583_64 RemovedBody583_249

def RemovedBody583_251 : StackLang.HolProg 64 :=
.seq RemovedBody583_63 RemovedBody583_250

def RemovedBody583_252 : StackLang.HolProg 64 :=
.seq RemovedBody583_62 RemovedBody583_251

def RemovedBody583_253 : StackLang.HolProg 64 :=
.seq RemovedBody583_9 RemovedBody583_252

def RemovedBody583_254 : StackLang.HolProg 64 :=
.seq RemovedBody583_8 RemovedBody583_253

def RemovedBody583_255 : StackLang.HolProg 64 :=
.seq RemovedBody583_7 RemovedBody583_254

def RemovedBody583_256 : StackLang.HolProg 64 :=
.seq RemovedBody583_6 RemovedBody583_255

def Removed583 : Nat × StackLang.HolProg 64 := (583, RemovedBody583_256)
theorem Removed583_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc583 = Removed583 := by
  kernel_rfl
#print axioms Removed583_eq
end InitECandidate.Proofs.BackendStages
