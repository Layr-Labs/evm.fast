import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc640
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody640_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody640_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody640_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody640_3 : StackLang.HolProg 64 :=
.seq RemovedBody640_1 RemovedBody640_2

def RemovedBody640_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody640_3 RemovedBody640_4

def RemovedBody640_6 : StackLang.HolProg 64 :=
.seq RemovedBody640_0 RemovedBody640_5

def RemovedBody640_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody640_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody640_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody640_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody640_12 : StackLang.HolProg 64 :=
.seq RemovedBody640_10 RemovedBody640_11

def RemovedBody640_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody640_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody640_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody640_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody640_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody640_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody640_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody640_23 : StackLang.HolProg 64 :=
.seq RemovedBody640_21 RemovedBody640_22

def RemovedBody640_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2593#64)

def RemovedBody640_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody640_27 : StackLang.HolProg 64 :=
.seq RemovedBody640_25 RemovedBody640_26

def RemovedBody640_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody640_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody640_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody640_31 : StackLang.HolProg 64 :=
.seq RemovedBody640_29 RemovedBody640_30

def RemovedBody640_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody640_31 RemovedBody640_32

def RemovedBody640_34 : StackLang.HolProg 64 :=
.seq RemovedBody640_28 RemovedBody640_33

def RemovedBody640_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody640_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody640_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 640 3

def RemovedBody640_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody640_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody640_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody640_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody640_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody640_44 : StackLang.HolProg 64 :=
.seq RemovedBody640_42 RemovedBody640_43

def RemovedBody640_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody640_46 : StackLang.HolProg 64 :=
.seq RemovedBody640_44 RemovedBody640_45

def RemovedBody640_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody640_48 : StackLang.HolProg 64 :=
.seq RemovedBody640_46 RemovedBody640_47

def RemovedBody640_49 : StackLang.HolProg 64 :=
.seq RemovedBody640_41 RemovedBody640_48

def RemovedBody640_50 : StackLang.HolProg 64 :=
.seq RemovedBody640_40 RemovedBody640_49

def RemovedBody640_51 : StackLang.HolProg 64 :=
.seq RemovedBody640_39 RemovedBody640_50

def RemovedBody640_52 : StackLang.HolProg 64 :=
.seq RemovedBody640_38 RemovedBody640_51

def RemovedBody640_53 : StackLang.HolProg 64 :=
.seq RemovedBody640_37 RemovedBody640_52

def RemovedBody640_54 : StackLang.HolProg 64 :=
.seq RemovedBody640_36 RemovedBody640_53

def RemovedBody640_55 : StackLang.HolProg 64 :=
.seq RemovedBody640_35 RemovedBody640_54

def RemovedBody640_56 : StackLang.HolProg 64 :=
.seq RemovedBody640_34 RemovedBody640_55

def RemovedBody640_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody640_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody640_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody640_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody640_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody640_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody640_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody640_67 : StackLang.HolProg 64 :=
.seq RemovedBody640_65 RemovedBody640_66

def RemovedBody640_68 : StackLang.HolProg 64 :=
.seq RemovedBody640_64 RemovedBody640_67

def RemovedBody640_69 : StackLang.HolProg 64 :=
.seq RemovedBody640_63 RemovedBody640_68

def RemovedBody640_70 : StackLang.HolProg 64 :=
.seq RemovedBody640_62 RemovedBody640_69

def RemovedBody640_71 : StackLang.HolProg 64 :=
.seq RemovedBody640_61 RemovedBody640_70

def RemovedBody640_72 : StackLang.HolProg 64 :=
.seq RemovedBody640_60 RemovedBody640_71

def RemovedBody640_73 : StackLang.HolProg 64 :=
.seq RemovedBody640_59 RemovedBody640_72

def RemovedBody640_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody640_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody640_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody640_77 : StackLang.HolProg 64 :=
.seq RemovedBody640_75 RemovedBody640_76

def RemovedBody640_78 : StackLang.HolProg 64 :=
.seq RemovedBody640_74 RemovedBody640_77

def RemovedBody640_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody640_80 : StackLang.HolProg 64 :=
.seq RemovedBody640_78 RemovedBody640_79

def RemovedBody640_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody640_73, 0, 640, 2)) (Sum.inl 137) (some (RemovedBody640_80, 640, 3))

def RemovedBody640_82 : StackLang.HolProg 64 :=
.seq RemovedBody640_58 RemovedBody640_81

def RemovedBody640_83 : StackLang.HolProg 64 :=
.seq RemovedBody640_57 RemovedBody640_82

def RemovedBody640_84 : StackLang.HolProg 64 :=
.seq RemovedBody640_56 RemovedBody640_83

def RemovedBody640_85 : StackLang.HolProg 64 :=
.seq RemovedBody640_27 RemovedBody640_84

def RemovedBody640_86 : StackLang.HolProg 64 :=
.seq RemovedBody640_24 RemovedBody640_85

def RemovedBody640_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody640_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody640_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody640_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody640_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody640_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody640_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody640_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def RemovedBody640_98 : StackLang.HolProg 64 :=
.seq RemovedBody640_96 RemovedBody640_97

def RemovedBody640_99 : StackLang.HolProg 64 :=
.seq RemovedBody640_95 RemovedBody640_98

def RemovedBody640_100 : StackLang.HolProg 64 :=
.seq RemovedBody640_94 RemovedBody640_99

def RemovedBody640_101 : StackLang.HolProg 64 :=
.seq RemovedBody640_93 RemovedBody640_100

def RemovedBody640_102 : StackLang.HolProg 64 :=
.seq RemovedBody640_92 RemovedBody640_101

def RemovedBody640_103 : StackLang.HolProg 64 :=
.seq RemovedBody640_91 RemovedBody640_102

def RemovedBody640_104 : StackLang.HolProg 64 :=
.seq RemovedBody640_90 RemovedBody640_103

def RemovedBody640_105 : StackLang.HolProg 64 :=
.seq RemovedBody640_89 RemovedBody640_104

def RemovedBody640_106 : StackLang.HolProg 64 :=
.seq RemovedBody640_88 RemovedBody640_105

def RemovedBody640_107 : StackLang.HolProg 64 :=
.seq RemovedBody640_87 RemovedBody640_106

def RemovedBody640_108 : StackLang.HolProg 64 :=
.seq RemovedBody640_86 RemovedBody640_107

def RemovedBody640_109 : StackLang.HolProg 64 :=
.seq RemovedBody640_23 RemovedBody640_108

def RemovedBody640_110 : StackLang.HolProg 64 :=
.seq RemovedBody640_20 RemovedBody640_109

def RemovedBody640_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody640_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody640_110 RemovedBody640_111

def RemovedBody640_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody640_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody640_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody640_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody640_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody640_119 : StackLang.HolProg 64 :=
.seq RemovedBody640_117 RemovedBody640_118

def RemovedBody640_120 : StackLang.HolProg 64 :=
.seq RemovedBody640_116 RemovedBody640_119

def RemovedBody640_121 : StackLang.HolProg 64 :=
.seq RemovedBody640_115 RemovedBody640_120

def RemovedBody640_122 : StackLang.HolProg 64 :=
.seq RemovedBody640_114 RemovedBody640_121

def RemovedBody640_123 : StackLang.HolProg 64 :=
.seq RemovedBody640_113 RemovedBody640_122

def RemovedBody640_124 : StackLang.HolProg 64 :=
.seq RemovedBody640_112 RemovedBody640_123

def RemovedBody640_125 : StackLang.HolProg 64 :=
.seq RemovedBody640_19 RemovedBody640_124

def RemovedBody640_126 : StackLang.HolProg 64 :=
.seq RemovedBody640_18 RemovedBody640_125

def RemovedBody640_127 : StackLang.HolProg 64 :=
.seq RemovedBody640_17 RemovedBody640_126

def RemovedBody640_128 : StackLang.HolProg 64 :=
.seq RemovedBody640_16 RemovedBody640_127

def RemovedBody640_129 : StackLang.HolProg 64 :=
.seq RemovedBody640_15 RemovedBody640_128

def RemovedBody640_130 : StackLang.HolProg 64 :=
.seq RemovedBody640_14 RemovedBody640_129

def RemovedBody640_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody640_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody640_133 : StackLang.HolProg 64 :=
.seq RemovedBody640_131 RemovedBody640_132

def RemovedBody640_134 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody640_130 RemovedBody640_133

def RemovedBody640_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody640_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody640_137 : StackLang.HolProg 64 :=
.seq RemovedBody640_135 RemovedBody640_136

def RemovedBody640_138 : StackLang.HolProg 64 :=
.seq RemovedBody640_134 RemovedBody640_137

def RemovedBody640_139 : StackLang.HolProg 64 :=
.seq RemovedBody640_13 RemovedBody640_138

def RemovedBody640_140 : StackLang.HolProg 64 :=
.loop RemovedBody640_139

def RemovedBody640_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody640_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody640_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody640_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody640_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody640_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody640_147 : StackLang.HolProg 64 :=
.seq RemovedBody640_145 RemovedBody640_146

def RemovedBody640_148 : StackLang.HolProg 64 :=
.seq RemovedBody640_144 RemovedBody640_147

def RemovedBody640_149 : StackLang.HolProg 64 :=
.seq RemovedBody640_143 RemovedBody640_148

def RemovedBody640_150 : StackLang.HolProg 64 :=
.seq RemovedBody640_142 RemovedBody640_149

def RemovedBody640_151 : StackLang.HolProg 64 :=
.seq RemovedBody640_141 RemovedBody640_150

def RemovedBody640_152 : StackLang.HolProg 64 :=
.seq RemovedBody640_140 RemovedBody640_151

def RemovedBody640_153 : StackLang.HolProg 64 :=
.seq RemovedBody640_12 RemovedBody640_152

def RemovedBody640_154 : StackLang.HolProg 64 :=
.seq RemovedBody640_9 RemovedBody640_153

def RemovedBody640_155 : StackLang.HolProg 64 :=
.seq RemovedBody640_8 RemovedBody640_154

def RemovedBody640_156 : StackLang.HolProg 64 :=
.seq RemovedBody640_7 RemovedBody640_155

def RemovedBody640_157 : StackLang.HolProg 64 :=
.seq RemovedBody640_6 RemovedBody640_156

def Removed640 : Nat × StackLang.HolProg 64 := (640, RemovedBody640_157)
theorem Removed640_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc640 = Removed640 := by
  kernel_rfl
#print axioms Removed640_eq
end InitECandidate.Proofs.BackendStages
