import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc861
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody861_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody861_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody861_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody861_3 : StackLang.HolProg 64 :=
.seq RemovedBody861_1 RemovedBody861_2

def RemovedBody861_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody861_3 RemovedBody861_4

def RemovedBody861_6 : StackLang.HolProg 64 :=
.seq RemovedBody861_0 RemovedBody861_5

def RemovedBody861_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody861_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody861_9 : StackLang.HolProg 64 :=
.seq RemovedBody861_7 RemovedBody861_8

def RemovedBody861_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4378#64)

def RemovedBody861_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody861_13 : StackLang.HolProg 64 :=
.seq RemovedBody861_11 RemovedBody861_12

def RemovedBody861_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody861_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody861_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody861_17 : StackLang.HolProg 64 :=
.seq RemovedBody861_15 RemovedBody861_16

def RemovedBody861_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody861_17 RemovedBody861_18

def RemovedBody861_20 : StackLang.HolProg 64 :=
.seq RemovedBody861_14 RemovedBody861_19

def RemovedBody861_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody861_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody861_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 3

def RemovedBody861_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody861_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody861_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody861_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody861_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody861_30 : StackLang.HolProg 64 :=
.seq RemovedBody861_28 RemovedBody861_29

def RemovedBody861_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody861_32 : StackLang.HolProg 64 :=
.seq RemovedBody861_30 RemovedBody861_31

def RemovedBody861_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody861_34 : StackLang.HolProg 64 :=
.seq RemovedBody861_32 RemovedBody861_33

def RemovedBody861_35 : StackLang.HolProg 64 :=
.seq RemovedBody861_27 RemovedBody861_34

def RemovedBody861_36 : StackLang.HolProg 64 :=
.seq RemovedBody861_26 RemovedBody861_35

def RemovedBody861_37 : StackLang.HolProg 64 :=
.seq RemovedBody861_25 RemovedBody861_36

def RemovedBody861_38 : StackLang.HolProg 64 :=
.seq RemovedBody861_24 RemovedBody861_37

def RemovedBody861_39 : StackLang.HolProg 64 :=
.seq RemovedBody861_23 RemovedBody861_38

def RemovedBody861_40 : StackLang.HolProg 64 :=
.seq RemovedBody861_22 RemovedBody861_39

def RemovedBody861_41 : StackLang.HolProg 64 :=
.seq RemovedBody861_21 RemovedBody861_40

def RemovedBody861_42 : StackLang.HolProg 64 :=
.seq RemovedBody861_20 RemovedBody861_41

def RemovedBody861_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody861_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody861_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody861_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody861_50 : StackLang.HolProg 64 :=
.seq RemovedBody861_48 RemovedBody861_49

def RemovedBody861_51 : StackLang.HolProg 64 :=
.seq RemovedBody861_47 RemovedBody861_50

def RemovedBody861_52 : StackLang.HolProg 64 :=
.seq RemovedBody861_46 RemovedBody861_51

def RemovedBody861_53 : StackLang.HolProg 64 :=
.seq RemovedBody861_45 RemovedBody861_52

def RemovedBody861_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody861_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody861_56 : StackLang.HolProg 64 :=
.seq RemovedBody861_54 RemovedBody861_55

def RemovedBody861_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody861_53, 0, 861, 2)) (Sum.inl 387) (some (RemovedBody861_56, 861, 3))

def RemovedBody861_58 : StackLang.HolProg 64 :=
.seq RemovedBody861_44 RemovedBody861_57

def RemovedBody861_59 : StackLang.HolProg 64 :=
.seq RemovedBody861_43 RemovedBody861_58

def RemovedBody861_60 : StackLang.HolProg 64 :=
.seq RemovedBody861_42 RemovedBody861_59

def RemovedBody861_61 : StackLang.HolProg 64 :=
.seq RemovedBody861_13 RemovedBody861_60

def RemovedBody861_62 : StackLang.HolProg 64 :=
.seq RemovedBody861_10 RemovedBody861_61

def RemovedBody861_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody861_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody861_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody861_66 : StackLang.HolProg 64 :=
.seq RemovedBody861_64 RemovedBody861_65

def RemovedBody861_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4379#64)

def RemovedBody861_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody861_70 : StackLang.HolProg 64 :=
.seq RemovedBody861_68 RemovedBody861_69

def RemovedBody861_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody861_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody861_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody861_74 : StackLang.HolProg 64 :=
.seq RemovedBody861_72 RemovedBody861_73

def RemovedBody861_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody861_74 RemovedBody861_75

def RemovedBody861_77 : StackLang.HolProg 64 :=
.seq RemovedBody861_71 RemovedBody861_76

def RemovedBody861_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody861_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody861_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 5

def RemovedBody861_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody861_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody861_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody861_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody861_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody861_87 : StackLang.HolProg 64 :=
.seq RemovedBody861_85 RemovedBody861_86

def RemovedBody861_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody861_89 : StackLang.HolProg 64 :=
.seq RemovedBody861_87 RemovedBody861_88

def RemovedBody861_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody861_91 : StackLang.HolProg 64 :=
.seq RemovedBody861_89 RemovedBody861_90

def RemovedBody861_92 : StackLang.HolProg 64 :=
.seq RemovedBody861_84 RemovedBody861_91

def RemovedBody861_93 : StackLang.HolProg 64 :=
.seq RemovedBody861_83 RemovedBody861_92

def RemovedBody861_94 : StackLang.HolProg 64 :=
.seq RemovedBody861_82 RemovedBody861_93

def RemovedBody861_95 : StackLang.HolProg 64 :=
.seq RemovedBody861_81 RemovedBody861_94

def RemovedBody861_96 : StackLang.HolProg 64 :=
.seq RemovedBody861_80 RemovedBody861_95

def RemovedBody861_97 : StackLang.HolProg 64 :=
.seq RemovedBody861_79 RemovedBody861_96

def RemovedBody861_98 : StackLang.HolProg 64 :=
.seq RemovedBody861_78 RemovedBody861_97

def RemovedBody861_99 : StackLang.HolProg 64 :=
.seq RemovedBody861_77 RemovedBody861_98

def RemovedBody861_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody861_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody861_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody861_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_107 : StackLang.HolProg 64 :=
.seq RemovedBody861_105 RemovedBody861_106

def RemovedBody861_108 : StackLang.HolProg 64 :=
.seq RemovedBody861_104 RemovedBody861_107

def RemovedBody861_109 : StackLang.HolProg 64 :=
.seq RemovedBody861_103 RemovedBody861_108

def RemovedBody861_110 : StackLang.HolProg 64 :=
.seq RemovedBody861_102 RemovedBody861_109

def RemovedBody861_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody861_113 : StackLang.HolProg 64 :=
.seq RemovedBody861_111 RemovedBody861_112

def RemovedBody861_114 : StackLang.HolProg 64 :=
.call (some (RemovedBody861_110, 0, 861, 4)) (Sum.inl 565) (some (RemovedBody861_113, 861, 5))

def RemovedBody861_115 : StackLang.HolProg 64 :=
.seq RemovedBody861_101 RemovedBody861_114

def RemovedBody861_116 : StackLang.HolProg 64 :=
.seq RemovedBody861_100 RemovedBody861_115

def RemovedBody861_117 : StackLang.HolProg 64 :=
.seq RemovedBody861_99 RemovedBody861_116

def RemovedBody861_118 : StackLang.HolProg 64 :=
.seq RemovedBody861_70 RemovedBody861_117

def RemovedBody861_119 : StackLang.HolProg 64 :=
.seq RemovedBody861_67 RemovedBody861_118

def RemovedBody861_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody861_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody861_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody861_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 70#64)

def RemovedBody861_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody861_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody861_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody861_130 : StackLang.HolProg 64 :=
.seq RemovedBody861_128 RemovedBody861_129

def RemovedBody861_131 : StackLang.HolProg 64 :=
.seq RemovedBody861_127 RemovedBody861_130

def RemovedBody861_132 : StackLang.HolProg 64 :=
.seq RemovedBody861_126 RemovedBody861_131

def RemovedBody861_133 : StackLang.HolProg 64 :=
.seq RemovedBody861_125 RemovedBody861_132

def RemovedBody861_134 : StackLang.HolProg 64 :=
.seq RemovedBody861_124 RemovedBody861_133

def RemovedBody861_135 : StackLang.HolProg 64 :=
.seq RemovedBody861_123 RemovedBody861_134

def RemovedBody861_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody861_135 RemovedBody861_136

def RemovedBody861_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody861_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody861_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody861_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4380#64)

def RemovedBody861_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody861_145 : StackLang.HolProg 64 :=
.seq RemovedBody861_143 RemovedBody861_144

def RemovedBody861_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody861_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody861_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody861_149 : StackLang.HolProg 64 :=
.seq RemovedBody861_147 RemovedBody861_148

def RemovedBody861_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_151 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody861_149 RemovedBody861_150

def RemovedBody861_152 : StackLang.HolProg 64 :=
.seq RemovedBody861_146 RemovedBody861_151

def RemovedBody861_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody861_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody861_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 7

def RemovedBody861_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody861_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody861_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody861_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody861_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody861_162 : StackLang.HolProg 64 :=
.seq RemovedBody861_160 RemovedBody861_161

def RemovedBody861_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody861_164 : StackLang.HolProg 64 :=
.seq RemovedBody861_162 RemovedBody861_163

def RemovedBody861_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody861_166 : StackLang.HolProg 64 :=
.seq RemovedBody861_164 RemovedBody861_165

def RemovedBody861_167 : StackLang.HolProg 64 :=
.seq RemovedBody861_159 RemovedBody861_166

def RemovedBody861_168 : StackLang.HolProg 64 :=
.seq RemovedBody861_158 RemovedBody861_167

def RemovedBody861_169 : StackLang.HolProg 64 :=
.seq RemovedBody861_157 RemovedBody861_168

def RemovedBody861_170 : StackLang.HolProg 64 :=
.seq RemovedBody861_156 RemovedBody861_169

def RemovedBody861_171 : StackLang.HolProg 64 :=
.seq RemovedBody861_155 RemovedBody861_170

def RemovedBody861_172 : StackLang.HolProg 64 :=
.seq RemovedBody861_154 RemovedBody861_171

def RemovedBody861_173 : StackLang.HolProg 64 :=
.seq RemovedBody861_153 RemovedBody861_172

def RemovedBody861_174 : StackLang.HolProg 64 :=
.seq RemovedBody861_152 RemovedBody861_173

def RemovedBody861_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody861_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody861_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody861_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody861_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody861_183 : StackLang.HolProg 64 :=
.seq RemovedBody861_181 RemovedBody861_182

def RemovedBody861_184 : StackLang.HolProg 64 :=
.seq RemovedBody861_180 RemovedBody861_183

def RemovedBody861_185 : StackLang.HolProg 64 :=
.seq RemovedBody861_179 RemovedBody861_184

def RemovedBody861_186 : StackLang.HolProg 64 :=
.seq RemovedBody861_178 RemovedBody861_185

def RemovedBody861_187 : StackLang.HolProg 64 :=
.seq RemovedBody861_177 RemovedBody861_186

def RemovedBody861_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody861_189 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody861_190 : StackLang.HolProg 64 :=
.seq RemovedBody861_188 RemovedBody861_189

def RemovedBody861_191 : StackLang.HolProg 64 :=
.call (some (RemovedBody861_187, 0, 861, 6)) (Sum.inl 68) (some (RemovedBody861_190, 861, 7))

def RemovedBody861_192 : StackLang.HolProg 64 :=
.seq RemovedBody861_176 RemovedBody861_191

def RemovedBody861_193 : StackLang.HolProg 64 :=
.seq RemovedBody861_175 RemovedBody861_192

def RemovedBody861_194 : StackLang.HolProg 64 :=
.seq RemovedBody861_174 RemovedBody861_193

def RemovedBody861_195 : StackLang.HolProg 64 :=
.seq RemovedBody861_145 RemovedBody861_194

def RemovedBody861_196 : StackLang.HolProg 64 :=
.seq RemovedBody861_142 RemovedBody861_195

def RemovedBody861_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody861_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody861_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody861_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4381#64)

def RemovedBody861_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody861_204 : StackLang.HolProg 64 :=
.seq RemovedBody861_202 RemovedBody861_203

def RemovedBody861_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody861_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody861_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody861_208 : StackLang.HolProg 64 :=
.seq RemovedBody861_206 RemovedBody861_207

def RemovedBody861_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_210 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody861_208 RemovedBody861_209

def RemovedBody861_211 : StackLang.HolProg 64 :=
.seq RemovedBody861_205 RemovedBody861_210

def RemovedBody861_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody861_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody861_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 9

def RemovedBody861_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody861_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody861_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody861_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody861_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody861_221 : StackLang.HolProg 64 :=
.seq RemovedBody861_219 RemovedBody861_220

def RemovedBody861_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody861_223 : StackLang.HolProg 64 :=
.seq RemovedBody861_221 RemovedBody861_222

def RemovedBody861_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody861_225 : StackLang.HolProg 64 :=
.seq RemovedBody861_223 RemovedBody861_224

def RemovedBody861_226 : StackLang.HolProg 64 :=
.seq RemovedBody861_218 RemovedBody861_225

def RemovedBody861_227 : StackLang.HolProg 64 :=
.seq RemovedBody861_217 RemovedBody861_226

def RemovedBody861_228 : StackLang.HolProg 64 :=
.seq RemovedBody861_216 RemovedBody861_227

def RemovedBody861_229 : StackLang.HolProg 64 :=
.seq RemovedBody861_215 RemovedBody861_228

def RemovedBody861_230 : StackLang.HolProg 64 :=
.seq RemovedBody861_214 RemovedBody861_229

def RemovedBody861_231 : StackLang.HolProg 64 :=
.seq RemovedBody861_213 RemovedBody861_230

def RemovedBody861_232 : StackLang.HolProg 64 :=
.seq RemovedBody861_212 RemovedBody861_231

def RemovedBody861_233 : StackLang.HolProg 64 :=
.seq RemovedBody861_211 RemovedBody861_232

def RemovedBody861_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody861_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody861_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody861_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody861_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody861_242 : StackLang.HolProg 64 :=
.seq RemovedBody861_240 RemovedBody861_241

def RemovedBody861_243 : StackLang.HolProg 64 :=
.seq RemovedBody861_239 RemovedBody861_242

def RemovedBody861_244 : StackLang.HolProg 64 :=
.seq RemovedBody861_238 RemovedBody861_243

def RemovedBody861_245 : StackLang.HolProg 64 :=
.seq RemovedBody861_237 RemovedBody861_244

def RemovedBody861_246 : StackLang.HolProg 64 :=
.seq RemovedBody861_236 RemovedBody861_245

def RemovedBody861_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody861_248 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody861_249 : StackLang.HolProg 64 :=
.seq RemovedBody861_247 RemovedBody861_248

def RemovedBody861_250 : StackLang.HolProg 64 :=
.call (some (RemovedBody861_246, 0, 861, 8)) (Sum.inl 860) (some (RemovedBody861_249, 861, 9))

def RemovedBody861_251 : StackLang.HolProg 64 :=
.seq RemovedBody861_235 RemovedBody861_250

def RemovedBody861_252 : StackLang.HolProg 64 :=
.seq RemovedBody861_234 RemovedBody861_251

def RemovedBody861_253 : StackLang.HolProg 64 :=
.seq RemovedBody861_233 RemovedBody861_252

def RemovedBody861_254 : StackLang.HolProg 64 :=
.seq RemovedBody861_204 RemovedBody861_253

def RemovedBody861_255 : StackLang.HolProg 64 :=
.seq RemovedBody861_201 RemovedBody861_254

def RemovedBody861_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody861_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody861_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody861_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody861_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 71#64)

def RemovedBody861_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody861_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody861_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_266 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody861_267 : StackLang.HolProg 64 :=
.seq RemovedBody861_265 RemovedBody861_266

def RemovedBody861_268 : StackLang.HolProg 64 :=
.seq RemovedBody861_264 RemovedBody861_267

def RemovedBody861_269 : StackLang.HolProg 64 :=
.seq RemovedBody861_263 RemovedBody861_268

def RemovedBody861_270 : StackLang.HolProg 64 :=
.seq RemovedBody861_262 RemovedBody861_269

def RemovedBody861_271 : StackLang.HolProg 64 :=
.seq RemovedBody861_261 RemovedBody861_270

def RemovedBody861_272 : StackLang.HolProg 64 :=
.seq RemovedBody861_260 RemovedBody861_271

def RemovedBody861_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody861_274 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody861_272 RemovedBody861_273

def RemovedBody861_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody861_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody861_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody861_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody861_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody861_280 : StackLang.HolProg 64 :=
.seq RemovedBody861_278 RemovedBody861_279

def RemovedBody861_281 : StackLang.HolProg 64 :=
.seq RemovedBody861_277 RemovedBody861_280

def RemovedBody861_282 : StackLang.HolProg 64 :=
.seq RemovedBody861_276 RemovedBody861_281

def RemovedBody861_283 : StackLang.HolProg 64 :=
.seq RemovedBody861_275 RemovedBody861_282

def RemovedBody861_284 : StackLang.HolProg 64 :=
.seq RemovedBody861_274 RemovedBody861_283

def RemovedBody861_285 : StackLang.HolProg 64 :=
.seq RemovedBody861_259 RemovedBody861_284

def RemovedBody861_286 : StackLang.HolProg 64 :=
.seq RemovedBody861_258 RemovedBody861_285

def RemovedBody861_287 : StackLang.HolProg 64 :=
.seq RemovedBody861_257 RemovedBody861_286

def RemovedBody861_288 : StackLang.HolProg 64 :=
.seq RemovedBody861_256 RemovedBody861_287

def RemovedBody861_289 : StackLang.HolProg 64 :=
.seq RemovedBody861_255 RemovedBody861_288

def RemovedBody861_290 : StackLang.HolProg 64 :=
.seq RemovedBody861_200 RemovedBody861_289

def RemovedBody861_291 : StackLang.HolProg 64 :=
.seq RemovedBody861_199 RemovedBody861_290

def RemovedBody861_292 : StackLang.HolProg 64 :=
.seq RemovedBody861_198 RemovedBody861_291

def RemovedBody861_293 : StackLang.HolProg 64 :=
.seq RemovedBody861_197 RemovedBody861_292

def RemovedBody861_294 : StackLang.HolProg 64 :=
.seq RemovedBody861_196 RemovedBody861_293

def RemovedBody861_295 : StackLang.HolProg 64 :=
.seq RemovedBody861_141 RemovedBody861_294

def RemovedBody861_296 : StackLang.HolProg 64 :=
.seq RemovedBody861_140 RemovedBody861_295

def RemovedBody861_297 : StackLang.HolProg 64 :=
.seq RemovedBody861_139 RemovedBody861_296

def RemovedBody861_298 : StackLang.HolProg 64 :=
.seq RemovedBody861_138 RemovedBody861_297

def RemovedBody861_299 : StackLang.HolProg 64 :=
.seq RemovedBody861_137 RemovedBody861_298

def RemovedBody861_300 : StackLang.HolProg 64 :=
.seq RemovedBody861_122 RemovedBody861_299

def RemovedBody861_301 : StackLang.HolProg 64 :=
.seq RemovedBody861_121 RemovedBody861_300

def RemovedBody861_302 : StackLang.HolProg 64 :=
.seq RemovedBody861_120 RemovedBody861_301

def RemovedBody861_303 : StackLang.HolProg 64 :=
.seq RemovedBody861_119 RemovedBody861_302

def RemovedBody861_304 : StackLang.HolProg 64 :=
.seq RemovedBody861_66 RemovedBody861_303

def RemovedBody861_305 : StackLang.HolProg 64 :=
.seq RemovedBody861_63 RemovedBody861_304

def RemovedBody861_306 : StackLang.HolProg 64 :=
.seq RemovedBody861_62 RemovedBody861_305

def RemovedBody861_307 : StackLang.HolProg 64 :=
.seq RemovedBody861_9 RemovedBody861_306

def RemovedBody861_308 : StackLang.HolProg 64 :=
.seq RemovedBody861_6 RemovedBody861_307

def Removed861 : Nat × StackLang.HolProg 64 := (861, RemovedBody861_308)
theorem Removed861_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc861 = Removed861 := by
  kernel_rfl
#print axioms Removed861_eq
end InitECandidate.Proofs.BackendStages
