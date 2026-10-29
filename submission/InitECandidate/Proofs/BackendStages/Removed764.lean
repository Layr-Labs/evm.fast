import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc764
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody764_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody764_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody764_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody764_3 : StackLang.HolProg 64 :=
.seq RemovedBody764_1 RemovedBody764_2

def RemovedBody764_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody764_3 RemovedBody764_4

def RemovedBody764_6 : StackLang.HolProg 64 :=
.seq RemovedBody764_0 RemovedBody764_5

def RemovedBody764_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody764_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody764_9 : StackLang.HolProg 64 :=
.seq RemovedBody764_7 RemovedBody764_8

def RemovedBody764_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3424#64)

def RemovedBody764_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody764_13 : StackLang.HolProg 64 :=
.seq RemovedBody764_11 RemovedBody764_12

def RemovedBody764_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody764_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody764_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody764_17 : StackLang.HolProg 64 :=
.seq RemovedBody764_15 RemovedBody764_16

def RemovedBody764_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody764_17 RemovedBody764_18

def RemovedBody764_20 : StackLang.HolProg 64 :=
.seq RemovedBody764_14 RemovedBody764_19

def RemovedBody764_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody764_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody764_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 764 3

def RemovedBody764_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody764_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody764_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody764_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody764_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody764_30 : StackLang.HolProg 64 :=
.seq RemovedBody764_28 RemovedBody764_29

def RemovedBody764_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody764_32 : StackLang.HolProg 64 :=
.seq RemovedBody764_30 RemovedBody764_31

def RemovedBody764_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody764_34 : StackLang.HolProg 64 :=
.seq RemovedBody764_32 RemovedBody764_33

def RemovedBody764_35 : StackLang.HolProg 64 :=
.seq RemovedBody764_27 RemovedBody764_34

def RemovedBody764_36 : StackLang.HolProg 64 :=
.seq RemovedBody764_26 RemovedBody764_35

def RemovedBody764_37 : StackLang.HolProg 64 :=
.seq RemovedBody764_25 RemovedBody764_36

def RemovedBody764_38 : StackLang.HolProg 64 :=
.seq RemovedBody764_24 RemovedBody764_37

def RemovedBody764_39 : StackLang.HolProg 64 :=
.seq RemovedBody764_23 RemovedBody764_38

def RemovedBody764_40 : StackLang.HolProg 64 :=
.seq RemovedBody764_22 RemovedBody764_39

def RemovedBody764_41 : StackLang.HolProg 64 :=
.seq RemovedBody764_21 RemovedBody764_40

def RemovedBody764_42 : StackLang.HolProg 64 :=
.seq RemovedBody764_20 RemovedBody764_41

def RemovedBody764_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody764_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody764_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody764_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody764_50 : StackLang.HolProg 64 :=
.seq RemovedBody764_48 RemovedBody764_49

def RemovedBody764_51 : StackLang.HolProg 64 :=
.seq RemovedBody764_47 RemovedBody764_50

def RemovedBody764_52 : StackLang.HolProg 64 :=
.seq RemovedBody764_46 RemovedBody764_51

def RemovedBody764_53 : StackLang.HolProg 64 :=
.seq RemovedBody764_45 RemovedBody764_52

def RemovedBody764_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody764_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody764_56 : StackLang.HolProg 64 :=
.seq RemovedBody764_54 RemovedBody764_55

def RemovedBody764_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody764_53, 0, 764, 2)) (Sum.inl 763) (some (RemovedBody764_56, 764, 3))

def RemovedBody764_58 : StackLang.HolProg 64 :=
.seq RemovedBody764_44 RemovedBody764_57

def RemovedBody764_59 : StackLang.HolProg 64 :=
.seq RemovedBody764_43 RemovedBody764_58

def RemovedBody764_60 : StackLang.HolProg 64 :=
.seq RemovedBody764_42 RemovedBody764_59

def RemovedBody764_61 : StackLang.HolProg 64 :=
.seq RemovedBody764_13 RemovedBody764_60

def RemovedBody764_62 : StackLang.HolProg 64 :=
.seq RemovedBody764_10 RemovedBody764_61

def RemovedBody764_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody764_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody764_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3425#64)

def RemovedBody764_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody764_68 : StackLang.HolProg 64 :=
.seq RemovedBody764_66 RemovedBody764_67

def RemovedBody764_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody764_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody764_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody764_72 : StackLang.HolProg 64 :=
.seq RemovedBody764_70 RemovedBody764_71

def RemovedBody764_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody764_72 RemovedBody764_73

def RemovedBody764_75 : StackLang.HolProg 64 :=
.seq RemovedBody764_69 RemovedBody764_74

def RemovedBody764_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody764_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody764_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 764 5

def RemovedBody764_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody764_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody764_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody764_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody764_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody764_85 : StackLang.HolProg 64 :=
.seq RemovedBody764_83 RemovedBody764_84

def RemovedBody764_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody764_87 : StackLang.HolProg 64 :=
.seq RemovedBody764_85 RemovedBody764_86

def RemovedBody764_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody764_89 : StackLang.HolProg 64 :=
.seq RemovedBody764_87 RemovedBody764_88

def RemovedBody764_90 : StackLang.HolProg 64 :=
.seq RemovedBody764_82 RemovedBody764_89

def RemovedBody764_91 : StackLang.HolProg 64 :=
.seq RemovedBody764_81 RemovedBody764_90

def RemovedBody764_92 : StackLang.HolProg 64 :=
.seq RemovedBody764_80 RemovedBody764_91

def RemovedBody764_93 : StackLang.HolProg 64 :=
.seq RemovedBody764_79 RemovedBody764_92

def RemovedBody764_94 : StackLang.HolProg 64 :=
.seq RemovedBody764_78 RemovedBody764_93

def RemovedBody764_95 : StackLang.HolProg 64 :=
.seq RemovedBody764_77 RemovedBody764_94

def RemovedBody764_96 : StackLang.HolProg 64 :=
.seq RemovedBody764_76 RemovedBody764_95

def RemovedBody764_97 : StackLang.HolProg 64 :=
.seq RemovedBody764_75 RemovedBody764_96

def RemovedBody764_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody764_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody764_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody764_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody764_105 : StackLang.HolProg 64 :=
.seq RemovedBody764_103 RemovedBody764_104

def RemovedBody764_106 : StackLang.HolProg 64 :=
.seq RemovedBody764_102 RemovedBody764_105

def RemovedBody764_107 : StackLang.HolProg 64 :=
.seq RemovedBody764_101 RemovedBody764_106

def RemovedBody764_108 : StackLang.HolProg 64 :=
.seq RemovedBody764_100 RemovedBody764_107

def RemovedBody764_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody764_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody764_111 : StackLang.HolProg 64 :=
.seq RemovedBody764_109 RemovedBody764_110

def RemovedBody764_112 : StackLang.HolProg 64 :=
.call (some (RemovedBody764_108, 0, 764, 4)) (Sum.inl 760) (some (RemovedBody764_111, 764, 5))

def RemovedBody764_113 : StackLang.HolProg 64 :=
.seq RemovedBody764_99 RemovedBody764_112

def RemovedBody764_114 : StackLang.HolProg 64 :=
.seq RemovedBody764_98 RemovedBody764_113

def RemovedBody764_115 : StackLang.HolProg 64 :=
.seq RemovedBody764_97 RemovedBody764_114

def RemovedBody764_116 : StackLang.HolProg 64 :=
.seq RemovedBody764_68 RemovedBody764_115

def RemovedBody764_117 : StackLang.HolProg 64 :=
.seq RemovedBody764_65 RemovedBody764_116

def RemovedBody764_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody764_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody764_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody764_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody764_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody764_123 : StackLang.HolProg 64 :=
.seq RemovedBody764_121 RemovedBody764_122

def RemovedBody764_124 : StackLang.HolProg 64 :=
.seq RemovedBody764_120 RemovedBody764_123

def RemovedBody764_125 : StackLang.HolProg 64 :=
.seq RemovedBody764_119 RemovedBody764_124

def RemovedBody764_126 : StackLang.HolProg 64 :=
.seq RemovedBody764_118 RemovedBody764_125

def RemovedBody764_127 : StackLang.HolProg 64 :=
.seq RemovedBody764_117 RemovedBody764_126

def RemovedBody764_128 : StackLang.HolProg 64 :=
.seq RemovedBody764_64 RemovedBody764_127

def RemovedBody764_129 : StackLang.HolProg 64 :=
.seq RemovedBody764_63 RemovedBody764_128

def RemovedBody764_130 : StackLang.HolProg 64 :=
.seq RemovedBody764_62 RemovedBody764_129

def RemovedBody764_131 : StackLang.HolProg 64 :=
.seq RemovedBody764_9 RemovedBody764_130

def RemovedBody764_132 : StackLang.HolProg 64 :=
.seq RemovedBody764_6 RemovedBody764_131

def Removed764 : Nat × StackLang.HolProg 64 := (764, RemovedBody764_132)
theorem Removed764_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc764 = Removed764 := by
  kernel_rfl
#print axioms Removed764_eq
end InitECandidate.Proofs.BackendStages
