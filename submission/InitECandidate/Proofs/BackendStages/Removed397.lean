import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc397
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody397_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody397_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody397_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody397_3 : StackLang.HolProg 64 :=
.seq RemovedBody397_1 RemovedBody397_2

def RemovedBody397_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody397_3 RemovedBody397_4

def RemovedBody397_6 : StackLang.HolProg 64 :=
.seq RemovedBody397_0 RemovedBody397_5

def RemovedBody397_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody397_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_9 : StackLang.HolProg 64 :=
.seq RemovedBody397_7 RemovedBody397_8

def RemovedBody397_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1176#64)

def RemovedBody397_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody397_13 : StackLang.HolProg 64 :=
.seq RemovedBody397_11 RemovedBody397_12

def RemovedBody397_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody397_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody397_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody397_17 : StackLang.HolProg 64 :=
.seq RemovedBody397_15 RemovedBody397_16

def RemovedBody397_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody397_17 RemovedBody397_18

def RemovedBody397_20 : StackLang.HolProg 64 :=
.seq RemovedBody397_14 RemovedBody397_19

def RemovedBody397_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody397_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody397_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 3

def RemovedBody397_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody397_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody397_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody397_30 : StackLang.HolProg 64 :=
.seq RemovedBody397_28 RemovedBody397_29

def RemovedBody397_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody397_32 : StackLang.HolProg 64 :=
.seq RemovedBody397_30 RemovedBody397_31

def RemovedBody397_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_34 : StackLang.HolProg 64 :=
.seq RemovedBody397_32 RemovedBody397_33

def RemovedBody397_35 : StackLang.HolProg 64 :=
.seq RemovedBody397_27 RemovedBody397_34

def RemovedBody397_36 : StackLang.HolProg 64 :=
.seq RemovedBody397_26 RemovedBody397_35

def RemovedBody397_37 : StackLang.HolProg 64 :=
.seq RemovedBody397_25 RemovedBody397_36

def RemovedBody397_38 : StackLang.HolProg 64 :=
.seq RemovedBody397_24 RemovedBody397_37

def RemovedBody397_39 : StackLang.HolProg 64 :=
.seq RemovedBody397_23 RemovedBody397_38

def RemovedBody397_40 : StackLang.HolProg 64 :=
.seq RemovedBody397_22 RemovedBody397_39

def RemovedBody397_41 : StackLang.HolProg 64 :=
.seq RemovedBody397_21 RemovedBody397_40

def RemovedBody397_42 : StackLang.HolProg 64 :=
.seq RemovedBody397_20 RemovedBody397_41

def RemovedBody397_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody397_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody397_50 : StackLang.HolProg 64 :=
.seq RemovedBody397_48 RemovedBody397_49

def RemovedBody397_51 : StackLang.HolProg 64 :=
.seq RemovedBody397_47 RemovedBody397_50

def RemovedBody397_52 : StackLang.HolProg 64 :=
.seq RemovedBody397_46 RemovedBody397_51

def RemovedBody397_53 : StackLang.HolProg 64 :=
.seq RemovedBody397_45 RemovedBody397_52

def RemovedBody397_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody397_56 : StackLang.HolProg 64 :=
.seq RemovedBody397_54 RemovedBody397_55

def RemovedBody397_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody397_53, 0, 397, 2)) (Sum.inl 69) (some (RemovedBody397_56, 397, 3))

def RemovedBody397_58 : StackLang.HolProg 64 :=
.seq RemovedBody397_44 RemovedBody397_57

def RemovedBody397_59 : StackLang.HolProg 64 :=
.seq RemovedBody397_43 RemovedBody397_58

def RemovedBody397_60 : StackLang.HolProg 64 :=
.seq RemovedBody397_42 RemovedBody397_59

def RemovedBody397_61 : StackLang.HolProg 64 :=
.seq RemovedBody397_13 RemovedBody397_60

def RemovedBody397_62 : StackLang.HolProg 64 :=
.seq RemovedBody397_10 RemovedBody397_61

def RemovedBody397_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody397_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody397_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1177#64)

def RemovedBody397_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody397_69 : StackLang.HolProg 64 :=
.seq RemovedBody397_67 RemovedBody397_68

def RemovedBody397_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody397_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody397_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody397_73 : StackLang.HolProg 64 :=
.seq RemovedBody397_71 RemovedBody397_72

def RemovedBody397_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody397_73 RemovedBody397_74

def RemovedBody397_76 : StackLang.HolProg 64 :=
.seq RemovedBody397_70 RemovedBody397_75

def RemovedBody397_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody397_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody397_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 5

def RemovedBody397_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody397_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody397_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody397_86 : StackLang.HolProg 64 :=
.seq RemovedBody397_84 RemovedBody397_85

def RemovedBody397_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody397_88 : StackLang.HolProg 64 :=
.seq RemovedBody397_86 RemovedBody397_87

def RemovedBody397_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_90 : StackLang.HolProg 64 :=
.seq RemovedBody397_88 RemovedBody397_89

def RemovedBody397_91 : StackLang.HolProg 64 :=
.seq RemovedBody397_83 RemovedBody397_90

def RemovedBody397_92 : StackLang.HolProg 64 :=
.seq RemovedBody397_82 RemovedBody397_91

def RemovedBody397_93 : StackLang.HolProg 64 :=
.seq RemovedBody397_81 RemovedBody397_92

def RemovedBody397_94 : StackLang.HolProg 64 :=
.seq RemovedBody397_80 RemovedBody397_93

def RemovedBody397_95 : StackLang.HolProg 64 :=
.seq RemovedBody397_79 RemovedBody397_94

def RemovedBody397_96 : StackLang.HolProg 64 :=
.seq RemovedBody397_78 RemovedBody397_95

def RemovedBody397_97 : StackLang.HolProg 64 :=
.seq RemovedBody397_77 RemovedBody397_96

def RemovedBody397_98 : StackLang.HolProg 64 :=
.seq RemovedBody397_76 RemovedBody397_97

def RemovedBody397_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody397_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody397_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_107 : StackLang.HolProg 64 :=
.seq RemovedBody397_105 RemovedBody397_106

def RemovedBody397_108 : StackLang.HolProg 64 :=
.seq RemovedBody397_104 RemovedBody397_107

def RemovedBody397_109 : StackLang.HolProg 64 :=
.seq RemovedBody397_103 RemovedBody397_108

def RemovedBody397_110 : StackLang.HolProg 64 :=
.seq RemovedBody397_102 RemovedBody397_109

def RemovedBody397_111 : StackLang.HolProg 64 :=
.seq RemovedBody397_101 RemovedBody397_110

def RemovedBody397_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody397_114 : StackLang.HolProg 64 :=
.seq RemovedBody397_112 RemovedBody397_113

def RemovedBody397_115 : StackLang.HolProg 64 :=
.call (some (RemovedBody397_111, 0, 397, 4)) (Sum.inl 68) (some (RemovedBody397_114, 397, 5))

def RemovedBody397_116 : StackLang.HolProg 64 :=
.seq RemovedBody397_100 RemovedBody397_115

def RemovedBody397_117 : StackLang.HolProg 64 :=
.seq RemovedBody397_99 RemovedBody397_116

def RemovedBody397_118 : StackLang.HolProg 64 :=
.seq RemovedBody397_98 RemovedBody397_117

def RemovedBody397_119 : StackLang.HolProg 64 :=
.seq RemovedBody397_69 RemovedBody397_118

def RemovedBody397_120 : StackLang.HolProg 64 :=
.seq RemovedBody397_66 RemovedBody397_119

def RemovedBody397_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody397_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody397_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 20#64)

def RemovedBody397_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1178#64)

def RemovedBody397_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody397_128 : StackLang.HolProg 64 :=
.seq RemovedBody397_126 RemovedBody397_127

def RemovedBody397_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody397_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody397_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody397_132 : StackLang.HolProg 64 :=
.seq RemovedBody397_130 RemovedBody397_131

def RemovedBody397_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_134 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody397_132 RemovedBody397_133

def RemovedBody397_135 : StackLang.HolProg 64 :=
.seq RemovedBody397_129 RemovedBody397_134

def RemovedBody397_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody397_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody397_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 7

def RemovedBody397_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody397_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody397_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody397_145 : StackLang.HolProg 64 :=
.seq RemovedBody397_143 RemovedBody397_144

def RemovedBody397_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody397_147 : StackLang.HolProg 64 :=
.seq RemovedBody397_145 RemovedBody397_146

def RemovedBody397_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_149 : StackLang.HolProg 64 :=
.seq RemovedBody397_147 RemovedBody397_148

def RemovedBody397_150 : StackLang.HolProg 64 :=
.seq RemovedBody397_142 RemovedBody397_149

def RemovedBody397_151 : StackLang.HolProg 64 :=
.seq RemovedBody397_141 RemovedBody397_150

def RemovedBody397_152 : StackLang.HolProg 64 :=
.seq RemovedBody397_140 RemovedBody397_151

def RemovedBody397_153 : StackLang.HolProg 64 :=
.seq RemovedBody397_139 RemovedBody397_152

def RemovedBody397_154 : StackLang.HolProg 64 :=
.seq RemovedBody397_138 RemovedBody397_153

def RemovedBody397_155 : StackLang.HolProg 64 :=
.seq RemovedBody397_137 RemovedBody397_154

def RemovedBody397_156 : StackLang.HolProg 64 :=
.seq RemovedBody397_136 RemovedBody397_155

def RemovedBody397_157 : StackLang.HolProg 64 :=
.seq RemovedBody397_135 RemovedBody397_156

def RemovedBody397_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody397_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_167 : StackLang.HolProg 64 :=
.seq RemovedBody397_165 RemovedBody397_166

def RemovedBody397_168 : StackLang.HolProg 64 :=
.seq RemovedBody397_164 RemovedBody397_167

def RemovedBody397_169 : StackLang.HolProg 64 :=
.seq RemovedBody397_163 RemovedBody397_168

def RemovedBody397_170 : StackLang.HolProg 64 :=
.seq RemovedBody397_162 RemovedBody397_169

def RemovedBody397_171 : StackLang.HolProg 64 :=
.seq RemovedBody397_161 RemovedBody397_170

def RemovedBody397_172 : StackLang.HolProg 64 :=
.seq RemovedBody397_160 RemovedBody397_171

def RemovedBody397_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_176 : StackLang.HolProg 64 :=
.seq RemovedBody397_174 RemovedBody397_175

def RemovedBody397_177 : StackLang.HolProg 64 :=
.seq RemovedBody397_173 RemovedBody397_176

def RemovedBody397_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody397_179 : StackLang.HolProg 64 :=
.seq RemovedBody397_177 RemovedBody397_178

def RemovedBody397_180 : StackLang.HolProg 64 :=
.call (some (RemovedBody397_172, 0, 397, 6)) (Sum.inl 158) (some (RemovedBody397_179, 397, 7))

def RemovedBody397_181 : StackLang.HolProg 64 :=
.seq RemovedBody397_159 RemovedBody397_180

def RemovedBody397_182 : StackLang.HolProg 64 :=
.seq RemovedBody397_158 RemovedBody397_181

def RemovedBody397_183 : StackLang.HolProg 64 :=
.seq RemovedBody397_157 RemovedBody397_182

def RemovedBody397_184 : StackLang.HolProg 64 :=
.seq RemovedBody397_128 RemovedBody397_183

def RemovedBody397_185 : StackLang.HolProg 64 :=
.seq RemovedBody397_125 RemovedBody397_184

def RemovedBody397_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody397_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody397_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody397_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody397_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551448#64))

def RemovedBody397_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody397_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1179#64)

def RemovedBody397_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody397_196 : StackLang.HolProg 64 :=
.seq RemovedBody397_194 RemovedBody397_195

def RemovedBody397_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody397_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody397_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody397_200 : StackLang.HolProg 64 :=
.seq RemovedBody397_198 RemovedBody397_199

def RemovedBody397_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_202 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody397_200 RemovedBody397_201

def RemovedBody397_203 : StackLang.HolProg 64 :=
.seq RemovedBody397_197 RemovedBody397_202

def RemovedBody397_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody397_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody397_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 9

def RemovedBody397_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody397_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody397_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody397_213 : StackLang.HolProg 64 :=
.seq RemovedBody397_211 RemovedBody397_212

def RemovedBody397_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody397_215 : StackLang.HolProg 64 :=
.seq RemovedBody397_213 RemovedBody397_214

def RemovedBody397_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_217 : StackLang.HolProg 64 :=
.seq RemovedBody397_215 RemovedBody397_216

def RemovedBody397_218 : StackLang.HolProg 64 :=
.seq RemovedBody397_210 RemovedBody397_217

def RemovedBody397_219 : StackLang.HolProg 64 :=
.seq RemovedBody397_209 RemovedBody397_218

def RemovedBody397_220 : StackLang.HolProg 64 :=
.seq RemovedBody397_208 RemovedBody397_219

def RemovedBody397_221 : StackLang.HolProg 64 :=
.seq RemovedBody397_207 RemovedBody397_220

def RemovedBody397_222 : StackLang.HolProg 64 :=
.seq RemovedBody397_206 RemovedBody397_221

def RemovedBody397_223 : StackLang.HolProg 64 :=
.seq RemovedBody397_205 RemovedBody397_222

def RemovedBody397_224 : StackLang.HolProg 64 :=
.seq RemovedBody397_204 RemovedBody397_223

def RemovedBody397_225 : StackLang.HolProg 64 :=
.seq RemovedBody397_203 RemovedBody397_224

def RemovedBody397_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody397_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody397_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_234 : StackLang.HolProg 64 :=
.seq RemovedBody397_232 RemovedBody397_233

def RemovedBody397_235 : StackLang.HolProg 64 :=
.seq RemovedBody397_231 RemovedBody397_234

def RemovedBody397_236 : StackLang.HolProg 64 :=
.seq RemovedBody397_230 RemovedBody397_235

def RemovedBody397_237 : StackLang.HolProg 64 :=
.seq RemovedBody397_229 RemovedBody397_236

def RemovedBody397_238 : StackLang.HolProg 64 :=
.seq RemovedBody397_228 RemovedBody397_237

def RemovedBody397_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody397_241 : StackLang.HolProg 64 :=
.seq RemovedBody397_239 RemovedBody397_240

def RemovedBody397_242 : StackLang.HolProg 64 :=
.call (some (RemovedBody397_238, 0, 397, 8)) (Sum.inl 307) (some (RemovedBody397_241, 397, 9))

def RemovedBody397_243 : StackLang.HolProg 64 :=
.seq RemovedBody397_227 RemovedBody397_242

def RemovedBody397_244 : StackLang.HolProg 64 :=
.seq RemovedBody397_226 RemovedBody397_243

def RemovedBody397_245 : StackLang.HolProg 64 :=
.seq RemovedBody397_225 RemovedBody397_244

def RemovedBody397_246 : StackLang.HolProg 64 :=
.seq RemovedBody397_196 RemovedBody397_245

def RemovedBody397_247 : StackLang.HolProg 64 :=
.seq RemovedBody397_193 RemovedBody397_246

def RemovedBody397_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody397_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody397_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody397_253 : StackLang.HolProg 64 :=
.seq RemovedBody397_251 RemovedBody397_252

def RemovedBody397_254 : StackLang.HolProg 64 :=
.seq RemovedBody397_250 RemovedBody397_253

def RemovedBody397_255 : StackLang.HolProg 64 :=
.seq RemovedBody397_249 RemovedBody397_254

def RemovedBody397_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1180#64)

def RemovedBody397_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody397_259 : StackLang.HolProg 64 :=
.seq RemovedBody397_257 RemovedBody397_258

def RemovedBody397_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody397_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody397_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody397_263 : StackLang.HolProg 64 :=
.seq RemovedBody397_261 RemovedBody397_262

def RemovedBody397_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_265 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody397_263 RemovedBody397_264

def RemovedBody397_266 : StackLang.HolProg 64 :=
.seq RemovedBody397_260 RemovedBody397_265

def RemovedBody397_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody397_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody397_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 11

def RemovedBody397_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody397_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody397_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody397_276 : StackLang.HolProg 64 :=
.seq RemovedBody397_274 RemovedBody397_275

def RemovedBody397_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody397_278 : StackLang.HolProg 64 :=
.seq RemovedBody397_276 RemovedBody397_277

def RemovedBody397_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_280 : StackLang.HolProg 64 :=
.seq RemovedBody397_278 RemovedBody397_279

def RemovedBody397_281 : StackLang.HolProg 64 :=
.seq RemovedBody397_273 RemovedBody397_280

def RemovedBody397_282 : StackLang.HolProg 64 :=
.seq RemovedBody397_272 RemovedBody397_281

def RemovedBody397_283 : StackLang.HolProg 64 :=
.seq RemovedBody397_271 RemovedBody397_282

def RemovedBody397_284 : StackLang.HolProg 64 :=
.seq RemovedBody397_270 RemovedBody397_283

def RemovedBody397_285 : StackLang.HolProg 64 :=
.seq RemovedBody397_269 RemovedBody397_284

def RemovedBody397_286 : StackLang.HolProg 64 :=
.seq RemovedBody397_268 RemovedBody397_285

def RemovedBody397_287 : StackLang.HolProg 64 :=
.seq RemovedBody397_267 RemovedBody397_286

def RemovedBody397_288 : StackLang.HolProg 64 :=
.seq RemovedBody397_266 RemovedBody397_287

def RemovedBody397_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody397_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody397_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody397_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody397_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody397_299 : StackLang.HolProg 64 :=
.seq RemovedBody397_297 RemovedBody397_298

def RemovedBody397_300 : StackLang.HolProg 64 :=
.seq RemovedBody397_296 RemovedBody397_299

def RemovedBody397_301 : StackLang.HolProg 64 :=
.seq RemovedBody397_295 RemovedBody397_300

def RemovedBody397_302 : StackLang.HolProg 64 :=
.seq RemovedBody397_294 RemovedBody397_301

def RemovedBody397_303 : StackLang.HolProg 64 :=
.seq RemovedBody397_293 RemovedBody397_302

def RemovedBody397_304 : StackLang.HolProg 64 :=
.seq RemovedBody397_292 RemovedBody397_303

def RemovedBody397_305 : StackLang.HolProg 64 :=
.seq RemovedBody397_291 RemovedBody397_304

def RemovedBody397_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody397_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody397_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody397_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody397_310 : StackLang.HolProg 64 :=
.seq RemovedBody397_308 RemovedBody397_309

def RemovedBody397_311 : StackLang.HolProg 64 :=
.seq RemovedBody397_307 RemovedBody397_310

def RemovedBody397_312 : StackLang.HolProg 64 :=
.seq RemovedBody397_306 RemovedBody397_311

def RemovedBody397_313 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody397_314 : StackLang.HolProg 64 :=
.seq RemovedBody397_312 RemovedBody397_313

def RemovedBody397_315 : StackLang.HolProg 64 :=
.call (some (RemovedBody397_305, 0, 397, 10)) (Sum.inl 70) (some (RemovedBody397_314, 397, 11))

def RemovedBody397_316 : StackLang.HolProg 64 :=
.seq RemovedBody397_290 RemovedBody397_315

def RemovedBody397_317 : StackLang.HolProg 64 :=
.seq RemovedBody397_289 RemovedBody397_316

def RemovedBody397_318 : StackLang.HolProg 64 :=
.seq RemovedBody397_288 RemovedBody397_317

def RemovedBody397_319 : StackLang.HolProg 64 :=
.seq RemovedBody397_259 RemovedBody397_318

def RemovedBody397_320 : StackLang.HolProg 64 :=
.seq RemovedBody397_256 RemovedBody397_319

def RemovedBody397_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody397_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody397_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody397_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody397_325 : StackLang.HolProg 64 :=
.seq RemovedBody397_323 RemovedBody397_324

def RemovedBody397_326 : StackLang.HolProg 64 :=
.seq RemovedBody397_322 RemovedBody397_325

def RemovedBody397_327 : StackLang.HolProg 64 :=
.seq RemovedBody397_321 RemovedBody397_326

def RemovedBody397_328 : StackLang.HolProg 64 :=
.seq RemovedBody397_320 RemovedBody397_327

def RemovedBody397_329 : StackLang.HolProg 64 :=
.seq RemovedBody397_255 RemovedBody397_328

def RemovedBody397_330 : StackLang.HolProg 64 :=
.seq RemovedBody397_248 RemovedBody397_329

def RemovedBody397_331 : StackLang.HolProg 64 :=
.seq RemovedBody397_247 RemovedBody397_330

def RemovedBody397_332 : StackLang.HolProg 64 :=
.seq RemovedBody397_192 RemovedBody397_331

def RemovedBody397_333 : StackLang.HolProg 64 :=
.seq RemovedBody397_191 RemovedBody397_332

def RemovedBody397_334 : StackLang.HolProg 64 :=
.seq RemovedBody397_190 RemovedBody397_333

def RemovedBody397_335 : StackLang.HolProg 64 :=
.seq RemovedBody397_189 RemovedBody397_334

def RemovedBody397_336 : StackLang.HolProg 64 :=
.seq RemovedBody397_188 RemovedBody397_335

def RemovedBody397_337 : StackLang.HolProg 64 :=
.seq RemovedBody397_187 RemovedBody397_336

def RemovedBody397_338 : StackLang.HolProg 64 :=
.seq RemovedBody397_186 RemovedBody397_337

def RemovedBody397_339 : StackLang.HolProg 64 :=
.seq RemovedBody397_185 RemovedBody397_338

def RemovedBody397_340 : StackLang.HolProg 64 :=
.seq RemovedBody397_124 RemovedBody397_339

def RemovedBody397_341 : StackLang.HolProg 64 :=
.seq RemovedBody397_123 RemovedBody397_340

def RemovedBody397_342 : StackLang.HolProg 64 :=
.seq RemovedBody397_122 RemovedBody397_341

def RemovedBody397_343 : StackLang.HolProg 64 :=
.seq RemovedBody397_121 RemovedBody397_342

def RemovedBody397_344 : StackLang.HolProg 64 :=
.seq RemovedBody397_120 RemovedBody397_343

def RemovedBody397_345 : StackLang.HolProg 64 :=
.seq RemovedBody397_65 RemovedBody397_344

def RemovedBody397_346 : StackLang.HolProg 64 :=
.seq RemovedBody397_64 RemovedBody397_345

def RemovedBody397_347 : StackLang.HolProg 64 :=
.seq RemovedBody397_63 RemovedBody397_346

def RemovedBody397_348 : StackLang.HolProg 64 :=
.seq RemovedBody397_62 RemovedBody397_347

def RemovedBody397_349 : StackLang.HolProg 64 :=
.seq RemovedBody397_9 RemovedBody397_348

def RemovedBody397_350 : StackLang.HolProg 64 :=
.seq RemovedBody397_6 RemovedBody397_349

def Removed397 : Nat × StackLang.HolProg 64 := (397, RemovedBody397_350)
theorem Removed397_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc397 = Removed397 := by
  kernel_rfl
#print axioms Removed397_eq
end InitECandidate.Proofs.BackendStages
