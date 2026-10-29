import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc748
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody748_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody748_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody748_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody748_3 : StackLang.HolProg 64 :=
.seq RemovedBody748_1 RemovedBody748_2

def RemovedBody748_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody748_3 RemovedBody748_4

def RemovedBody748_6 : StackLang.HolProg 64 :=
.seq RemovedBody748_0 RemovedBody748_5

def RemovedBody748_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody748_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody748_9 : StackLang.HolProg 64 :=
.seq RemovedBody748_7 RemovedBody748_8

def RemovedBody748_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3308#64)

def RemovedBody748_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody748_13 : StackLang.HolProg 64 :=
.seq RemovedBody748_11 RemovedBody748_12

def RemovedBody748_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody748_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody748_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody748_17 : StackLang.HolProg 64 :=
.seq RemovedBody748_15 RemovedBody748_16

def RemovedBody748_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody748_17 RemovedBody748_18

def RemovedBody748_20 : StackLang.HolProg 64 :=
.seq RemovedBody748_14 RemovedBody748_19

def RemovedBody748_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody748_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody748_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 748 3

def RemovedBody748_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody748_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody748_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody748_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody748_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody748_30 : StackLang.HolProg 64 :=
.seq RemovedBody748_28 RemovedBody748_29

def RemovedBody748_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody748_32 : StackLang.HolProg 64 :=
.seq RemovedBody748_30 RemovedBody748_31

def RemovedBody748_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody748_34 : StackLang.HolProg 64 :=
.seq RemovedBody748_32 RemovedBody748_33

def RemovedBody748_35 : StackLang.HolProg 64 :=
.seq RemovedBody748_27 RemovedBody748_34

def RemovedBody748_36 : StackLang.HolProg 64 :=
.seq RemovedBody748_26 RemovedBody748_35

def RemovedBody748_37 : StackLang.HolProg 64 :=
.seq RemovedBody748_25 RemovedBody748_36

def RemovedBody748_38 : StackLang.HolProg 64 :=
.seq RemovedBody748_24 RemovedBody748_37

def RemovedBody748_39 : StackLang.HolProg 64 :=
.seq RemovedBody748_23 RemovedBody748_38

def RemovedBody748_40 : StackLang.HolProg 64 :=
.seq RemovedBody748_22 RemovedBody748_39

def RemovedBody748_41 : StackLang.HolProg 64 :=
.seq RemovedBody748_21 RemovedBody748_40

def RemovedBody748_42 : StackLang.HolProg 64 :=
.seq RemovedBody748_20 RemovedBody748_41

def RemovedBody748_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody748_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody748_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody748_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody748_50 : StackLang.HolProg 64 :=
.seq RemovedBody748_48 RemovedBody748_49

def RemovedBody748_51 : StackLang.HolProg 64 :=
.seq RemovedBody748_47 RemovedBody748_50

def RemovedBody748_52 : StackLang.HolProg 64 :=
.seq RemovedBody748_46 RemovedBody748_51

def RemovedBody748_53 : StackLang.HolProg 64 :=
.seq RemovedBody748_45 RemovedBody748_52

def RemovedBody748_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody748_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody748_56 : StackLang.HolProg 64 :=
.seq RemovedBody748_54 RemovedBody748_55

def RemovedBody748_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody748_53, 0, 748, 2)) (Sum.inl 731) (some (RemovedBody748_56, 748, 3))

def RemovedBody748_58 : StackLang.HolProg 64 :=
.seq RemovedBody748_44 RemovedBody748_57

def RemovedBody748_59 : StackLang.HolProg 64 :=
.seq RemovedBody748_43 RemovedBody748_58

def RemovedBody748_60 : StackLang.HolProg 64 :=
.seq RemovedBody748_42 RemovedBody748_59

def RemovedBody748_61 : StackLang.HolProg 64 :=
.seq RemovedBody748_13 RemovedBody748_60

def RemovedBody748_62 : StackLang.HolProg 64 :=
.seq RemovedBody748_10 RemovedBody748_61

def RemovedBody748_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody748_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody748_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody748_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3309#64)

def RemovedBody748_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody748_70 : StackLang.HolProg 64 :=
.seq RemovedBody748_68 RemovedBody748_69

def RemovedBody748_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody748_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody748_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody748_74 : StackLang.HolProg 64 :=
.seq RemovedBody748_72 RemovedBody748_73

def RemovedBody748_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody748_74 RemovedBody748_75

def RemovedBody748_77 : StackLang.HolProg 64 :=
.seq RemovedBody748_71 RemovedBody748_76

def RemovedBody748_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody748_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody748_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 748 5

def RemovedBody748_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody748_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody748_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody748_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody748_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody748_87 : StackLang.HolProg 64 :=
.seq RemovedBody748_85 RemovedBody748_86

def RemovedBody748_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody748_89 : StackLang.HolProg 64 :=
.seq RemovedBody748_87 RemovedBody748_88

def RemovedBody748_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody748_91 : StackLang.HolProg 64 :=
.seq RemovedBody748_89 RemovedBody748_90

def RemovedBody748_92 : StackLang.HolProg 64 :=
.seq RemovedBody748_84 RemovedBody748_91

def RemovedBody748_93 : StackLang.HolProg 64 :=
.seq RemovedBody748_83 RemovedBody748_92

def RemovedBody748_94 : StackLang.HolProg 64 :=
.seq RemovedBody748_82 RemovedBody748_93

def RemovedBody748_95 : StackLang.HolProg 64 :=
.seq RemovedBody748_81 RemovedBody748_94

def RemovedBody748_96 : StackLang.HolProg 64 :=
.seq RemovedBody748_80 RemovedBody748_95

def RemovedBody748_97 : StackLang.HolProg 64 :=
.seq RemovedBody748_79 RemovedBody748_96

def RemovedBody748_98 : StackLang.HolProg 64 :=
.seq RemovedBody748_78 RemovedBody748_97

def RemovedBody748_99 : StackLang.HolProg 64 :=
.seq RemovedBody748_77 RemovedBody748_98

def RemovedBody748_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody748_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody748_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody748_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody748_107 : StackLang.HolProg 64 :=
.seq RemovedBody748_105 RemovedBody748_106

def RemovedBody748_108 : StackLang.HolProg 64 :=
.seq RemovedBody748_104 RemovedBody748_107

def RemovedBody748_109 : StackLang.HolProg 64 :=
.seq RemovedBody748_103 RemovedBody748_108

def RemovedBody748_110 : StackLang.HolProg 64 :=
.seq RemovedBody748_102 RemovedBody748_109

def RemovedBody748_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody748_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody748_113 : StackLang.HolProg 64 :=
.seq RemovedBody748_111 RemovedBody748_112

def RemovedBody748_114 : StackLang.HolProg 64 :=
.call (some (RemovedBody748_110, 0, 748, 4)) (Sum.inl 730) (some (RemovedBody748_113, 748, 5))

def RemovedBody748_115 : StackLang.HolProg 64 :=
.seq RemovedBody748_101 RemovedBody748_114

def RemovedBody748_116 : StackLang.HolProg 64 :=
.seq RemovedBody748_100 RemovedBody748_115

def RemovedBody748_117 : StackLang.HolProg 64 :=
.seq RemovedBody748_99 RemovedBody748_116

def RemovedBody748_118 : StackLang.HolProg 64 :=
.seq RemovedBody748_70 RemovedBody748_117

def RemovedBody748_119 : StackLang.HolProg 64 :=
.seq RemovedBody748_67 RemovedBody748_118

def RemovedBody748_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody748_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody748_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3310#64)

def RemovedBody748_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody748_127 : StackLang.HolProg 64 :=
.seq RemovedBody748_125 RemovedBody748_126

def RemovedBody748_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody748_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody748_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody748_131 : StackLang.HolProg 64 :=
.seq RemovedBody748_129 RemovedBody748_130

def RemovedBody748_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody748_131 RemovedBody748_132

def RemovedBody748_134 : StackLang.HolProg 64 :=
.seq RemovedBody748_128 RemovedBody748_133

def RemovedBody748_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody748_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody748_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 748 7

def RemovedBody748_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody748_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody748_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody748_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody748_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody748_144 : StackLang.HolProg 64 :=
.seq RemovedBody748_142 RemovedBody748_143

def RemovedBody748_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody748_146 : StackLang.HolProg 64 :=
.seq RemovedBody748_144 RemovedBody748_145

def RemovedBody748_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody748_148 : StackLang.HolProg 64 :=
.seq RemovedBody748_146 RemovedBody748_147

def RemovedBody748_149 : StackLang.HolProg 64 :=
.seq RemovedBody748_141 RemovedBody748_148

def RemovedBody748_150 : StackLang.HolProg 64 :=
.seq RemovedBody748_140 RemovedBody748_149

def RemovedBody748_151 : StackLang.HolProg 64 :=
.seq RemovedBody748_139 RemovedBody748_150

def RemovedBody748_152 : StackLang.HolProg 64 :=
.seq RemovedBody748_138 RemovedBody748_151

def RemovedBody748_153 : StackLang.HolProg 64 :=
.seq RemovedBody748_137 RemovedBody748_152

def RemovedBody748_154 : StackLang.HolProg 64 :=
.seq RemovedBody748_136 RemovedBody748_153

def RemovedBody748_155 : StackLang.HolProg 64 :=
.seq RemovedBody748_135 RemovedBody748_154

def RemovedBody748_156 : StackLang.HolProg 64 :=
.seq RemovedBody748_134 RemovedBody748_155

def RemovedBody748_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody748_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody748_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody748_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody748_164 : StackLang.HolProg 64 :=
.seq RemovedBody748_162 RemovedBody748_163

def RemovedBody748_165 : StackLang.HolProg 64 :=
.seq RemovedBody748_161 RemovedBody748_164

def RemovedBody748_166 : StackLang.HolProg 64 :=
.seq RemovedBody748_160 RemovedBody748_165

def RemovedBody748_167 : StackLang.HolProg 64 :=
.seq RemovedBody748_159 RemovedBody748_166

def RemovedBody748_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody748_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody748_170 : StackLang.HolProg 64 :=
.seq RemovedBody748_168 RemovedBody748_169

def RemovedBody748_171 : StackLang.HolProg 64 :=
.call (some (RemovedBody748_167, 0, 748, 6)) (Sum.inl 730) (some (RemovedBody748_170, 748, 7))

def RemovedBody748_172 : StackLang.HolProg 64 :=
.seq RemovedBody748_158 RemovedBody748_171

def RemovedBody748_173 : StackLang.HolProg 64 :=
.seq RemovedBody748_157 RemovedBody748_172

def RemovedBody748_174 : StackLang.HolProg 64 :=
.seq RemovedBody748_156 RemovedBody748_173

def RemovedBody748_175 : StackLang.HolProg 64 :=
.seq RemovedBody748_127 RemovedBody748_174

def RemovedBody748_176 : StackLang.HolProg 64 :=
.seq RemovedBody748_124 RemovedBody748_175

def RemovedBody748_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody748_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody748_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody748_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody748_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody748_182 : StackLang.HolProg 64 :=
.seq RemovedBody748_180 RemovedBody748_181

def RemovedBody748_183 : StackLang.HolProg 64 :=
.seq RemovedBody748_179 RemovedBody748_182

def RemovedBody748_184 : StackLang.HolProg 64 :=
.seq RemovedBody748_178 RemovedBody748_183

def RemovedBody748_185 : StackLang.HolProg 64 :=
.seq RemovedBody748_177 RemovedBody748_184

def RemovedBody748_186 : StackLang.HolProg 64 :=
.seq RemovedBody748_176 RemovedBody748_185

def RemovedBody748_187 : StackLang.HolProg 64 :=
.seq RemovedBody748_123 RemovedBody748_186

def RemovedBody748_188 : StackLang.HolProg 64 :=
.seq RemovedBody748_122 RemovedBody748_187

def RemovedBody748_189 : StackLang.HolProg 64 :=
.seq RemovedBody748_121 RemovedBody748_188

def RemovedBody748_190 : StackLang.HolProg 64 :=
.seq RemovedBody748_120 RemovedBody748_189

def RemovedBody748_191 : StackLang.HolProg 64 :=
.seq RemovedBody748_119 RemovedBody748_190

def RemovedBody748_192 : StackLang.HolProg 64 :=
.seq RemovedBody748_66 RemovedBody748_191

def RemovedBody748_193 : StackLang.HolProg 64 :=
.seq RemovedBody748_65 RemovedBody748_192

def RemovedBody748_194 : StackLang.HolProg 64 :=
.seq RemovedBody748_64 RemovedBody748_193

def RemovedBody748_195 : StackLang.HolProg 64 :=
.seq RemovedBody748_63 RemovedBody748_194

def RemovedBody748_196 : StackLang.HolProg 64 :=
.seq RemovedBody748_62 RemovedBody748_195

def RemovedBody748_197 : StackLang.HolProg 64 :=
.seq RemovedBody748_9 RemovedBody748_196

def RemovedBody748_198 : StackLang.HolProg 64 :=
.seq RemovedBody748_6 RemovedBody748_197

def Removed748 : Nat × StackLang.HolProg 64 := (748, RemovedBody748_198)
theorem Removed748_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc748 = Removed748 := by
  kernel_rfl
#print axioms Removed748_eq
end InitECandidate.Proofs.BackendStages
