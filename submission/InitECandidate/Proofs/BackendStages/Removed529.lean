import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc529
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody529_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody529_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody529_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody529_3 : StackLang.HolProg 64 :=
.seq RemovedBody529_1 RemovedBody529_2

def RemovedBody529_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody529_3 RemovedBody529_4

def RemovedBody529_6 : StackLang.HolProg 64 :=
.seq RemovedBody529_0 RemovedBody529_5

def RemovedBody529_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody529_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody529_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1733#64)

def RemovedBody529_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody529_13 : StackLang.HolProg 64 :=
.seq RemovedBody529_11 RemovedBody529_12

def RemovedBody529_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody529_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody529_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody529_17 : StackLang.HolProg 64 :=
.seq RemovedBody529_15 RemovedBody529_16

def RemovedBody529_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody529_17 RemovedBody529_18

def RemovedBody529_20 : StackLang.HolProg 64 :=
.seq RemovedBody529_14 RemovedBody529_19

def RemovedBody529_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody529_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody529_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 529 3

def RemovedBody529_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody529_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody529_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody529_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody529_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody529_30 : StackLang.HolProg 64 :=
.seq RemovedBody529_28 RemovedBody529_29

def RemovedBody529_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody529_32 : StackLang.HolProg 64 :=
.seq RemovedBody529_30 RemovedBody529_31

def RemovedBody529_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody529_34 : StackLang.HolProg 64 :=
.seq RemovedBody529_32 RemovedBody529_33

def RemovedBody529_35 : StackLang.HolProg 64 :=
.seq RemovedBody529_27 RemovedBody529_34

def RemovedBody529_36 : StackLang.HolProg 64 :=
.seq RemovedBody529_26 RemovedBody529_35

def RemovedBody529_37 : StackLang.HolProg 64 :=
.seq RemovedBody529_25 RemovedBody529_36

def RemovedBody529_38 : StackLang.HolProg 64 :=
.seq RemovedBody529_24 RemovedBody529_37

def RemovedBody529_39 : StackLang.HolProg 64 :=
.seq RemovedBody529_23 RemovedBody529_38

def RemovedBody529_40 : StackLang.HolProg 64 :=
.seq RemovedBody529_22 RemovedBody529_39

def RemovedBody529_41 : StackLang.HolProg 64 :=
.seq RemovedBody529_21 RemovedBody529_40

def RemovedBody529_42 : StackLang.HolProg 64 :=
.seq RemovedBody529_20 RemovedBody529_41

def RemovedBody529_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody529_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody529_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody529_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_50 : StackLang.HolProg 64 :=
.seq RemovedBody529_48 RemovedBody529_49

def RemovedBody529_51 : StackLang.HolProg 64 :=
.seq RemovedBody529_47 RemovedBody529_50

def RemovedBody529_52 : StackLang.HolProg 64 :=
.seq RemovedBody529_46 RemovedBody529_51

def RemovedBody529_53 : StackLang.HolProg 64 :=
.seq RemovedBody529_45 RemovedBody529_52

def RemovedBody529_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody529_56 : StackLang.HolProg 64 :=
.seq RemovedBody529_54 RemovedBody529_55

def RemovedBody529_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody529_53, 0, 529, 2)) (Sum.inl 470) (some (RemovedBody529_56, 529, 3))

def RemovedBody529_58 : StackLang.HolProg 64 :=
.seq RemovedBody529_44 RemovedBody529_57

def RemovedBody529_59 : StackLang.HolProg 64 :=
.seq RemovedBody529_43 RemovedBody529_58

def RemovedBody529_60 : StackLang.HolProg 64 :=
.seq RemovedBody529_42 RemovedBody529_59

def RemovedBody529_61 : StackLang.HolProg 64 :=
.seq RemovedBody529_13 RemovedBody529_60

def RemovedBody529_62 : StackLang.HolProg 64 :=
.seq RemovedBody529_10 RemovedBody529_61

def RemovedBody529_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody529_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody529_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1734#64)

def RemovedBody529_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody529_69 : StackLang.HolProg 64 :=
.seq RemovedBody529_67 RemovedBody529_68

def RemovedBody529_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody529_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody529_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody529_73 : StackLang.HolProg 64 :=
.seq RemovedBody529_71 RemovedBody529_72

def RemovedBody529_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody529_73 RemovedBody529_74

def RemovedBody529_76 : StackLang.HolProg 64 :=
.seq RemovedBody529_70 RemovedBody529_75

def RemovedBody529_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody529_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody529_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 529 5

def RemovedBody529_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody529_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody529_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody529_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody529_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody529_86 : StackLang.HolProg 64 :=
.seq RemovedBody529_84 RemovedBody529_85

def RemovedBody529_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody529_88 : StackLang.HolProg 64 :=
.seq RemovedBody529_86 RemovedBody529_87

def RemovedBody529_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody529_90 : StackLang.HolProg 64 :=
.seq RemovedBody529_88 RemovedBody529_89

def RemovedBody529_91 : StackLang.HolProg 64 :=
.seq RemovedBody529_83 RemovedBody529_90

def RemovedBody529_92 : StackLang.HolProg 64 :=
.seq RemovedBody529_82 RemovedBody529_91

def RemovedBody529_93 : StackLang.HolProg 64 :=
.seq RemovedBody529_81 RemovedBody529_92

def RemovedBody529_94 : StackLang.HolProg 64 :=
.seq RemovedBody529_80 RemovedBody529_93

def RemovedBody529_95 : StackLang.HolProg 64 :=
.seq RemovedBody529_79 RemovedBody529_94

def RemovedBody529_96 : StackLang.HolProg 64 :=
.seq RemovedBody529_78 RemovedBody529_95

def RemovedBody529_97 : StackLang.HolProg 64 :=
.seq RemovedBody529_77 RemovedBody529_96

def RemovedBody529_98 : StackLang.HolProg 64 :=
.seq RemovedBody529_76 RemovedBody529_97

def RemovedBody529_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody529_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody529_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody529_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody529_106 : StackLang.HolProg 64 :=
.seq RemovedBody529_104 RemovedBody529_105

def RemovedBody529_107 : StackLang.HolProg 64 :=
.seq RemovedBody529_103 RemovedBody529_106

def RemovedBody529_108 : StackLang.HolProg 64 :=
.seq RemovedBody529_102 RemovedBody529_107

def RemovedBody529_109 : StackLang.HolProg 64 :=
.seq RemovedBody529_101 RemovedBody529_108

def RemovedBody529_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody529_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody529_112 : StackLang.HolProg 64 :=
.seq RemovedBody529_110 RemovedBody529_111

def RemovedBody529_113 : StackLang.HolProg 64 :=
.call (some (RemovedBody529_109, 0, 529, 4)) (Sum.inl 490) (some (RemovedBody529_112, 529, 5))

def RemovedBody529_114 : StackLang.HolProg 64 :=
.seq RemovedBody529_100 RemovedBody529_113

def RemovedBody529_115 : StackLang.HolProg 64 :=
.seq RemovedBody529_99 RemovedBody529_114

def RemovedBody529_116 : StackLang.HolProg 64 :=
.seq RemovedBody529_98 RemovedBody529_115

def RemovedBody529_117 : StackLang.HolProg 64 :=
.seq RemovedBody529_69 RemovedBody529_116

def RemovedBody529_118 : StackLang.HolProg 64 :=
.seq RemovedBody529_66 RemovedBody529_117

def RemovedBody529_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody529_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody529_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody529_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody529_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody529_124 : StackLang.HolProg 64 :=
.seq RemovedBody529_122 RemovedBody529_123

def RemovedBody529_125 : StackLang.HolProg 64 :=
.seq RemovedBody529_121 RemovedBody529_124

def RemovedBody529_126 : StackLang.HolProg 64 :=
.seq RemovedBody529_120 RemovedBody529_125

def RemovedBody529_127 : StackLang.HolProg 64 :=
.seq RemovedBody529_119 RemovedBody529_126

def RemovedBody529_128 : StackLang.HolProg 64 :=
.seq RemovedBody529_118 RemovedBody529_127

def RemovedBody529_129 : StackLang.HolProg 64 :=
.seq RemovedBody529_65 RemovedBody529_128

def RemovedBody529_130 : StackLang.HolProg 64 :=
.seq RemovedBody529_64 RemovedBody529_129

def RemovedBody529_131 : StackLang.HolProg 64 :=
.seq RemovedBody529_63 RemovedBody529_130

def RemovedBody529_132 : StackLang.HolProg 64 :=
.seq RemovedBody529_62 RemovedBody529_131

def RemovedBody529_133 : StackLang.HolProg 64 :=
.seq RemovedBody529_9 RemovedBody529_132

def RemovedBody529_134 : StackLang.HolProg 64 :=
.seq RemovedBody529_8 RemovedBody529_133

def RemovedBody529_135 : StackLang.HolProg 64 :=
.seq RemovedBody529_7 RemovedBody529_134

def RemovedBody529_136 : StackLang.HolProg 64 :=
.seq RemovedBody529_6 RemovedBody529_135

def Removed529 : Nat × StackLang.HolProg 64 := (529, RemovedBody529_136)
theorem Removed529_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc529 = Removed529 := by
  kernel_rfl
#print axioms Removed529_eq
end InitECandidate.Proofs.BackendStages
