import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc498
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody498_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody498_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody498_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody498_3 : StackLang.HolProg 64 :=
.seq RemovedBody498_1 RemovedBody498_2

def RemovedBody498_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody498_3 RemovedBody498_4

def RemovedBody498_6 : StackLang.HolProg 64 :=
.seq RemovedBody498_0 RemovedBody498_5

def RemovedBody498_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody498_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1550#64)

def RemovedBody498_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody498_11 : StackLang.HolProg 64 :=
.seq RemovedBody498_9 RemovedBody498_10

def RemovedBody498_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody498_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody498_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody498_15 : StackLang.HolProg 64 :=
.seq RemovedBody498_13 RemovedBody498_14

def RemovedBody498_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody498_15 RemovedBody498_16

def RemovedBody498_18 : StackLang.HolProg 64 :=
.seq RemovedBody498_12 RemovedBody498_17

def RemovedBody498_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody498_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody498_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 3

def RemovedBody498_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody498_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody498_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody498_28 : StackLang.HolProg 64 :=
.seq RemovedBody498_26 RemovedBody498_27

def RemovedBody498_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody498_30 : StackLang.HolProg 64 :=
.seq RemovedBody498_28 RemovedBody498_29

def RemovedBody498_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_32 : StackLang.HolProg 64 :=
.seq RemovedBody498_30 RemovedBody498_31

def RemovedBody498_33 : StackLang.HolProg 64 :=
.seq RemovedBody498_25 RemovedBody498_32

def RemovedBody498_34 : StackLang.HolProg 64 :=
.seq RemovedBody498_24 RemovedBody498_33

def RemovedBody498_35 : StackLang.HolProg 64 :=
.seq RemovedBody498_23 RemovedBody498_34

def RemovedBody498_36 : StackLang.HolProg 64 :=
.seq RemovedBody498_22 RemovedBody498_35

def RemovedBody498_37 : StackLang.HolProg 64 :=
.seq RemovedBody498_21 RemovedBody498_36

def RemovedBody498_38 : StackLang.HolProg 64 :=
.seq RemovedBody498_20 RemovedBody498_37

def RemovedBody498_39 : StackLang.HolProg 64 :=
.seq RemovedBody498_19 RemovedBody498_38

def RemovedBody498_40 : StackLang.HolProg 64 :=
.seq RemovedBody498_18 RemovedBody498_39

def RemovedBody498_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody498_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody498_48 : StackLang.HolProg 64 :=
.seq RemovedBody498_46 RemovedBody498_47

def RemovedBody498_49 : StackLang.HolProg 64 :=
.seq RemovedBody498_45 RemovedBody498_48

def RemovedBody498_50 : StackLang.HolProg 64 :=
.seq RemovedBody498_44 RemovedBody498_49

def RemovedBody498_51 : StackLang.HolProg 64 :=
.seq RemovedBody498_43 RemovedBody498_50

def RemovedBody498_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody498_54 : StackLang.HolProg 64 :=
.seq RemovedBody498_52 RemovedBody498_53

def RemovedBody498_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody498_51, 0, 498, 2)) (Sum.inl 475) (some (RemovedBody498_54, 498, 3))

def RemovedBody498_56 : StackLang.HolProg 64 :=
.seq RemovedBody498_42 RemovedBody498_55

def RemovedBody498_57 : StackLang.HolProg 64 :=
.seq RemovedBody498_41 RemovedBody498_56

def RemovedBody498_58 : StackLang.HolProg 64 :=
.seq RemovedBody498_40 RemovedBody498_57

def RemovedBody498_59 : StackLang.HolProg 64 :=
.seq RemovedBody498_11 RemovedBody498_58

def RemovedBody498_60 : StackLang.HolProg 64 :=
.seq RemovedBody498_8 RemovedBody498_59

def RemovedBody498_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody498_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody498_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody498_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody498_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_66 : StackLang.HolProg 64 :=
.seq RemovedBody498_64 RemovedBody498_65

def RemovedBody498_67 : StackLang.HolProg 64 :=
.seq RemovedBody498_63 RemovedBody498_66

def RemovedBody498_68 : StackLang.HolProg 64 :=
.seq RemovedBody498_62 RemovedBody498_67

def RemovedBody498_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1551#64)

def RemovedBody498_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody498_72 : StackLang.HolProg 64 :=
.seq RemovedBody498_70 RemovedBody498_71

def RemovedBody498_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody498_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody498_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody498_76 : StackLang.HolProg 64 :=
.seq RemovedBody498_74 RemovedBody498_75

def RemovedBody498_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody498_76 RemovedBody498_77

def RemovedBody498_79 : StackLang.HolProg 64 :=
.seq RemovedBody498_73 RemovedBody498_78

def RemovedBody498_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody498_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody498_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 5

def RemovedBody498_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody498_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody498_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody498_89 : StackLang.HolProg 64 :=
.seq RemovedBody498_87 RemovedBody498_88

def RemovedBody498_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody498_91 : StackLang.HolProg 64 :=
.seq RemovedBody498_89 RemovedBody498_90

def RemovedBody498_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_93 : StackLang.HolProg 64 :=
.seq RemovedBody498_91 RemovedBody498_92

def RemovedBody498_94 : StackLang.HolProg 64 :=
.seq RemovedBody498_86 RemovedBody498_93

def RemovedBody498_95 : StackLang.HolProg 64 :=
.seq RemovedBody498_85 RemovedBody498_94

def RemovedBody498_96 : StackLang.HolProg 64 :=
.seq RemovedBody498_84 RemovedBody498_95

def RemovedBody498_97 : StackLang.HolProg 64 :=
.seq RemovedBody498_83 RemovedBody498_96

def RemovedBody498_98 : StackLang.HolProg 64 :=
.seq RemovedBody498_82 RemovedBody498_97

def RemovedBody498_99 : StackLang.HolProg 64 :=
.seq RemovedBody498_81 RemovedBody498_98

def RemovedBody498_100 : StackLang.HolProg 64 :=
.seq RemovedBody498_80 RemovedBody498_99

def RemovedBody498_101 : StackLang.HolProg 64 :=
.seq RemovedBody498_79 RemovedBody498_100

def RemovedBody498_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody498_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody498_109 : StackLang.HolProg 64 :=
.seq RemovedBody498_107 RemovedBody498_108

def RemovedBody498_110 : StackLang.HolProg 64 :=
.seq RemovedBody498_106 RemovedBody498_109

def RemovedBody498_111 : StackLang.HolProg 64 :=
.seq RemovedBody498_105 RemovedBody498_110

def RemovedBody498_112 : StackLang.HolProg 64 :=
.seq RemovedBody498_104 RemovedBody498_111

def RemovedBody498_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody498_115 : StackLang.HolProg 64 :=
.seq RemovedBody498_113 RemovedBody498_114

def RemovedBody498_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody498_112, 0, 498, 4)) (Sum.inl 475) (some (RemovedBody498_115, 498, 5))

def RemovedBody498_117 : StackLang.HolProg 64 :=
.seq RemovedBody498_103 RemovedBody498_116

def RemovedBody498_118 : StackLang.HolProg 64 :=
.seq RemovedBody498_102 RemovedBody498_117

def RemovedBody498_119 : StackLang.HolProg 64 :=
.seq RemovedBody498_101 RemovedBody498_118

def RemovedBody498_120 : StackLang.HolProg 64 :=
.seq RemovedBody498_72 RemovedBody498_119

def RemovedBody498_121 : StackLang.HolProg 64 :=
.seq RemovedBody498_69 RemovedBody498_120

def RemovedBody498_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody498_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody498_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody498_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody498_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody498_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody498_128 : StackLang.HolProg 64 :=
.seq RemovedBody498_126 RemovedBody498_127

def RemovedBody498_129 : StackLang.HolProg 64 :=
.seq RemovedBody498_125 RemovedBody498_128

def RemovedBody498_130 : StackLang.HolProg 64 :=
.seq RemovedBody498_124 RemovedBody498_129

def RemovedBody498_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1552#64)

def RemovedBody498_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody498_134 : StackLang.HolProg 64 :=
.seq RemovedBody498_132 RemovedBody498_133

def RemovedBody498_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody498_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody498_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody498_138 : StackLang.HolProg 64 :=
.seq RemovedBody498_136 RemovedBody498_137

def RemovedBody498_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody498_138 RemovedBody498_139

def RemovedBody498_141 : StackLang.HolProg 64 :=
.seq RemovedBody498_135 RemovedBody498_140

def RemovedBody498_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody498_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody498_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 7

def RemovedBody498_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody498_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody498_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody498_151 : StackLang.HolProg 64 :=
.seq RemovedBody498_149 RemovedBody498_150

def RemovedBody498_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody498_153 : StackLang.HolProg 64 :=
.seq RemovedBody498_151 RemovedBody498_152

def RemovedBody498_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_155 : StackLang.HolProg 64 :=
.seq RemovedBody498_153 RemovedBody498_154

def RemovedBody498_156 : StackLang.HolProg 64 :=
.seq RemovedBody498_148 RemovedBody498_155

def RemovedBody498_157 : StackLang.HolProg 64 :=
.seq RemovedBody498_147 RemovedBody498_156

def RemovedBody498_158 : StackLang.HolProg 64 :=
.seq RemovedBody498_146 RemovedBody498_157

def RemovedBody498_159 : StackLang.HolProg 64 :=
.seq RemovedBody498_145 RemovedBody498_158

def RemovedBody498_160 : StackLang.HolProg 64 :=
.seq RemovedBody498_144 RemovedBody498_159

def RemovedBody498_161 : StackLang.HolProg 64 :=
.seq RemovedBody498_143 RemovedBody498_160

def RemovedBody498_162 : StackLang.HolProg 64 :=
.seq RemovedBody498_142 RemovedBody498_161

def RemovedBody498_163 : StackLang.HolProg 64 :=
.seq RemovedBody498_141 RemovedBody498_162

def RemovedBody498_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody498_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody498_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody498_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody498_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody498_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody498_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody498_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody498_178 : StackLang.HolProg 64 :=
.seq RemovedBody498_176 RemovedBody498_177

def RemovedBody498_179 : StackLang.HolProg 64 :=
.seq RemovedBody498_175 RemovedBody498_178

def RemovedBody498_180 : StackLang.HolProg 64 :=
.seq RemovedBody498_174 RemovedBody498_179

def RemovedBody498_181 : StackLang.HolProg 64 :=
.seq RemovedBody498_173 RemovedBody498_180

def RemovedBody498_182 : StackLang.HolProg 64 :=
.seq RemovedBody498_172 RemovedBody498_181

def RemovedBody498_183 : StackLang.HolProg 64 :=
.seq RemovedBody498_171 RemovedBody498_182

def RemovedBody498_184 : StackLang.HolProg 64 :=
.seq RemovedBody498_170 RemovedBody498_183

def RemovedBody498_185 : StackLang.HolProg 64 :=
.seq RemovedBody498_169 RemovedBody498_184

def RemovedBody498_186 : StackLang.HolProg 64 :=
.seq RemovedBody498_168 RemovedBody498_185

def RemovedBody498_187 : StackLang.HolProg 64 :=
.seq RemovedBody498_167 RemovedBody498_186

def RemovedBody498_188 : StackLang.HolProg 64 :=
.seq RemovedBody498_166 RemovedBody498_187

def RemovedBody498_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody498_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody498_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody498_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody498_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody498_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody498_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody498_197 : StackLang.HolProg 64 :=
.seq RemovedBody498_195 RemovedBody498_196

def RemovedBody498_198 : StackLang.HolProg 64 :=
.seq RemovedBody498_194 RemovedBody498_197

def RemovedBody498_199 : StackLang.HolProg 64 :=
.seq RemovedBody498_193 RemovedBody498_198

def RemovedBody498_200 : StackLang.HolProg 64 :=
.seq RemovedBody498_192 RemovedBody498_199

def RemovedBody498_201 : StackLang.HolProg 64 :=
.seq RemovedBody498_191 RemovedBody498_200

def RemovedBody498_202 : StackLang.HolProg 64 :=
.seq RemovedBody498_190 RemovedBody498_201

def RemovedBody498_203 : StackLang.HolProg 64 :=
.seq RemovedBody498_189 RemovedBody498_202

def RemovedBody498_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody498_205 : StackLang.HolProg 64 :=
.seq RemovedBody498_203 RemovedBody498_204

def RemovedBody498_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody498_188, 0, 498, 6)) (Sum.inl 470) (some (RemovedBody498_205, 498, 7))

def RemovedBody498_207 : StackLang.HolProg 64 :=
.seq RemovedBody498_165 RemovedBody498_206

def RemovedBody498_208 : StackLang.HolProg 64 :=
.seq RemovedBody498_164 RemovedBody498_207

def RemovedBody498_209 : StackLang.HolProg 64 :=
.seq RemovedBody498_163 RemovedBody498_208

def RemovedBody498_210 : StackLang.HolProg 64 :=
.seq RemovedBody498_134 RemovedBody498_209

def RemovedBody498_211 : StackLang.HolProg 64 :=
.seq RemovedBody498_131 RemovedBody498_210

def RemovedBody498_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody498_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody498_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1553#64)

def RemovedBody498_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody498_217 : StackLang.HolProg 64 :=
.seq RemovedBody498_215 RemovedBody498_216

def RemovedBody498_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody498_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody498_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody498_221 : StackLang.HolProg 64 :=
.seq RemovedBody498_219 RemovedBody498_220

def RemovedBody498_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody498_221 RemovedBody498_222

def RemovedBody498_224 : StackLang.HolProg 64 :=
.seq RemovedBody498_218 RemovedBody498_223

def RemovedBody498_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody498_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody498_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 9

def RemovedBody498_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody498_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody498_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody498_234 : StackLang.HolProg 64 :=
.seq RemovedBody498_232 RemovedBody498_233

def RemovedBody498_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody498_236 : StackLang.HolProg 64 :=
.seq RemovedBody498_234 RemovedBody498_235

def RemovedBody498_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_238 : StackLang.HolProg 64 :=
.seq RemovedBody498_236 RemovedBody498_237

def RemovedBody498_239 : StackLang.HolProg 64 :=
.seq RemovedBody498_231 RemovedBody498_238

def RemovedBody498_240 : StackLang.HolProg 64 :=
.seq RemovedBody498_230 RemovedBody498_239

def RemovedBody498_241 : StackLang.HolProg 64 :=
.seq RemovedBody498_229 RemovedBody498_240

def RemovedBody498_242 : StackLang.HolProg 64 :=
.seq RemovedBody498_228 RemovedBody498_241

def RemovedBody498_243 : StackLang.HolProg 64 :=
.seq RemovedBody498_227 RemovedBody498_242

def RemovedBody498_244 : StackLang.HolProg 64 :=
.seq RemovedBody498_226 RemovedBody498_243

def RemovedBody498_245 : StackLang.HolProg 64 :=
.seq RemovedBody498_225 RemovedBody498_244

def RemovedBody498_246 : StackLang.HolProg 64 :=
.seq RemovedBody498_224 RemovedBody498_245

def RemovedBody498_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody498_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody498_254 : StackLang.HolProg 64 :=
.seq RemovedBody498_252 RemovedBody498_253

def RemovedBody498_255 : StackLang.HolProg 64 :=
.seq RemovedBody498_251 RemovedBody498_254

def RemovedBody498_256 : StackLang.HolProg 64 :=
.seq RemovedBody498_250 RemovedBody498_255

def RemovedBody498_257 : StackLang.HolProg 64 :=
.seq RemovedBody498_249 RemovedBody498_256

def RemovedBody498_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody498_260 : StackLang.HolProg 64 :=
.seq RemovedBody498_258 RemovedBody498_259

def RemovedBody498_261 : StackLang.HolProg 64 :=
.call (some (RemovedBody498_257, 0, 498, 8)) (Sum.inl 120) (some (RemovedBody498_260, 498, 9))

def RemovedBody498_262 : StackLang.HolProg 64 :=
.seq RemovedBody498_248 RemovedBody498_261

def RemovedBody498_263 : StackLang.HolProg 64 :=
.seq RemovedBody498_247 RemovedBody498_262

def RemovedBody498_264 : StackLang.HolProg 64 :=
.seq RemovedBody498_246 RemovedBody498_263

def RemovedBody498_265 : StackLang.HolProg 64 :=
.seq RemovedBody498_217 RemovedBody498_264

def RemovedBody498_266 : StackLang.HolProg 64 :=
.seq RemovedBody498_214 RemovedBody498_265

def RemovedBody498_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody498_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody498_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1554#64)

def RemovedBody498_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody498_272 : StackLang.HolProg 64 :=
.seq RemovedBody498_270 RemovedBody498_271

def RemovedBody498_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody498_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody498_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody498_276 : StackLang.HolProg 64 :=
.seq RemovedBody498_274 RemovedBody498_275

def RemovedBody498_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody498_276 RemovedBody498_277

def RemovedBody498_279 : StackLang.HolProg 64 :=
.seq RemovedBody498_273 RemovedBody498_278

def RemovedBody498_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody498_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody498_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 11

def RemovedBody498_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody498_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody498_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody498_289 : StackLang.HolProg 64 :=
.seq RemovedBody498_287 RemovedBody498_288

def RemovedBody498_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody498_291 : StackLang.HolProg 64 :=
.seq RemovedBody498_289 RemovedBody498_290

def RemovedBody498_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_293 : StackLang.HolProg 64 :=
.seq RemovedBody498_291 RemovedBody498_292

def RemovedBody498_294 : StackLang.HolProg 64 :=
.seq RemovedBody498_286 RemovedBody498_293

def RemovedBody498_295 : StackLang.HolProg 64 :=
.seq RemovedBody498_285 RemovedBody498_294

def RemovedBody498_296 : StackLang.HolProg 64 :=
.seq RemovedBody498_284 RemovedBody498_295

def RemovedBody498_297 : StackLang.HolProg 64 :=
.seq RemovedBody498_283 RemovedBody498_296

def RemovedBody498_298 : StackLang.HolProg 64 :=
.seq RemovedBody498_282 RemovedBody498_297

def RemovedBody498_299 : StackLang.HolProg 64 :=
.seq RemovedBody498_281 RemovedBody498_298

def RemovedBody498_300 : StackLang.HolProg 64 :=
.seq RemovedBody498_280 RemovedBody498_299

def RemovedBody498_301 : StackLang.HolProg 64 :=
.seq RemovedBody498_279 RemovedBody498_300

def RemovedBody498_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody498_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_309 : StackLang.HolProg 64 :=
.seq RemovedBody498_307 RemovedBody498_308

def RemovedBody498_310 : StackLang.HolProg 64 :=
.seq RemovedBody498_306 RemovedBody498_309

def RemovedBody498_311 : StackLang.HolProg 64 :=
.seq RemovedBody498_305 RemovedBody498_310

def RemovedBody498_312 : StackLang.HolProg 64 :=
.seq RemovedBody498_304 RemovedBody498_311

def RemovedBody498_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody498_315 : StackLang.HolProg 64 :=
.seq RemovedBody498_313 RemovedBody498_314

def RemovedBody498_316 : StackLang.HolProg 64 :=
.call (some (RemovedBody498_312, 0, 498, 10)) (Sum.inl 476) (some (RemovedBody498_315, 498, 11))

def RemovedBody498_317 : StackLang.HolProg 64 :=
.seq RemovedBody498_303 RemovedBody498_316

def RemovedBody498_318 : StackLang.HolProg 64 :=
.seq RemovedBody498_302 RemovedBody498_317

def RemovedBody498_319 : StackLang.HolProg 64 :=
.seq RemovedBody498_301 RemovedBody498_318

def RemovedBody498_320 : StackLang.HolProg 64 :=
.seq RemovedBody498_272 RemovedBody498_319

def RemovedBody498_321 : StackLang.HolProg 64 :=
.seq RemovedBody498_269 RemovedBody498_320

def RemovedBody498_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody498_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody498_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1555#64)

def RemovedBody498_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody498_328 : StackLang.HolProg 64 :=
.seq RemovedBody498_326 RemovedBody498_327

def RemovedBody498_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody498_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody498_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody498_332 : StackLang.HolProg 64 :=
.seq RemovedBody498_330 RemovedBody498_331

def RemovedBody498_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody498_332 RemovedBody498_333

def RemovedBody498_335 : StackLang.HolProg 64 :=
.seq RemovedBody498_329 RemovedBody498_334

def RemovedBody498_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody498_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody498_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 13

def RemovedBody498_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody498_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody498_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody498_345 : StackLang.HolProg 64 :=
.seq RemovedBody498_343 RemovedBody498_344

def RemovedBody498_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody498_347 : StackLang.HolProg 64 :=
.seq RemovedBody498_345 RemovedBody498_346

def RemovedBody498_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_349 : StackLang.HolProg 64 :=
.seq RemovedBody498_347 RemovedBody498_348

def RemovedBody498_350 : StackLang.HolProg 64 :=
.seq RemovedBody498_342 RemovedBody498_349

def RemovedBody498_351 : StackLang.HolProg 64 :=
.seq RemovedBody498_341 RemovedBody498_350

def RemovedBody498_352 : StackLang.HolProg 64 :=
.seq RemovedBody498_340 RemovedBody498_351

def RemovedBody498_353 : StackLang.HolProg 64 :=
.seq RemovedBody498_339 RemovedBody498_352

def RemovedBody498_354 : StackLang.HolProg 64 :=
.seq RemovedBody498_338 RemovedBody498_353

def RemovedBody498_355 : StackLang.HolProg 64 :=
.seq RemovedBody498_337 RemovedBody498_354

def RemovedBody498_356 : StackLang.HolProg 64 :=
.seq RemovedBody498_336 RemovedBody498_355

def RemovedBody498_357 : StackLang.HolProg 64 :=
.seq RemovedBody498_335 RemovedBody498_356

def RemovedBody498_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody498_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody498_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody498_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody498_365 : StackLang.HolProg 64 :=
.seq RemovedBody498_363 RemovedBody498_364

def RemovedBody498_366 : StackLang.HolProg 64 :=
.seq RemovedBody498_362 RemovedBody498_365

def RemovedBody498_367 : StackLang.HolProg 64 :=
.seq RemovedBody498_361 RemovedBody498_366

def RemovedBody498_368 : StackLang.HolProg 64 :=
.seq RemovedBody498_360 RemovedBody498_367

def RemovedBody498_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody498_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody498_371 : StackLang.HolProg 64 :=
.seq RemovedBody498_369 RemovedBody498_370

def RemovedBody498_372 : StackLang.HolProg 64 :=
.call (some (RemovedBody498_368, 0, 498, 12)) (Sum.inl 490) (some (RemovedBody498_371, 498, 13))

def RemovedBody498_373 : StackLang.HolProg 64 :=
.seq RemovedBody498_359 RemovedBody498_372

def RemovedBody498_374 : StackLang.HolProg 64 :=
.seq RemovedBody498_358 RemovedBody498_373

def RemovedBody498_375 : StackLang.HolProg 64 :=
.seq RemovedBody498_357 RemovedBody498_374

def RemovedBody498_376 : StackLang.HolProg 64 :=
.seq RemovedBody498_328 RemovedBody498_375

def RemovedBody498_377 : StackLang.HolProg 64 :=
.seq RemovedBody498_325 RemovedBody498_376

def RemovedBody498_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody498_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody498_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody498_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody498_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody498_383 : StackLang.HolProg 64 :=
.seq RemovedBody498_381 RemovedBody498_382

def RemovedBody498_384 : StackLang.HolProg 64 :=
.seq RemovedBody498_380 RemovedBody498_383

def RemovedBody498_385 : StackLang.HolProg 64 :=
.seq RemovedBody498_379 RemovedBody498_384

def RemovedBody498_386 : StackLang.HolProg 64 :=
.seq RemovedBody498_378 RemovedBody498_385

def RemovedBody498_387 : StackLang.HolProg 64 :=
.seq RemovedBody498_377 RemovedBody498_386

def RemovedBody498_388 : StackLang.HolProg 64 :=
.seq RemovedBody498_324 RemovedBody498_387

def RemovedBody498_389 : StackLang.HolProg 64 :=
.seq RemovedBody498_323 RemovedBody498_388

def RemovedBody498_390 : StackLang.HolProg 64 :=
.seq RemovedBody498_322 RemovedBody498_389

def RemovedBody498_391 : StackLang.HolProg 64 :=
.seq RemovedBody498_321 RemovedBody498_390

def RemovedBody498_392 : StackLang.HolProg 64 :=
.seq RemovedBody498_268 RemovedBody498_391

def RemovedBody498_393 : StackLang.HolProg 64 :=
.seq RemovedBody498_267 RemovedBody498_392

def RemovedBody498_394 : StackLang.HolProg 64 :=
.seq RemovedBody498_266 RemovedBody498_393

def RemovedBody498_395 : StackLang.HolProg 64 :=
.seq RemovedBody498_213 RemovedBody498_394

def RemovedBody498_396 : StackLang.HolProg 64 :=
.seq RemovedBody498_212 RemovedBody498_395

def RemovedBody498_397 : StackLang.HolProg 64 :=
.seq RemovedBody498_211 RemovedBody498_396

def RemovedBody498_398 : StackLang.HolProg 64 :=
.seq RemovedBody498_130 RemovedBody498_397

def RemovedBody498_399 : StackLang.HolProg 64 :=
.seq RemovedBody498_123 RemovedBody498_398

def RemovedBody498_400 : StackLang.HolProg 64 :=
.seq RemovedBody498_122 RemovedBody498_399

def RemovedBody498_401 : StackLang.HolProg 64 :=
.seq RemovedBody498_121 RemovedBody498_400

def RemovedBody498_402 : StackLang.HolProg 64 :=
.seq RemovedBody498_68 RemovedBody498_401

def RemovedBody498_403 : StackLang.HolProg 64 :=
.seq RemovedBody498_61 RemovedBody498_402

def RemovedBody498_404 : StackLang.HolProg 64 :=
.seq RemovedBody498_60 RemovedBody498_403

def RemovedBody498_405 : StackLang.HolProg 64 :=
.seq RemovedBody498_7 RemovedBody498_404

def RemovedBody498_406 : StackLang.HolProg 64 :=
.seq RemovedBody498_6 RemovedBody498_405

def Removed498 : Nat × StackLang.HolProg 64 := (498, RemovedBody498_406)
theorem Removed498_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc498 = Removed498 := by
  kernel_rfl
#print axioms Removed498_eq
end InitECandidate.Proofs.BackendStages
