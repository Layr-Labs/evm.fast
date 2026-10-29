import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc504
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody504_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def RemovedBody504_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody504_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody504_3 : StackLang.HolProg 64 :=
.seq RemovedBody504_1 RemovedBody504_2

def RemovedBody504_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody504_3 RemovedBody504_4

def RemovedBody504_6 : StackLang.HolProg 64 :=
.seq RemovedBody504_0 RemovedBody504_5

def RemovedBody504_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody504_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1586#64)

def RemovedBody504_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_11 : StackLang.HolProg 64 :=
.seq RemovedBody504_9 RemovedBody504_10

def RemovedBody504_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody504_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody504_15 : StackLang.HolProg 64 :=
.seq RemovedBody504_13 RemovedBody504_14

def RemovedBody504_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody504_15 RemovedBody504_16

def RemovedBody504_18 : StackLang.HolProg 64 :=
.seq RemovedBody504_12 RemovedBody504_17

def RemovedBody504_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody504_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 3

def RemovedBody504_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody504_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody504_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody504_28 : StackLang.HolProg 64 :=
.seq RemovedBody504_26 RemovedBody504_27

def RemovedBody504_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody504_30 : StackLang.HolProg 64 :=
.seq RemovedBody504_28 RemovedBody504_29

def RemovedBody504_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_32 : StackLang.HolProg 64 :=
.seq RemovedBody504_30 RemovedBody504_31

def RemovedBody504_33 : StackLang.HolProg 64 :=
.seq RemovedBody504_25 RemovedBody504_32

def RemovedBody504_34 : StackLang.HolProg 64 :=
.seq RemovedBody504_24 RemovedBody504_33

def RemovedBody504_35 : StackLang.HolProg 64 :=
.seq RemovedBody504_23 RemovedBody504_34

def RemovedBody504_36 : StackLang.HolProg 64 :=
.seq RemovedBody504_22 RemovedBody504_35

def RemovedBody504_37 : StackLang.HolProg 64 :=
.seq RemovedBody504_21 RemovedBody504_36

def RemovedBody504_38 : StackLang.HolProg 64 :=
.seq RemovedBody504_20 RemovedBody504_37

def RemovedBody504_39 : StackLang.HolProg 64 :=
.seq RemovedBody504_19 RemovedBody504_38

def RemovedBody504_40 : StackLang.HolProg 64 :=
.seq RemovedBody504_18 RemovedBody504_39

def RemovedBody504_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody504_48 : StackLang.HolProg 64 :=
.seq RemovedBody504_46 RemovedBody504_47

def RemovedBody504_49 : StackLang.HolProg 64 :=
.seq RemovedBody504_45 RemovedBody504_48

def RemovedBody504_50 : StackLang.HolProg 64 :=
.seq RemovedBody504_44 RemovedBody504_49

def RemovedBody504_51 : StackLang.HolProg 64 :=
.seq RemovedBody504_43 RemovedBody504_50

def RemovedBody504_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody504_54 : StackLang.HolProg 64 :=
.seq RemovedBody504_52 RemovedBody504_53

def RemovedBody504_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody504_51, 0, 504, 2)) (Sum.inl 475) (some (RemovedBody504_54, 504, 3))

def RemovedBody504_56 : StackLang.HolProg 64 :=
.seq RemovedBody504_42 RemovedBody504_55

def RemovedBody504_57 : StackLang.HolProg 64 :=
.seq RemovedBody504_41 RemovedBody504_56

def RemovedBody504_58 : StackLang.HolProg 64 :=
.seq RemovedBody504_40 RemovedBody504_57

def RemovedBody504_59 : StackLang.HolProg 64 :=
.seq RemovedBody504_11 RemovedBody504_58

def RemovedBody504_60 : StackLang.HolProg 64 :=
.seq RemovedBody504_8 RemovedBody504_59

def RemovedBody504_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody504_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody504_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody504_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody504_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody504_66 : StackLang.HolProg 64 :=
.seq RemovedBody504_64 RemovedBody504_65

def RemovedBody504_67 : StackLang.HolProg 64 :=
.seq RemovedBody504_63 RemovedBody504_66

def RemovedBody504_68 : StackLang.HolProg 64 :=
.seq RemovedBody504_62 RemovedBody504_67

def RemovedBody504_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1587#64)

def RemovedBody504_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_72 : StackLang.HolProg 64 :=
.seq RemovedBody504_70 RemovedBody504_71

def RemovedBody504_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody504_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody504_76 : StackLang.HolProg 64 :=
.seq RemovedBody504_74 RemovedBody504_75

def RemovedBody504_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody504_76 RemovedBody504_77

def RemovedBody504_79 : StackLang.HolProg 64 :=
.seq RemovedBody504_73 RemovedBody504_78

def RemovedBody504_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody504_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 5

def RemovedBody504_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody504_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody504_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody504_89 : StackLang.HolProg 64 :=
.seq RemovedBody504_87 RemovedBody504_88

def RemovedBody504_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody504_91 : StackLang.HolProg 64 :=
.seq RemovedBody504_89 RemovedBody504_90

def RemovedBody504_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_93 : StackLang.HolProg 64 :=
.seq RemovedBody504_91 RemovedBody504_92

def RemovedBody504_94 : StackLang.HolProg 64 :=
.seq RemovedBody504_86 RemovedBody504_93

def RemovedBody504_95 : StackLang.HolProg 64 :=
.seq RemovedBody504_85 RemovedBody504_94

def RemovedBody504_96 : StackLang.HolProg 64 :=
.seq RemovedBody504_84 RemovedBody504_95

def RemovedBody504_97 : StackLang.HolProg 64 :=
.seq RemovedBody504_83 RemovedBody504_96

def RemovedBody504_98 : StackLang.HolProg 64 :=
.seq RemovedBody504_82 RemovedBody504_97

def RemovedBody504_99 : StackLang.HolProg 64 :=
.seq RemovedBody504_81 RemovedBody504_98

def RemovedBody504_100 : StackLang.HolProg 64 :=
.seq RemovedBody504_80 RemovedBody504_99

def RemovedBody504_101 : StackLang.HolProg 64 :=
.seq RemovedBody504_79 RemovedBody504_100

def RemovedBody504_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody504_109 : StackLang.HolProg 64 :=
.seq RemovedBody504_107 RemovedBody504_108

def RemovedBody504_110 : StackLang.HolProg 64 :=
.seq RemovedBody504_106 RemovedBody504_109

def RemovedBody504_111 : StackLang.HolProg 64 :=
.seq RemovedBody504_105 RemovedBody504_110

def RemovedBody504_112 : StackLang.HolProg 64 :=
.seq RemovedBody504_104 RemovedBody504_111

def RemovedBody504_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody504_115 : StackLang.HolProg 64 :=
.seq RemovedBody504_113 RemovedBody504_114

def RemovedBody504_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody504_112, 0, 504, 4)) (Sum.inl 475) (some (RemovedBody504_115, 504, 5))

def RemovedBody504_117 : StackLang.HolProg 64 :=
.seq RemovedBody504_103 RemovedBody504_116

def RemovedBody504_118 : StackLang.HolProg 64 :=
.seq RemovedBody504_102 RemovedBody504_117

def RemovedBody504_119 : StackLang.HolProg 64 :=
.seq RemovedBody504_101 RemovedBody504_118

def RemovedBody504_120 : StackLang.HolProg 64 :=
.seq RemovedBody504_72 RemovedBody504_119

def RemovedBody504_121 : StackLang.HolProg 64 :=
.seq RemovedBody504_69 RemovedBody504_120

def RemovedBody504_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody504_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody504_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody504_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody504_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody504_127 : StackLang.HolProg 64 :=
.seq RemovedBody504_125 RemovedBody504_126

def RemovedBody504_128 : StackLang.HolProg 64 :=
.seq RemovedBody504_124 RemovedBody504_127

def RemovedBody504_129 : StackLang.HolProg 64 :=
.seq RemovedBody504_123 RemovedBody504_128

def RemovedBody504_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1588#64)

def RemovedBody504_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_133 : StackLang.HolProg 64 :=
.seq RemovedBody504_131 RemovedBody504_132

def RemovedBody504_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody504_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody504_137 : StackLang.HolProg 64 :=
.seq RemovedBody504_135 RemovedBody504_136

def RemovedBody504_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody504_137 RemovedBody504_138

def RemovedBody504_140 : StackLang.HolProg 64 :=
.seq RemovedBody504_134 RemovedBody504_139

def RemovedBody504_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody504_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 7

def RemovedBody504_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody504_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody504_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody504_150 : StackLang.HolProg 64 :=
.seq RemovedBody504_148 RemovedBody504_149

def RemovedBody504_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody504_152 : StackLang.HolProg 64 :=
.seq RemovedBody504_150 RemovedBody504_151

def RemovedBody504_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_154 : StackLang.HolProg 64 :=
.seq RemovedBody504_152 RemovedBody504_153

def RemovedBody504_155 : StackLang.HolProg 64 :=
.seq RemovedBody504_147 RemovedBody504_154

def RemovedBody504_156 : StackLang.HolProg 64 :=
.seq RemovedBody504_146 RemovedBody504_155

def RemovedBody504_157 : StackLang.HolProg 64 :=
.seq RemovedBody504_145 RemovedBody504_156

def RemovedBody504_158 : StackLang.HolProg 64 :=
.seq RemovedBody504_144 RemovedBody504_157

def RemovedBody504_159 : StackLang.HolProg 64 :=
.seq RemovedBody504_143 RemovedBody504_158

def RemovedBody504_160 : StackLang.HolProg 64 :=
.seq RemovedBody504_142 RemovedBody504_159

def RemovedBody504_161 : StackLang.HolProg 64 :=
.seq RemovedBody504_141 RemovedBody504_160

def RemovedBody504_162 : StackLang.HolProg 64 :=
.seq RemovedBody504_140 RemovedBody504_161

def RemovedBody504_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody504_170 : StackLang.HolProg 64 :=
.seq RemovedBody504_168 RemovedBody504_169

def RemovedBody504_171 : StackLang.HolProg 64 :=
.seq RemovedBody504_167 RemovedBody504_170

def RemovedBody504_172 : StackLang.HolProg 64 :=
.seq RemovedBody504_166 RemovedBody504_171

def RemovedBody504_173 : StackLang.HolProg 64 :=
.seq RemovedBody504_165 RemovedBody504_172

def RemovedBody504_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody504_176 : StackLang.HolProg 64 :=
.seq RemovedBody504_174 RemovedBody504_175

def RemovedBody504_177 : StackLang.HolProg 64 :=
.call (some (RemovedBody504_173, 0, 504, 6)) (Sum.inl 475) (some (RemovedBody504_176, 504, 7))

def RemovedBody504_178 : StackLang.HolProg 64 :=
.seq RemovedBody504_164 RemovedBody504_177

def RemovedBody504_179 : StackLang.HolProg 64 :=
.seq RemovedBody504_163 RemovedBody504_178

def RemovedBody504_180 : StackLang.HolProg 64 :=
.seq RemovedBody504_162 RemovedBody504_179

def RemovedBody504_181 : StackLang.HolProg 64 :=
.seq RemovedBody504_133 RemovedBody504_180

def RemovedBody504_182 : StackLang.HolProg 64 :=
.seq RemovedBody504_130 RemovedBody504_181

def RemovedBody504_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody504_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody504_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody504_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody504_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody504_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_189 : StackLang.HolProg 64 :=
.seq RemovedBody504_187 RemovedBody504_188

def RemovedBody504_190 : StackLang.HolProg 64 :=
.seq RemovedBody504_186 RemovedBody504_189

def RemovedBody504_191 : StackLang.HolProg 64 :=
.seq RemovedBody504_185 RemovedBody504_190

def RemovedBody504_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1589#64)

def RemovedBody504_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_195 : StackLang.HolProg 64 :=
.seq RemovedBody504_193 RemovedBody504_194

def RemovedBody504_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody504_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody504_199 : StackLang.HolProg 64 :=
.seq RemovedBody504_197 RemovedBody504_198

def RemovedBody504_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody504_199 RemovedBody504_200

def RemovedBody504_202 : StackLang.HolProg 64 :=
.seq RemovedBody504_196 RemovedBody504_201

def RemovedBody504_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody504_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 9

def RemovedBody504_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody504_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody504_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody504_212 : StackLang.HolProg 64 :=
.seq RemovedBody504_210 RemovedBody504_211

def RemovedBody504_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody504_214 : StackLang.HolProg 64 :=
.seq RemovedBody504_212 RemovedBody504_213

def RemovedBody504_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_216 : StackLang.HolProg 64 :=
.seq RemovedBody504_214 RemovedBody504_215

def RemovedBody504_217 : StackLang.HolProg 64 :=
.seq RemovedBody504_209 RemovedBody504_216

def RemovedBody504_218 : StackLang.HolProg 64 :=
.seq RemovedBody504_208 RemovedBody504_217

def RemovedBody504_219 : StackLang.HolProg 64 :=
.seq RemovedBody504_207 RemovedBody504_218

def RemovedBody504_220 : StackLang.HolProg 64 :=
.seq RemovedBody504_206 RemovedBody504_219

def RemovedBody504_221 : StackLang.HolProg 64 :=
.seq RemovedBody504_205 RemovedBody504_220

def RemovedBody504_222 : StackLang.HolProg 64 :=
.seq RemovedBody504_204 RemovedBody504_221

def RemovedBody504_223 : StackLang.HolProg 64 :=
.seq RemovedBody504_203 RemovedBody504_222

def RemovedBody504_224 : StackLang.HolProg 64 :=
.seq RemovedBody504_202 RemovedBody504_223

def RemovedBody504_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody504_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody504_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody504_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody504_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody504_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody504_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody504_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody504_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody504_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody504_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody504_243 : StackLang.HolProg 64 :=
.seq RemovedBody504_241 RemovedBody504_242

def RemovedBody504_244 : StackLang.HolProg 64 :=
.seq RemovedBody504_240 RemovedBody504_243

def RemovedBody504_245 : StackLang.HolProg 64 :=
.seq RemovedBody504_239 RemovedBody504_244

def RemovedBody504_246 : StackLang.HolProg 64 :=
.seq RemovedBody504_238 RemovedBody504_245

def RemovedBody504_247 : StackLang.HolProg 64 :=
.seq RemovedBody504_237 RemovedBody504_246

def RemovedBody504_248 : StackLang.HolProg 64 :=
.seq RemovedBody504_236 RemovedBody504_247

def RemovedBody504_249 : StackLang.HolProg 64 :=
.seq RemovedBody504_235 RemovedBody504_248

def RemovedBody504_250 : StackLang.HolProg 64 :=
.seq RemovedBody504_234 RemovedBody504_249

def RemovedBody504_251 : StackLang.HolProg 64 :=
.seq RemovedBody504_233 RemovedBody504_250

def RemovedBody504_252 : StackLang.HolProg 64 :=
.seq RemovedBody504_232 RemovedBody504_251

def RemovedBody504_253 : StackLang.HolProg 64 :=
.seq RemovedBody504_231 RemovedBody504_252

def RemovedBody504_254 : StackLang.HolProg 64 :=
.seq RemovedBody504_230 RemovedBody504_253

def RemovedBody504_255 : StackLang.HolProg 64 :=
.seq RemovedBody504_229 RemovedBody504_254

def RemovedBody504_256 : StackLang.HolProg 64 :=
.seq RemovedBody504_228 RemovedBody504_255

def RemovedBody504_257 : StackLang.HolProg 64 :=
.seq RemovedBody504_227 RemovedBody504_256

def RemovedBody504_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody504_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody504_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody504_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody504_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody504_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody504_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody504_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody504_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody504_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody504_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody504_270 : StackLang.HolProg 64 :=
.seq RemovedBody504_268 RemovedBody504_269

def RemovedBody504_271 : StackLang.HolProg 64 :=
.seq RemovedBody504_267 RemovedBody504_270

def RemovedBody504_272 : StackLang.HolProg 64 :=
.seq RemovedBody504_266 RemovedBody504_271

def RemovedBody504_273 : StackLang.HolProg 64 :=
.seq RemovedBody504_265 RemovedBody504_272

def RemovedBody504_274 : StackLang.HolProg 64 :=
.seq RemovedBody504_264 RemovedBody504_273

def RemovedBody504_275 : StackLang.HolProg 64 :=
.seq RemovedBody504_263 RemovedBody504_274

def RemovedBody504_276 : StackLang.HolProg 64 :=
.seq RemovedBody504_262 RemovedBody504_275

def RemovedBody504_277 : StackLang.HolProg 64 :=
.seq RemovedBody504_261 RemovedBody504_276

def RemovedBody504_278 : StackLang.HolProg 64 :=
.seq RemovedBody504_260 RemovedBody504_277

def RemovedBody504_279 : StackLang.HolProg 64 :=
.seq RemovedBody504_259 RemovedBody504_278

def RemovedBody504_280 : StackLang.HolProg 64 :=
.seq RemovedBody504_258 RemovedBody504_279

def RemovedBody504_281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody504_282 : StackLang.HolProg 64 :=
.seq RemovedBody504_280 RemovedBody504_281

def RemovedBody504_283 : StackLang.HolProg 64 :=
.call (some (RemovedBody504_257, 0, 504, 8)) (Sum.inl 470) (some (RemovedBody504_282, 504, 9))

def RemovedBody504_284 : StackLang.HolProg 64 :=
.seq RemovedBody504_226 RemovedBody504_283

def RemovedBody504_285 : StackLang.HolProg 64 :=
.seq RemovedBody504_225 RemovedBody504_284

def RemovedBody504_286 : StackLang.HolProg 64 :=
.seq RemovedBody504_224 RemovedBody504_285

def RemovedBody504_287 : StackLang.HolProg 64 :=
.seq RemovedBody504_195 RemovedBody504_286

def RemovedBody504_288 : StackLang.HolProg 64 :=
.seq RemovedBody504_192 RemovedBody504_287

def RemovedBody504_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody504_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody504_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1590#64)

def RemovedBody504_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_294 : StackLang.HolProg 64 :=
.seq RemovedBody504_292 RemovedBody504_293

def RemovedBody504_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody504_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody504_298 : StackLang.HolProg 64 :=
.seq RemovedBody504_296 RemovedBody504_297

def RemovedBody504_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody504_298 RemovedBody504_299

def RemovedBody504_301 : StackLang.HolProg 64 :=
.seq RemovedBody504_295 RemovedBody504_300

def RemovedBody504_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody504_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 11

def RemovedBody504_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody504_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody504_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody504_311 : StackLang.HolProg 64 :=
.seq RemovedBody504_309 RemovedBody504_310

def RemovedBody504_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody504_313 : StackLang.HolProg 64 :=
.seq RemovedBody504_311 RemovedBody504_312

def RemovedBody504_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_315 : StackLang.HolProg 64 :=
.seq RemovedBody504_313 RemovedBody504_314

def RemovedBody504_316 : StackLang.HolProg 64 :=
.seq RemovedBody504_308 RemovedBody504_315

def RemovedBody504_317 : StackLang.HolProg 64 :=
.seq RemovedBody504_307 RemovedBody504_316

def RemovedBody504_318 : StackLang.HolProg 64 :=
.seq RemovedBody504_306 RemovedBody504_317

def RemovedBody504_319 : StackLang.HolProg 64 :=
.seq RemovedBody504_305 RemovedBody504_318

def RemovedBody504_320 : StackLang.HolProg 64 :=
.seq RemovedBody504_304 RemovedBody504_319

def RemovedBody504_321 : StackLang.HolProg 64 :=
.seq RemovedBody504_303 RemovedBody504_320

def RemovedBody504_322 : StackLang.HolProg 64 :=
.seq RemovedBody504_302 RemovedBody504_321

def RemovedBody504_323 : StackLang.HolProg 64 :=
.seq RemovedBody504_301 RemovedBody504_322

def RemovedBody504_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody504_331 : StackLang.HolProg 64 :=
.seq RemovedBody504_329 RemovedBody504_330

def RemovedBody504_332 : StackLang.HolProg 64 :=
.seq RemovedBody504_328 RemovedBody504_331

def RemovedBody504_333 : StackLang.HolProg 64 :=
.seq RemovedBody504_327 RemovedBody504_332

def RemovedBody504_334 : StackLang.HolProg 64 :=
.seq RemovedBody504_326 RemovedBody504_333

def RemovedBody504_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_336 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody504_337 : StackLang.HolProg 64 :=
.seq RemovedBody504_335 RemovedBody504_336

def RemovedBody504_338 : StackLang.HolProg 64 :=
.call (some (RemovedBody504_334, 0, 504, 10)) (Sum.inl 135) (some (RemovedBody504_337, 504, 11))

def RemovedBody504_339 : StackLang.HolProg 64 :=
.seq RemovedBody504_325 RemovedBody504_338

def RemovedBody504_340 : StackLang.HolProg 64 :=
.seq RemovedBody504_324 RemovedBody504_339

def RemovedBody504_341 : StackLang.HolProg 64 :=
.seq RemovedBody504_323 RemovedBody504_340

def RemovedBody504_342 : StackLang.HolProg 64 :=
.seq RemovedBody504_294 RemovedBody504_341

def RemovedBody504_343 : StackLang.HolProg 64 :=
.seq RemovedBody504_291 RemovedBody504_342

def RemovedBody504_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody504_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody504_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1591#64)

def RemovedBody504_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_349 : StackLang.HolProg 64 :=
.seq RemovedBody504_347 RemovedBody504_348

def RemovedBody504_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody504_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody504_353 : StackLang.HolProg 64 :=
.seq RemovedBody504_351 RemovedBody504_352

def RemovedBody504_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_355 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody504_353 RemovedBody504_354

def RemovedBody504_356 : StackLang.HolProg 64 :=
.seq RemovedBody504_350 RemovedBody504_355

def RemovedBody504_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody504_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 13

def RemovedBody504_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody504_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody504_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody504_366 : StackLang.HolProg 64 :=
.seq RemovedBody504_364 RemovedBody504_365

def RemovedBody504_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody504_368 : StackLang.HolProg 64 :=
.seq RemovedBody504_366 RemovedBody504_367

def RemovedBody504_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_370 : StackLang.HolProg 64 :=
.seq RemovedBody504_368 RemovedBody504_369

def RemovedBody504_371 : StackLang.HolProg 64 :=
.seq RemovedBody504_363 RemovedBody504_370

def RemovedBody504_372 : StackLang.HolProg 64 :=
.seq RemovedBody504_362 RemovedBody504_371

def RemovedBody504_373 : StackLang.HolProg 64 :=
.seq RemovedBody504_361 RemovedBody504_372

def RemovedBody504_374 : StackLang.HolProg 64 :=
.seq RemovedBody504_360 RemovedBody504_373

def RemovedBody504_375 : StackLang.HolProg 64 :=
.seq RemovedBody504_359 RemovedBody504_374

def RemovedBody504_376 : StackLang.HolProg 64 :=
.seq RemovedBody504_358 RemovedBody504_375

def RemovedBody504_377 : StackLang.HolProg 64 :=
.seq RemovedBody504_357 RemovedBody504_376

def RemovedBody504_378 : StackLang.HolProg 64 :=
.seq RemovedBody504_356 RemovedBody504_377

def RemovedBody504_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_386 : StackLang.HolProg 64 :=
.seq RemovedBody504_384 RemovedBody504_385

def RemovedBody504_387 : StackLang.HolProg 64 :=
.seq RemovedBody504_383 RemovedBody504_386

def RemovedBody504_388 : StackLang.HolProg 64 :=
.seq RemovedBody504_382 RemovedBody504_387

def RemovedBody504_389 : StackLang.HolProg 64 :=
.seq RemovedBody504_381 RemovedBody504_388

def RemovedBody504_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_391 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody504_392 : StackLang.HolProg 64 :=
.seq RemovedBody504_390 RemovedBody504_391

def RemovedBody504_393 : StackLang.HolProg 64 :=
.call (some (RemovedBody504_389, 0, 504, 12)) (Sum.inl 476) (some (RemovedBody504_392, 504, 13))

def RemovedBody504_394 : StackLang.HolProg 64 :=
.seq RemovedBody504_380 RemovedBody504_393

def RemovedBody504_395 : StackLang.HolProg 64 :=
.seq RemovedBody504_379 RemovedBody504_394

def RemovedBody504_396 : StackLang.HolProg 64 :=
.seq RemovedBody504_378 RemovedBody504_395

def RemovedBody504_397 : StackLang.HolProg 64 :=
.seq RemovedBody504_349 RemovedBody504_396

def RemovedBody504_398 : StackLang.HolProg 64 :=
.seq RemovedBody504_346 RemovedBody504_397

def RemovedBody504_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody504_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody504_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1592#64)

def RemovedBody504_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_405 : StackLang.HolProg 64 :=
.seq RemovedBody504_403 RemovedBody504_404

def RemovedBody504_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody504_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody504_409 : StackLang.HolProg 64 :=
.seq RemovedBody504_407 RemovedBody504_408

def RemovedBody504_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_411 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody504_409 RemovedBody504_410

def RemovedBody504_412 : StackLang.HolProg 64 :=
.seq RemovedBody504_406 RemovedBody504_411

def RemovedBody504_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody504_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody504_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 504 15

def RemovedBody504_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody504_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody504_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody504_422 : StackLang.HolProg 64 :=
.seq RemovedBody504_420 RemovedBody504_421

def RemovedBody504_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody504_424 : StackLang.HolProg 64 :=
.seq RemovedBody504_422 RemovedBody504_423

def RemovedBody504_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_426 : StackLang.HolProg 64 :=
.seq RemovedBody504_424 RemovedBody504_425

def RemovedBody504_427 : StackLang.HolProg 64 :=
.seq RemovedBody504_419 RemovedBody504_426

def RemovedBody504_428 : StackLang.HolProg 64 :=
.seq RemovedBody504_418 RemovedBody504_427

def RemovedBody504_429 : StackLang.HolProg 64 :=
.seq RemovedBody504_417 RemovedBody504_428

def RemovedBody504_430 : StackLang.HolProg 64 :=
.seq RemovedBody504_416 RemovedBody504_429

def RemovedBody504_431 : StackLang.HolProg 64 :=
.seq RemovedBody504_415 RemovedBody504_430

def RemovedBody504_432 : StackLang.HolProg 64 :=
.seq RemovedBody504_414 RemovedBody504_431

def RemovedBody504_433 : StackLang.HolProg 64 :=
.seq RemovedBody504_413 RemovedBody504_432

def RemovedBody504_434 : StackLang.HolProg 64 :=
.seq RemovedBody504_412 RemovedBody504_433

def RemovedBody504_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody504_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody504_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody504_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody504_442 : StackLang.HolProg 64 :=
.seq RemovedBody504_440 RemovedBody504_441

def RemovedBody504_443 : StackLang.HolProg 64 :=
.seq RemovedBody504_439 RemovedBody504_442

def RemovedBody504_444 : StackLang.HolProg 64 :=
.seq RemovedBody504_438 RemovedBody504_443

def RemovedBody504_445 : StackLang.HolProg 64 :=
.seq RemovedBody504_437 RemovedBody504_444

def RemovedBody504_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody504_447 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody504_448 : StackLang.HolProg 64 :=
.seq RemovedBody504_446 RemovedBody504_447

def RemovedBody504_449 : StackLang.HolProg 64 :=
.call (some (RemovedBody504_445, 0, 504, 14)) (Sum.inl 490) (some (RemovedBody504_448, 504, 15))

def RemovedBody504_450 : StackLang.HolProg 64 :=
.seq RemovedBody504_436 RemovedBody504_449

def RemovedBody504_451 : StackLang.HolProg 64 :=
.seq RemovedBody504_435 RemovedBody504_450

def RemovedBody504_452 : StackLang.HolProg 64 :=
.seq RemovedBody504_434 RemovedBody504_451

def RemovedBody504_453 : StackLang.HolProg 64 :=
.seq RemovedBody504_405 RemovedBody504_452

def RemovedBody504_454 : StackLang.HolProg 64 :=
.seq RemovedBody504_402 RemovedBody504_453

def RemovedBody504_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody504_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody504_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody504_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def RemovedBody504_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody504_460 : StackLang.HolProg 64 :=
.seq RemovedBody504_458 RemovedBody504_459

def RemovedBody504_461 : StackLang.HolProg 64 :=
.seq RemovedBody504_457 RemovedBody504_460

def RemovedBody504_462 : StackLang.HolProg 64 :=
.seq RemovedBody504_456 RemovedBody504_461

def RemovedBody504_463 : StackLang.HolProg 64 :=
.seq RemovedBody504_455 RemovedBody504_462

def RemovedBody504_464 : StackLang.HolProg 64 :=
.seq RemovedBody504_454 RemovedBody504_463

def RemovedBody504_465 : StackLang.HolProg 64 :=
.seq RemovedBody504_401 RemovedBody504_464

def RemovedBody504_466 : StackLang.HolProg 64 :=
.seq RemovedBody504_400 RemovedBody504_465

def RemovedBody504_467 : StackLang.HolProg 64 :=
.seq RemovedBody504_399 RemovedBody504_466

def RemovedBody504_468 : StackLang.HolProg 64 :=
.seq RemovedBody504_398 RemovedBody504_467

def RemovedBody504_469 : StackLang.HolProg 64 :=
.seq RemovedBody504_345 RemovedBody504_468

def RemovedBody504_470 : StackLang.HolProg 64 :=
.seq RemovedBody504_344 RemovedBody504_469

def RemovedBody504_471 : StackLang.HolProg 64 :=
.seq RemovedBody504_343 RemovedBody504_470

def RemovedBody504_472 : StackLang.HolProg 64 :=
.seq RemovedBody504_290 RemovedBody504_471

def RemovedBody504_473 : StackLang.HolProg 64 :=
.seq RemovedBody504_289 RemovedBody504_472

def RemovedBody504_474 : StackLang.HolProg 64 :=
.seq RemovedBody504_288 RemovedBody504_473

def RemovedBody504_475 : StackLang.HolProg 64 :=
.seq RemovedBody504_191 RemovedBody504_474

def RemovedBody504_476 : StackLang.HolProg 64 :=
.seq RemovedBody504_184 RemovedBody504_475

def RemovedBody504_477 : StackLang.HolProg 64 :=
.seq RemovedBody504_183 RemovedBody504_476

def RemovedBody504_478 : StackLang.HolProg 64 :=
.seq RemovedBody504_182 RemovedBody504_477

def RemovedBody504_479 : StackLang.HolProg 64 :=
.seq RemovedBody504_129 RemovedBody504_478

def RemovedBody504_480 : StackLang.HolProg 64 :=
.seq RemovedBody504_122 RemovedBody504_479

def RemovedBody504_481 : StackLang.HolProg 64 :=
.seq RemovedBody504_121 RemovedBody504_480

def RemovedBody504_482 : StackLang.HolProg 64 :=
.seq RemovedBody504_68 RemovedBody504_481

def RemovedBody504_483 : StackLang.HolProg 64 :=
.seq RemovedBody504_61 RemovedBody504_482

def RemovedBody504_484 : StackLang.HolProg 64 :=
.seq RemovedBody504_60 RemovedBody504_483

def RemovedBody504_485 : StackLang.HolProg 64 :=
.seq RemovedBody504_7 RemovedBody504_484

def RemovedBody504_486 : StackLang.HolProg 64 :=
.seq RemovedBody504_6 RemovedBody504_485

def Removed504 : Nat × StackLang.HolProg 64 := (504, RemovedBody504_486)
theorem Removed504_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc504 = Removed504 := by
  kernel_rfl
#print axioms Removed504_eq
end InitECandidate.Proofs.BackendStages
