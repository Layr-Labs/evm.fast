import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc789
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody789_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody789_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody789_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody789_3 : StackLang.HolProg 64 :=
.seq RemovedBody789_1 RemovedBody789_2

def RemovedBody789_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody789_3 RemovedBody789_4

def RemovedBody789_6 : StackLang.HolProg 64 :=
.seq RemovedBody789_0 RemovedBody789_5

def RemovedBody789_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody789_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody789_9 : StackLang.HolProg 64 :=
.seq RemovedBody789_7 RemovedBody789_8

def RemovedBody789_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3659#64)

def RemovedBody789_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody789_13 : StackLang.HolProg 64 :=
.seq RemovedBody789_11 RemovedBody789_12

def RemovedBody789_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody789_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody789_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody789_17 : StackLang.HolProg 64 :=
.seq RemovedBody789_15 RemovedBody789_16

def RemovedBody789_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody789_17 RemovedBody789_18

def RemovedBody789_20 : StackLang.HolProg 64 :=
.seq RemovedBody789_14 RemovedBody789_19

def RemovedBody789_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody789_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody789_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 3

def RemovedBody789_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody789_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody789_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody789_30 : StackLang.HolProg 64 :=
.seq RemovedBody789_28 RemovedBody789_29

def RemovedBody789_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody789_32 : StackLang.HolProg 64 :=
.seq RemovedBody789_30 RemovedBody789_31

def RemovedBody789_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_34 : StackLang.HolProg 64 :=
.seq RemovedBody789_32 RemovedBody789_33

def RemovedBody789_35 : StackLang.HolProg 64 :=
.seq RemovedBody789_27 RemovedBody789_34

def RemovedBody789_36 : StackLang.HolProg 64 :=
.seq RemovedBody789_26 RemovedBody789_35

def RemovedBody789_37 : StackLang.HolProg 64 :=
.seq RemovedBody789_25 RemovedBody789_36

def RemovedBody789_38 : StackLang.HolProg 64 :=
.seq RemovedBody789_24 RemovedBody789_37

def RemovedBody789_39 : StackLang.HolProg 64 :=
.seq RemovedBody789_23 RemovedBody789_38

def RemovedBody789_40 : StackLang.HolProg 64 :=
.seq RemovedBody789_22 RemovedBody789_39

def RemovedBody789_41 : StackLang.HolProg 64 :=
.seq RemovedBody789_21 RemovedBody789_40

def RemovedBody789_42 : StackLang.HolProg 64 :=
.seq RemovedBody789_20 RemovedBody789_41

def RemovedBody789_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody789_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody789_50 : StackLang.HolProg 64 :=
.seq RemovedBody789_48 RemovedBody789_49

def RemovedBody789_51 : StackLang.HolProg 64 :=
.seq RemovedBody789_47 RemovedBody789_50

def RemovedBody789_52 : StackLang.HolProg 64 :=
.seq RemovedBody789_46 RemovedBody789_51

def RemovedBody789_53 : StackLang.HolProg 64 :=
.seq RemovedBody789_45 RemovedBody789_52

def RemovedBody789_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody789_56 : StackLang.HolProg 64 :=
.seq RemovedBody789_54 RemovedBody789_55

def RemovedBody789_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody789_53, 0, 789, 2)) (Sum.inl 69) (some (RemovedBody789_56, 789, 3))

def RemovedBody789_58 : StackLang.HolProg 64 :=
.seq RemovedBody789_44 RemovedBody789_57

def RemovedBody789_59 : StackLang.HolProg 64 :=
.seq RemovedBody789_43 RemovedBody789_58

def RemovedBody789_60 : StackLang.HolProg 64 :=
.seq RemovedBody789_42 RemovedBody789_59

def RemovedBody789_61 : StackLang.HolProg 64 :=
.seq RemovedBody789_13 RemovedBody789_60

def RemovedBody789_62 : StackLang.HolProg 64 :=
.seq RemovedBody789_10 RemovedBody789_61

def RemovedBody789_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody789_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def RemovedBody789_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3660#64)

def RemovedBody789_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody789_69 : StackLang.HolProg 64 :=
.seq RemovedBody789_67 RemovedBody789_68

def RemovedBody789_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody789_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody789_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody789_73 : StackLang.HolProg 64 :=
.seq RemovedBody789_71 RemovedBody789_72

def RemovedBody789_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody789_73 RemovedBody789_74

def RemovedBody789_76 : StackLang.HolProg 64 :=
.seq RemovedBody789_70 RemovedBody789_75

def RemovedBody789_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody789_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody789_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 5

def RemovedBody789_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody789_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody789_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody789_86 : StackLang.HolProg 64 :=
.seq RemovedBody789_84 RemovedBody789_85

def RemovedBody789_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody789_88 : StackLang.HolProg 64 :=
.seq RemovedBody789_86 RemovedBody789_87

def RemovedBody789_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_90 : StackLang.HolProg 64 :=
.seq RemovedBody789_88 RemovedBody789_89

def RemovedBody789_91 : StackLang.HolProg 64 :=
.seq RemovedBody789_83 RemovedBody789_90

def RemovedBody789_92 : StackLang.HolProg 64 :=
.seq RemovedBody789_82 RemovedBody789_91

def RemovedBody789_93 : StackLang.HolProg 64 :=
.seq RemovedBody789_81 RemovedBody789_92

def RemovedBody789_94 : StackLang.HolProg 64 :=
.seq RemovedBody789_80 RemovedBody789_93

def RemovedBody789_95 : StackLang.HolProg 64 :=
.seq RemovedBody789_79 RemovedBody789_94

def RemovedBody789_96 : StackLang.HolProg 64 :=
.seq RemovedBody789_78 RemovedBody789_95

def RemovedBody789_97 : StackLang.HolProg 64 :=
.seq RemovedBody789_77 RemovedBody789_96

def RemovedBody789_98 : StackLang.HolProg 64 :=
.seq RemovedBody789_76 RemovedBody789_97

def RemovedBody789_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody789_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody789_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody789_107 : StackLang.HolProg 64 :=
.seq RemovedBody789_105 RemovedBody789_106

def RemovedBody789_108 : StackLang.HolProg 64 :=
.seq RemovedBody789_104 RemovedBody789_107

def RemovedBody789_109 : StackLang.HolProg 64 :=
.seq RemovedBody789_103 RemovedBody789_108

def RemovedBody789_110 : StackLang.HolProg 64 :=
.seq RemovedBody789_102 RemovedBody789_109

def RemovedBody789_111 : StackLang.HolProg 64 :=
.seq RemovedBody789_101 RemovedBody789_110

def RemovedBody789_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody789_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody789_114 : StackLang.HolProg 64 :=
.seq RemovedBody789_112 RemovedBody789_113

def RemovedBody789_115 : StackLang.HolProg 64 :=
.call (some (RemovedBody789_111, 0, 789, 4)) (Sum.inl 68) (some (RemovedBody789_114, 789, 5))

def RemovedBody789_116 : StackLang.HolProg 64 :=
.seq RemovedBody789_100 RemovedBody789_115

def RemovedBody789_117 : StackLang.HolProg 64 :=
.seq RemovedBody789_99 RemovedBody789_116

def RemovedBody789_118 : StackLang.HolProg 64 :=
.seq RemovedBody789_98 RemovedBody789_117

def RemovedBody789_119 : StackLang.HolProg 64 :=
.seq RemovedBody789_69 RemovedBody789_118

def RemovedBody789_120 : StackLang.HolProg 64 :=
.seq RemovedBody789_66 RemovedBody789_119

def RemovedBody789_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody789_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody789_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody789_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody789_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody789_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def RemovedBody789_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1344#64)))

def RemovedBody789_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 4#64)

def RemovedBody789_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody789_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3661#64)

def RemovedBody789_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody789_133 : StackLang.HolProg 64 :=
.seq RemovedBody789_131 RemovedBody789_132

def RemovedBody789_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody789_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody789_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody789_137 : StackLang.HolProg 64 :=
.seq RemovedBody789_135 RemovedBody789_136

def RemovedBody789_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody789_137 RemovedBody789_138

def RemovedBody789_140 : StackLang.HolProg 64 :=
.seq RemovedBody789_134 RemovedBody789_139

def RemovedBody789_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody789_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody789_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 7

def RemovedBody789_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody789_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody789_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody789_150 : StackLang.HolProg 64 :=
.seq RemovedBody789_148 RemovedBody789_149

def RemovedBody789_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody789_152 : StackLang.HolProg 64 :=
.seq RemovedBody789_150 RemovedBody789_151

def RemovedBody789_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_154 : StackLang.HolProg 64 :=
.seq RemovedBody789_152 RemovedBody789_153

def RemovedBody789_155 : StackLang.HolProg 64 :=
.seq RemovedBody789_147 RemovedBody789_154

def RemovedBody789_156 : StackLang.HolProg 64 :=
.seq RemovedBody789_146 RemovedBody789_155

def RemovedBody789_157 : StackLang.HolProg 64 :=
.seq RemovedBody789_145 RemovedBody789_156

def RemovedBody789_158 : StackLang.HolProg 64 :=
.seq RemovedBody789_144 RemovedBody789_157

def RemovedBody789_159 : StackLang.HolProg 64 :=
.seq RemovedBody789_143 RemovedBody789_158

def RemovedBody789_160 : StackLang.HolProg 64 :=
.seq RemovedBody789_142 RemovedBody789_159

def RemovedBody789_161 : StackLang.HolProg 64 :=
.seq RemovedBody789_141 RemovedBody789_160

def RemovedBody789_162 : StackLang.HolProg 64 :=
.seq RemovedBody789_140 RemovedBody789_161

def RemovedBody789_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody789_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody789_170 : StackLang.HolProg 64 :=
.seq RemovedBody789_168 RemovedBody789_169

def RemovedBody789_171 : StackLang.HolProg 64 :=
.seq RemovedBody789_167 RemovedBody789_170

def RemovedBody789_172 : StackLang.HolProg 64 :=
.seq RemovedBody789_166 RemovedBody789_171

def RemovedBody789_173 : StackLang.HolProg 64 :=
.seq RemovedBody789_165 RemovedBody789_172

def RemovedBody789_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody789_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody789_176 : StackLang.HolProg 64 :=
.seq RemovedBody789_174 RemovedBody789_175

def RemovedBody789_177 : StackLang.HolProg 64 :=
.call (some (RemovedBody789_173, 0, 789, 6)) (Sum.inl 784) (some (RemovedBody789_176, 789, 7))

def RemovedBody789_178 : StackLang.HolProg 64 :=
.seq RemovedBody789_164 RemovedBody789_177

def RemovedBody789_179 : StackLang.HolProg 64 :=
.seq RemovedBody789_163 RemovedBody789_178

def RemovedBody789_180 : StackLang.HolProg 64 :=
.seq RemovedBody789_162 RemovedBody789_179

def RemovedBody789_181 : StackLang.HolProg 64 :=
.seq RemovedBody789_133 RemovedBody789_180

def RemovedBody789_182 : StackLang.HolProg 64 :=
.seq RemovedBody789_130 RemovedBody789_181

def RemovedBody789_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody789_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody789_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3662#64)

def RemovedBody789_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody789_188 : StackLang.HolProg 64 :=
.seq RemovedBody789_186 RemovedBody789_187

def RemovedBody789_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody789_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody789_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody789_192 : StackLang.HolProg 64 :=
.seq RemovedBody789_190 RemovedBody789_191

def RemovedBody789_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody789_192 RemovedBody789_193

def RemovedBody789_195 : StackLang.HolProg 64 :=
.seq RemovedBody789_189 RemovedBody789_194

def RemovedBody789_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody789_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody789_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 9

def RemovedBody789_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody789_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody789_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody789_205 : StackLang.HolProg 64 :=
.seq RemovedBody789_203 RemovedBody789_204

def RemovedBody789_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody789_207 : StackLang.HolProg 64 :=
.seq RemovedBody789_205 RemovedBody789_206

def RemovedBody789_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_209 : StackLang.HolProg 64 :=
.seq RemovedBody789_207 RemovedBody789_208

def RemovedBody789_210 : StackLang.HolProg 64 :=
.seq RemovedBody789_202 RemovedBody789_209

def RemovedBody789_211 : StackLang.HolProg 64 :=
.seq RemovedBody789_201 RemovedBody789_210

def RemovedBody789_212 : StackLang.HolProg 64 :=
.seq RemovedBody789_200 RemovedBody789_211

def RemovedBody789_213 : StackLang.HolProg 64 :=
.seq RemovedBody789_199 RemovedBody789_212

def RemovedBody789_214 : StackLang.HolProg 64 :=
.seq RemovedBody789_198 RemovedBody789_213

def RemovedBody789_215 : StackLang.HolProg 64 :=
.seq RemovedBody789_197 RemovedBody789_214

def RemovedBody789_216 : StackLang.HolProg 64 :=
.seq RemovedBody789_196 RemovedBody789_215

def RemovedBody789_217 : StackLang.HolProg 64 :=
.seq RemovedBody789_195 RemovedBody789_216

def RemovedBody789_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody789_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody789_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_226 : StackLang.HolProg 64 :=
.seq RemovedBody789_224 RemovedBody789_225

def RemovedBody789_227 : StackLang.HolProg 64 :=
.seq RemovedBody789_223 RemovedBody789_226

def RemovedBody789_228 : StackLang.HolProg 64 :=
.seq RemovedBody789_222 RemovedBody789_227

def RemovedBody789_229 : StackLang.HolProg 64 :=
.seq RemovedBody789_221 RemovedBody789_228

def RemovedBody789_230 : StackLang.HolProg 64 :=
.seq RemovedBody789_220 RemovedBody789_229

def RemovedBody789_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody789_233 : StackLang.HolProg 64 :=
.seq RemovedBody789_231 RemovedBody789_232

def RemovedBody789_234 : StackLang.HolProg 64 :=
.call (some (RemovedBody789_230, 0, 789, 8)) (Sum.inl 779) (some (RemovedBody789_233, 789, 9))

def RemovedBody789_235 : StackLang.HolProg 64 :=
.seq RemovedBody789_219 RemovedBody789_234

def RemovedBody789_236 : StackLang.HolProg 64 :=
.seq RemovedBody789_218 RemovedBody789_235

def RemovedBody789_237 : StackLang.HolProg 64 :=
.seq RemovedBody789_217 RemovedBody789_236

def RemovedBody789_238 : StackLang.HolProg 64 :=
.seq RemovedBody789_188 RemovedBody789_237

def RemovedBody789_239 : StackLang.HolProg 64 :=
.seq RemovedBody789_185 RemovedBody789_238

def RemovedBody789_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody789_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody789_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_243 : StackLang.HolProg 64 :=
.seq RemovedBody789_241 RemovedBody789_242

def RemovedBody789_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3663#64)

def RemovedBody789_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody789_247 : StackLang.HolProg 64 :=
.seq RemovedBody789_245 RemovedBody789_246

def RemovedBody789_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody789_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody789_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody789_251 : StackLang.HolProg 64 :=
.seq RemovedBody789_249 RemovedBody789_250

def RemovedBody789_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_253 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody789_251 RemovedBody789_252

def RemovedBody789_254 : StackLang.HolProg 64 :=
.seq RemovedBody789_248 RemovedBody789_253

def RemovedBody789_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody789_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody789_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 11

def RemovedBody789_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody789_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody789_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody789_264 : StackLang.HolProg 64 :=
.seq RemovedBody789_262 RemovedBody789_263

def RemovedBody789_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody789_266 : StackLang.HolProg 64 :=
.seq RemovedBody789_264 RemovedBody789_265

def RemovedBody789_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_268 : StackLang.HolProg 64 :=
.seq RemovedBody789_266 RemovedBody789_267

def RemovedBody789_269 : StackLang.HolProg 64 :=
.seq RemovedBody789_261 RemovedBody789_268

def RemovedBody789_270 : StackLang.HolProg 64 :=
.seq RemovedBody789_260 RemovedBody789_269

def RemovedBody789_271 : StackLang.HolProg 64 :=
.seq RemovedBody789_259 RemovedBody789_270

def RemovedBody789_272 : StackLang.HolProg 64 :=
.seq RemovedBody789_258 RemovedBody789_271

def RemovedBody789_273 : StackLang.HolProg 64 :=
.seq RemovedBody789_257 RemovedBody789_272

def RemovedBody789_274 : StackLang.HolProg 64 :=
.seq RemovedBody789_256 RemovedBody789_273

def RemovedBody789_275 : StackLang.HolProg 64 :=
.seq RemovedBody789_255 RemovedBody789_274

def RemovedBody789_276 : StackLang.HolProg 64 :=
.seq RemovedBody789_254 RemovedBody789_275

def RemovedBody789_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody789_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody789_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody789_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody789_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_285 : StackLang.HolProg 64 :=
.seq RemovedBody789_283 RemovedBody789_284

def RemovedBody789_286 : StackLang.HolProg 64 :=
.seq RemovedBody789_282 RemovedBody789_285

def RemovedBody789_287 : StackLang.HolProg 64 :=
.seq RemovedBody789_281 RemovedBody789_286

def RemovedBody789_288 : StackLang.HolProg 64 :=
.seq RemovedBody789_280 RemovedBody789_287

def RemovedBody789_289 : StackLang.HolProg 64 :=
.seq RemovedBody789_279 RemovedBody789_288

def RemovedBody789_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody789_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody789_292 : StackLang.HolProg 64 :=
.seq RemovedBody789_290 RemovedBody789_291

def RemovedBody789_293 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody789_294 : StackLang.HolProg 64 :=
.seq RemovedBody789_292 RemovedBody789_293

def RemovedBody789_295 : StackLang.HolProg 64 :=
.call (some (RemovedBody789_289, 0, 789, 10)) (Sum.inl 70) (some (RemovedBody789_294, 789, 11))

def RemovedBody789_296 : StackLang.HolProg 64 :=
.seq RemovedBody789_278 RemovedBody789_295

def RemovedBody789_297 : StackLang.HolProg 64 :=
.seq RemovedBody789_277 RemovedBody789_296

def RemovedBody789_298 : StackLang.HolProg 64 :=
.seq RemovedBody789_276 RemovedBody789_297

def RemovedBody789_299 : StackLang.HolProg 64 :=
.seq RemovedBody789_247 RemovedBody789_298

def RemovedBody789_300 : StackLang.HolProg 64 :=
.seq RemovedBody789_244 RemovedBody789_299

def RemovedBody789_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody789_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody789_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody789_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody789_305 : StackLang.HolProg 64 :=
.seq RemovedBody789_303 RemovedBody789_304

def RemovedBody789_306 : StackLang.HolProg 64 :=
.seq RemovedBody789_302 RemovedBody789_305

def RemovedBody789_307 : StackLang.HolProg 64 :=
.seq RemovedBody789_301 RemovedBody789_306

def RemovedBody789_308 : StackLang.HolProg 64 :=
.seq RemovedBody789_300 RemovedBody789_307

def RemovedBody789_309 : StackLang.HolProg 64 :=
.seq RemovedBody789_243 RemovedBody789_308

def RemovedBody789_310 : StackLang.HolProg 64 :=
.seq RemovedBody789_240 RemovedBody789_309

def RemovedBody789_311 : StackLang.HolProg 64 :=
.seq RemovedBody789_239 RemovedBody789_310

def RemovedBody789_312 : StackLang.HolProg 64 :=
.seq RemovedBody789_184 RemovedBody789_311

def RemovedBody789_313 : StackLang.HolProg 64 :=
.seq RemovedBody789_183 RemovedBody789_312

def RemovedBody789_314 : StackLang.HolProg 64 :=
.seq RemovedBody789_182 RemovedBody789_313

def RemovedBody789_315 : StackLang.HolProg 64 :=
.seq RemovedBody789_129 RemovedBody789_314

def RemovedBody789_316 : StackLang.HolProg 64 :=
.seq RemovedBody789_128 RemovedBody789_315

def RemovedBody789_317 : StackLang.HolProg 64 :=
.seq RemovedBody789_127 RemovedBody789_316

def RemovedBody789_318 : StackLang.HolProg 64 :=
.seq RemovedBody789_126 RemovedBody789_317

def RemovedBody789_319 : StackLang.HolProg 64 :=
.seq RemovedBody789_125 RemovedBody789_318

def RemovedBody789_320 : StackLang.HolProg 64 :=
.seq RemovedBody789_124 RemovedBody789_319

def RemovedBody789_321 : StackLang.HolProg 64 :=
.seq RemovedBody789_123 RemovedBody789_320

def RemovedBody789_322 : StackLang.HolProg 64 :=
.seq RemovedBody789_122 RemovedBody789_321

def RemovedBody789_323 : StackLang.HolProg 64 :=
.seq RemovedBody789_121 RemovedBody789_322

def RemovedBody789_324 : StackLang.HolProg 64 :=
.seq RemovedBody789_120 RemovedBody789_323

def RemovedBody789_325 : StackLang.HolProg 64 :=
.seq RemovedBody789_65 RemovedBody789_324

def RemovedBody789_326 : StackLang.HolProg 64 :=
.seq RemovedBody789_64 RemovedBody789_325

def RemovedBody789_327 : StackLang.HolProg 64 :=
.seq RemovedBody789_63 RemovedBody789_326

def RemovedBody789_328 : StackLang.HolProg 64 :=
.seq RemovedBody789_62 RemovedBody789_327

def RemovedBody789_329 : StackLang.HolProg 64 :=
.seq RemovedBody789_9 RemovedBody789_328

def RemovedBody789_330 : StackLang.HolProg 64 :=
.seq RemovedBody789_6 RemovedBody789_329

def Removed789 : Nat × StackLang.HolProg 64 := (789, RemovedBody789_330)
theorem Removed789_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc789 = Removed789 := by
  kernel_rfl
#print axioms Removed789_eq
end InitECandidate.Proofs.BackendStages
