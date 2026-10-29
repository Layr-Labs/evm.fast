import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc542
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody542_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody542_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody542_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody542_3 : StackLang.HolProg 64 :=
.seq RemovedBody542_1 RemovedBody542_2

def RemovedBody542_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody542_3 RemovedBody542_4

def RemovedBody542_6 : StackLang.HolProg 64 :=
.seq RemovedBody542_0 RemovedBody542_5

def RemovedBody542_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody542_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody542_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1790#64)

def RemovedBody542_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody542_13 : StackLang.HolProg 64 :=
.seq RemovedBody542_11 RemovedBody542_12

def RemovedBody542_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody542_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody542_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody542_17 : StackLang.HolProg 64 :=
.seq RemovedBody542_15 RemovedBody542_16

def RemovedBody542_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody542_17 RemovedBody542_18

def RemovedBody542_20 : StackLang.HolProg 64 :=
.seq RemovedBody542_14 RemovedBody542_19

def RemovedBody542_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody542_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody542_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 3

def RemovedBody542_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody542_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody542_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody542_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody542_30 : StackLang.HolProg 64 :=
.seq RemovedBody542_28 RemovedBody542_29

def RemovedBody542_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody542_32 : StackLang.HolProg 64 :=
.seq RemovedBody542_30 RemovedBody542_31

def RemovedBody542_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_34 : StackLang.HolProg 64 :=
.seq RemovedBody542_32 RemovedBody542_33

def RemovedBody542_35 : StackLang.HolProg 64 :=
.seq RemovedBody542_27 RemovedBody542_34

def RemovedBody542_36 : StackLang.HolProg 64 :=
.seq RemovedBody542_26 RemovedBody542_35

def RemovedBody542_37 : StackLang.HolProg 64 :=
.seq RemovedBody542_25 RemovedBody542_36

def RemovedBody542_38 : StackLang.HolProg 64 :=
.seq RemovedBody542_24 RemovedBody542_37

def RemovedBody542_39 : StackLang.HolProg 64 :=
.seq RemovedBody542_23 RemovedBody542_38

def RemovedBody542_40 : StackLang.HolProg 64 :=
.seq RemovedBody542_22 RemovedBody542_39

def RemovedBody542_41 : StackLang.HolProg 64 :=
.seq RemovedBody542_21 RemovedBody542_40

def RemovedBody542_42 : StackLang.HolProg 64 :=
.seq RemovedBody542_20 RemovedBody542_41

def RemovedBody542_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody542_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody542_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_50 : StackLang.HolProg 64 :=
.seq RemovedBody542_48 RemovedBody542_49

def RemovedBody542_51 : StackLang.HolProg 64 :=
.seq RemovedBody542_47 RemovedBody542_50

def RemovedBody542_52 : StackLang.HolProg 64 :=
.seq RemovedBody542_46 RemovedBody542_51

def RemovedBody542_53 : StackLang.HolProg 64 :=
.seq RemovedBody542_45 RemovedBody542_52

def RemovedBody542_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody542_56 : StackLang.HolProg 64 :=
.seq RemovedBody542_54 RemovedBody542_55

def RemovedBody542_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody542_53, 0, 542, 2)) (Sum.inl 470) (some (RemovedBody542_56, 542, 3))

def RemovedBody542_58 : StackLang.HolProg 64 :=
.seq RemovedBody542_44 RemovedBody542_57

def RemovedBody542_59 : StackLang.HolProg 64 :=
.seq RemovedBody542_43 RemovedBody542_58

def RemovedBody542_60 : StackLang.HolProg 64 :=
.seq RemovedBody542_42 RemovedBody542_59

def RemovedBody542_61 : StackLang.HolProg 64 :=
.seq RemovedBody542_13 RemovedBody542_60

def RemovedBody542_62 : StackLang.HolProg 64 :=
.seq RemovedBody542_10 RemovedBody542_61

def RemovedBody542_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody542_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1791#64)

def RemovedBody542_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody542_68 : StackLang.HolProg 64 :=
.seq RemovedBody542_66 RemovedBody542_67

def RemovedBody542_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody542_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody542_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody542_72 : StackLang.HolProg 64 :=
.seq RemovedBody542_70 RemovedBody542_71

def RemovedBody542_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody542_72 RemovedBody542_73

def RemovedBody542_75 : StackLang.HolProg 64 :=
.seq RemovedBody542_69 RemovedBody542_74

def RemovedBody542_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody542_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody542_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 5

def RemovedBody542_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody542_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody542_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody542_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody542_85 : StackLang.HolProg 64 :=
.seq RemovedBody542_83 RemovedBody542_84

def RemovedBody542_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody542_87 : StackLang.HolProg 64 :=
.seq RemovedBody542_85 RemovedBody542_86

def RemovedBody542_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_89 : StackLang.HolProg 64 :=
.seq RemovedBody542_87 RemovedBody542_88

def RemovedBody542_90 : StackLang.HolProg 64 :=
.seq RemovedBody542_82 RemovedBody542_89

def RemovedBody542_91 : StackLang.HolProg 64 :=
.seq RemovedBody542_81 RemovedBody542_90

def RemovedBody542_92 : StackLang.HolProg 64 :=
.seq RemovedBody542_80 RemovedBody542_91

def RemovedBody542_93 : StackLang.HolProg 64 :=
.seq RemovedBody542_79 RemovedBody542_92

def RemovedBody542_94 : StackLang.HolProg 64 :=
.seq RemovedBody542_78 RemovedBody542_93

def RemovedBody542_95 : StackLang.HolProg 64 :=
.seq RemovedBody542_77 RemovedBody542_94

def RemovedBody542_96 : StackLang.HolProg 64 :=
.seq RemovedBody542_76 RemovedBody542_95

def RemovedBody542_97 : StackLang.HolProg 64 :=
.seq RemovedBody542_75 RemovedBody542_96

def RemovedBody542_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody542_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody542_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody542_105 : StackLang.HolProg 64 :=
.seq RemovedBody542_103 RemovedBody542_104

def RemovedBody542_106 : StackLang.HolProg 64 :=
.seq RemovedBody542_102 RemovedBody542_105

def RemovedBody542_107 : StackLang.HolProg 64 :=
.seq RemovedBody542_101 RemovedBody542_106

def RemovedBody542_108 : StackLang.HolProg 64 :=
.seq RemovedBody542_100 RemovedBody542_107

def RemovedBody542_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody542_111 : StackLang.HolProg 64 :=
.seq RemovedBody542_109 RemovedBody542_110

def RemovedBody542_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody542_108, 0, 542, 4)) (Sum.inl 540) (some (RemovedBody542_111, 542, 5))

def RemovedBody542_113 : StackLang.HolProg 64 :=
.seq RemovedBody542_99 RemovedBody542_112

def RemovedBody542_114 : StackLang.HolProg 64 :=
.seq RemovedBody542_98 RemovedBody542_113

def RemovedBody542_115 : StackLang.HolProg 64 :=
.seq RemovedBody542_97 RemovedBody542_114

def RemovedBody542_116 : StackLang.HolProg 64 :=
.seq RemovedBody542_68 RemovedBody542_115

def RemovedBody542_117 : StackLang.HolProg 64 :=
.seq RemovedBody542_65 RemovedBody542_116

def RemovedBody542_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody542_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody542_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1792#64)

def RemovedBody542_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody542_123 : StackLang.HolProg 64 :=
.seq RemovedBody542_121 RemovedBody542_122

def RemovedBody542_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody542_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody542_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody542_127 : StackLang.HolProg 64 :=
.seq RemovedBody542_125 RemovedBody542_126

def RemovedBody542_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody542_127 RemovedBody542_128

def RemovedBody542_130 : StackLang.HolProg 64 :=
.seq RemovedBody542_124 RemovedBody542_129

def RemovedBody542_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody542_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody542_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 7

def RemovedBody542_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody542_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody542_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody542_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody542_140 : StackLang.HolProg 64 :=
.seq RemovedBody542_138 RemovedBody542_139

def RemovedBody542_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody542_142 : StackLang.HolProg 64 :=
.seq RemovedBody542_140 RemovedBody542_141

def RemovedBody542_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_144 : StackLang.HolProg 64 :=
.seq RemovedBody542_142 RemovedBody542_143

def RemovedBody542_145 : StackLang.HolProg 64 :=
.seq RemovedBody542_137 RemovedBody542_144

def RemovedBody542_146 : StackLang.HolProg 64 :=
.seq RemovedBody542_136 RemovedBody542_145

def RemovedBody542_147 : StackLang.HolProg 64 :=
.seq RemovedBody542_135 RemovedBody542_146

def RemovedBody542_148 : StackLang.HolProg 64 :=
.seq RemovedBody542_134 RemovedBody542_147

def RemovedBody542_149 : StackLang.HolProg 64 :=
.seq RemovedBody542_133 RemovedBody542_148

def RemovedBody542_150 : StackLang.HolProg 64 :=
.seq RemovedBody542_132 RemovedBody542_149

def RemovedBody542_151 : StackLang.HolProg 64 :=
.seq RemovedBody542_131 RemovedBody542_150

def RemovedBody542_152 : StackLang.HolProg 64 :=
.seq RemovedBody542_130 RemovedBody542_151

def RemovedBody542_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody542_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody542_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody542_160 : StackLang.HolProg 64 :=
.seq RemovedBody542_158 RemovedBody542_159

def RemovedBody542_161 : StackLang.HolProg 64 :=
.seq RemovedBody542_157 RemovedBody542_160

def RemovedBody542_162 : StackLang.HolProg 64 :=
.seq RemovedBody542_156 RemovedBody542_161

def RemovedBody542_163 : StackLang.HolProg 64 :=
.seq RemovedBody542_155 RemovedBody542_162

def RemovedBody542_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody542_166 : StackLang.HolProg 64 :=
.seq RemovedBody542_164 RemovedBody542_165

def RemovedBody542_167 : StackLang.HolProg 64 :=
.call (some (RemovedBody542_163, 0, 542, 6)) (Sum.inl 541) (some (RemovedBody542_166, 542, 7))

def RemovedBody542_168 : StackLang.HolProg 64 :=
.seq RemovedBody542_154 RemovedBody542_167

def RemovedBody542_169 : StackLang.HolProg 64 :=
.seq RemovedBody542_153 RemovedBody542_168

def RemovedBody542_170 : StackLang.HolProg 64 :=
.seq RemovedBody542_152 RemovedBody542_169

def RemovedBody542_171 : StackLang.HolProg 64 :=
.seq RemovedBody542_123 RemovedBody542_170

def RemovedBody542_172 : StackLang.HolProg 64 :=
.seq RemovedBody542_120 RemovedBody542_171

def RemovedBody542_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody542_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody542_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody542_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody542_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody542_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody542_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody542_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody542_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody542_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody542_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody542_187 : StackLang.HolProg 64 :=
.seq RemovedBody542_185 RemovedBody542_186

def RemovedBody542_188 : StackLang.HolProg 64 :=
.seq RemovedBody542_184 RemovedBody542_187

def RemovedBody542_189 : StackLang.HolProg 64 :=
.seq RemovedBody542_183 RemovedBody542_188

def RemovedBody542_190 : StackLang.HolProg 64 :=
.seq RemovedBody542_182 RemovedBody542_189

def RemovedBody542_191 : StackLang.HolProg 64 :=
.seq RemovedBody542_181 RemovedBody542_190

def RemovedBody542_192 : StackLang.HolProg 64 :=
.seq RemovedBody542_180 RemovedBody542_191

def RemovedBody542_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody542_192 RemovedBody542_193

def RemovedBody542_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody542_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody542_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody542_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody542_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody542_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody542_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody542_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody542_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody542_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody542_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody542_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1793#64)

def RemovedBody542_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody542_215 : StackLang.HolProg 64 :=
.seq RemovedBody542_213 RemovedBody542_214

def RemovedBody542_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody542_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody542_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody542_219 : StackLang.HolProg 64 :=
.seq RemovedBody542_217 RemovedBody542_218

def RemovedBody542_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_221 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody542_219 RemovedBody542_220

def RemovedBody542_222 : StackLang.HolProg 64 :=
.seq RemovedBody542_216 RemovedBody542_221

def RemovedBody542_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody542_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody542_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 9

def RemovedBody542_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody542_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody542_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody542_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody542_232 : StackLang.HolProg 64 :=
.seq RemovedBody542_230 RemovedBody542_231

def RemovedBody542_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody542_234 : StackLang.HolProg 64 :=
.seq RemovedBody542_232 RemovedBody542_233

def RemovedBody542_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_236 : StackLang.HolProg 64 :=
.seq RemovedBody542_234 RemovedBody542_235

def RemovedBody542_237 : StackLang.HolProg 64 :=
.seq RemovedBody542_229 RemovedBody542_236

def RemovedBody542_238 : StackLang.HolProg 64 :=
.seq RemovedBody542_228 RemovedBody542_237

def RemovedBody542_239 : StackLang.HolProg 64 :=
.seq RemovedBody542_227 RemovedBody542_238

def RemovedBody542_240 : StackLang.HolProg 64 :=
.seq RemovedBody542_226 RemovedBody542_239

def RemovedBody542_241 : StackLang.HolProg 64 :=
.seq RemovedBody542_225 RemovedBody542_240

def RemovedBody542_242 : StackLang.HolProg 64 :=
.seq RemovedBody542_224 RemovedBody542_241

def RemovedBody542_243 : StackLang.HolProg 64 :=
.seq RemovedBody542_223 RemovedBody542_242

def RemovedBody542_244 : StackLang.HolProg 64 :=
.seq RemovedBody542_222 RemovedBody542_243

def RemovedBody542_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody542_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody542_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_252 : StackLang.HolProg 64 :=
.seq RemovedBody542_250 RemovedBody542_251

def RemovedBody542_253 : StackLang.HolProg 64 :=
.seq RemovedBody542_249 RemovedBody542_252

def RemovedBody542_254 : StackLang.HolProg 64 :=
.seq RemovedBody542_248 RemovedBody542_253

def RemovedBody542_255 : StackLang.HolProg 64 :=
.seq RemovedBody542_247 RemovedBody542_254

def RemovedBody542_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_257 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody542_258 : StackLang.HolProg 64 :=
.seq RemovedBody542_256 RemovedBody542_257

def RemovedBody542_259 : StackLang.HolProg 64 :=
.call (some (RemovedBody542_255, 0, 542, 8)) (Sum.inl 476) (some (RemovedBody542_258, 542, 9))

def RemovedBody542_260 : StackLang.HolProg 64 :=
.seq RemovedBody542_246 RemovedBody542_259

def RemovedBody542_261 : StackLang.HolProg 64 :=
.seq RemovedBody542_245 RemovedBody542_260

def RemovedBody542_262 : StackLang.HolProg 64 :=
.seq RemovedBody542_244 RemovedBody542_261

def RemovedBody542_263 : StackLang.HolProg 64 :=
.seq RemovedBody542_215 RemovedBody542_262

def RemovedBody542_264 : StackLang.HolProg 64 :=
.seq RemovedBody542_212 RemovedBody542_263

def RemovedBody542_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody542_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody542_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1794#64)

def RemovedBody542_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody542_271 : StackLang.HolProg 64 :=
.seq RemovedBody542_269 RemovedBody542_270

def RemovedBody542_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody542_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody542_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody542_275 : StackLang.HolProg 64 :=
.seq RemovedBody542_273 RemovedBody542_274

def RemovedBody542_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_277 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody542_275 RemovedBody542_276

def RemovedBody542_278 : StackLang.HolProg 64 :=
.seq RemovedBody542_272 RemovedBody542_277

def RemovedBody542_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody542_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody542_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 11

def RemovedBody542_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody542_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody542_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody542_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody542_288 : StackLang.HolProg 64 :=
.seq RemovedBody542_286 RemovedBody542_287

def RemovedBody542_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody542_290 : StackLang.HolProg 64 :=
.seq RemovedBody542_288 RemovedBody542_289

def RemovedBody542_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_292 : StackLang.HolProg 64 :=
.seq RemovedBody542_290 RemovedBody542_291

def RemovedBody542_293 : StackLang.HolProg 64 :=
.seq RemovedBody542_285 RemovedBody542_292

def RemovedBody542_294 : StackLang.HolProg 64 :=
.seq RemovedBody542_284 RemovedBody542_293

def RemovedBody542_295 : StackLang.HolProg 64 :=
.seq RemovedBody542_283 RemovedBody542_294

def RemovedBody542_296 : StackLang.HolProg 64 :=
.seq RemovedBody542_282 RemovedBody542_295

def RemovedBody542_297 : StackLang.HolProg 64 :=
.seq RemovedBody542_281 RemovedBody542_296

def RemovedBody542_298 : StackLang.HolProg 64 :=
.seq RemovedBody542_280 RemovedBody542_297

def RemovedBody542_299 : StackLang.HolProg 64 :=
.seq RemovedBody542_279 RemovedBody542_298

def RemovedBody542_300 : StackLang.HolProg 64 :=
.seq RemovedBody542_278 RemovedBody542_299

def RemovedBody542_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody542_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody542_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody542_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody542_308 : StackLang.HolProg 64 :=
.seq RemovedBody542_306 RemovedBody542_307

def RemovedBody542_309 : StackLang.HolProg 64 :=
.seq RemovedBody542_305 RemovedBody542_308

def RemovedBody542_310 : StackLang.HolProg 64 :=
.seq RemovedBody542_304 RemovedBody542_309

def RemovedBody542_311 : StackLang.HolProg 64 :=
.seq RemovedBody542_303 RemovedBody542_310

def RemovedBody542_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody542_313 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody542_314 : StackLang.HolProg 64 :=
.seq RemovedBody542_312 RemovedBody542_313

def RemovedBody542_315 : StackLang.HolProg 64 :=
.call (some (RemovedBody542_311, 0, 542, 10)) (Sum.inl 490) (some (RemovedBody542_314, 542, 11))

def RemovedBody542_316 : StackLang.HolProg 64 :=
.seq RemovedBody542_302 RemovedBody542_315

def RemovedBody542_317 : StackLang.HolProg 64 :=
.seq RemovedBody542_301 RemovedBody542_316

def RemovedBody542_318 : StackLang.HolProg 64 :=
.seq RemovedBody542_300 RemovedBody542_317

def RemovedBody542_319 : StackLang.HolProg 64 :=
.seq RemovedBody542_271 RemovedBody542_318

def RemovedBody542_320 : StackLang.HolProg 64 :=
.seq RemovedBody542_268 RemovedBody542_319

def RemovedBody542_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody542_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody542_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody542_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody542_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody542_326 : StackLang.HolProg 64 :=
.seq RemovedBody542_324 RemovedBody542_325

def RemovedBody542_327 : StackLang.HolProg 64 :=
.seq RemovedBody542_323 RemovedBody542_326

def RemovedBody542_328 : StackLang.HolProg 64 :=
.seq RemovedBody542_322 RemovedBody542_327

def RemovedBody542_329 : StackLang.HolProg 64 :=
.seq RemovedBody542_321 RemovedBody542_328

def RemovedBody542_330 : StackLang.HolProg 64 :=
.seq RemovedBody542_320 RemovedBody542_329

def RemovedBody542_331 : StackLang.HolProg 64 :=
.seq RemovedBody542_267 RemovedBody542_330

def RemovedBody542_332 : StackLang.HolProg 64 :=
.seq RemovedBody542_266 RemovedBody542_331

def RemovedBody542_333 : StackLang.HolProg 64 :=
.seq RemovedBody542_265 RemovedBody542_332

def RemovedBody542_334 : StackLang.HolProg 64 :=
.seq RemovedBody542_264 RemovedBody542_333

def RemovedBody542_335 : StackLang.HolProg 64 :=
.seq RemovedBody542_211 RemovedBody542_334

def RemovedBody542_336 : StackLang.HolProg 64 :=
.seq RemovedBody542_210 RemovedBody542_335

def RemovedBody542_337 : StackLang.HolProg 64 :=
.seq RemovedBody542_209 RemovedBody542_336

def RemovedBody542_338 : StackLang.HolProg 64 :=
.seq RemovedBody542_208 RemovedBody542_337

def RemovedBody542_339 : StackLang.HolProg 64 :=
.seq RemovedBody542_207 RemovedBody542_338

def RemovedBody542_340 : StackLang.HolProg 64 :=
.seq RemovedBody542_206 RemovedBody542_339

def RemovedBody542_341 : StackLang.HolProg 64 :=
.seq RemovedBody542_205 RemovedBody542_340

def RemovedBody542_342 : StackLang.HolProg 64 :=
.seq RemovedBody542_204 RemovedBody542_341

def RemovedBody542_343 : StackLang.HolProg 64 :=
.seq RemovedBody542_203 RemovedBody542_342

def RemovedBody542_344 : StackLang.HolProg 64 :=
.seq RemovedBody542_202 RemovedBody542_343

def RemovedBody542_345 : StackLang.HolProg 64 :=
.seq RemovedBody542_201 RemovedBody542_344

def RemovedBody542_346 : StackLang.HolProg 64 :=
.seq RemovedBody542_200 RemovedBody542_345

def RemovedBody542_347 : StackLang.HolProg 64 :=
.seq RemovedBody542_199 RemovedBody542_346

def RemovedBody542_348 : StackLang.HolProg 64 :=
.seq RemovedBody542_198 RemovedBody542_347

def RemovedBody542_349 : StackLang.HolProg 64 :=
.seq RemovedBody542_197 RemovedBody542_348

def RemovedBody542_350 : StackLang.HolProg 64 :=
.seq RemovedBody542_196 RemovedBody542_349

def RemovedBody542_351 : StackLang.HolProg 64 :=
.seq RemovedBody542_195 RemovedBody542_350

def RemovedBody542_352 : StackLang.HolProg 64 :=
.seq RemovedBody542_194 RemovedBody542_351

def RemovedBody542_353 : StackLang.HolProg 64 :=
.seq RemovedBody542_179 RemovedBody542_352

def RemovedBody542_354 : StackLang.HolProg 64 :=
.seq RemovedBody542_178 RemovedBody542_353

def RemovedBody542_355 : StackLang.HolProg 64 :=
.seq RemovedBody542_177 RemovedBody542_354

def RemovedBody542_356 : StackLang.HolProg 64 :=
.seq RemovedBody542_176 RemovedBody542_355

def RemovedBody542_357 : StackLang.HolProg 64 :=
.seq RemovedBody542_175 RemovedBody542_356

def RemovedBody542_358 : StackLang.HolProg 64 :=
.seq RemovedBody542_174 RemovedBody542_357

def RemovedBody542_359 : StackLang.HolProg 64 :=
.seq RemovedBody542_173 RemovedBody542_358

def RemovedBody542_360 : StackLang.HolProg 64 :=
.seq RemovedBody542_172 RemovedBody542_359

def RemovedBody542_361 : StackLang.HolProg 64 :=
.seq RemovedBody542_119 RemovedBody542_360

def RemovedBody542_362 : StackLang.HolProg 64 :=
.seq RemovedBody542_118 RemovedBody542_361

def RemovedBody542_363 : StackLang.HolProg 64 :=
.seq RemovedBody542_117 RemovedBody542_362

def RemovedBody542_364 : StackLang.HolProg 64 :=
.seq RemovedBody542_64 RemovedBody542_363

def RemovedBody542_365 : StackLang.HolProg 64 :=
.seq RemovedBody542_63 RemovedBody542_364

def RemovedBody542_366 : StackLang.HolProg 64 :=
.seq RemovedBody542_62 RemovedBody542_365

def RemovedBody542_367 : StackLang.HolProg 64 :=
.seq RemovedBody542_9 RemovedBody542_366

def RemovedBody542_368 : StackLang.HolProg 64 :=
.seq RemovedBody542_8 RemovedBody542_367

def RemovedBody542_369 : StackLang.HolProg 64 :=
.seq RemovedBody542_7 RemovedBody542_368

def RemovedBody542_370 : StackLang.HolProg 64 :=
.seq RemovedBody542_6 RemovedBody542_369

def Removed542 : Nat × StackLang.HolProg 64 := (542, RemovedBody542_370)
theorem Removed542_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc542 = Removed542 := by
  kernel_rfl
#print axioms Removed542_eq
end InitECandidate.Proofs.BackendStages
