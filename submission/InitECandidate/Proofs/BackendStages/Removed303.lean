import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc303
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody303_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody303_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody303_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody303_3 : StackLang.HolProg 64 :=
.seq RemovedBody303_1 RemovedBody303_2

def RemovedBody303_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody303_3 RemovedBody303_4

def RemovedBody303_6 : StackLang.HolProg 64 :=
.seq RemovedBody303_0 RemovedBody303_5

def RemovedBody303_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody303_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody303_9 : StackLang.HolProg 64 :=
.seq RemovedBody303_7 RemovedBody303_8

def RemovedBody303_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 833#64)

def RemovedBody303_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody303_13 : StackLang.HolProg 64 :=
.seq RemovedBody303_11 RemovedBody303_12

def RemovedBody303_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody303_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody303_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody303_17 : StackLang.HolProg 64 :=
.seq RemovedBody303_15 RemovedBody303_16

def RemovedBody303_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody303_17 RemovedBody303_18

def RemovedBody303_20 : StackLang.HolProg 64 :=
.seq RemovedBody303_14 RemovedBody303_19

def RemovedBody303_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody303_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody303_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 303 5

def RemovedBody303_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody303_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody303_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody303_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody303_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody303_30 : StackLang.HolProg 64 :=
.seq RemovedBody303_28 RemovedBody303_29

def RemovedBody303_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody303_32 : StackLang.HolProg 64 :=
.seq RemovedBody303_30 RemovedBody303_31

def RemovedBody303_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody303_34 : StackLang.HolProg 64 :=
.seq RemovedBody303_32 RemovedBody303_33

def RemovedBody303_35 : StackLang.HolProg 64 :=
.seq RemovedBody303_27 RemovedBody303_34

def RemovedBody303_36 : StackLang.HolProg 64 :=
.seq RemovedBody303_26 RemovedBody303_35

def RemovedBody303_37 : StackLang.HolProg 64 :=
.seq RemovedBody303_25 RemovedBody303_36

def RemovedBody303_38 : StackLang.HolProg 64 :=
.seq RemovedBody303_24 RemovedBody303_37

def RemovedBody303_39 : StackLang.HolProg 64 :=
.seq RemovedBody303_23 RemovedBody303_38

def RemovedBody303_40 : StackLang.HolProg 64 :=
.seq RemovedBody303_22 RemovedBody303_39

def RemovedBody303_41 : StackLang.HolProg 64 :=
.seq RemovedBody303_21 RemovedBody303_40

def RemovedBody303_42 : StackLang.HolProg 64 :=
.seq RemovedBody303_20 RemovedBody303_41

def RemovedBody303_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody303_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody303_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody303_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody303_50 : StackLang.HolProg 64 :=
.seq RemovedBody303_48 RemovedBody303_49

def RemovedBody303_51 : StackLang.HolProg 64 :=
.seq RemovedBody303_47 RemovedBody303_50

def RemovedBody303_52 : StackLang.HolProg 64 :=
.seq RemovedBody303_46 RemovedBody303_51

def RemovedBody303_53 : StackLang.HolProg 64 :=
.seq RemovedBody303_45 RemovedBody303_52

def RemovedBody303_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody303_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody303_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody303_57 : StackLang.HolProg 64 :=
.seq RemovedBody303_55 RemovedBody303_56

def RemovedBody303_58 : StackLang.HolProg 64 :=
.seq RemovedBody303_54 RemovedBody303_57

def RemovedBody303_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody303_61 : StackLang.HolProg 64 :=
.seq RemovedBody303_59 RemovedBody303_60

def RemovedBody303_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody303_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody303_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody303_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody303_66 : StackLang.HolProg 64 :=
.seq RemovedBody303_64 RemovedBody303_65

def RemovedBody303_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 834#64)

def RemovedBody303_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody303_70 : StackLang.HolProg 64 :=
.seq RemovedBody303_68 RemovedBody303_69

def RemovedBody303_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody303_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody303_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody303_74 : StackLang.HolProg 64 :=
.seq RemovedBody303_72 RemovedBody303_73

def RemovedBody303_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody303_74 RemovedBody303_75

def RemovedBody303_77 : StackLang.HolProg 64 :=
.seq RemovedBody303_71 RemovedBody303_76

def RemovedBody303_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody303_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody303_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 303 4

def RemovedBody303_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody303_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody303_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody303_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody303_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody303_87 : StackLang.HolProg 64 :=
.seq RemovedBody303_85 RemovedBody303_86

def RemovedBody303_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody303_89 : StackLang.HolProg 64 :=
.seq RemovedBody303_87 RemovedBody303_88

def RemovedBody303_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody303_91 : StackLang.HolProg 64 :=
.seq RemovedBody303_89 RemovedBody303_90

def RemovedBody303_92 : StackLang.HolProg 64 :=
.seq RemovedBody303_84 RemovedBody303_91

def RemovedBody303_93 : StackLang.HolProg 64 :=
.seq RemovedBody303_83 RemovedBody303_92

def RemovedBody303_94 : StackLang.HolProg 64 :=
.seq RemovedBody303_82 RemovedBody303_93

def RemovedBody303_95 : StackLang.HolProg 64 :=
.seq RemovedBody303_81 RemovedBody303_94

def RemovedBody303_96 : StackLang.HolProg 64 :=
.seq RemovedBody303_80 RemovedBody303_95

def RemovedBody303_97 : StackLang.HolProg 64 :=
.seq RemovedBody303_79 RemovedBody303_96

def RemovedBody303_98 : StackLang.HolProg 64 :=
.seq RemovedBody303_78 RemovedBody303_97

def RemovedBody303_99 : StackLang.HolProg 64 :=
.seq RemovedBody303_77 RemovedBody303_98

def RemovedBody303_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody303_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody303_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody303_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody303_107 : StackLang.HolProg 64 :=
.seq RemovedBody303_105 RemovedBody303_106

def RemovedBody303_108 : StackLang.HolProg 64 :=
.seq RemovedBody303_104 RemovedBody303_107

def RemovedBody303_109 : StackLang.HolProg 64 :=
.seq RemovedBody303_103 RemovedBody303_108

def RemovedBody303_110 : StackLang.HolProg 64 :=
.seq RemovedBody303_102 RemovedBody303_109

def RemovedBody303_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody303_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody303_113 : StackLang.HolProg 64 :=
.seq RemovedBody303_111 RemovedBody303_112

def RemovedBody303_114 : StackLang.HolProg 64 :=
.call (some (RemovedBody303_110, 0, 303, 3)) (Sum.inl 76) (some (RemovedBody303_113, 303, 4))

def RemovedBody303_115 : StackLang.HolProg 64 :=
.seq RemovedBody303_101 RemovedBody303_114

def RemovedBody303_116 : StackLang.HolProg 64 :=
.seq RemovedBody303_100 RemovedBody303_115

def RemovedBody303_117 : StackLang.HolProg 64 :=
.seq RemovedBody303_99 RemovedBody303_116

def RemovedBody303_118 : StackLang.HolProg 64 :=
.seq RemovedBody303_70 RemovedBody303_117

def RemovedBody303_119 : StackLang.HolProg 64 :=
.seq RemovedBody303_67 RemovedBody303_118

def RemovedBody303_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody303_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody303_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody303_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody303_126 : StackLang.HolProg 64 :=
.seq RemovedBody303_124 RemovedBody303_125

def RemovedBody303_127 : StackLang.HolProg 64 :=
.seq RemovedBody303_123 RemovedBody303_126

def RemovedBody303_128 : StackLang.HolProg 64 :=
.seq RemovedBody303_122 RemovedBody303_127

def RemovedBody303_129 : StackLang.HolProg 64 :=
.seq RemovedBody303_121 RemovedBody303_128

def RemovedBody303_130 : StackLang.HolProg 64 :=
.seq RemovedBody303_120 RemovedBody303_129

def RemovedBody303_131 : StackLang.HolProg 64 :=
.seq RemovedBody303_119 RemovedBody303_130

def RemovedBody303_132 : StackLang.HolProg 64 :=
.seq RemovedBody303_66 RemovedBody303_131

def RemovedBody303_133 : StackLang.HolProg 64 :=
.seq RemovedBody303_63 RemovedBody303_132

def RemovedBody303_134 : StackLang.HolProg 64 :=
.seq RemovedBody303_62 RemovedBody303_133

def RemovedBody303_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64) RemovedBody303_61 RemovedBody303_134

def RemovedBody303_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody303_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody303_139 : StackLang.HolProg 64 :=
.seq RemovedBody303_137 RemovedBody303_138

def RemovedBody303_140 : StackLang.HolProg 64 :=
.seq RemovedBody303_136 RemovedBody303_139

def RemovedBody303_141 : StackLang.HolProg 64 :=
.seq RemovedBody303_135 RemovedBody303_140

def RemovedBody303_142 : StackLang.HolProg 64 :=
.seq RemovedBody303_58 RemovedBody303_141

def RemovedBody303_143 : StackLang.HolProg 64 :=
.call (some (RemovedBody303_53, 0, 303, 2)) (Sum.inl 302) (some (RemovedBody303_142, 303, 5))

def RemovedBody303_144 : StackLang.HolProg 64 :=
.seq RemovedBody303_44 RemovedBody303_143

def RemovedBody303_145 : StackLang.HolProg 64 :=
.seq RemovedBody303_43 RemovedBody303_144

def RemovedBody303_146 : StackLang.HolProg 64 :=
.seq RemovedBody303_42 RemovedBody303_145

def RemovedBody303_147 : StackLang.HolProg 64 :=
.seq RemovedBody303_13 RemovedBody303_146

def RemovedBody303_148 : StackLang.HolProg 64 :=
.seq RemovedBody303_10 RemovedBody303_147

def RemovedBody303_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody303_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody303_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody303_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody303_153 : StackLang.HolProg 64 :=
.seq RemovedBody303_151 RemovedBody303_152

def RemovedBody303_154 : StackLang.HolProg 64 :=
.seq RemovedBody303_150 RemovedBody303_153

def RemovedBody303_155 : StackLang.HolProg 64 :=
.seq RemovedBody303_149 RemovedBody303_154

def RemovedBody303_156 : StackLang.HolProg 64 :=
.seq RemovedBody303_148 RemovedBody303_155

def RemovedBody303_157 : StackLang.HolProg 64 :=
.seq RemovedBody303_9 RemovedBody303_156

def RemovedBody303_158 : StackLang.HolProg 64 :=
.seq RemovedBody303_6 RemovedBody303_157

def Removed303 : Nat × StackLang.HolProg 64 := (303, RemovedBody303_158)
theorem Removed303_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc303 = Removed303 := by
  kernel_rfl
#print axioms Removed303_eq
end InitECandidate.Proofs.BackendStages
