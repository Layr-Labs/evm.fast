import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc689
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody689_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody689_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody689_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody689_3 : StackLang.HolProg 64 :=
.seq RemovedBody689_1 RemovedBody689_2

def RemovedBody689_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody689_3 RemovedBody689_4

def RemovedBody689_6 : StackLang.HolProg 64 :=
.seq RemovedBody689_0 RemovedBody689_5

def RemovedBody689_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody689_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody689_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody689_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody689_12 : StackLang.HolProg 64 :=
.seq RemovedBody689_10 RemovedBody689_11

def RemovedBody689_13 : StackLang.HolProg 64 :=
.seq RemovedBody689_9 RemovedBody689_12

def RemovedBody689_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody689_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody689_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody689_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody689_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody689_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody689_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody689_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody689_26 : StackLang.HolProg 64 :=
.seq RemovedBody689_24 RemovedBody689_25

def RemovedBody689_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2938#64)

def RemovedBody689_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody689_30 : StackLang.HolProg 64 :=
.seq RemovedBody689_28 RemovedBody689_29

def RemovedBody689_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody689_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody689_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody689_34 : StackLang.HolProg 64 :=
.seq RemovedBody689_32 RemovedBody689_33

def RemovedBody689_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody689_34 RemovedBody689_35

def RemovedBody689_37 : StackLang.HolProg 64 :=
.seq RemovedBody689_31 RemovedBody689_36

def RemovedBody689_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody689_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody689_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 689 3

def RemovedBody689_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody689_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody689_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody689_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody689_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody689_47 : StackLang.HolProg 64 :=
.seq RemovedBody689_45 RemovedBody689_46

def RemovedBody689_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody689_49 : StackLang.HolProg 64 :=
.seq RemovedBody689_47 RemovedBody689_48

def RemovedBody689_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody689_51 : StackLang.HolProg 64 :=
.seq RemovedBody689_49 RemovedBody689_50

def RemovedBody689_52 : StackLang.HolProg 64 :=
.seq RemovedBody689_44 RemovedBody689_51

def RemovedBody689_53 : StackLang.HolProg 64 :=
.seq RemovedBody689_43 RemovedBody689_52

def RemovedBody689_54 : StackLang.HolProg 64 :=
.seq RemovedBody689_42 RemovedBody689_53

def RemovedBody689_55 : StackLang.HolProg 64 :=
.seq RemovedBody689_41 RemovedBody689_54

def RemovedBody689_56 : StackLang.HolProg 64 :=
.seq RemovedBody689_40 RemovedBody689_55

def RemovedBody689_57 : StackLang.HolProg 64 :=
.seq RemovedBody689_39 RemovedBody689_56

def RemovedBody689_58 : StackLang.HolProg 64 :=
.seq RemovedBody689_38 RemovedBody689_57

def RemovedBody689_59 : StackLang.HolProg 64 :=
.seq RemovedBody689_37 RemovedBody689_58

def RemovedBody689_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody689_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody689_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody689_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody689_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody689_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody689_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody689_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody689_71 : StackLang.HolProg 64 :=
.seq RemovedBody689_69 RemovedBody689_70

def RemovedBody689_72 : StackLang.HolProg 64 :=
.seq RemovedBody689_68 RemovedBody689_71

def RemovedBody689_73 : StackLang.HolProg 64 :=
.seq RemovedBody689_67 RemovedBody689_72

def RemovedBody689_74 : StackLang.HolProg 64 :=
.seq RemovedBody689_66 RemovedBody689_73

def RemovedBody689_75 : StackLang.HolProg 64 :=
.seq RemovedBody689_65 RemovedBody689_74

def RemovedBody689_76 : StackLang.HolProg 64 :=
.seq RemovedBody689_64 RemovedBody689_75

def RemovedBody689_77 : StackLang.HolProg 64 :=
.seq RemovedBody689_63 RemovedBody689_76

def RemovedBody689_78 : StackLang.HolProg 64 :=
.seq RemovedBody689_62 RemovedBody689_77

def RemovedBody689_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody689_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody689_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody689_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody689_83 : StackLang.HolProg 64 :=
.seq RemovedBody689_81 RemovedBody689_82

def RemovedBody689_84 : StackLang.HolProg 64 :=
.seq RemovedBody689_80 RemovedBody689_83

def RemovedBody689_85 : StackLang.HolProg 64 :=
.seq RemovedBody689_79 RemovedBody689_84

def RemovedBody689_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody689_87 : StackLang.HolProg 64 :=
.seq RemovedBody689_85 RemovedBody689_86

def RemovedBody689_88 : StackLang.HolProg 64 :=
.call (some (RemovedBody689_78, 0, 689, 2)) (Sum.inl 80) (some (RemovedBody689_87, 689, 3))

def RemovedBody689_89 : StackLang.HolProg 64 :=
.seq RemovedBody689_61 RemovedBody689_88

def RemovedBody689_90 : StackLang.HolProg 64 :=
.seq RemovedBody689_60 RemovedBody689_89

def RemovedBody689_91 : StackLang.HolProg 64 :=
.seq RemovedBody689_59 RemovedBody689_90

def RemovedBody689_92 : StackLang.HolProg 64 :=
.seq RemovedBody689_30 RemovedBody689_91

def RemovedBody689_93 : StackLang.HolProg 64 :=
.seq RemovedBody689_27 RemovedBody689_92

def RemovedBody689_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody689_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody689_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody689_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody689_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody689_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody689_101 : StackLang.HolProg 64 :=
.seq RemovedBody689_99 RemovedBody689_100

def RemovedBody689_102 : StackLang.HolProg 64 :=
.seq RemovedBody689_98 RemovedBody689_101

def RemovedBody689_103 : StackLang.HolProg 64 :=
.seq RemovedBody689_97 RemovedBody689_102

def RemovedBody689_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody689_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody689_103 RemovedBody689_104

def RemovedBody689_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody689_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody689_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody689_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody689_110 : StackLang.HolProg 64 :=
.seq RemovedBody689_108 RemovedBody689_109

def RemovedBody689_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody689_112 : StackLang.HolProg 64 :=
.seq RemovedBody689_110 RemovedBody689_111

def RemovedBody689_113 : StackLang.HolProg 64 :=
.seq RemovedBody689_107 RemovedBody689_112

def RemovedBody689_114 : StackLang.HolProg 64 :=
.seq RemovedBody689_106 RemovedBody689_113

def RemovedBody689_115 : StackLang.HolProg 64 :=
.seq RemovedBody689_105 RemovedBody689_114

def RemovedBody689_116 : StackLang.HolProg 64 :=
.seq RemovedBody689_96 RemovedBody689_115

def RemovedBody689_117 : StackLang.HolProg 64 :=
.seq RemovedBody689_95 RemovedBody689_116

def RemovedBody689_118 : StackLang.HolProg 64 :=
.seq RemovedBody689_94 RemovedBody689_117

def RemovedBody689_119 : StackLang.HolProg 64 :=
.seq RemovedBody689_93 RemovedBody689_118

def RemovedBody689_120 : StackLang.HolProg 64 :=
.seq RemovedBody689_26 RemovedBody689_119

def RemovedBody689_121 : StackLang.HolProg 64 :=
.seq RemovedBody689_23 RemovedBody689_120

def RemovedBody689_122 : StackLang.HolProg 64 :=
.seq RemovedBody689_22 RemovedBody689_121

def RemovedBody689_123 : StackLang.HolProg 64 :=
.seq RemovedBody689_21 RemovedBody689_122

def RemovedBody689_124 : StackLang.HolProg 64 :=
.seq RemovedBody689_20 RemovedBody689_123

def RemovedBody689_125 : StackLang.HolProg 64 :=
.seq RemovedBody689_19 RemovedBody689_124

def RemovedBody689_126 : StackLang.HolProg 64 :=
.seq RemovedBody689_18 RemovedBody689_125

def RemovedBody689_127 : StackLang.HolProg 64 :=
.seq RemovedBody689_17 RemovedBody689_126

def RemovedBody689_128 : StackLang.HolProg 64 :=
.seq RemovedBody689_16 RemovedBody689_127

def RemovedBody689_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody689_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody689_131 : StackLang.HolProg 64 :=
.seq RemovedBody689_129 RemovedBody689_130

def RemovedBody689_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody689_128 RemovedBody689_131

def RemovedBody689_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody689_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody689_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody689_136 : StackLang.HolProg 64 :=
.seq RemovedBody689_134 RemovedBody689_135

def RemovedBody689_137 : StackLang.HolProg 64 :=
.seq RemovedBody689_133 RemovedBody689_136

def RemovedBody689_138 : StackLang.HolProg 64 :=
.seq RemovedBody689_132 RemovedBody689_137

def RemovedBody689_139 : StackLang.HolProg 64 :=
.seq RemovedBody689_15 RemovedBody689_138

def RemovedBody689_140 : StackLang.HolProg 64 :=
.seq RemovedBody689_14 RemovedBody689_139

def RemovedBody689_141 : StackLang.HolProg 64 :=
.loop RemovedBody689_140

def RemovedBody689_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody689_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody689_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody689_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody689_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody689_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody689_148 : StackLang.HolProg 64 :=
.seq RemovedBody689_146 RemovedBody689_147

def RemovedBody689_149 : StackLang.HolProg 64 :=
.seq RemovedBody689_145 RemovedBody689_148

def RemovedBody689_150 : StackLang.HolProg 64 :=
.seq RemovedBody689_144 RemovedBody689_149

def RemovedBody689_151 : StackLang.HolProg 64 :=
.seq RemovedBody689_143 RemovedBody689_150

def RemovedBody689_152 : StackLang.HolProg 64 :=
.seq RemovedBody689_142 RemovedBody689_151

def RemovedBody689_153 : StackLang.HolProg 64 :=
.seq RemovedBody689_141 RemovedBody689_152

def RemovedBody689_154 : StackLang.HolProg 64 :=
.seq RemovedBody689_13 RemovedBody689_153

def RemovedBody689_155 : StackLang.HolProg 64 :=
.seq RemovedBody689_8 RemovedBody689_154

def RemovedBody689_156 : StackLang.HolProg 64 :=
.seq RemovedBody689_7 RemovedBody689_155

def RemovedBody689_157 : StackLang.HolProg 64 :=
.seq RemovedBody689_6 RemovedBody689_156

def Removed689 : Nat × StackLang.HolProg 64 := (689, RemovedBody689_157)
theorem Removed689_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc689 = Removed689 := by
  kernel_rfl
#print axioms Removed689_eq
end InitECandidate.Proofs.BackendStages
