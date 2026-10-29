import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc500
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody500_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody500_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody500_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody500_3 : StackLang.HolProg 64 :=
.seq RemovedBody500_1 RemovedBody500_2

def RemovedBody500_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody500_3 RemovedBody500_4

def RemovedBody500_6 : StackLang.HolProg 64 :=
.seq RemovedBody500_0 RemovedBody500_5

def RemovedBody500_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody500_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1562#64)

def RemovedBody500_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody500_11 : StackLang.HolProg 64 :=
.seq RemovedBody500_9 RemovedBody500_10

def RemovedBody500_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody500_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody500_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody500_15 : StackLang.HolProg 64 :=
.seq RemovedBody500_13 RemovedBody500_14

def RemovedBody500_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody500_15 RemovedBody500_16

def RemovedBody500_18 : StackLang.HolProg 64 :=
.seq RemovedBody500_12 RemovedBody500_17

def RemovedBody500_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody500_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody500_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 3

def RemovedBody500_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody500_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody500_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody500_28 : StackLang.HolProg 64 :=
.seq RemovedBody500_26 RemovedBody500_27

def RemovedBody500_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody500_30 : StackLang.HolProg 64 :=
.seq RemovedBody500_28 RemovedBody500_29

def RemovedBody500_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_32 : StackLang.HolProg 64 :=
.seq RemovedBody500_30 RemovedBody500_31

def RemovedBody500_33 : StackLang.HolProg 64 :=
.seq RemovedBody500_25 RemovedBody500_32

def RemovedBody500_34 : StackLang.HolProg 64 :=
.seq RemovedBody500_24 RemovedBody500_33

def RemovedBody500_35 : StackLang.HolProg 64 :=
.seq RemovedBody500_23 RemovedBody500_34

def RemovedBody500_36 : StackLang.HolProg 64 :=
.seq RemovedBody500_22 RemovedBody500_35

def RemovedBody500_37 : StackLang.HolProg 64 :=
.seq RemovedBody500_21 RemovedBody500_36

def RemovedBody500_38 : StackLang.HolProg 64 :=
.seq RemovedBody500_20 RemovedBody500_37

def RemovedBody500_39 : StackLang.HolProg 64 :=
.seq RemovedBody500_19 RemovedBody500_38

def RemovedBody500_40 : StackLang.HolProg 64 :=
.seq RemovedBody500_18 RemovedBody500_39

def RemovedBody500_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody500_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody500_48 : StackLang.HolProg 64 :=
.seq RemovedBody500_46 RemovedBody500_47

def RemovedBody500_49 : StackLang.HolProg 64 :=
.seq RemovedBody500_45 RemovedBody500_48

def RemovedBody500_50 : StackLang.HolProg 64 :=
.seq RemovedBody500_44 RemovedBody500_49

def RemovedBody500_51 : StackLang.HolProg 64 :=
.seq RemovedBody500_43 RemovedBody500_50

def RemovedBody500_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody500_54 : StackLang.HolProg 64 :=
.seq RemovedBody500_52 RemovedBody500_53

def RemovedBody500_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody500_51, 0, 500, 2)) (Sum.inl 475) (some (RemovedBody500_54, 500, 3))

def RemovedBody500_56 : StackLang.HolProg 64 :=
.seq RemovedBody500_42 RemovedBody500_55

def RemovedBody500_57 : StackLang.HolProg 64 :=
.seq RemovedBody500_41 RemovedBody500_56

def RemovedBody500_58 : StackLang.HolProg 64 :=
.seq RemovedBody500_40 RemovedBody500_57

def RemovedBody500_59 : StackLang.HolProg 64 :=
.seq RemovedBody500_11 RemovedBody500_58

def RemovedBody500_60 : StackLang.HolProg 64 :=
.seq RemovedBody500_8 RemovedBody500_59

def RemovedBody500_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody500_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody500_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody500_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody500_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_66 : StackLang.HolProg 64 :=
.seq RemovedBody500_64 RemovedBody500_65

def RemovedBody500_67 : StackLang.HolProg 64 :=
.seq RemovedBody500_63 RemovedBody500_66

def RemovedBody500_68 : StackLang.HolProg 64 :=
.seq RemovedBody500_62 RemovedBody500_67

def RemovedBody500_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1563#64)

def RemovedBody500_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody500_72 : StackLang.HolProg 64 :=
.seq RemovedBody500_70 RemovedBody500_71

def RemovedBody500_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody500_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody500_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody500_76 : StackLang.HolProg 64 :=
.seq RemovedBody500_74 RemovedBody500_75

def RemovedBody500_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody500_76 RemovedBody500_77

def RemovedBody500_79 : StackLang.HolProg 64 :=
.seq RemovedBody500_73 RemovedBody500_78

def RemovedBody500_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody500_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody500_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 5

def RemovedBody500_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody500_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody500_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody500_89 : StackLang.HolProg 64 :=
.seq RemovedBody500_87 RemovedBody500_88

def RemovedBody500_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody500_91 : StackLang.HolProg 64 :=
.seq RemovedBody500_89 RemovedBody500_90

def RemovedBody500_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_93 : StackLang.HolProg 64 :=
.seq RemovedBody500_91 RemovedBody500_92

def RemovedBody500_94 : StackLang.HolProg 64 :=
.seq RemovedBody500_86 RemovedBody500_93

def RemovedBody500_95 : StackLang.HolProg 64 :=
.seq RemovedBody500_85 RemovedBody500_94

def RemovedBody500_96 : StackLang.HolProg 64 :=
.seq RemovedBody500_84 RemovedBody500_95

def RemovedBody500_97 : StackLang.HolProg 64 :=
.seq RemovedBody500_83 RemovedBody500_96

def RemovedBody500_98 : StackLang.HolProg 64 :=
.seq RemovedBody500_82 RemovedBody500_97

def RemovedBody500_99 : StackLang.HolProg 64 :=
.seq RemovedBody500_81 RemovedBody500_98

def RemovedBody500_100 : StackLang.HolProg 64 :=
.seq RemovedBody500_80 RemovedBody500_99

def RemovedBody500_101 : StackLang.HolProg 64 :=
.seq RemovedBody500_79 RemovedBody500_100

def RemovedBody500_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody500_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody500_109 : StackLang.HolProg 64 :=
.seq RemovedBody500_107 RemovedBody500_108

def RemovedBody500_110 : StackLang.HolProg 64 :=
.seq RemovedBody500_106 RemovedBody500_109

def RemovedBody500_111 : StackLang.HolProg 64 :=
.seq RemovedBody500_105 RemovedBody500_110

def RemovedBody500_112 : StackLang.HolProg 64 :=
.seq RemovedBody500_104 RemovedBody500_111

def RemovedBody500_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody500_115 : StackLang.HolProg 64 :=
.seq RemovedBody500_113 RemovedBody500_114

def RemovedBody500_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody500_112, 0, 500, 4)) (Sum.inl 475) (some (RemovedBody500_115, 500, 5))

def RemovedBody500_117 : StackLang.HolProg 64 :=
.seq RemovedBody500_103 RemovedBody500_116

def RemovedBody500_118 : StackLang.HolProg 64 :=
.seq RemovedBody500_102 RemovedBody500_117

def RemovedBody500_119 : StackLang.HolProg 64 :=
.seq RemovedBody500_101 RemovedBody500_118

def RemovedBody500_120 : StackLang.HolProg 64 :=
.seq RemovedBody500_72 RemovedBody500_119

def RemovedBody500_121 : StackLang.HolProg 64 :=
.seq RemovedBody500_69 RemovedBody500_120

def RemovedBody500_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody500_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody500_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody500_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody500_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody500_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody500_128 : StackLang.HolProg 64 :=
.seq RemovedBody500_126 RemovedBody500_127

def RemovedBody500_129 : StackLang.HolProg 64 :=
.seq RemovedBody500_125 RemovedBody500_128

def RemovedBody500_130 : StackLang.HolProg 64 :=
.seq RemovedBody500_124 RemovedBody500_129

def RemovedBody500_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1564#64)

def RemovedBody500_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody500_134 : StackLang.HolProg 64 :=
.seq RemovedBody500_132 RemovedBody500_133

def RemovedBody500_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody500_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody500_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody500_138 : StackLang.HolProg 64 :=
.seq RemovedBody500_136 RemovedBody500_137

def RemovedBody500_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody500_138 RemovedBody500_139

def RemovedBody500_141 : StackLang.HolProg 64 :=
.seq RemovedBody500_135 RemovedBody500_140

def RemovedBody500_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody500_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody500_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 7

def RemovedBody500_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody500_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody500_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody500_151 : StackLang.HolProg 64 :=
.seq RemovedBody500_149 RemovedBody500_150

def RemovedBody500_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody500_153 : StackLang.HolProg 64 :=
.seq RemovedBody500_151 RemovedBody500_152

def RemovedBody500_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_155 : StackLang.HolProg 64 :=
.seq RemovedBody500_153 RemovedBody500_154

def RemovedBody500_156 : StackLang.HolProg 64 :=
.seq RemovedBody500_148 RemovedBody500_155

def RemovedBody500_157 : StackLang.HolProg 64 :=
.seq RemovedBody500_147 RemovedBody500_156

def RemovedBody500_158 : StackLang.HolProg 64 :=
.seq RemovedBody500_146 RemovedBody500_157

def RemovedBody500_159 : StackLang.HolProg 64 :=
.seq RemovedBody500_145 RemovedBody500_158

def RemovedBody500_160 : StackLang.HolProg 64 :=
.seq RemovedBody500_144 RemovedBody500_159

def RemovedBody500_161 : StackLang.HolProg 64 :=
.seq RemovedBody500_143 RemovedBody500_160

def RemovedBody500_162 : StackLang.HolProg 64 :=
.seq RemovedBody500_142 RemovedBody500_161

def RemovedBody500_163 : StackLang.HolProg 64 :=
.seq RemovedBody500_141 RemovedBody500_162

def RemovedBody500_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody500_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody500_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody500_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody500_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody500_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody500_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody500_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody500_178 : StackLang.HolProg 64 :=
.seq RemovedBody500_176 RemovedBody500_177

def RemovedBody500_179 : StackLang.HolProg 64 :=
.seq RemovedBody500_175 RemovedBody500_178

def RemovedBody500_180 : StackLang.HolProg 64 :=
.seq RemovedBody500_174 RemovedBody500_179

def RemovedBody500_181 : StackLang.HolProg 64 :=
.seq RemovedBody500_173 RemovedBody500_180

def RemovedBody500_182 : StackLang.HolProg 64 :=
.seq RemovedBody500_172 RemovedBody500_181

def RemovedBody500_183 : StackLang.HolProg 64 :=
.seq RemovedBody500_171 RemovedBody500_182

def RemovedBody500_184 : StackLang.HolProg 64 :=
.seq RemovedBody500_170 RemovedBody500_183

def RemovedBody500_185 : StackLang.HolProg 64 :=
.seq RemovedBody500_169 RemovedBody500_184

def RemovedBody500_186 : StackLang.HolProg 64 :=
.seq RemovedBody500_168 RemovedBody500_185

def RemovedBody500_187 : StackLang.HolProg 64 :=
.seq RemovedBody500_167 RemovedBody500_186

def RemovedBody500_188 : StackLang.HolProg 64 :=
.seq RemovedBody500_166 RemovedBody500_187

def RemovedBody500_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody500_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody500_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody500_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody500_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody500_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody500_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody500_197 : StackLang.HolProg 64 :=
.seq RemovedBody500_195 RemovedBody500_196

def RemovedBody500_198 : StackLang.HolProg 64 :=
.seq RemovedBody500_194 RemovedBody500_197

def RemovedBody500_199 : StackLang.HolProg 64 :=
.seq RemovedBody500_193 RemovedBody500_198

def RemovedBody500_200 : StackLang.HolProg 64 :=
.seq RemovedBody500_192 RemovedBody500_199

def RemovedBody500_201 : StackLang.HolProg 64 :=
.seq RemovedBody500_191 RemovedBody500_200

def RemovedBody500_202 : StackLang.HolProg 64 :=
.seq RemovedBody500_190 RemovedBody500_201

def RemovedBody500_203 : StackLang.HolProg 64 :=
.seq RemovedBody500_189 RemovedBody500_202

def RemovedBody500_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody500_205 : StackLang.HolProg 64 :=
.seq RemovedBody500_203 RemovedBody500_204

def RemovedBody500_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody500_188, 0, 500, 6)) (Sum.inl 470) (some (RemovedBody500_205, 500, 7))

def RemovedBody500_207 : StackLang.HolProg 64 :=
.seq RemovedBody500_165 RemovedBody500_206

def RemovedBody500_208 : StackLang.HolProg 64 :=
.seq RemovedBody500_164 RemovedBody500_207

def RemovedBody500_209 : StackLang.HolProg 64 :=
.seq RemovedBody500_163 RemovedBody500_208

def RemovedBody500_210 : StackLang.HolProg 64 :=
.seq RemovedBody500_134 RemovedBody500_209

def RemovedBody500_211 : StackLang.HolProg 64 :=
.seq RemovedBody500_131 RemovedBody500_210

def RemovedBody500_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody500_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody500_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1565#64)

def RemovedBody500_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody500_217 : StackLang.HolProg 64 :=
.seq RemovedBody500_215 RemovedBody500_216

def RemovedBody500_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody500_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody500_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody500_221 : StackLang.HolProg 64 :=
.seq RemovedBody500_219 RemovedBody500_220

def RemovedBody500_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody500_221 RemovedBody500_222

def RemovedBody500_224 : StackLang.HolProg 64 :=
.seq RemovedBody500_218 RemovedBody500_223

def RemovedBody500_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody500_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody500_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 9

def RemovedBody500_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody500_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody500_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody500_234 : StackLang.HolProg 64 :=
.seq RemovedBody500_232 RemovedBody500_233

def RemovedBody500_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody500_236 : StackLang.HolProg 64 :=
.seq RemovedBody500_234 RemovedBody500_235

def RemovedBody500_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_238 : StackLang.HolProg 64 :=
.seq RemovedBody500_236 RemovedBody500_237

def RemovedBody500_239 : StackLang.HolProg 64 :=
.seq RemovedBody500_231 RemovedBody500_238

def RemovedBody500_240 : StackLang.HolProg 64 :=
.seq RemovedBody500_230 RemovedBody500_239

def RemovedBody500_241 : StackLang.HolProg 64 :=
.seq RemovedBody500_229 RemovedBody500_240

def RemovedBody500_242 : StackLang.HolProg 64 :=
.seq RemovedBody500_228 RemovedBody500_241

def RemovedBody500_243 : StackLang.HolProg 64 :=
.seq RemovedBody500_227 RemovedBody500_242

def RemovedBody500_244 : StackLang.HolProg 64 :=
.seq RemovedBody500_226 RemovedBody500_243

def RemovedBody500_245 : StackLang.HolProg 64 :=
.seq RemovedBody500_225 RemovedBody500_244

def RemovedBody500_246 : StackLang.HolProg 64 :=
.seq RemovedBody500_224 RemovedBody500_245

def RemovedBody500_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody500_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody500_254 : StackLang.HolProg 64 :=
.seq RemovedBody500_252 RemovedBody500_253

def RemovedBody500_255 : StackLang.HolProg 64 :=
.seq RemovedBody500_251 RemovedBody500_254

def RemovedBody500_256 : StackLang.HolProg 64 :=
.seq RemovedBody500_250 RemovedBody500_255

def RemovedBody500_257 : StackLang.HolProg 64 :=
.seq RemovedBody500_249 RemovedBody500_256

def RemovedBody500_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody500_260 : StackLang.HolProg 64 :=
.seq RemovedBody500_258 RemovedBody500_259

def RemovedBody500_261 : StackLang.HolProg 64 :=
.call (some (RemovedBody500_257, 0, 500, 8)) (Sum.inl 130) (some (RemovedBody500_260, 500, 9))

def RemovedBody500_262 : StackLang.HolProg 64 :=
.seq RemovedBody500_248 RemovedBody500_261

def RemovedBody500_263 : StackLang.HolProg 64 :=
.seq RemovedBody500_247 RemovedBody500_262

def RemovedBody500_264 : StackLang.HolProg 64 :=
.seq RemovedBody500_246 RemovedBody500_263

def RemovedBody500_265 : StackLang.HolProg 64 :=
.seq RemovedBody500_217 RemovedBody500_264

def RemovedBody500_266 : StackLang.HolProg 64 :=
.seq RemovedBody500_214 RemovedBody500_265

def RemovedBody500_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody500_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody500_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1566#64)

def RemovedBody500_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody500_272 : StackLang.HolProg 64 :=
.seq RemovedBody500_270 RemovedBody500_271

def RemovedBody500_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody500_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody500_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody500_276 : StackLang.HolProg 64 :=
.seq RemovedBody500_274 RemovedBody500_275

def RemovedBody500_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody500_276 RemovedBody500_277

def RemovedBody500_279 : StackLang.HolProg 64 :=
.seq RemovedBody500_273 RemovedBody500_278

def RemovedBody500_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody500_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody500_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 11

def RemovedBody500_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody500_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody500_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody500_289 : StackLang.HolProg 64 :=
.seq RemovedBody500_287 RemovedBody500_288

def RemovedBody500_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody500_291 : StackLang.HolProg 64 :=
.seq RemovedBody500_289 RemovedBody500_290

def RemovedBody500_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_293 : StackLang.HolProg 64 :=
.seq RemovedBody500_291 RemovedBody500_292

def RemovedBody500_294 : StackLang.HolProg 64 :=
.seq RemovedBody500_286 RemovedBody500_293

def RemovedBody500_295 : StackLang.HolProg 64 :=
.seq RemovedBody500_285 RemovedBody500_294

def RemovedBody500_296 : StackLang.HolProg 64 :=
.seq RemovedBody500_284 RemovedBody500_295

def RemovedBody500_297 : StackLang.HolProg 64 :=
.seq RemovedBody500_283 RemovedBody500_296

def RemovedBody500_298 : StackLang.HolProg 64 :=
.seq RemovedBody500_282 RemovedBody500_297

def RemovedBody500_299 : StackLang.HolProg 64 :=
.seq RemovedBody500_281 RemovedBody500_298

def RemovedBody500_300 : StackLang.HolProg 64 :=
.seq RemovedBody500_280 RemovedBody500_299

def RemovedBody500_301 : StackLang.HolProg 64 :=
.seq RemovedBody500_279 RemovedBody500_300

def RemovedBody500_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody500_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_309 : StackLang.HolProg 64 :=
.seq RemovedBody500_307 RemovedBody500_308

def RemovedBody500_310 : StackLang.HolProg 64 :=
.seq RemovedBody500_306 RemovedBody500_309

def RemovedBody500_311 : StackLang.HolProg 64 :=
.seq RemovedBody500_305 RemovedBody500_310

def RemovedBody500_312 : StackLang.HolProg 64 :=
.seq RemovedBody500_304 RemovedBody500_311

def RemovedBody500_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody500_315 : StackLang.HolProg 64 :=
.seq RemovedBody500_313 RemovedBody500_314

def RemovedBody500_316 : StackLang.HolProg 64 :=
.call (some (RemovedBody500_312, 0, 500, 10)) (Sum.inl 476) (some (RemovedBody500_315, 500, 11))

def RemovedBody500_317 : StackLang.HolProg 64 :=
.seq RemovedBody500_303 RemovedBody500_316

def RemovedBody500_318 : StackLang.HolProg 64 :=
.seq RemovedBody500_302 RemovedBody500_317

def RemovedBody500_319 : StackLang.HolProg 64 :=
.seq RemovedBody500_301 RemovedBody500_318

def RemovedBody500_320 : StackLang.HolProg 64 :=
.seq RemovedBody500_272 RemovedBody500_319

def RemovedBody500_321 : StackLang.HolProg 64 :=
.seq RemovedBody500_269 RemovedBody500_320

def RemovedBody500_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody500_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody500_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1567#64)

def RemovedBody500_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody500_328 : StackLang.HolProg 64 :=
.seq RemovedBody500_326 RemovedBody500_327

def RemovedBody500_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody500_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody500_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody500_332 : StackLang.HolProg 64 :=
.seq RemovedBody500_330 RemovedBody500_331

def RemovedBody500_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody500_332 RemovedBody500_333

def RemovedBody500_335 : StackLang.HolProg 64 :=
.seq RemovedBody500_329 RemovedBody500_334

def RemovedBody500_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody500_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody500_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 500 13

def RemovedBody500_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody500_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody500_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody500_345 : StackLang.HolProg 64 :=
.seq RemovedBody500_343 RemovedBody500_344

def RemovedBody500_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody500_347 : StackLang.HolProg 64 :=
.seq RemovedBody500_345 RemovedBody500_346

def RemovedBody500_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_349 : StackLang.HolProg 64 :=
.seq RemovedBody500_347 RemovedBody500_348

def RemovedBody500_350 : StackLang.HolProg 64 :=
.seq RemovedBody500_342 RemovedBody500_349

def RemovedBody500_351 : StackLang.HolProg 64 :=
.seq RemovedBody500_341 RemovedBody500_350

def RemovedBody500_352 : StackLang.HolProg 64 :=
.seq RemovedBody500_340 RemovedBody500_351

def RemovedBody500_353 : StackLang.HolProg 64 :=
.seq RemovedBody500_339 RemovedBody500_352

def RemovedBody500_354 : StackLang.HolProg 64 :=
.seq RemovedBody500_338 RemovedBody500_353

def RemovedBody500_355 : StackLang.HolProg 64 :=
.seq RemovedBody500_337 RemovedBody500_354

def RemovedBody500_356 : StackLang.HolProg 64 :=
.seq RemovedBody500_336 RemovedBody500_355

def RemovedBody500_357 : StackLang.HolProg 64 :=
.seq RemovedBody500_335 RemovedBody500_356

def RemovedBody500_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody500_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody500_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody500_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody500_365 : StackLang.HolProg 64 :=
.seq RemovedBody500_363 RemovedBody500_364

def RemovedBody500_366 : StackLang.HolProg 64 :=
.seq RemovedBody500_362 RemovedBody500_365

def RemovedBody500_367 : StackLang.HolProg 64 :=
.seq RemovedBody500_361 RemovedBody500_366

def RemovedBody500_368 : StackLang.HolProg 64 :=
.seq RemovedBody500_360 RemovedBody500_367

def RemovedBody500_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody500_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody500_371 : StackLang.HolProg 64 :=
.seq RemovedBody500_369 RemovedBody500_370

def RemovedBody500_372 : StackLang.HolProg 64 :=
.call (some (RemovedBody500_368, 0, 500, 12)) (Sum.inl 490) (some (RemovedBody500_371, 500, 13))

def RemovedBody500_373 : StackLang.HolProg 64 :=
.seq RemovedBody500_359 RemovedBody500_372

def RemovedBody500_374 : StackLang.HolProg 64 :=
.seq RemovedBody500_358 RemovedBody500_373

def RemovedBody500_375 : StackLang.HolProg 64 :=
.seq RemovedBody500_357 RemovedBody500_374

def RemovedBody500_376 : StackLang.HolProg 64 :=
.seq RemovedBody500_328 RemovedBody500_375

def RemovedBody500_377 : StackLang.HolProg 64 :=
.seq RemovedBody500_325 RemovedBody500_376

def RemovedBody500_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody500_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody500_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody500_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody500_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody500_383 : StackLang.HolProg 64 :=
.seq RemovedBody500_381 RemovedBody500_382

def RemovedBody500_384 : StackLang.HolProg 64 :=
.seq RemovedBody500_380 RemovedBody500_383

def RemovedBody500_385 : StackLang.HolProg 64 :=
.seq RemovedBody500_379 RemovedBody500_384

def RemovedBody500_386 : StackLang.HolProg 64 :=
.seq RemovedBody500_378 RemovedBody500_385

def RemovedBody500_387 : StackLang.HolProg 64 :=
.seq RemovedBody500_377 RemovedBody500_386

def RemovedBody500_388 : StackLang.HolProg 64 :=
.seq RemovedBody500_324 RemovedBody500_387

def RemovedBody500_389 : StackLang.HolProg 64 :=
.seq RemovedBody500_323 RemovedBody500_388

def RemovedBody500_390 : StackLang.HolProg 64 :=
.seq RemovedBody500_322 RemovedBody500_389

def RemovedBody500_391 : StackLang.HolProg 64 :=
.seq RemovedBody500_321 RemovedBody500_390

def RemovedBody500_392 : StackLang.HolProg 64 :=
.seq RemovedBody500_268 RemovedBody500_391

def RemovedBody500_393 : StackLang.HolProg 64 :=
.seq RemovedBody500_267 RemovedBody500_392

def RemovedBody500_394 : StackLang.HolProg 64 :=
.seq RemovedBody500_266 RemovedBody500_393

def RemovedBody500_395 : StackLang.HolProg 64 :=
.seq RemovedBody500_213 RemovedBody500_394

def RemovedBody500_396 : StackLang.HolProg 64 :=
.seq RemovedBody500_212 RemovedBody500_395

def RemovedBody500_397 : StackLang.HolProg 64 :=
.seq RemovedBody500_211 RemovedBody500_396

def RemovedBody500_398 : StackLang.HolProg 64 :=
.seq RemovedBody500_130 RemovedBody500_397

def RemovedBody500_399 : StackLang.HolProg 64 :=
.seq RemovedBody500_123 RemovedBody500_398

def RemovedBody500_400 : StackLang.HolProg 64 :=
.seq RemovedBody500_122 RemovedBody500_399

def RemovedBody500_401 : StackLang.HolProg 64 :=
.seq RemovedBody500_121 RemovedBody500_400

def RemovedBody500_402 : StackLang.HolProg 64 :=
.seq RemovedBody500_68 RemovedBody500_401

def RemovedBody500_403 : StackLang.HolProg 64 :=
.seq RemovedBody500_61 RemovedBody500_402

def RemovedBody500_404 : StackLang.HolProg 64 :=
.seq RemovedBody500_60 RemovedBody500_403

def RemovedBody500_405 : StackLang.HolProg 64 :=
.seq RemovedBody500_7 RemovedBody500_404

def RemovedBody500_406 : StackLang.HolProg 64 :=
.seq RemovedBody500_6 RemovedBody500_405

def Removed500 : Nat × StackLang.HolProg 64 := (500, RemovedBody500_406)
theorem Removed500_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc500 = Removed500 := by
  kernel_rfl
#print axioms Removed500_eq
end InitECandidate.Proofs.BackendStages
