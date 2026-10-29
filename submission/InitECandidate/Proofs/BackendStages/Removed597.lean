import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc597
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody597_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody597_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody597_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody597_3 : StackLang.HolProg 64 :=
.seq RemovedBody597_1 RemovedBody597_2

def RemovedBody597_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody597_3 RemovedBody597_4

def RemovedBody597_6 : StackLang.HolProg 64 :=
.seq RemovedBody597_0 RemovedBody597_5

def RemovedBody597_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody597_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody597_9 : StackLang.HolProg 64 :=
.seq RemovedBody597_7 RemovedBody597_8

def RemovedBody597_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2265#64)

def RemovedBody597_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody597_13 : StackLang.HolProg 64 :=
.seq RemovedBody597_11 RemovedBody597_12

def RemovedBody597_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody597_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody597_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody597_17 : StackLang.HolProg 64 :=
.seq RemovedBody597_15 RemovedBody597_16

def RemovedBody597_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody597_17 RemovedBody597_18

def RemovedBody597_20 : StackLang.HolProg 64 :=
.seq RemovedBody597_14 RemovedBody597_19

def RemovedBody597_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody597_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody597_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 597 3

def RemovedBody597_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody597_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody597_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody597_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody597_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody597_30 : StackLang.HolProg 64 :=
.seq RemovedBody597_28 RemovedBody597_29

def RemovedBody597_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody597_32 : StackLang.HolProg 64 :=
.seq RemovedBody597_30 RemovedBody597_31

def RemovedBody597_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody597_34 : StackLang.HolProg 64 :=
.seq RemovedBody597_32 RemovedBody597_33

def RemovedBody597_35 : StackLang.HolProg 64 :=
.seq RemovedBody597_27 RemovedBody597_34

def RemovedBody597_36 : StackLang.HolProg 64 :=
.seq RemovedBody597_26 RemovedBody597_35

def RemovedBody597_37 : StackLang.HolProg 64 :=
.seq RemovedBody597_25 RemovedBody597_36

def RemovedBody597_38 : StackLang.HolProg 64 :=
.seq RemovedBody597_24 RemovedBody597_37

def RemovedBody597_39 : StackLang.HolProg 64 :=
.seq RemovedBody597_23 RemovedBody597_38

def RemovedBody597_40 : StackLang.HolProg 64 :=
.seq RemovedBody597_22 RemovedBody597_39

def RemovedBody597_41 : StackLang.HolProg 64 :=
.seq RemovedBody597_21 RemovedBody597_40

def RemovedBody597_42 : StackLang.HolProg 64 :=
.seq RemovedBody597_20 RemovedBody597_41

def RemovedBody597_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody597_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody597_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody597_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody597_50 : StackLang.HolProg 64 :=
.seq RemovedBody597_48 RemovedBody597_49

def RemovedBody597_51 : StackLang.HolProg 64 :=
.seq RemovedBody597_47 RemovedBody597_50

def RemovedBody597_52 : StackLang.HolProg 64 :=
.seq RemovedBody597_46 RemovedBody597_51

def RemovedBody597_53 : StackLang.HolProg 64 :=
.seq RemovedBody597_45 RemovedBody597_52

def RemovedBody597_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody597_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody597_56 : StackLang.HolProg 64 :=
.seq RemovedBody597_54 RemovedBody597_55

def RemovedBody597_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody597_53, 0, 597, 2)) (Sum.inl 474) (some (RemovedBody597_56, 597, 3))

def RemovedBody597_58 : StackLang.HolProg 64 :=
.seq RemovedBody597_44 RemovedBody597_57

def RemovedBody597_59 : StackLang.HolProg 64 :=
.seq RemovedBody597_43 RemovedBody597_58

def RemovedBody597_60 : StackLang.HolProg 64 :=
.seq RemovedBody597_42 RemovedBody597_59

def RemovedBody597_61 : StackLang.HolProg 64 :=
.seq RemovedBody597_13 RemovedBody597_60

def RemovedBody597_62 : StackLang.HolProg 64 :=
.seq RemovedBody597_10 RemovedBody597_61

def RemovedBody597_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody597_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody597_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody597_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody597_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2266#64)

def RemovedBody597_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody597_71 : StackLang.HolProg 64 :=
.seq RemovedBody597_69 RemovedBody597_70

def RemovedBody597_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody597_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody597_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody597_75 : StackLang.HolProg 64 :=
.seq RemovedBody597_73 RemovedBody597_74

def RemovedBody597_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody597_75 RemovedBody597_76

def RemovedBody597_78 : StackLang.HolProg 64 :=
.seq RemovedBody597_72 RemovedBody597_77

def RemovedBody597_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody597_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody597_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 597 5

def RemovedBody597_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody597_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody597_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody597_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody597_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody597_88 : StackLang.HolProg 64 :=
.seq RemovedBody597_86 RemovedBody597_87

def RemovedBody597_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody597_90 : StackLang.HolProg 64 :=
.seq RemovedBody597_88 RemovedBody597_89

def RemovedBody597_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody597_92 : StackLang.HolProg 64 :=
.seq RemovedBody597_90 RemovedBody597_91

def RemovedBody597_93 : StackLang.HolProg 64 :=
.seq RemovedBody597_85 RemovedBody597_92

def RemovedBody597_94 : StackLang.HolProg 64 :=
.seq RemovedBody597_84 RemovedBody597_93

def RemovedBody597_95 : StackLang.HolProg 64 :=
.seq RemovedBody597_83 RemovedBody597_94

def RemovedBody597_96 : StackLang.HolProg 64 :=
.seq RemovedBody597_82 RemovedBody597_95

def RemovedBody597_97 : StackLang.HolProg 64 :=
.seq RemovedBody597_81 RemovedBody597_96

def RemovedBody597_98 : StackLang.HolProg 64 :=
.seq RemovedBody597_80 RemovedBody597_97

def RemovedBody597_99 : StackLang.HolProg 64 :=
.seq RemovedBody597_79 RemovedBody597_98

def RemovedBody597_100 : StackLang.HolProg 64 :=
.seq RemovedBody597_78 RemovedBody597_99

def RemovedBody597_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody597_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody597_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody597_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody597_108 : StackLang.HolProg 64 :=
.seq RemovedBody597_106 RemovedBody597_107

def RemovedBody597_109 : StackLang.HolProg 64 :=
.seq RemovedBody597_105 RemovedBody597_108

def RemovedBody597_110 : StackLang.HolProg 64 :=
.seq RemovedBody597_104 RemovedBody597_109

def RemovedBody597_111 : StackLang.HolProg 64 :=
.seq RemovedBody597_103 RemovedBody597_110

def RemovedBody597_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody597_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody597_114 : StackLang.HolProg 64 :=
.seq RemovedBody597_112 RemovedBody597_113

def RemovedBody597_115 : StackLang.HolProg 64 :=
.call (some (RemovedBody597_111, 0, 597, 4)) (Sum.inl 604) (some (RemovedBody597_114, 597, 5))

def RemovedBody597_116 : StackLang.HolProg 64 :=
.seq RemovedBody597_102 RemovedBody597_115

def RemovedBody597_117 : StackLang.HolProg 64 :=
.seq RemovedBody597_101 RemovedBody597_116

def RemovedBody597_118 : StackLang.HolProg 64 :=
.seq RemovedBody597_100 RemovedBody597_117

def RemovedBody597_119 : StackLang.HolProg 64 :=
.seq RemovedBody597_71 RemovedBody597_118

def RemovedBody597_120 : StackLang.HolProg 64 :=
.seq RemovedBody597_68 RemovedBody597_119

def RemovedBody597_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody597_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody597_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody597_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody597_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody597_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody597_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551352#64))

def RemovedBody597_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody597_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody597_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody597_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody597_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody597_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_138 : StackLang.HolProg 64 :=
.seq RemovedBody597_136 RemovedBody597_137

def RemovedBody597_139 : StackLang.HolProg 64 :=
.seq RemovedBody597_135 RemovedBody597_138

def RemovedBody597_140 : StackLang.HolProg 64 :=
.seq RemovedBody597_134 RemovedBody597_139

def RemovedBody597_141 : StackLang.HolProg 64 :=
.seq RemovedBody597_133 RemovedBody597_140

def RemovedBody597_142 : StackLang.HolProg 64 :=
.seq RemovedBody597_132 RemovedBody597_141

def RemovedBody597_143 : StackLang.HolProg 64 :=
.seq RemovedBody597_131 RemovedBody597_142

def RemovedBody597_144 : StackLang.HolProg 64 :=
.seq RemovedBody597_130 RemovedBody597_143

def RemovedBody597_145 : StackLang.HolProg 64 :=
.seq RemovedBody597_129 RemovedBody597_144

def RemovedBody597_146 : StackLang.HolProg 64 :=
.seq RemovedBody597_128 RemovedBody597_145

def RemovedBody597_147 : StackLang.HolProg 64 :=
.seq RemovedBody597_127 RemovedBody597_146

def RemovedBody597_148 : StackLang.HolProg 64 :=
.seq RemovedBody597_126 RemovedBody597_147

def RemovedBody597_149 : StackLang.HolProg 64 :=
.seq RemovedBody597_125 RemovedBody597_148

def RemovedBody597_150 : StackLang.HolProg 64 :=
.seq RemovedBody597_124 RemovedBody597_149

def RemovedBody597_151 : StackLang.HolProg 64 :=
.seq RemovedBody597_123 RemovedBody597_150

def RemovedBody597_152 : StackLang.HolProg 64 :=
.seq RemovedBody597_122 RemovedBody597_151

def RemovedBody597_153 : StackLang.HolProg 64 :=
.seq RemovedBody597_121 RemovedBody597_152

def RemovedBody597_154 : StackLang.HolProg 64 :=
.seq RemovedBody597_120 RemovedBody597_153

def RemovedBody597_155 : StackLang.HolProg 64 :=
.seq RemovedBody597_67 RemovedBody597_154

def RemovedBody597_156 : StackLang.HolProg 64 :=
.seq RemovedBody597_66 RemovedBody597_155

def RemovedBody597_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody597_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody597_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody597_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody597_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody597_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody597_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody597_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody597_166 : StackLang.HolProg 64 :=
.seq RemovedBody597_164 RemovedBody597_165

def RemovedBody597_167 : StackLang.HolProg 64 :=
.seq RemovedBody597_163 RemovedBody597_166

def RemovedBody597_168 : StackLang.HolProg 64 :=
.seq RemovedBody597_162 RemovedBody597_167

def RemovedBody597_169 : StackLang.HolProg 64 :=
.seq RemovedBody597_161 RemovedBody597_168

def RemovedBody597_170 : StackLang.HolProg 64 :=
.seq RemovedBody597_160 RemovedBody597_169

def RemovedBody597_171 : StackLang.HolProg 64 :=
.seq RemovedBody597_159 RemovedBody597_170

def RemovedBody597_172 : StackLang.HolProg 64 :=
.seq RemovedBody597_158 RemovedBody597_171

def RemovedBody597_173 : StackLang.HolProg 64 :=
.seq RemovedBody597_157 RemovedBody597_172

def RemovedBody597_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody597_156 RemovedBody597_173

def RemovedBody597_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody597_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody597_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody597_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody597_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def RemovedBody597_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody597_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody597_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody597_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody597_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody597_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody597_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody597_188 : StackLang.HolProg 64 :=
.seq RemovedBody597_186 RemovedBody597_187

def RemovedBody597_189 : StackLang.HolProg 64 :=
.seq RemovedBody597_185 RemovedBody597_188

def RemovedBody597_190 : StackLang.HolProg 64 :=
.seq RemovedBody597_184 RemovedBody597_189

def RemovedBody597_191 : StackLang.HolProg 64 :=
.seq RemovedBody597_183 RemovedBody597_190

def RemovedBody597_192 : StackLang.HolProg 64 :=
.seq RemovedBody597_182 RemovedBody597_191

def RemovedBody597_193 : StackLang.HolProg 64 :=
.seq RemovedBody597_181 RemovedBody597_192

def RemovedBody597_194 : StackLang.HolProg 64 :=
.seq RemovedBody597_180 RemovedBody597_193

def RemovedBody597_195 : StackLang.HolProg 64 :=
.seq RemovedBody597_179 RemovedBody597_194

def RemovedBody597_196 : StackLang.HolProg 64 :=
.seq RemovedBody597_178 RemovedBody597_195

def RemovedBody597_197 : StackLang.HolProg 64 :=
.seq RemovedBody597_177 RemovedBody597_196

def RemovedBody597_198 : StackLang.HolProg 64 :=
.seq RemovedBody597_176 RemovedBody597_197

def RemovedBody597_199 : StackLang.HolProg 64 :=
.seq RemovedBody597_175 RemovedBody597_198

def RemovedBody597_200 : StackLang.HolProg 64 :=
.seq RemovedBody597_174 RemovedBody597_199

def RemovedBody597_201 : StackLang.HolProg 64 :=
.seq RemovedBody597_65 RemovedBody597_200

def RemovedBody597_202 : StackLang.HolProg 64 :=
.seq RemovedBody597_64 RemovedBody597_201

def RemovedBody597_203 : StackLang.HolProg 64 :=
.seq RemovedBody597_63 RemovedBody597_202

def RemovedBody597_204 : StackLang.HolProg 64 :=
.seq RemovedBody597_62 RemovedBody597_203

def RemovedBody597_205 : StackLang.HolProg 64 :=
.seq RemovedBody597_9 RemovedBody597_204

def RemovedBody597_206 : StackLang.HolProg 64 :=
.seq RemovedBody597_6 RemovedBody597_205

def Removed597 : Nat × StackLang.HolProg 64 := (597, RemovedBody597_206)
theorem Removed597_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc597 = Removed597 := by
  kernel_rfl
#print axioms Removed597_eq
end InitECandidate.Proofs.BackendStages
