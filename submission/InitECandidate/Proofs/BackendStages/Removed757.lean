import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc757
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody757_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody757_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody757_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody757_3 : StackLang.HolProg 64 :=
.seq RemovedBody757_1 RemovedBody757_2

def RemovedBody757_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody757_3 RemovedBody757_4

def RemovedBody757_6 : StackLang.HolProg 64 :=
.seq RemovedBody757_0 RemovedBody757_5

def RemovedBody757_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody757_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_9 : StackLang.HolProg 64 :=
.seq RemovedBody757_7 RemovedBody757_8

def RemovedBody757_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3374#64)

def RemovedBody757_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody757_13 : StackLang.HolProg 64 :=
.seq RemovedBody757_11 RemovedBody757_12

def RemovedBody757_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody757_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody757_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody757_17 : StackLang.HolProg 64 :=
.seq RemovedBody757_15 RemovedBody757_16

def RemovedBody757_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody757_17 RemovedBody757_18

def RemovedBody757_20 : StackLang.HolProg 64 :=
.seq RemovedBody757_14 RemovedBody757_19

def RemovedBody757_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody757_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody757_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 3

def RemovedBody757_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody757_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody757_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody757_30 : StackLang.HolProg 64 :=
.seq RemovedBody757_28 RemovedBody757_29

def RemovedBody757_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody757_32 : StackLang.HolProg 64 :=
.seq RemovedBody757_30 RemovedBody757_31

def RemovedBody757_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_34 : StackLang.HolProg 64 :=
.seq RemovedBody757_32 RemovedBody757_33

def RemovedBody757_35 : StackLang.HolProg 64 :=
.seq RemovedBody757_27 RemovedBody757_34

def RemovedBody757_36 : StackLang.HolProg 64 :=
.seq RemovedBody757_26 RemovedBody757_35

def RemovedBody757_37 : StackLang.HolProg 64 :=
.seq RemovedBody757_25 RemovedBody757_36

def RemovedBody757_38 : StackLang.HolProg 64 :=
.seq RemovedBody757_24 RemovedBody757_37

def RemovedBody757_39 : StackLang.HolProg 64 :=
.seq RemovedBody757_23 RemovedBody757_38

def RemovedBody757_40 : StackLang.HolProg 64 :=
.seq RemovedBody757_22 RemovedBody757_39

def RemovedBody757_41 : StackLang.HolProg 64 :=
.seq RemovedBody757_21 RemovedBody757_40

def RemovedBody757_42 : StackLang.HolProg 64 :=
.seq RemovedBody757_20 RemovedBody757_41

def RemovedBody757_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody757_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody757_50 : StackLang.HolProg 64 :=
.seq RemovedBody757_48 RemovedBody757_49

def RemovedBody757_51 : StackLang.HolProg 64 :=
.seq RemovedBody757_47 RemovedBody757_50

def RemovedBody757_52 : StackLang.HolProg 64 :=
.seq RemovedBody757_46 RemovedBody757_51

def RemovedBody757_53 : StackLang.HolProg 64 :=
.seq RemovedBody757_45 RemovedBody757_52

def RemovedBody757_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody757_56 : StackLang.HolProg 64 :=
.seq RemovedBody757_54 RemovedBody757_55

def RemovedBody757_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody757_53, 0, 757, 2)) (Sum.inl 69) (some (RemovedBody757_56, 757, 3))

def RemovedBody757_58 : StackLang.HolProg 64 :=
.seq RemovedBody757_44 RemovedBody757_57

def RemovedBody757_59 : StackLang.HolProg 64 :=
.seq RemovedBody757_43 RemovedBody757_58

def RemovedBody757_60 : StackLang.HolProg 64 :=
.seq RemovedBody757_42 RemovedBody757_59

def RemovedBody757_61 : StackLang.HolProg 64 :=
.seq RemovedBody757_13 RemovedBody757_60

def RemovedBody757_62 : StackLang.HolProg 64 :=
.seq RemovedBody757_10 RemovedBody757_61

def RemovedBody757_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody757_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 576#64)

def RemovedBody757_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody757_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3375#64)

def RemovedBody757_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody757_69 : StackLang.HolProg 64 :=
.seq RemovedBody757_67 RemovedBody757_68

def RemovedBody757_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody757_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody757_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody757_73 : StackLang.HolProg 64 :=
.seq RemovedBody757_71 RemovedBody757_72

def RemovedBody757_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody757_73 RemovedBody757_74

def RemovedBody757_76 : StackLang.HolProg 64 :=
.seq RemovedBody757_70 RemovedBody757_75

def RemovedBody757_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody757_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody757_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 5

def RemovedBody757_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody757_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody757_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody757_86 : StackLang.HolProg 64 :=
.seq RemovedBody757_84 RemovedBody757_85

def RemovedBody757_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody757_88 : StackLang.HolProg 64 :=
.seq RemovedBody757_86 RemovedBody757_87

def RemovedBody757_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_90 : StackLang.HolProg 64 :=
.seq RemovedBody757_88 RemovedBody757_89

def RemovedBody757_91 : StackLang.HolProg 64 :=
.seq RemovedBody757_83 RemovedBody757_90

def RemovedBody757_92 : StackLang.HolProg 64 :=
.seq RemovedBody757_82 RemovedBody757_91

def RemovedBody757_93 : StackLang.HolProg 64 :=
.seq RemovedBody757_81 RemovedBody757_92

def RemovedBody757_94 : StackLang.HolProg 64 :=
.seq RemovedBody757_80 RemovedBody757_93

def RemovedBody757_95 : StackLang.HolProg 64 :=
.seq RemovedBody757_79 RemovedBody757_94

def RemovedBody757_96 : StackLang.HolProg 64 :=
.seq RemovedBody757_78 RemovedBody757_95

def RemovedBody757_97 : StackLang.HolProg 64 :=
.seq RemovedBody757_77 RemovedBody757_96

def RemovedBody757_98 : StackLang.HolProg 64 :=
.seq RemovedBody757_76 RemovedBody757_97

def RemovedBody757_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody757_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody757_106 : StackLang.HolProg 64 :=
.seq RemovedBody757_104 RemovedBody757_105

def RemovedBody757_107 : StackLang.HolProg 64 :=
.seq RemovedBody757_103 RemovedBody757_106

def RemovedBody757_108 : StackLang.HolProg 64 :=
.seq RemovedBody757_102 RemovedBody757_107

def RemovedBody757_109 : StackLang.HolProg 64 :=
.seq RemovedBody757_101 RemovedBody757_108

def RemovedBody757_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody757_112 : StackLang.HolProg 64 :=
.seq RemovedBody757_110 RemovedBody757_111

def RemovedBody757_113 : StackLang.HolProg 64 :=
.call (some (RemovedBody757_109, 0, 757, 4)) (Sum.inl 68) (some (RemovedBody757_112, 757, 5))

def RemovedBody757_114 : StackLang.HolProg 64 :=
.seq RemovedBody757_100 RemovedBody757_113

def RemovedBody757_115 : StackLang.HolProg 64 :=
.seq RemovedBody757_99 RemovedBody757_114

def RemovedBody757_116 : StackLang.HolProg 64 :=
.seq RemovedBody757_98 RemovedBody757_115

def RemovedBody757_117 : StackLang.HolProg 64 :=
.seq RemovedBody757_69 RemovedBody757_116

def RemovedBody757_118 : StackLang.HolProg 64 :=
.seq RemovedBody757_66 RemovedBody757_117

def RemovedBody757_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody757_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody757_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody757_122 : StackLang.HolProg 64 :=
.seq RemovedBody757_120 RemovedBody757_121

def RemovedBody757_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3376#64)

def RemovedBody757_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody757_126 : StackLang.HolProg 64 :=
.seq RemovedBody757_124 RemovedBody757_125

def RemovedBody757_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody757_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody757_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody757_130 : StackLang.HolProg 64 :=
.seq RemovedBody757_128 RemovedBody757_129

def RemovedBody757_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody757_130 RemovedBody757_131

def RemovedBody757_133 : StackLang.HolProg 64 :=
.seq RemovedBody757_127 RemovedBody757_132

def RemovedBody757_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody757_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody757_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 7

def RemovedBody757_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody757_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody757_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody757_143 : StackLang.HolProg 64 :=
.seq RemovedBody757_141 RemovedBody757_142

def RemovedBody757_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody757_145 : StackLang.HolProg 64 :=
.seq RemovedBody757_143 RemovedBody757_144

def RemovedBody757_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_147 : StackLang.HolProg 64 :=
.seq RemovedBody757_145 RemovedBody757_146

def RemovedBody757_148 : StackLang.HolProg 64 :=
.seq RemovedBody757_140 RemovedBody757_147

def RemovedBody757_149 : StackLang.HolProg 64 :=
.seq RemovedBody757_139 RemovedBody757_148

def RemovedBody757_150 : StackLang.HolProg 64 :=
.seq RemovedBody757_138 RemovedBody757_149

def RemovedBody757_151 : StackLang.HolProg 64 :=
.seq RemovedBody757_137 RemovedBody757_150

def RemovedBody757_152 : StackLang.HolProg 64 :=
.seq RemovedBody757_136 RemovedBody757_151

def RemovedBody757_153 : StackLang.HolProg 64 :=
.seq RemovedBody757_135 RemovedBody757_152

def RemovedBody757_154 : StackLang.HolProg 64 :=
.seq RemovedBody757_134 RemovedBody757_153

def RemovedBody757_155 : StackLang.HolProg 64 :=
.seq RemovedBody757_133 RemovedBody757_154

def RemovedBody757_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody757_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody757_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody757_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody757_166 : StackLang.HolProg 64 :=
.seq RemovedBody757_164 RemovedBody757_165

def RemovedBody757_167 : StackLang.HolProg 64 :=
.seq RemovedBody757_163 RemovedBody757_166

def RemovedBody757_168 : StackLang.HolProg 64 :=
.seq RemovedBody757_162 RemovedBody757_167

def RemovedBody757_169 : StackLang.HolProg 64 :=
.seq RemovedBody757_161 RemovedBody757_168

def RemovedBody757_170 : StackLang.HolProg 64 :=
.seq RemovedBody757_160 RemovedBody757_169

def RemovedBody757_171 : StackLang.HolProg 64 :=
.seq RemovedBody757_159 RemovedBody757_170

def RemovedBody757_172 : StackLang.HolProg 64 :=
.seq RemovedBody757_158 RemovedBody757_171

def RemovedBody757_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody757_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody757_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody757_177 : StackLang.HolProg 64 :=
.seq RemovedBody757_175 RemovedBody757_176

def RemovedBody757_178 : StackLang.HolProg 64 :=
.seq RemovedBody757_174 RemovedBody757_177

def RemovedBody757_179 : StackLang.HolProg 64 :=
.seq RemovedBody757_173 RemovedBody757_178

def RemovedBody757_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody757_181 : StackLang.HolProg 64 :=
.seq RemovedBody757_179 RemovedBody757_180

def RemovedBody757_182 : StackLang.HolProg 64 :=
.call (some (RemovedBody757_172, 0, 757, 6)) (Sum.inl 756) (some (RemovedBody757_181, 757, 7))

def RemovedBody757_183 : StackLang.HolProg 64 :=
.seq RemovedBody757_157 RemovedBody757_182

def RemovedBody757_184 : StackLang.HolProg 64 :=
.seq RemovedBody757_156 RemovedBody757_183

def RemovedBody757_185 : StackLang.HolProg 64 :=
.seq RemovedBody757_155 RemovedBody757_184

def RemovedBody757_186 : StackLang.HolProg 64 :=
.seq RemovedBody757_126 RemovedBody757_185

def RemovedBody757_187 : StackLang.HolProg 64 :=
.seq RemovedBody757_123 RemovedBody757_186

def RemovedBody757_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody757_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody757_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 576#64)

def RemovedBody757_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3377#64)

def RemovedBody757_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody757_195 : StackLang.HolProg 64 :=
.seq RemovedBody757_193 RemovedBody757_194

def RemovedBody757_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody757_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody757_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody757_199 : StackLang.HolProg 64 :=
.seq RemovedBody757_197 RemovedBody757_198

def RemovedBody757_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody757_199 RemovedBody757_200

def RemovedBody757_202 : StackLang.HolProg 64 :=
.seq RemovedBody757_196 RemovedBody757_201

def RemovedBody757_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody757_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody757_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 9

def RemovedBody757_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody757_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody757_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody757_212 : StackLang.HolProg 64 :=
.seq RemovedBody757_210 RemovedBody757_211

def RemovedBody757_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody757_214 : StackLang.HolProg 64 :=
.seq RemovedBody757_212 RemovedBody757_213

def RemovedBody757_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_216 : StackLang.HolProg 64 :=
.seq RemovedBody757_214 RemovedBody757_215

def RemovedBody757_217 : StackLang.HolProg 64 :=
.seq RemovedBody757_209 RemovedBody757_216

def RemovedBody757_218 : StackLang.HolProg 64 :=
.seq RemovedBody757_208 RemovedBody757_217

def RemovedBody757_219 : StackLang.HolProg 64 :=
.seq RemovedBody757_207 RemovedBody757_218

def RemovedBody757_220 : StackLang.HolProg 64 :=
.seq RemovedBody757_206 RemovedBody757_219

def RemovedBody757_221 : StackLang.HolProg 64 :=
.seq RemovedBody757_205 RemovedBody757_220

def RemovedBody757_222 : StackLang.HolProg 64 :=
.seq RemovedBody757_204 RemovedBody757_221

def RemovedBody757_223 : StackLang.HolProg 64 :=
.seq RemovedBody757_203 RemovedBody757_222

def RemovedBody757_224 : StackLang.HolProg 64 :=
.seq RemovedBody757_202 RemovedBody757_223

def RemovedBody757_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody757_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody757_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody757_233 : StackLang.HolProg 64 :=
.seq RemovedBody757_231 RemovedBody757_232

def RemovedBody757_234 : StackLang.HolProg 64 :=
.seq RemovedBody757_230 RemovedBody757_233

def RemovedBody757_235 : StackLang.HolProg 64 :=
.seq RemovedBody757_229 RemovedBody757_234

def RemovedBody757_236 : StackLang.HolProg 64 :=
.seq RemovedBody757_228 RemovedBody757_235

def RemovedBody757_237 : StackLang.HolProg 64 :=
.seq RemovedBody757_227 RemovedBody757_236

def RemovedBody757_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody757_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody757_240 : StackLang.HolProg 64 :=
.seq RemovedBody757_238 RemovedBody757_239

def RemovedBody757_241 : StackLang.HolProg 64 :=
.call (some (RemovedBody757_237, 0, 757, 8)) (Sum.inl 79) (some (RemovedBody757_240, 757, 9))

def RemovedBody757_242 : StackLang.HolProg 64 :=
.seq RemovedBody757_226 RemovedBody757_241

def RemovedBody757_243 : StackLang.HolProg 64 :=
.seq RemovedBody757_225 RemovedBody757_242

def RemovedBody757_244 : StackLang.HolProg 64 :=
.seq RemovedBody757_224 RemovedBody757_243

def RemovedBody757_245 : StackLang.HolProg 64 :=
.seq RemovedBody757_195 RemovedBody757_244

def RemovedBody757_246 : StackLang.HolProg 64 :=
.seq RemovedBody757_192 RemovedBody757_245

def RemovedBody757_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody757_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody757_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody757_250 : StackLang.HolProg 64 :=
.seq RemovedBody757_248 RemovedBody757_249

def RemovedBody757_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3378#64)

def RemovedBody757_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody757_254 : StackLang.HolProg 64 :=
.seq RemovedBody757_252 RemovedBody757_253

def RemovedBody757_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody757_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody757_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody757_258 : StackLang.HolProg 64 :=
.seq RemovedBody757_256 RemovedBody757_257

def RemovedBody757_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_260 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody757_258 RemovedBody757_259

def RemovedBody757_261 : StackLang.HolProg 64 :=
.seq RemovedBody757_255 RemovedBody757_260

def RemovedBody757_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody757_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody757_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 11

def RemovedBody757_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody757_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody757_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody757_271 : StackLang.HolProg 64 :=
.seq RemovedBody757_269 RemovedBody757_270

def RemovedBody757_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody757_273 : StackLang.HolProg 64 :=
.seq RemovedBody757_271 RemovedBody757_272

def RemovedBody757_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_275 : StackLang.HolProg 64 :=
.seq RemovedBody757_273 RemovedBody757_274

def RemovedBody757_276 : StackLang.HolProg 64 :=
.seq RemovedBody757_268 RemovedBody757_275

def RemovedBody757_277 : StackLang.HolProg 64 :=
.seq RemovedBody757_267 RemovedBody757_276

def RemovedBody757_278 : StackLang.HolProg 64 :=
.seq RemovedBody757_266 RemovedBody757_277

def RemovedBody757_279 : StackLang.HolProg 64 :=
.seq RemovedBody757_265 RemovedBody757_278

def RemovedBody757_280 : StackLang.HolProg 64 :=
.seq RemovedBody757_264 RemovedBody757_279

def RemovedBody757_281 : StackLang.HolProg 64 :=
.seq RemovedBody757_263 RemovedBody757_280

def RemovedBody757_282 : StackLang.HolProg 64 :=
.seq RemovedBody757_262 RemovedBody757_281

def RemovedBody757_283 : StackLang.HolProg 64 :=
.seq RemovedBody757_261 RemovedBody757_282

def RemovedBody757_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody757_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody757_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody757_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody757_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody757_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody757_292 : StackLang.HolProg 64 :=
.seq RemovedBody757_290 RemovedBody757_291

def RemovedBody757_293 : StackLang.HolProg 64 :=
.seq RemovedBody757_289 RemovedBody757_292

def RemovedBody757_294 : StackLang.HolProg 64 :=
.seq RemovedBody757_288 RemovedBody757_293

def RemovedBody757_295 : StackLang.HolProg 64 :=
.seq RemovedBody757_287 RemovedBody757_294

def RemovedBody757_296 : StackLang.HolProg 64 :=
.seq RemovedBody757_286 RemovedBody757_295

def RemovedBody757_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody757_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody757_299 : StackLang.HolProg 64 :=
.seq RemovedBody757_297 RemovedBody757_298

def RemovedBody757_300 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody757_301 : StackLang.HolProg 64 :=
.seq RemovedBody757_299 RemovedBody757_300

def RemovedBody757_302 : StackLang.HolProg 64 :=
.call (some (RemovedBody757_296, 0, 757, 10)) (Sum.inl 70) (some (RemovedBody757_301, 757, 11))

def RemovedBody757_303 : StackLang.HolProg 64 :=
.seq RemovedBody757_285 RemovedBody757_302

def RemovedBody757_304 : StackLang.HolProg 64 :=
.seq RemovedBody757_284 RemovedBody757_303

def RemovedBody757_305 : StackLang.HolProg 64 :=
.seq RemovedBody757_283 RemovedBody757_304

def RemovedBody757_306 : StackLang.HolProg 64 :=
.seq RemovedBody757_254 RemovedBody757_305

def RemovedBody757_307 : StackLang.HolProg 64 :=
.seq RemovedBody757_251 RemovedBody757_306

def RemovedBody757_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody757_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody757_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody757_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody757_312 : StackLang.HolProg 64 :=
.seq RemovedBody757_310 RemovedBody757_311

def RemovedBody757_313 : StackLang.HolProg 64 :=
.seq RemovedBody757_309 RemovedBody757_312

def RemovedBody757_314 : StackLang.HolProg 64 :=
.seq RemovedBody757_308 RemovedBody757_313

def RemovedBody757_315 : StackLang.HolProg 64 :=
.seq RemovedBody757_307 RemovedBody757_314

def RemovedBody757_316 : StackLang.HolProg 64 :=
.seq RemovedBody757_250 RemovedBody757_315

def RemovedBody757_317 : StackLang.HolProg 64 :=
.seq RemovedBody757_247 RemovedBody757_316

def RemovedBody757_318 : StackLang.HolProg 64 :=
.seq RemovedBody757_246 RemovedBody757_317

def RemovedBody757_319 : StackLang.HolProg 64 :=
.seq RemovedBody757_191 RemovedBody757_318

def RemovedBody757_320 : StackLang.HolProg 64 :=
.seq RemovedBody757_190 RemovedBody757_319

def RemovedBody757_321 : StackLang.HolProg 64 :=
.seq RemovedBody757_189 RemovedBody757_320

def RemovedBody757_322 : StackLang.HolProg 64 :=
.seq RemovedBody757_188 RemovedBody757_321

def RemovedBody757_323 : StackLang.HolProg 64 :=
.seq RemovedBody757_187 RemovedBody757_322

def RemovedBody757_324 : StackLang.HolProg 64 :=
.seq RemovedBody757_122 RemovedBody757_323

def RemovedBody757_325 : StackLang.HolProg 64 :=
.seq RemovedBody757_119 RemovedBody757_324

def RemovedBody757_326 : StackLang.HolProg 64 :=
.seq RemovedBody757_118 RemovedBody757_325

def RemovedBody757_327 : StackLang.HolProg 64 :=
.seq RemovedBody757_65 RemovedBody757_326

def RemovedBody757_328 : StackLang.HolProg 64 :=
.seq RemovedBody757_64 RemovedBody757_327

def RemovedBody757_329 : StackLang.HolProg 64 :=
.seq RemovedBody757_63 RemovedBody757_328

def RemovedBody757_330 : StackLang.HolProg 64 :=
.seq RemovedBody757_62 RemovedBody757_329

def RemovedBody757_331 : StackLang.HolProg 64 :=
.seq RemovedBody757_9 RemovedBody757_330

def RemovedBody757_332 : StackLang.HolProg 64 :=
.seq RemovedBody757_6 RemovedBody757_331

def Removed757 : Nat × StackLang.HolProg 64 := (757, RemovedBody757_332)
theorem Removed757_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc757 = Removed757 := by
  kernel_rfl
#print axioms Removed757_eq
end InitECandidate.Proofs.BackendStages
