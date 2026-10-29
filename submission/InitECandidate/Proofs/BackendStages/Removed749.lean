import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc749
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody749_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody749_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody749_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody749_3 : StackLang.HolProg 64 :=
.seq RemovedBody749_1 RemovedBody749_2

def RemovedBody749_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody749_3 RemovedBody749_4

def RemovedBody749_6 : StackLang.HolProg 64 :=
.seq RemovedBody749_0 RemovedBody749_5

def RemovedBody749_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody749_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody749_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody749_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody749_11 : StackLang.HolProg 64 :=
.seq RemovedBody749_9 RemovedBody749_10

def RemovedBody749_12 : StackLang.HolProg 64 :=
.seq RemovedBody749_8 RemovedBody749_11

def RemovedBody749_13 : StackLang.HolProg 64 :=
.seq RemovedBody749_7 RemovedBody749_12

def RemovedBody749_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3311#64)

def RemovedBody749_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody749_17 : StackLang.HolProg 64 :=
.seq RemovedBody749_15 RemovedBody749_16

def RemovedBody749_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody749_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody749_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody749_21 : StackLang.HolProg 64 :=
.seq RemovedBody749_19 RemovedBody749_20

def RemovedBody749_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody749_21 RemovedBody749_22

def RemovedBody749_24 : StackLang.HolProg 64 :=
.seq RemovedBody749_18 RemovedBody749_23

def RemovedBody749_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody749_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody749_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 749 3

def RemovedBody749_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody749_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody749_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody749_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody749_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody749_34 : StackLang.HolProg 64 :=
.seq RemovedBody749_32 RemovedBody749_33

def RemovedBody749_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody749_36 : StackLang.HolProg 64 :=
.seq RemovedBody749_34 RemovedBody749_35

def RemovedBody749_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody749_38 : StackLang.HolProg 64 :=
.seq RemovedBody749_36 RemovedBody749_37

def RemovedBody749_39 : StackLang.HolProg 64 :=
.seq RemovedBody749_31 RemovedBody749_38

def RemovedBody749_40 : StackLang.HolProg 64 :=
.seq RemovedBody749_30 RemovedBody749_39

def RemovedBody749_41 : StackLang.HolProg 64 :=
.seq RemovedBody749_29 RemovedBody749_40

def RemovedBody749_42 : StackLang.HolProg 64 :=
.seq RemovedBody749_28 RemovedBody749_41

def RemovedBody749_43 : StackLang.HolProg 64 :=
.seq RemovedBody749_27 RemovedBody749_42

def RemovedBody749_44 : StackLang.HolProg 64 :=
.seq RemovedBody749_26 RemovedBody749_43

def RemovedBody749_45 : StackLang.HolProg 64 :=
.seq RemovedBody749_25 RemovedBody749_44

def RemovedBody749_46 : StackLang.HolProg 64 :=
.seq RemovedBody749_24 RemovedBody749_45

def RemovedBody749_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody749_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody749_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody749_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody749_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody749_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody749_56 : StackLang.HolProg 64 :=
.seq RemovedBody749_54 RemovedBody749_55

def RemovedBody749_57 : StackLang.HolProg 64 :=
.seq RemovedBody749_53 RemovedBody749_56

def RemovedBody749_58 : StackLang.HolProg 64 :=
.seq RemovedBody749_52 RemovedBody749_57

def RemovedBody749_59 : StackLang.HolProg 64 :=
.seq RemovedBody749_51 RemovedBody749_58

def RemovedBody749_60 : StackLang.HolProg 64 :=
.seq RemovedBody749_50 RemovedBody749_59

def RemovedBody749_61 : StackLang.HolProg 64 :=
.seq RemovedBody749_49 RemovedBody749_60

def RemovedBody749_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody749_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody749_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody749_65 : StackLang.HolProg 64 :=
.seq RemovedBody749_63 RemovedBody749_64

def RemovedBody749_66 : StackLang.HolProg 64 :=
.seq RemovedBody749_62 RemovedBody749_65

def RemovedBody749_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody749_68 : StackLang.HolProg 64 :=
.seq RemovedBody749_66 RemovedBody749_67

def RemovedBody749_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody749_61, 0, 749, 2)) (Sum.inl 734) (some (RemovedBody749_68, 749, 3))

def RemovedBody749_70 : StackLang.HolProg 64 :=
.seq RemovedBody749_48 RemovedBody749_69

def RemovedBody749_71 : StackLang.HolProg 64 :=
.seq RemovedBody749_47 RemovedBody749_70

def RemovedBody749_72 : StackLang.HolProg 64 :=
.seq RemovedBody749_46 RemovedBody749_71

def RemovedBody749_73 : StackLang.HolProg 64 :=
.seq RemovedBody749_17 RemovedBody749_72

def RemovedBody749_74 : StackLang.HolProg 64 :=
.seq RemovedBody749_14 RemovedBody749_73

def RemovedBody749_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody749_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody749_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody749_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody749_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody749_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody749_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody749_85 : StackLang.HolProg 64 :=
.seq RemovedBody749_83 RemovedBody749_84

def RemovedBody749_86 : StackLang.HolProg 64 :=
.seq RemovedBody749_82 RemovedBody749_85

def RemovedBody749_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3312#64)

def RemovedBody749_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody749_90 : StackLang.HolProg 64 :=
.seq RemovedBody749_88 RemovedBody749_89

def RemovedBody749_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody749_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody749_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody749_94 : StackLang.HolProg 64 :=
.seq RemovedBody749_92 RemovedBody749_93

def RemovedBody749_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody749_94 RemovedBody749_95

def RemovedBody749_97 : StackLang.HolProg 64 :=
.seq RemovedBody749_91 RemovedBody749_96

def RemovedBody749_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody749_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody749_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 749 5

def RemovedBody749_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody749_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody749_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody749_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody749_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody749_107 : StackLang.HolProg 64 :=
.seq RemovedBody749_105 RemovedBody749_106

def RemovedBody749_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody749_109 : StackLang.HolProg 64 :=
.seq RemovedBody749_107 RemovedBody749_108

def RemovedBody749_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody749_111 : StackLang.HolProg 64 :=
.seq RemovedBody749_109 RemovedBody749_110

def RemovedBody749_112 : StackLang.HolProg 64 :=
.seq RemovedBody749_104 RemovedBody749_111

def RemovedBody749_113 : StackLang.HolProg 64 :=
.seq RemovedBody749_103 RemovedBody749_112

def RemovedBody749_114 : StackLang.HolProg 64 :=
.seq RemovedBody749_102 RemovedBody749_113

def RemovedBody749_115 : StackLang.HolProg 64 :=
.seq RemovedBody749_101 RemovedBody749_114

def RemovedBody749_116 : StackLang.HolProg 64 :=
.seq RemovedBody749_100 RemovedBody749_115

def RemovedBody749_117 : StackLang.HolProg 64 :=
.seq RemovedBody749_99 RemovedBody749_116

def RemovedBody749_118 : StackLang.HolProg 64 :=
.seq RemovedBody749_98 RemovedBody749_117

def RemovedBody749_119 : StackLang.HolProg 64 :=
.seq RemovedBody749_97 RemovedBody749_118

def RemovedBody749_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody749_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody749_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody749_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody749_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody749_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody749_129 : StackLang.HolProg 64 :=
.seq RemovedBody749_127 RemovedBody749_128

def RemovedBody749_130 : StackLang.HolProg 64 :=
.seq RemovedBody749_126 RemovedBody749_129

def RemovedBody749_131 : StackLang.HolProg 64 :=
.seq RemovedBody749_125 RemovedBody749_130

def RemovedBody749_132 : StackLang.HolProg 64 :=
.seq RemovedBody749_124 RemovedBody749_131

def RemovedBody749_133 : StackLang.HolProg 64 :=
.seq RemovedBody749_123 RemovedBody749_132

def RemovedBody749_134 : StackLang.HolProg 64 :=
.seq RemovedBody749_122 RemovedBody749_133

def RemovedBody749_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody749_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody749_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody749_138 : StackLang.HolProg 64 :=
.seq RemovedBody749_136 RemovedBody749_137

def RemovedBody749_139 : StackLang.HolProg 64 :=
.seq RemovedBody749_135 RemovedBody749_138

def RemovedBody749_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody749_141 : StackLang.HolProg 64 :=
.seq RemovedBody749_139 RemovedBody749_140

def RemovedBody749_142 : StackLang.HolProg 64 :=
.call (some (RemovedBody749_134, 0, 749, 4)) (Sum.inl 734) (some (RemovedBody749_141, 749, 5))

def RemovedBody749_143 : StackLang.HolProg 64 :=
.seq RemovedBody749_121 RemovedBody749_142

def RemovedBody749_144 : StackLang.HolProg 64 :=
.seq RemovedBody749_120 RemovedBody749_143

def RemovedBody749_145 : StackLang.HolProg 64 :=
.seq RemovedBody749_119 RemovedBody749_144

def RemovedBody749_146 : StackLang.HolProg 64 :=
.seq RemovedBody749_90 RemovedBody749_145

def RemovedBody749_147 : StackLang.HolProg 64 :=
.seq RemovedBody749_87 RemovedBody749_146

def RemovedBody749_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody749_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody749_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody749_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody749_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3313#64)

def RemovedBody749_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody749_159 : StackLang.HolProg 64 :=
.seq RemovedBody749_157 RemovedBody749_158

def RemovedBody749_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody749_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody749_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody749_163 : StackLang.HolProg 64 :=
.seq RemovedBody749_161 RemovedBody749_162

def RemovedBody749_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_165 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody749_163 RemovedBody749_164

def RemovedBody749_166 : StackLang.HolProg 64 :=
.seq RemovedBody749_160 RemovedBody749_165

def RemovedBody749_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody749_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody749_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 749 7

def RemovedBody749_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody749_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody749_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody749_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody749_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody749_176 : StackLang.HolProg 64 :=
.seq RemovedBody749_174 RemovedBody749_175

def RemovedBody749_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody749_178 : StackLang.HolProg 64 :=
.seq RemovedBody749_176 RemovedBody749_177

def RemovedBody749_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody749_180 : StackLang.HolProg 64 :=
.seq RemovedBody749_178 RemovedBody749_179

def RemovedBody749_181 : StackLang.HolProg 64 :=
.seq RemovedBody749_173 RemovedBody749_180

def RemovedBody749_182 : StackLang.HolProg 64 :=
.seq RemovedBody749_172 RemovedBody749_181

def RemovedBody749_183 : StackLang.HolProg 64 :=
.seq RemovedBody749_171 RemovedBody749_182

def RemovedBody749_184 : StackLang.HolProg 64 :=
.seq RemovedBody749_170 RemovedBody749_183

def RemovedBody749_185 : StackLang.HolProg 64 :=
.seq RemovedBody749_169 RemovedBody749_184

def RemovedBody749_186 : StackLang.HolProg 64 :=
.seq RemovedBody749_168 RemovedBody749_185

def RemovedBody749_187 : StackLang.HolProg 64 :=
.seq RemovedBody749_167 RemovedBody749_186

def RemovedBody749_188 : StackLang.HolProg 64 :=
.seq RemovedBody749_166 RemovedBody749_187

def RemovedBody749_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody749_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody749_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody749_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody749_196 : StackLang.HolProg 64 :=
.seq RemovedBody749_194 RemovedBody749_195

def RemovedBody749_197 : StackLang.HolProg 64 :=
.seq RemovedBody749_193 RemovedBody749_196

def RemovedBody749_198 : StackLang.HolProg 64 :=
.seq RemovedBody749_192 RemovedBody749_197

def RemovedBody749_199 : StackLang.HolProg 64 :=
.seq RemovedBody749_191 RemovedBody749_198

def RemovedBody749_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody749_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody749_202 : StackLang.HolProg 64 :=
.seq RemovedBody749_200 RemovedBody749_201

def RemovedBody749_203 : StackLang.HolProg 64 :=
.call (some (RemovedBody749_199, 0, 749, 6)) (Sum.inl 734) (some (RemovedBody749_202, 749, 7))

def RemovedBody749_204 : StackLang.HolProg 64 :=
.seq RemovedBody749_190 RemovedBody749_203

def RemovedBody749_205 : StackLang.HolProg 64 :=
.seq RemovedBody749_189 RemovedBody749_204

def RemovedBody749_206 : StackLang.HolProg 64 :=
.seq RemovedBody749_188 RemovedBody749_205

def RemovedBody749_207 : StackLang.HolProg 64 :=
.seq RemovedBody749_159 RemovedBody749_206

def RemovedBody749_208 : StackLang.HolProg 64 :=
.seq RemovedBody749_156 RemovedBody749_207

def RemovedBody749_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody749_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody749_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody749_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody749_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody749_214 : StackLang.HolProg 64 :=
.seq RemovedBody749_212 RemovedBody749_213

def RemovedBody749_215 : StackLang.HolProg 64 :=
.seq RemovedBody749_211 RemovedBody749_214

def RemovedBody749_216 : StackLang.HolProg 64 :=
.seq RemovedBody749_210 RemovedBody749_215

def RemovedBody749_217 : StackLang.HolProg 64 :=
.seq RemovedBody749_209 RemovedBody749_216

def RemovedBody749_218 : StackLang.HolProg 64 :=
.seq RemovedBody749_208 RemovedBody749_217

def RemovedBody749_219 : StackLang.HolProg 64 :=
.seq RemovedBody749_155 RemovedBody749_218

def RemovedBody749_220 : StackLang.HolProg 64 :=
.seq RemovedBody749_154 RemovedBody749_219

def RemovedBody749_221 : StackLang.HolProg 64 :=
.seq RemovedBody749_153 RemovedBody749_220

def RemovedBody749_222 : StackLang.HolProg 64 :=
.seq RemovedBody749_152 RemovedBody749_221

def RemovedBody749_223 : StackLang.HolProg 64 :=
.seq RemovedBody749_151 RemovedBody749_222

def RemovedBody749_224 : StackLang.HolProg 64 :=
.seq RemovedBody749_150 RemovedBody749_223

def RemovedBody749_225 : StackLang.HolProg 64 :=
.seq RemovedBody749_149 RemovedBody749_224

def RemovedBody749_226 : StackLang.HolProg 64 :=
.seq RemovedBody749_148 RemovedBody749_225

def RemovedBody749_227 : StackLang.HolProg 64 :=
.seq RemovedBody749_147 RemovedBody749_226

def RemovedBody749_228 : StackLang.HolProg 64 :=
.seq RemovedBody749_86 RemovedBody749_227

def RemovedBody749_229 : StackLang.HolProg 64 :=
.seq RemovedBody749_81 RemovedBody749_228

def RemovedBody749_230 : StackLang.HolProg 64 :=
.seq RemovedBody749_80 RemovedBody749_229

def RemovedBody749_231 : StackLang.HolProg 64 :=
.seq RemovedBody749_79 RemovedBody749_230

def RemovedBody749_232 : StackLang.HolProg 64 :=
.seq RemovedBody749_78 RemovedBody749_231

def RemovedBody749_233 : StackLang.HolProg 64 :=
.seq RemovedBody749_77 RemovedBody749_232

def RemovedBody749_234 : StackLang.HolProg 64 :=
.seq RemovedBody749_76 RemovedBody749_233

def RemovedBody749_235 : StackLang.HolProg 64 :=
.seq RemovedBody749_75 RemovedBody749_234

def RemovedBody749_236 : StackLang.HolProg 64 :=
.seq RemovedBody749_74 RemovedBody749_235

def RemovedBody749_237 : StackLang.HolProg 64 :=
.seq RemovedBody749_13 RemovedBody749_236

def RemovedBody749_238 : StackLang.HolProg 64 :=
.seq RemovedBody749_6 RemovedBody749_237

def Removed749 : Nat × StackLang.HolProg 64 := (749, RemovedBody749_238)
theorem Removed749_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc749 = Removed749 := by
  kernel_rfl
#print axioms Removed749_eq
end InitECandidate.Proofs.BackendStages
