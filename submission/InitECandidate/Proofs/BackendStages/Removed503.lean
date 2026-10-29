import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc503
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody503_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody503_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody503_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody503_3 : StackLang.HolProg 64 :=
.seq RemovedBody503_1 RemovedBody503_2

def RemovedBody503_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody503_3 RemovedBody503_4

def RemovedBody503_6 : StackLang.HolProg 64 :=
.seq RemovedBody503_0 RemovedBody503_5

def RemovedBody503_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody503_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1580#64)

def RemovedBody503_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody503_11 : StackLang.HolProg 64 :=
.seq RemovedBody503_9 RemovedBody503_10

def RemovedBody503_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody503_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody503_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody503_15 : StackLang.HolProg 64 :=
.seq RemovedBody503_13 RemovedBody503_14

def RemovedBody503_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody503_15 RemovedBody503_16

def RemovedBody503_18 : StackLang.HolProg 64 :=
.seq RemovedBody503_12 RemovedBody503_17

def RemovedBody503_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody503_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody503_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 3

def RemovedBody503_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody503_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody503_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody503_28 : StackLang.HolProg 64 :=
.seq RemovedBody503_26 RemovedBody503_27

def RemovedBody503_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody503_30 : StackLang.HolProg 64 :=
.seq RemovedBody503_28 RemovedBody503_29

def RemovedBody503_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_32 : StackLang.HolProg 64 :=
.seq RemovedBody503_30 RemovedBody503_31

def RemovedBody503_33 : StackLang.HolProg 64 :=
.seq RemovedBody503_25 RemovedBody503_32

def RemovedBody503_34 : StackLang.HolProg 64 :=
.seq RemovedBody503_24 RemovedBody503_33

def RemovedBody503_35 : StackLang.HolProg 64 :=
.seq RemovedBody503_23 RemovedBody503_34

def RemovedBody503_36 : StackLang.HolProg 64 :=
.seq RemovedBody503_22 RemovedBody503_35

def RemovedBody503_37 : StackLang.HolProg 64 :=
.seq RemovedBody503_21 RemovedBody503_36

def RemovedBody503_38 : StackLang.HolProg 64 :=
.seq RemovedBody503_20 RemovedBody503_37

def RemovedBody503_39 : StackLang.HolProg 64 :=
.seq RemovedBody503_19 RemovedBody503_38

def RemovedBody503_40 : StackLang.HolProg 64 :=
.seq RemovedBody503_18 RemovedBody503_39

def RemovedBody503_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody503_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody503_48 : StackLang.HolProg 64 :=
.seq RemovedBody503_46 RemovedBody503_47

def RemovedBody503_49 : StackLang.HolProg 64 :=
.seq RemovedBody503_45 RemovedBody503_48

def RemovedBody503_50 : StackLang.HolProg 64 :=
.seq RemovedBody503_44 RemovedBody503_49

def RemovedBody503_51 : StackLang.HolProg 64 :=
.seq RemovedBody503_43 RemovedBody503_50

def RemovedBody503_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody503_54 : StackLang.HolProg 64 :=
.seq RemovedBody503_52 RemovedBody503_53

def RemovedBody503_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody503_51, 0, 503, 2)) (Sum.inl 475) (some (RemovedBody503_54, 503, 3))

def RemovedBody503_56 : StackLang.HolProg 64 :=
.seq RemovedBody503_42 RemovedBody503_55

def RemovedBody503_57 : StackLang.HolProg 64 :=
.seq RemovedBody503_41 RemovedBody503_56

def RemovedBody503_58 : StackLang.HolProg 64 :=
.seq RemovedBody503_40 RemovedBody503_57

def RemovedBody503_59 : StackLang.HolProg 64 :=
.seq RemovedBody503_11 RemovedBody503_58

def RemovedBody503_60 : StackLang.HolProg 64 :=
.seq RemovedBody503_8 RemovedBody503_59

def RemovedBody503_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody503_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody503_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody503_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody503_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_66 : StackLang.HolProg 64 :=
.seq RemovedBody503_64 RemovedBody503_65

def RemovedBody503_67 : StackLang.HolProg 64 :=
.seq RemovedBody503_63 RemovedBody503_66

def RemovedBody503_68 : StackLang.HolProg 64 :=
.seq RemovedBody503_62 RemovedBody503_67

def RemovedBody503_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1581#64)

def RemovedBody503_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody503_72 : StackLang.HolProg 64 :=
.seq RemovedBody503_70 RemovedBody503_71

def RemovedBody503_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody503_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody503_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody503_76 : StackLang.HolProg 64 :=
.seq RemovedBody503_74 RemovedBody503_75

def RemovedBody503_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody503_76 RemovedBody503_77

def RemovedBody503_79 : StackLang.HolProg 64 :=
.seq RemovedBody503_73 RemovedBody503_78

def RemovedBody503_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody503_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody503_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 5

def RemovedBody503_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody503_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody503_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody503_89 : StackLang.HolProg 64 :=
.seq RemovedBody503_87 RemovedBody503_88

def RemovedBody503_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody503_91 : StackLang.HolProg 64 :=
.seq RemovedBody503_89 RemovedBody503_90

def RemovedBody503_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_93 : StackLang.HolProg 64 :=
.seq RemovedBody503_91 RemovedBody503_92

def RemovedBody503_94 : StackLang.HolProg 64 :=
.seq RemovedBody503_86 RemovedBody503_93

def RemovedBody503_95 : StackLang.HolProg 64 :=
.seq RemovedBody503_85 RemovedBody503_94

def RemovedBody503_96 : StackLang.HolProg 64 :=
.seq RemovedBody503_84 RemovedBody503_95

def RemovedBody503_97 : StackLang.HolProg 64 :=
.seq RemovedBody503_83 RemovedBody503_96

def RemovedBody503_98 : StackLang.HolProg 64 :=
.seq RemovedBody503_82 RemovedBody503_97

def RemovedBody503_99 : StackLang.HolProg 64 :=
.seq RemovedBody503_81 RemovedBody503_98

def RemovedBody503_100 : StackLang.HolProg 64 :=
.seq RemovedBody503_80 RemovedBody503_99

def RemovedBody503_101 : StackLang.HolProg 64 :=
.seq RemovedBody503_79 RemovedBody503_100

def RemovedBody503_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody503_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody503_109 : StackLang.HolProg 64 :=
.seq RemovedBody503_107 RemovedBody503_108

def RemovedBody503_110 : StackLang.HolProg 64 :=
.seq RemovedBody503_106 RemovedBody503_109

def RemovedBody503_111 : StackLang.HolProg 64 :=
.seq RemovedBody503_105 RemovedBody503_110

def RemovedBody503_112 : StackLang.HolProg 64 :=
.seq RemovedBody503_104 RemovedBody503_111

def RemovedBody503_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody503_115 : StackLang.HolProg 64 :=
.seq RemovedBody503_113 RemovedBody503_114

def RemovedBody503_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody503_112, 0, 503, 4)) (Sum.inl 475) (some (RemovedBody503_115, 503, 5))

def RemovedBody503_117 : StackLang.HolProg 64 :=
.seq RemovedBody503_103 RemovedBody503_116

def RemovedBody503_118 : StackLang.HolProg 64 :=
.seq RemovedBody503_102 RemovedBody503_117

def RemovedBody503_119 : StackLang.HolProg 64 :=
.seq RemovedBody503_101 RemovedBody503_118

def RemovedBody503_120 : StackLang.HolProg 64 :=
.seq RemovedBody503_72 RemovedBody503_119

def RemovedBody503_121 : StackLang.HolProg 64 :=
.seq RemovedBody503_69 RemovedBody503_120

def RemovedBody503_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody503_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody503_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody503_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody503_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody503_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody503_128 : StackLang.HolProg 64 :=
.seq RemovedBody503_126 RemovedBody503_127

def RemovedBody503_129 : StackLang.HolProg 64 :=
.seq RemovedBody503_125 RemovedBody503_128

def RemovedBody503_130 : StackLang.HolProg 64 :=
.seq RemovedBody503_124 RemovedBody503_129

def RemovedBody503_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1582#64)

def RemovedBody503_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody503_134 : StackLang.HolProg 64 :=
.seq RemovedBody503_132 RemovedBody503_133

def RemovedBody503_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody503_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody503_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody503_138 : StackLang.HolProg 64 :=
.seq RemovedBody503_136 RemovedBody503_137

def RemovedBody503_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody503_138 RemovedBody503_139

def RemovedBody503_141 : StackLang.HolProg 64 :=
.seq RemovedBody503_135 RemovedBody503_140

def RemovedBody503_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody503_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody503_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 7

def RemovedBody503_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody503_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody503_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody503_151 : StackLang.HolProg 64 :=
.seq RemovedBody503_149 RemovedBody503_150

def RemovedBody503_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody503_153 : StackLang.HolProg 64 :=
.seq RemovedBody503_151 RemovedBody503_152

def RemovedBody503_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_155 : StackLang.HolProg 64 :=
.seq RemovedBody503_153 RemovedBody503_154

def RemovedBody503_156 : StackLang.HolProg 64 :=
.seq RemovedBody503_148 RemovedBody503_155

def RemovedBody503_157 : StackLang.HolProg 64 :=
.seq RemovedBody503_147 RemovedBody503_156

def RemovedBody503_158 : StackLang.HolProg 64 :=
.seq RemovedBody503_146 RemovedBody503_157

def RemovedBody503_159 : StackLang.HolProg 64 :=
.seq RemovedBody503_145 RemovedBody503_158

def RemovedBody503_160 : StackLang.HolProg 64 :=
.seq RemovedBody503_144 RemovedBody503_159

def RemovedBody503_161 : StackLang.HolProg 64 :=
.seq RemovedBody503_143 RemovedBody503_160

def RemovedBody503_162 : StackLang.HolProg 64 :=
.seq RemovedBody503_142 RemovedBody503_161

def RemovedBody503_163 : StackLang.HolProg 64 :=
.seq RemovedBody503_141 RemovedBody503_162

def RemovedBody503_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody503_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody503_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody503_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody503_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody503_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody503_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody503_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody503_178 : StackLang.HolProg 64 :=
.seq RemovedBody503_176 RemovedBody503_177

def RemovedBody503_179 : StackLang.HolProg 64 :=
.seq RemovedBody503_175 RemovedBody503_178

def RemovedBody503_180 : StackLang.HolProg 64 :=
.seq RemovedBody503_174 RemovedBody503_179

def RemovedBody503_181 : StackLang.HolProg 64 :=
.seq RemovedBody503_173 RemovedBody503_180

def RemovedBody503_182 : StackLang.HolProg 64 :=
.seq RemovedBody503_172 RemovedBody503_181

def RemovedBody503_183 : StackLang.HolProg 64 :=
.seq RemovedBody503_171 RemovedBody503_182

def RemovedBody503_184 : StackLang.HolProg 64 :=
.seq RemovedBody503_170 RemovedBody503_183

def RemovedBody503_185 : StackLang.HolProg 64 :=
.seq RemovedBody503_169 RemovedBody503_184

def RemovedBody503_186 : StackLang.HolProg 64 :=
.seq RemovedBody503_168 RemovedBody503_185

def RemovedBody503_187 : StackLang.HolProg 64 :=
.seq RemovedBody503_167 RemovedBody503_186

def RemovedBody503_188 : StackLang.HolProg 64 :=
.seq RemovedBody503_166 RemovedBody503_187

def RemovedBody503_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody503_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody503_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody503_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody503_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody503_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody503_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody503_197 : StackLang.HolProg 64 :=
.seq RemovedBody503_195 RemovedBody503_196

def RemovedBody503_198 : StackLang.HolProg 64 :=
.seq RemovedBody503_194 RemovedBody503_197

def RemovedBody503_199 : StackLang.HolProg 64 :=
.seq RemovedBody503_193 RemovedBody503_198

def RemovedBody503_200 : StackLang.HolProg 64 :=
.seq RemovedBody503_192 RemovedBody503_199

def RemovedBody503_201 : StackLang.HolProg 64 :=
.seq RemovedBody503_191 RemovedBody503_200

def RemovedBody503_202 : StackLang.HolProg 64 :=
.seq RemovedBody503_190 RemovedBody503_201

def RemovedBody503_203 : StackLang.HolProg 64 :=
.seq RemovedBody503_189 RemovedBody503_202

def RemovedBody503_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody503_205 : StackLang.HolProg 64 :=
.seq RemovedBody503_203 RemovedBody503_204

def RemovedBody503_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody503_188, 0, 503, 6)) (Sum.inl 470) (some (RemovedBody503_205, 503, 7))

def RemovedBody503_207 : StackLang.HolProg 64 :=
.seq RemovedBody503_165 RemovedBody503_206

def RemovedBody503_208 : StackLang.HolProg 64 :=
.seq RemovedBody503_164 RemovedBody503_207

def RemovedBody503_209 : StackLang.HolProg 64 :=
.seq RemovedBody503_163 RemovedBody503_208

def RemovedBody503_210 : StackLang.HolProg 64 :=
.seq RemovedBody503_134 RemovedBody503_209

def RemovedBody503_211 : StackLang.HolProg 64 :=
.seq RemovedBody503_131 RemovedBody503_210

def RemovedBody503_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody503_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody503_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1583#64)

def RemovedBody503_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody503_217 : StackLang.HolProg 64 :=
.seq RemovedBody503_215 RemovedBody503_216

def RemovedBody503_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody503_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody503_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody503_221 : StackLang.HolProg 64 :=
.seq RemovedBody503_219 RemovedBody503_220

def RemovedBody503_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody503_221 RemovedBody503_222

def RemovedBody503_224 : StackLang.HolProg 64 :=
.seq RemovedBody503_218 RemovedBody503_223

def RemovedBody503_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody503_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody503_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 9

def RemovedBody503_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody503_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody503_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody503_234 : StackLang.HolProg 64 :=
.seq RemovedBody503_232 RemovedBody503_233

def RemovedBody503_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody503_236 : StackLang.HolProg 64 :=
.seq RemovedBody503_234 RemovedBody503_235

def RemovedBody503_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_238 : StackLang.HolProg 64 :=
.seq RemovedBody503_236 RemovedBody503_237

def RemovedBody503_239 : StackLang.HolProg 64 :=
.seq RemovedBody503_231 RemovedBody503_238

def RemovedBody503_240 : StackLang.HolProg 64 :=
.seq RemovedBody503_230 RemovedBody503_239

def RemovedBody503_241 : StackLang.HolProg 64 :=
.seq RemovedBody503_229 RemovedBody503_240

def RemovedBody503_242 : StackLang.HolProg 64 :=
.seq RemovedBody503_228 RemovedBody503_241

def RemovedBody503_243 : StackLang.HolProg 64 :=
.seq RemovedBody503_227 RemovedBody503_242

def RemovedBody503_244 : StackLang.HolProg 64 :=
.seq RemovedBody503_226 RemovedBody503_243

def RemovedBody503_245 : StackLang.HolProg 64 :=
.seq RemovedBody503_225 RemovedBody503_244

def RemovedBody503_246 : StackLang.HolProg 64 :=
.seq RemovedBody503_224 RemovedBody503_245

def RemovedBody503_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody503_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody503_254 : StackLang.HolProg 64 :=
.seq RemovedBody503_252 RemovedBody503_253

def RemovedBody503_255 : StackLang.HolProg 64 :=
.seq RemovedBody503_251 RemovedBody503_254

def RemovedBody503_256 : StackLang.HolProg 64 :=
.seq RemovedBody503_250 RemovedBody503_255

def RemovedBody503_257 : StackLang.HolProg 64 :=
.seq RemovedBody503_249 RemovedBody503_256

def RemovedBody503_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody503_260 : StackLang.HolProg 64 :=
.seq RemovedBody503_258 RemovedBody503_259

def RemovedBody503_261 : StackLang.HolProg 64 :=
.call (some (RemovedBody503_257, 0, 503, 8)) (Sum.inl 134) (some (RemovedBody503_260, 503, 9))

def RemovedBody503_262 : StackLang.HolProg 64 :=
.seq RemovedBody503_248 RemovedBody503_261

def RemovedBody503_263 : StackLang.HolProg 64 :=
.seq RemovedBody503_247 RemovedBody503_262

def RemovedBody503_264 : StackLang.HolProg 64 :=
.seq RemovedBody503_246 RemovedBody503_263

def RemovedBody503_265 : StackLang.HolProg 64 :=
.seq RemovedBody503_217 RemovedBody503_264

def RemovedBody503_266 : StackLang.HolProg 64 :=
.seq RemovedBody503_214 RemovedBody503_265

def RemovedBody503_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody503_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody503_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1584#64)

def RemovedBody503_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody503_272 : StackLang.HolProg 64 :=
.seq RemovedBody503_270 RemovedBody503_271

def RemovedBody503_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody503_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody503_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody503_276 : StackLang.HolProg 64 :=
.seq RemovedBody503_274 RemovedBody503_275

def RemovedBody503_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody503_276 RemovedBody503_277

def RemovedBody503_279 : StackLang.HolProg 64 :=
.seq RemovedBody503_273 RemovedBody503_278

def RemovedBody503_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody503_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody503_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 11

def RemovedBody503_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody503_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody503_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody503_289 : StackLang.HolProg 64 :=
.seq RemovedBody503_287 RemovedBody503_288

def RemovedBody503_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody503_291 : StackLang.HolProg 64 :=
.seq RemovedBody503_289 RemovedBody503_290

def RemovedBody503_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_293 : StackLang.HolProg 64 :=
.seq RemovedBody503_291 RemovedBody503_292

def RemovedBody503_294 : StackLang.HolProg 64 :=
.seq RemovedBody503_286 RemovedBody503_293

def RemovedBody503_295 : StackLang.HolProg 64 :=
.seq RemovedBody503_285 RemovedBody503_294

def RemovedBody503_296 : StackLang.HolProg 64 :=
.seq RemovedBody503_284 RemovedBody503_295

def RemovedBody503_297 : StackLang.HolProg 64 :=
.seq RemovedBody503_283 RemovedBody503_296

def RemovedBody503_298 : StackLang.HolProg 64 :=
.seq RemovedBody503_282 RemovedBody503_297

def RemovedBody503_299 : StackLang.HolProg 64 :=
.seq RemovedBody503_281 RemovedBody503_298

def RemovedBody503_300 : StackLang.HolProg 64 :=
.seq RemovedBody503_280 RemovedBody503_299

def RemovedBody503_301 : StackLang.HolProg 64 :=
.seq RemovedBody503_279 RemovedBody503_300

def RemovedBody503_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody503_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_309 : StackLang.HolProg 64 :=
.seq RemovedBody503_307 RemovedBody503_308

def RemovedBody503_310 : StackLang.HolProg 64 :=
.seq RemovedBody503_306 RemovedBody503_309

def RemovedBody503_311 : StackLang.HolProg 64 :=
.seq RemovedBody503_305 RemovedBody503_310

def RemovedBody503_312 : StackLang.HolProg 64 :=
.seq RemovedBody503_304 RemovedBody503_311

def RemovedBody503_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody503_315 : StackLang.HolProg 64 :=
.seq RemovedBody503_313 RemovedBody503_314

def RemovedBody503_316 : StackLang.HolProg 64 :=
.call (some (RemovedBody503_312, 0, 503, 10)) (Sum.inl 476) (some (RemovedBody503_315, 503, 11))

def RemovedBody503_317 : StackLang.HolProg 64 :=
.seq RemovedBody503_303 RemovedBody503_316

def RemovedBody503_318 : StackLang.HolProg 64 :=
.seq RemovedBody503_302 RemovedBody503_317

def RemovedBody503_319 : StackLang.HolProg 64 :=
.seq RemovedBody503_301 RemovedBody503_318

def RemovedBody503_320 : StackLang.HolProg 64 :=
.seq RemovedBody503_272 RemovedBody503_319

def RemovedBody503_321 : StackLang.HolProg 64 :=
.seq RemovedBody503_269 RemovedBody503_320

def RemovedBody503_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody503_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody503_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1585#64)

def RemovedBody503_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody503_328 : StackLang.HolProg 64 :=
.seq RemovedBody503_326 RemovedBody503_327

def RemovedBody503_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody503_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody503_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody503_332 : StackLang.HolProg 64 :=
.seq RemovedBody503_330 RemovedBody503_331

def RemovedBody503_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody503_332 RemovedBody503_333

def RemovedBody503_335 : StackLang.HolProg 64 :=
.seq RemovedBody503_329 RemovedBody503_334

def RemovedBody503_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody503_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody503_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 13

def RemovedBody503_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody503_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody503_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody503_345 : StackLang.HolProg 64 :=
.seq RemovedBody503_343 RemovedBody503_344

def RemovedBody503_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody503_347 : StackLang.HolProg 64 :=
.seq RemovedBody503_345 RemovedBody503_346

def RemovedBody503_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_349 : StackLang.HolProg 64 :=
.seq RemovedBody503_347 RemovedBody503_348

def RemovedBody503_350 : StackLang.HolProg 64 :=
.seq RemovedBody503_342 RemovedBody503_349

def RemovedBody503_351 : StackLang.HolProg 64 :=
.seq RemovedBody503_341 RemovedBody503_350

def RemovedBody503_352 : StackLang.HolProg 64 :=
.seq RemovedBody503_340 RemovedBody503_351

def RemovedBody503_353 : StackLang.HolProg 64 :=
.seq RemovedBody503_339 RemovedBody503_352

def RemovedBody503_354 : StackLang.HolProg 64 :=
.seq RemovedBody503_338 RemovedBody503_353

def RemovedBody503_355 : StackLang.HolProg 64 :=
.seq RemovedBody503_337 RemovedBody503_354

def RemovedBody503_356 : StackLang.HolProg 64 :=
.seq RemovedBody503_336 RemovedBody503_355

def RemovedBody503_357 : StackLang.HolProg 64 :=
.seq RemovedBody503_335 RemovedBody503_356

def RemovedBody503_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody503_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody503_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody503_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody503_365 : StackLang.HolProg 64 :=
.seq RemovedBody503_363 RemovedBody503_364

def RemovedBody503_366 : StackLang.HolProg 64 :=
.seq RemovedBody503_362 RemovedBody503_365

def RemovedBody503_367 : StackLang.HolProg 64 :=
.seq RemovedBody503_361 RemovedBody503_366

def RemovedBody503_368 : StackLang.HolProg 64 :=
.seq RemovedBody503_360 RemovedBody503_367

def RemovedBody503_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody503_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody503_371 : StackLang.HolProg 64 :=
.seq RemovedBody503_369 RemovedBody503_370

def RemovedBody503_372 : StackLang.HolProg 64 :=
.call (some (RemovedBody503_368, 0, 503, 12)) (Sum.inl 490) (some (RemovedBody503_371, 503, 13))

def RemovedBody503_373 : StackLang.HolProg 64 :=
.seq RemovedBody503_359 RemovedBody503_372

def RemovedBody503_374 : StackLang.HolProg 64 :=
.seq RemovedBody503_358 RemovedBody503_373

def RemovedBody503_375 : StackLang.HolProg 64 :=
.seq RemovedBody503_357 RemovedBody503_374

def RemovedBody503_376 : StackLang.HolProg 64 :=
.seq RemovedBody503_328 RemovedBody503_375

def RemovedBody503_377 : StackLang.HolProg 64 :=
.seq RemovedBody503_325 RemovedBody503_376

def RemovedBody503_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody503_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody503_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody503_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody503_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody503_383 : StackLang.HolProg 64 :=
.seq RemovedBody503_381 RemovedBody503_382

def RemovedBody503_384 : StackLang.HolProg 64 :=
.seq RemovedBody503_380 RemovedBody503_383

def RemovedBody503_385 : StackLang.HolProg 64 :=
.seq RemovedBody503_379 RemovedBody503_384

def RemovedBody503_386 : StackLang.HolProg 64 :=
.seq RemovedBody503_378 RemovedBody503_385

def RemovedBody503_387 : StackLang.HolProg 64 :=
.seq RemovedBody503_377 RemovedBody503_386

def RemovedBody503_388 : StackLang.HolProg 64 :=
.seq RemovedBody503_324 RemovedBody503_387

def RemovedBody503_389 : StackLang.HolProg 64 :=
.seq RemovedBody503_323 RemovedBody503_388

def RemovedBody503_390 : StackLang.HolProg 64 :=
.seq RemovedBody503_322 RemovedBody503_389

def RemovedBody503_391 : StackLang.HolProg 64 :=
.seq RemovedBody503_321 RemovedBody503_390

def RemovedBody503_392 : StackLang.HolProg 64 :=
.seq RemovedBody503_268 RemovedBody503_391

def RemovedBody503_393 : StackLang.HolProg 64 :=
.seq RemovedBody503_267 RemovedBody503_392

def RemovedBody503_394 : StackLang.HolProg 64 :=
.seq RemovedBody503_266 RemovedBody503_393

def RemovedBody503_395 : StackLang.HolProg 64 :=
.seq RemovedBody503_213 RemovedBody503_394

def RemovedBody503_396 : StackLang.HolProg 64 :=
.seq RemovedBody503_212 RemovedBody503_395

def RemovedBody503_397 : StackLang.HolProg 64 :=
.seq RemovedBody503_211 RemovedBody503_396

def RemovedBody503_398 : StackLang.HolProg 64 :=
.seq RemovedBody503_130 RemovedBody503_397

def RemovedBody503_399 : StackLang.HolProg 64 :=
.seq RemovedBody503_123 RemovedBody503_398

def RemovedBody503_400 : StackLang.HolProg 64 :=
.seq RemovedBody503_122 RemovedBody503_399

def RemovedBody503_401 : StackLang.HolProg 64 :=
.seq RemovedBody503_121 RemovedBody503_400

def RemovedBody503_402 : StackLang.HolProg 64 :=
.seq RemovedBody503_68 RemovedBody503_401

def RemovedBody503_403 : StackLang.HolProg 64 :=
.seq RemovedBody503_61 RemovedBody503_402

def RemovedBody503_404 : StackLang.HolProg 64 :=
.seq RemovedBody503_60 RemovedBody503_403

def RemovedBody503_405 : StackLang.HolProg 64 :=
.seq RemovedBody503_7 RemovedBody503_404

def RemovedBody503_406 : StackLang.HolProg 64 :=
.seq RemovedBody503_6 RemovedBody503_405

def Removed503 : Nat × StackLang.HolProg 64 := (503, RemovedBody503_406)
theorem Removed503_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc503 = Removed503 := by
  kernel_rfl
#print axioms Removed503_eq
end InitECandidate.Proofs.BackendStages
