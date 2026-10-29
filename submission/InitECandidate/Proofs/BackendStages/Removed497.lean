import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc497
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody497_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody497_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody497_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody497_3 : StackLang.HolProg 64 :=
.seq RemovedBody497_1 RemovedBody497_2

def RemovedBody497_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody497_3 RemovedBody497_4

def RemovedBody497_6 : StackLang.HolProg 64 :=
.seq RemovedBody497_0 RemovedBody497_5

def RemovedBody497_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody497_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1544#64)

def RemovedBody497_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody497_11 : StackLang.HolProg 64 :=
.seq RemovedBody497_9 RemovedBody497_10

def RemovedBody497_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody497_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody497_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody497_15 : StackLang.HolProg 64 :=
.seq RemovedBody497_13 RemovedBody497_14

def RemovedBody497_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody497_15 RemovedBody497_16

def RemovedBody497_18 : StackLang.HolProg 64 :=
.seq RemovedBody497_12 RemovedBody497_17

def RemovedBody497_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody497_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody497_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 3

def RemovedBody497_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody497_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody497_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody497_28 : StackLang.HolProg 64 :=
.seq RemovedBody497_26 RemovedBody497_27

def RemovedBody497_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody497_30 : StackLang.HolProg 64 :=
.seq RemovedBody497_28 RemovedBody497_29

def RemovedBody497_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_32 : StackLang.HolProg 64 :=
.seq RemovedBody497_30 RemovedBody497_31

def RemovedBody497_33 : StackLang.HolProg 64 :=
.seq RemovedBody497_25 RemovedBody497_32

def RemovedBody497_34 : StackLang.HolProg 64 :=
.seq RemovedBody497_24 RemovedBody497_33

def RemovedBody497_35 : StackLang.HolProg 64 :=
.seq RemovedBody497_23 RemovedBody497_34

def RemovedBody497_36 : StackLang.HolProg 64 :=
.seq RemovedBody497_22 RemovedBody497_35

def RemovedBody497_37 : StackLang.HolProg 64 :=
.seq RemovedBody497_21 RemovedBody497_36

def RemovedBody497_38 : StackLang.HolProg 64 :=
.seq RemovedBody497_20 RemovedBody497_37

def RemovedBody497_39 : StackLang.HolProg 64 :=
.seq RemovedBody497_19 RemovedBody497_38

def RemovedBody497_40 : StackLang.HolProg 64 :=
.seq RemovedBody497_18 RemovedBody497_39

def RemovedBody497_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody497_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody497_48 : StackLang.HolProg 64 :=
.seq RemovedBody497_46 RemovedBody497_47

def RemovedBody497_49 : StackLang.HolProg 64 :=
.seq RemovedBody497_45 RemovedBody497_48

def RemovedBody497_50 : StackLang.HolProg 64 :=
.seq RemovedBody497_44 RemovedBody497_49

def RemovedBody497_51 : StackLang.HolProg 64 :=
.seq RemovedBody497_43 RemovedBody497_50

def RemovedBody497_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody497_54 : StackLang.HolProg 64 :=
.seq RemovedBody497_52 RemovedBody497_53

def RemovedBody497_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody497_51, 0, 497, 2)) (Sum.inl 475) (some (RemovedBody497_54, 497, 3))

def RemovedBody497_56 : StackLang.HolProg 64 :=
.seq RemovedBody497_42 RemovedBody497_55

def RemovedBody497_57 : StackLang.HolProg 64 :=
.seq RemovedBody497_41 RemovedBody497_56

def RemovedBody497_58 : StackLang.HolProg 64 :=
.seq RemovedBody497_40 RemovedBody497_57

def RemovedBody497_59 : StackLang.HolProg 64 :=
.seq RemovedBody497_11 RemovedBody497_58

def RemovedBody497_60 : StackLang.HolProg 64 :=
.seq RemovedBody497_8 RemovedBody497_59

def RemovedBody497_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody497_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody497_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody497_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody497_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_66 : StackLang.HolProg 64 :=
.seq RemovedBody497_64 RemovedBody497_65

def RemovedBody497_67 : StackLang.HolProg 64 :=
.seq RemovedBody497_63 RemovedBody497_66

def RemovedBody497_68 : StackLang.HolProg 64 :=
.seq RemovedBody497_62 RemovedBody497_67

def RemovedBody497_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1545#64)

def RemovedBody497_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody497_72 : StackLang.HolProg 64 :=
.seq RemovedBody497_70 RemovedBody497_71

def RemovedBody497_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody497_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody497_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody497_76 : StackLang.HolProg 64 :=
.seq RemovedBody497_74 RemovedBody497_75

def RemovedBody497_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody497_76 RemovedBody497_77

def RemovedBody497_79 : StackLang.HolProg 64 :=
.seq RemovedBody497_73 RemovedBody497_78

def RemovedBody497_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody497_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody497_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 5

def RemovedBody497_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody497_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody497_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody497_89 : StackLang.HolProg 64 :=
.seq RemovedBody497_87 RemovedBody497_88

def RemovedBody497_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody497_91 : StackLang.HolProg 64 :=
.seq RemovedBody497_89 RemovedBody497_90

def RemovedBody497_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_93 : StackLang.HolProg 64 :=
.seq RemovedBody497_91 RemovedBody497_92

def RemovedBody497_94 : StackLang.HolProg 64 :=
.seq RemovedBody497_86 RemovedBody497_93

def RemovedBody497_95 : StackLang.HolProg 64 :=
.seq RemovedBody497_85 RemovedBody497_94

def RemovedBody497_96 : StackLang.HolProg 64 :=
.seq RemovedBody497_84 RemovedBody497_95

def RemovedBody497_97 : StackLang.HolProg 64 :=
.seq RemovedBody497_83 RemovedBody497_96

def RemovedBody497_98 : StackLang.HolProg 64 :=
.seq RemovedBody497_82 RemovedBody497_97

def RemovedBody497_99 : StackLang.HolProg 64 :=
.seq RemovedBody497_81 RemovedBody497_98

def RemovedBody497_100 : StackLang.HolProg 64 :=
.seq RemovedBody497_80 RemovedBody497_99

def RemovedBody497_101 : StackLang.HolProg 64 :=
.seq RemovedBody497_79 RemovedBody497_100

def RemovedBody497_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody497_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody497_109 : StackLang.HolProg 64 :=
.seq RemovedBody497_107 RemovedBody497_108

def RemovedBody497_110 : StackLang.HolProg 64 :=
.seq RemovedBody497_106 RemovedBody497_109

def RemovedBody497_111 : StackLang.HolProg 64 :=
.seq RemovedBody497_105 RemovedBody497_110

def RemovedBody497_112 : StackLang.HolProg 64 :=
.seq RemovedBody497_104 RemovedBody497_111

def RemovedBody497_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody497_115 : StackLang.HolProg 64 :=
.seq RemovedBody497_113 RemovedBody497_114

def RemovedBody497_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody497_112, 0, 497, 4)) (Sum.inl 475) (some (RemovedBody497_115, 497, 5))

def RemovedBody497_117 : StackLang.HolProg 64 :=
.seq RemovedBody497_103 RemovedBody497_116

def RemovedBody497_118 : StackLang.HolProg 64 :=
.seq RemovedBody497_102 RemovedBody497_117

def RemovedBody497_119 : StackLang.HolProg 64 :=
.seq RemovedBody497_101 RemovedBody497_118

def RemovedBody497_120 : StackLang.HolProg 64 :=
.seq RemovedBody497_72 RemovedBody497_119

def RemovedBody497_121 : StackLang.HolProg 64 :=
.seq RemovedBody497_69 RemovedBody497_120

def RemovedBody497_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody497_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody497_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody497_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody497_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody497_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody497_128 : StackLang.HolProg 64 :=
.seq RemovedBody497_126 RemovedBody497_127

def RemovedBody497_129 : StackLang.HolProg 64 :=
.seq RemovedBody497_125 RemovedBody497_128

def RemovedBody497_130 : StackLang.HolProg 64 :=
.seq RemovedBody497_124 RemovedBody497_129

def RemovedBody497_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1546#64)

def RemovedBody497_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody497_134 : StackLang.HolProg 64 :=
.seq RemovedBody497_132 RemovedBody497_133

def RemovedBody497_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody497_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody497_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody497_138 : StackLang.HolProg 64 :=
.seq RemovedBody497_136 RemovedBody497_137

def RemovedBody497_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody497_138 RemovedBody497_139

def RemovedBody497_141 : StackLang.HolProg 64 :=
.seq RemovedBody497_135 RemovedBody497_140

def RemovedBody497_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody497_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody497_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 7

def RemovedBody497_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody497_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody497_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody497_151 : StackLang.HolProg 64 :=
.seq RemovedBody497_149 RemovedBody497_150

def RemovedBody497_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody497_153 : StackLang.HolProg 64 :=
.seq RemovedBody497_151 RemovedBody497_152

def RemovedBody497_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_155 : StackLang.HolProg 64 :=
.seq RemovedBody497_153 RemovedBody497_154

def RemovedBody497_156 : StackLang.HolProg 64 :=
.seq RemovedBody497_148 RemovedBody497_155

def RemovedBody497_157 : StackLang.HolProg 64 :=
.seq RemovedBody497_147 RemovedBody497_156

def RemovedBody497_158 : StackLang.HolProg 64 :=
.seq RemovedBody497_146 RemovedBody497_157

def RemovedBody497_159 : StackLang.HolProg 64 :=
.seq RemovedBody497_145 RemovedBody497_158

def RemovedBody497_160 : StackLang.HolProg 64 :=
.seq RemovedBody497_144 RemovedBody497_159

def RemovedBody497_161 : StackLang.HolProg 64 :=
.seq RemovedBody497_143 RemovedBody497_160

def RemovedBody497_162 : StackLang.HolProg 64 :=
.seq RemovedBody497_142 RemovedBody497_161

def RemovedBody497_163 : StackLang.HolProg 64 :=
.seq RemovedBody497_141 RemovedBody497_162

def RemovedBody497_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody497_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody497_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody497_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody497_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody497_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody497_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody497_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody497_178 : StackLang.HolProg 64 :=
.seq RemovedBody497_176 RemovedBody497_177

def RemovedBody497_179 : StackLang.HolProg 64 :=
.seq RemovedBody497_175 RemovedBody497_178

def RemovedBody497_180 : StackLang.HolProg 64 :=
.seq RemovedBody497_174 RemovedBody497_179

def RemovedBody497_181 : StackLang.HolProg 64 :=
.seq RemovedBody497_173 RemovedBody497_180

def RemovedBody497_182 : StackLang.HolProg 64 :=
.seq RemovedBody497_172 RemovedBody497_181

def RemovedBody497_183 : StackLang.HolProg 64 :=
.seq RemovedBody497_171 RemovedBody497_182

def RemovedBody497_184 : StackLang.HolProg 64 :=
.seq RemovedBody497_170 RemovedBody497_183

def RemovedBody497_185 : StackLang.HolProg 64 :=
.seq RemovedBody497_169 RemovedBody497_184

def RemovedBody497_186 : StackLang.HolProg 64 :=
.seq RemovedBody497_168 RemovedBody497_185

def RemovedBody497_187 : StackLang.HolProg 64 :=
.seq RemovedBody497_167 RemovedBody497_186

def RemovedBody497_188 : StackLang.HolProg 64 :=
.seq RemovedBody497_166 RemovedBody497_187

def RemovedBody497_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody497_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody497_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody497_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody497_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody497_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody497_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody497_197 : StackLang.HolProg 64 :=
.seq RemovedBody497_195 RemovedBody497_196

def RemovedBody497_198 : StackLang.HolProg 64 :=
.seq RemovedBody497_194 RemovedBody497_197

def RemovedBody497_199 : StackLang.HolProg 64 :=
.seq RemovedBody497_193 RemovedBody497_198

def RemovedBody497_200 : StackLang.HolProg 64 :=
.seq RemovedBody497_192 RemovedBody497_199

def RemovedBody497_201 : StackLang.HolProg 64 :=
.seq RemovedBody497_191 RemovedBody497_200

def RemovedBody497_202 : StackLang.HolProg 64 :=
.seq RemovedBody497_190 RemovedBody497_201

def RemovedBody497_203 : StackLang.HolProg 64 :=
.seq RemovedBody497_189 RemovedBody497_202

def RemovedBody497_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody497_205 : StackLang.HolProg 64 :=
.seq RemovedBody497_203 RemovedBody497_204

def RemovedBody497_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody497_188, 0, 497, 6)) (Sum.inl 470) (some (RemovedBody497_205, 497, 7))

def RemovedBody497_207 : StackLang.HolProg 64 :=
.seq RemovedBody497_165 RemovedBody497_206

def RemovedBody497_208 : StackLang.HolProg 64 :=
.seq RemovedBody497_164 RemovedBody497_207

def RemovedBody497_209 : StackLang.HolProg 64 :=
.seq RemovedBody497_163 RemovedBody497_208

def RemovedBody497_210 : StackLang.HolProg 64 :=
.seq RemovedBody497_134 RemovedBody497_209

def RemovedBody497_211 : StackLang.HolProg 64 :=
.seq RemovedBody497_131 RemovedBody497_210

def RemovedBody497_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody497_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody497_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1547#64)

def RemovedBody497_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody497_217 : StackLang.HolProg 64 :=
.seq RemovedBody497_215 RemovedBody497_216

def RemovedBody497_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody497_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody497_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody497_221 : StackLang.HolProg 64 :=
.seq RemovedBody497_219 RemovedBody497_220

def RemovedBody497_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody497_221 RemovedBody497_222

def RemovedBody497_224 : StackLang.HolProg 64 :=
.seq RemovedBody497_218 RemovedBody497_223

def RemovedBody497_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody497_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody497_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 9

def RemovedBody497_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody497_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody497_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody497_234 : StackLang.HolProg 64 :=
.seq RemovedBody497_232 RemovedBody497_233

def RemovedBody497_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody497_236 : StackLang.HolProg 64 :=
.seq RemovedBody497_234 RemovedBody497_235

def RemovedBody497_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_238 : StackLang.HolProg 64 :=
.seq RemovedBody497_236 RemovedBody497_237

def RemovedBody497_239 : StackLang.HolProg 64 :=
.seq RemovedBody497_231 RemovedBody497_238

def RemovedBody497_240 : StackLang.HolProg 64 :=
.seq RemovedBody497_230 RemovedBody497_239

def RemovedBody497_241 : StackLang.HolProg 64 :=
.seq RemovedBody497_229 RemovedBody497_240

def RemovedBody497_242 : StackLang.HolProg 64 :=
.seq RemovedBody497_228 RemovedBody497_241

def RemovedBody497_243 : StackLang.HolProg 64 :=
.seq RemovedBody497_227 RemovedBody497_242

def RemovedBody497_244 : StackLang.HolProg 64 :=
.seq RemovedBody497_226 RemovedBody497_243

def RemovedBody497_245 : StackLang.HolProg 64 :=
.seq RemovedBody497_225 RemovedBody497_244

def RemovedBody497_246 : StackLang.HolProg 64 :=
.seq RemovedBody497_224 RemovedBody497_245

def RemovedBody497_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody497_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody497_254 : StackLang.HolProg 64 :=
.seq RemovedBody497_252 RemovedBody497_253

def RemovedBody497_255 : StackLang.HolProg 64 :=
.seq RemovedBody497_251 RemovedBody497_254

def RemovedBody497_256 : StackLang.HolProg 64 :=
.seq RemovedBody497_250 RemovedBody497_255

def RemovedBody497_257 : StackLang.HolProg 64 :=
.seq RemovedBody497_249 RemovedBody497_256

def RemovedBody497_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody497_260 : StackLang.HolProg 64 :=
.seq RemovedBody497_258 RemovedBody497_259

def RemovedBody497_261 : StackLang.HolProg 64 :=
.call (some (RemovedBody497_257, 0, 497, 8)) (Sum.inl 116) (some (RemovedBody497_260, 497, 9))

def RemovedBody497_262 : StackLang.HolProg 64 :=
.seq RemovedBody497_248 RemovedBody497_261

def RemovedBody497_263 : StackLang.HolProg 64 :=
.seq RemovedBody497_247 RemovedBody497_262

def RemovedBody497_264 : StackLang.HolProg 64 :=
.seq RemovedBody497_246 RemovedBody497_263

def RemovedBody497_265 : StackLang.HolProg 64 :=
.seq RemovedBody497_217 RemovedBody497_264

def RemovedBody497_266 : StackLang.HolProg 64 :=
.seq RemovedBody497_214 RemovedBody497_265

def RemovedBody497_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody497_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody497_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1548#64)

def RemovedBody497_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody497_272 : StackLang.HolProg 64 :=
.seq RemovedBody497_270 RemovedBody497_271

def RemovedBody497_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody497_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody497_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody497_276 : StackLang.HolProg 64 :=
.seq RemovedBody497_274 RemovedBody497_275

def RemovedBody497_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody497_276 RemovedBody497_277

def RemovedBody497_279 : StackLang.HolProg 64 :=
.seq RemovedBody497_273 RemovedBody497_278

def RemovedBody497_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody497_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody497_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 11

def RemovedBody497_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody497_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody497_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody497_289 : StackLang.HolProg 64 :=
.seq RemovedBody497_287 RemovedBody497_288

def RemovedBody497_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody497_291 : StackLang.HolProg 64 :=
.seq RemovedBody497_289 RemovedBody497_290

def RemovedBody497_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_293 : StackLang.HolProg 64 :=
.seq RemovedBody497_291 RemovedBody497_292

def RemovedBody497_294 : StackLang.HolProg 64 :=
.seq RemovedBody497_286 RemovedBody497_293

def RemovedBody497_295 : StackLang.HolProg 64 :=
.seq RemovedBody497_285 RemovedBody497_294

def RemovedBody497_296 : StackLang.HolProg 64 :=
.seq RemovedBody497_284 RemovedBody497_295

def RemovedBody497_297 : StackLang.HolProg 64 :=
.seq RemovedBody497_283 RemovedBody497_296

def RemovedBody497_298 : StackLang.HolProg 64 :=
.seq RemovedBody497_282 RemovedBody497_297

def RemovedBody497_299 : StackLang.HolProg 64 :=
.seq RemovedBody497_281 RemovedBody497_298

def RemovedBody497_300 : StackLang.HolProg 64 :=
.seq RemovedBody497_280 RemovedBody497_299

def RemovedBody497_301 : StackLang.HolProg 64 :=
.seq RemovedBody497_279 RemovedBody497_300

def RemovedBody497_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody497_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_309 : StackLang.HolProg 64 :=
.seq RemovedBody497_307 RemovedBody497_308

def RemovedBody497_310 : StackLang.HolProg 64 :=
.seq RemovedBody497_306 RemovedBody497_309

def RemovedBody497_311 : StackLang.HolProg 64 :=
.seq RemovedBody497_305 RemovedBody497_310

def RemovedBody497_312 : StackLang.HolProg 64 :=
.seq RemovedBody497_304 RemovedBody497_311

def RemovedBody497_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody497_315 : StackLang.HolProg 64 :=
.seq RemovedBody497_313 RemovedBody497_314

def RemovedBody497_316 : StackLang.HolProg 64 :=
.call (some (RemovedBody497_312, 0, 497, 10)) (Sum.inl 476) (some (RemovedBody497_315, 497, 11))

def RemovedBody497_317 : StackLang.HolProg 64 :=
.seq RemovedBody497_303 RemovedBody497_316

def RemovedBody497_318 : StackLang.HolProg 64 :=
.seq RemovedBody497_302 RemovedBody497_317

def RemovedBody497_319 : StackLang.HolProg 64 :=
.seq RemovedBody497_301 RemovedBody497_318

def RemovedBody497_320 : StackLang.HolProg 64 :=
.seq RemovedBody497_272 RemovedBody497_319

def RemovedBody497_321 : StackLang.HolProg 64 :=
.seq RemovedBody497_269 RemovedBody497_320

def RemovedBody497_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody497_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody497_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1549#64)

def RemovedBody497_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody497_328 : StackLang.HolProg 64 :=
.seq RemovedBody497_326 RemovedBody497_327

def RemovedBody497_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody497_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody497_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody497_332 : StackLang.HolProg 64 :=
.seq RemovedBody497_330 RemovedBody497_331

def RemovedBody497_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody497_332 RemovedBody497_333

def RemovedBody497_335 : StackLang.HolProg 64 :=
.seq RemovedBody497_329 RemovedBody497_334

def RemovedBody497_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody497_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody497_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 13

def RemovedBody497_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody497_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody497_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody497_345 : StackLang.HolProg 64 :=
.seq RemovedBody497_343 RemovedBody497_344

def RemovedBody497_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody497_347 : StackLang.HolProg 64 :=
.seq RemovedBody497_345 RemovedBody497_346

def RemovedBody497_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_349 : StackLang.HolProg 64 :=
.seq RemovedBody497_347 RemovedBody497_348

def RemovedBody497_350 : StackLang.HolProg 64 :=
.seq RemovedBody497_342 RemovedBody497_349

def RemovedBody497_351 : StackLang.HolProg 64 :=
.seq RemovedBody497_341 RemovedBody497_350

def RemovedBody497_352 : StackLang.HolProg 64 :=
.seq RemovedBody497_340 RemovedBody497_351

def RemovedBody497_353 : StackLang.HolProg 64 :=
.seq RemovedBody497_339 RemovedBody497_352

def RemovedBody497_354 : StackLang.HolProg 64 :=
.seq RemovedBody497_338 RemovedBody497_353

def RemovedBody497_355 : StackLang.HolProg 64 :=
.seq RemovedBody497_337 RemovedBody497_354

def RemovedBody497_356 : StackLang.HolProg 64 :=
.seq RemovedBody497_336 RemovedBody497_355

def RemovedBody497_357 : StackLang.HolProg 64 :=
.seq RemovedBody497_335 RemovedBody497_356

def RemovedBody497_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody497_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody497_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody497_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody497_365 : StackLang.HolProg 64 :=
.seq RemovedBody497_363 RemovedBody497_364

def RemovedBody497_366 : StackLang.HolProg 64 :=
.seq RemovedBody497_362 RemovedBody497_365

def RemovedBody497_367 : StackLang.HolProg 64 :=
.seq RemovedBody497_361 RemovedBody497_366

def RemovedBody497_368 : StackLang.HolProg 64 :=
.seq RemovedBody497_360 RemovedBody497_367

def RemovedBody497_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody497_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody497_371 : StackLang.HolProg 64 :=
.seq RemovedBody497_369 RemovedBody497_370

def RemovedBody497_372 : StackLang.HolProg 64 :=
.call (some (RemovedBody497_368, 0, 497, 12)) (Sum.inl 490) (some (RemovedBody497_371, 497, 13))

def RemovedBody497_373 : StackLang.HolProg 64 :=
.seq RemovedBody497_359 RemovedBody497_372

def RemovedBody497_374 : StackLang.HolProg 64 :=
.seq RemovedBody497_358 RemovedBody497_373

def RemovedBody497_375 : StackLang.HolProg 64 :=
.seq RemovedBody497_357 RemovedBody497_374

def RemovedBody497_376 : StackLang.HolProg 64 :=
.seq RemovedBody497_328 RemovedBody497_375

def RemovedBody497_377 : StackLang.HolProg 64 :=
.seq RemovedBody497_325 RemovedBody497_376

def RemovedBody497_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody497_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody497_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody497_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody497_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody497_383 : StackLang.HolProg 64 :=
.seq RemovedBody497_381 RemovedBody497_382

def RemovedBody497_384 : StackLang.HolProg 64 :=
.seq RemovedBody497_380 RemovedBody497_383

def RemovedBody497_385 : StackLang.HolProg 64 :=
.seq RemovedBody497_379 RemovedBody497_384

def RemovedBody497_386 : StackLang.HolProg 64 :=
.seq RemovedBody497_378 RemovedBody497_385

def RemovedBody497_387 : StackLang.HolProg 64 :=
.seq RemovedBody497_377 RemovedBody497_386

def RemovedBody497_388 : StackLang.HolProg 64 :=
.seq RemovedBody497_324 RemovedBody497_387

def RemovedBody497_389 : StackLang.HolProg 64 :=
.seq RemovedBody497_323 RemovedBody497_388

def RemovedBody497_390 : StackLang.HolProg 64 :=
.seq RemovedBody497_322 RemovedBody497_389

def RemovedBody497_391 : StackLang.HolProg 64 :=
.seq RemovedBody497_321 RemovedBody497_390

def RemovedBody497_392 : StackLang.HolProg 64 :=
.seq RemovedBody497_268 RemovedBody497_391

def RemovedBody497_393 : StackLang.HolProg 64 :=
.seq RemovedBody497_267 RemovedBody497_392

def RemovedBody497_394 : StackLang.HolProg 64 :=
.seq RemovedBody497_266 RemovedBody497_393

def RemovedBody497_395 : StackLang.HolProg 64 :=
.seq RemovedBody497_213 RemovedBody497_394

def RemovedBody497_396 : StackLang.HolProg 64 :=
.seq RemovedBody497_212 RemovedBody497_395

def RemovedBody497_397 : StackLang.HolProg 64 :=
.seq RemovedBody497_211 RemovedBody497_396

def RemovedBody497_398 : StackLang.HolProg 64 :=
.seq RemovedBody497_130 RemovedBody497_397

def RemovedBody497_399 : StackLang.HolProg 64 :=
.seq RemovedBody497_123 RemovedBody497_398

def RemovedBody497_400 : StackLang.HolProg 64 :=
.seq RemovedBody497_122 RemovedBody497_399

def RemovedBody497_401 : StackLang.HolProg 64 :=
.seq RemovedBody497_121 RemovedBody497_400

def RemovedBody497_402 : StackLang.HolProg 64 :=
.seq RemovedBody497_68 RemovedBody497_401

def RemovedBody497_403 : StackLang.HolProg 64 :=
.seq RemovedBody497_61 RemovedBody497_402

def RemovedBody497_404 : StackLang.HolProg 64 :=
.seq RemovedBody497_60 RemovedBody497_403

def RemovedBody497_405 : StackLang.HolProg 64 :=
.seq RemovedBody497_7 RemovedBody497_404

def RemovedBody497_406 : StackLang.HolProg 64 :=
.seq RemovedBody497_6 RemovedBody497_405

def Removed497 : Nat × StackLang.HolProg 64 := (497, RemovedBody497_406)
theorem Removed497_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc497 = Removed497 := by
  kernel_rfl
#print axioms Removed497_eq
end InitECandidate.Proofs.BackendStages
