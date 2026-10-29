import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc728
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody728_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody728_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody728_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody728_3 : StackLang.HolProg 64 :=
.seq RemovedBody728_1 RemovedBody728_2

def RemovedBody728_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody728_3 RemovedBody728_4

def RemovedBody728_6 : StackLang.HolProg 64 :=
.seq RemovedBody728_0 RemovedBody728_5

def RemovedBody728_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody728_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody728_9 : StackLang.HolProg 64 :=
.seq RemovedBody728_7 RemovedBody728_8

def RemovedBody728_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody728_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 8#64))

def RemovedBody728_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 16#64))

def RemovedBody728_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 24#64))

def RemovedBody728_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 32#64))

def RemovedBody728_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 40#64))

def RemovedBody728_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody728_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody728_23 : StackLang.HolProg 64 :=
.seq RemovedBody728_21 RemovedBody728_22

def RemovedBody728_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3258#64)

def RemovedBody728_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody728_27 : StackLang.HolProg 64 :=
.seq RemovedBody728_25 RemovedBody728_26

def RemovedBody728_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody728_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody728_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody728_31 : StackLang.HolProg 64 :=
.seq RemovedBody728_29 RemovedBody728_30

def RemovedBody728_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody728_31 RemovedBody728_32

def RemovedBody728_34 : StackLang.HolProg 64 :=
.seq RemovedBody728_28 RemovedBody728_33

def RemovedBody728_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody728_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody728_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 728 3

def RemovedBody728_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody728_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody728_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody728_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody728_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody728_44 : StackLang.HolProg 64 :=
.seq RemovedBody728_42 RemovedBody728_43

def RemovedBody728_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody728_46 : StackLang.HolProg 64 :=
.seq RemovedBody728_44 RemovedBody728_45

def RemovedBody728_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody728_48 : StackLang.HolProg 64 :=
.seq RemovedBody728_46 RemovedBody728_47

def RemovedBody728_49 : StackLang.HolProg 64 :=
.seq RemovedBody728_41 RemovedBody728_48

def RemovedBody728_50 : StackLang.HolProg 64 :=
.seq RemovedBody728_40 RemovedBody728_49

def RemovedBody728_51 : StackLang.HolProg 64 :=
.seq RemovedBody728_39 RemovedBody728_50

def RemovedBody728_52 : StackLang.HolProg 64 :=
.seq RemovedBody728_38 RemovedBody728_51

def RemovedBody728_53 : StackLang.HolProg 64 :=
.seq RemovedBody728_37 RemovedBody728_52

def RemovedBody728_54 : StackLang.HolProg 64 :=
.seq RemovedBody728_36 RemovedBody728_53

def RemovedBody728_55 : StackLang.HolProg 64 :=
.seq RemovedBody728_35 RemovedBody728_54

def RemovedBody728_56 : StackLang.HolProg 64 :=
.seq RemovedBody728_34 RemovedBody728_55

def RemovedBody728_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody728_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody728_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody728_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody728_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody728_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody728_66 : StackLang.HolProg 64 :=
.seq RemovedBody728_64 RemovedBody728_65

def RemovedBody728_67 : StackLang.HolProg 64 :=
.seq RemovedBody728_63 RemovedBody728_66

def RemovedBody728_68 : StackLang.HolProg 64 :=
.seq RemovedBody728_62 RemovedBody728_67

def RemovedBody728_69 : StackLang.HolProg 64 :=
.seq RemovedBody728_61 RemovedBody728_68

def RemovedBody728_70 : StackLang.HolProg 64 :=
.seq RemovedBody728_60 RemovedBody728_69

def RemovedBody728_71 : StackLang.HolProg 64 :=
.seq RemovedBody728_59 RemovedBody728_70

def RemovedBody728_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody728_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody728_74 : StackLang.HolProg 64 :=
.seq RemovedBody728_72 RemovedBody728_73

def RemovedBody728_75 : StackLang.HolProg 64 :=
.call (some (RemovedBody728_71, 0, 728, 2)) (Sum.inl 717) (some (RemovedBody728_74, 728, 3))

def RemovedBody728_76 : StackLang.HolProg 64 :=
.seq RemovedBody728_58 RemovedBody728_75

def RemovedBody728_77 : StackLang.HolProg 64 :=
.seq RemovedBody728_57 RemovedBody728_76

def RemovedBody728_78 : StackLang.HolProg 64 :=
.seq RemovedBody728_56 RemovedBody728_77

def RemovedBody728_79 : StackLang.HolProg 64 :=
.seq RemovedBody728_27 RemovedBody728_78

def RemovedBody728_80 : StackLang.HolProg 64 :=
.seq RemovedBody728_24 RemovedBody728_79

def RemovedBody728_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody728_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody728_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def RemovedBody728_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody728_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody728_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody728_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody728_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody728_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody728_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody728_91 : StackLang.HolProg 64 :=
.seq RemovedBody728_89 RemovedBody728_90

def RemovedBody728_92 : StackLang.HolProg 64 :=
.seq RemovedBody728_88 RemovedBody728_91

def RemovedBody728_93 : StackLang.HolProg 64 :=
.seq RemovedBody728_87 RemovedBody728_92

def RemovedBody728_94 : StackLang.HolProg 64 :=
.seq RemovedBody728_86 RemovedBody728_93

def RemovedBody728_95 : StackLang.HolProg 64 :=
.seq RemovedBody728_85 RemovedBody728_94

def RemovedBody728_96 : StackLang.HolProg 64 :=
.seq RemovedBody728_84 RemovedBody728_95

def RemovedBody728_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3259#64)

def RemovedBody728_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody728_100 : StackLang.HolProg 64 :=
.seq RemovedBody728_98 RemovedBody728_99

def RemovedBody728_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody728_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody728_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody728_104 : StackLang.HolProg 64 :=
.seq RemovedBody728_102 RemovedBody728_103

def RemovedBody728_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody728_104 RemovedBody728_105

def RemovedBody728_107 : StackLang.HolProg 64 :=
.seq RemovedBody728_101 RemovedBody728_106

def RemovedBody728_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody728_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody728_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 728 5

def RemovedBody728_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody728_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody728_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody728_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody728_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody728_117 : StackLang.HolProg 64 :=
.seq RemovedBody728_115 RemovedBody728_116

def RemovedBody728_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody728_119 : StackLang.HolProg 64 :=
.seq RemovedBody728_117 RemovedBody728_118

def RemovedBody728_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody728_121 : StackLang.HolProg 64 :=
.seq RemovedBody728_119 RemovedBody728_120

def RemovedBody728_122 : StackLang.HolProg 64 :=
.seq RemovedBody728_114 RemovedBody728_121

def RemovedBody728_123 : StackLang.HolProg 64 :=
.seq RemovedBody728_113 RemovedBody728_122

def RemovedBody728_124 : StackLang.HolProg 64 :=
.seq RemovedBody728_112 RemovedBody728_123

def RemovedBody728_125 : StackLang.HolProg 64 :=
.seq RemovedBody728_111 RemovedBody728_124

def RemovedBody728_126 : StackLang.HolProg 64 :=
.seq RemovedBody728_110 RemovedBody728_125

def RemovedBody728_127 : StackLang.HolProg 64 :=
.seq RemovedBody728_109 RemovedBody728_126

def RemovedBody728_128 : StackLang.HolProg 64 :=
.seq RemovedBody728_108 RemovedBody728_127

def RemovedBody728_129 : StackLang.HolProg 64 :=
.seq RemovedBody728_107 RemovedBody728_128

def RemovedBody728_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody728_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody728_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody728_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody728_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody728_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody728_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody728_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody728_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody728_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody728_143 : StackLang.HolProg 64 :=
.seq RemovedBody728_141 RemovedBody728_142

def RemovedBody728_144 : StackLang.HolProg 64 :=
.seq RemovedBody728_140 RemovedBody728_143

def RemovedBody728_145 : StackLang.HolProg 64 :=
.seq RemovedBody728_139 RemovedBody728_144

def RemovedBody728_146 : StackLang.HolProg 64 :=
.seq RemovedBody728_138 RemovedBody728_145

def RemovedBody728_147 : StackLang.HolProg 64 :=
.seq RemovedBody728_137 RemovedBody728_146

def RemovedBody728_148 : StackLang.HolProg 64 :=
.seq RemovedBody728_136 RemovedBody728_147

def RemovedBody728_149 : StackLang.HolProg 64 :=
.seq RemovedBody728_135 RemovedBody728_148

def RemovedBody728_150 : StackLang.HolProg 64 :=
.seq RemovedBody728_134 RemovedBody728_149

def RemovedBody728_151 : StackLang.HolProg 64 :=
.seq RemovedBody728_133 RemovedBody728_150

def RemovedBody728_152 : StackLang.HolProg 64 :=
.seq RemovedBody728_132 RemovedBody728_151

def RemovedBody728_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody728_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody728_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody728_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody728_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody728_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody728_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody728_160 : StackLang.HolProg 64 :=
.seq RemovedBody728_158 RemovedBody728_159

def RemovedBody728_161 : StackLang.HolProg 64 :=
.seq RemovedBody728_157 RemovedBody728_160

def RemovedBody728_162 : StackLang.HolProg 64 :=
.seq RemovedBody728_156 RemovedBody728_161

def RemovedBody728_163 : StackLang.HolProg 64 :=
.seq RemovedBody728_155 RemovedBody728_162

def RemovedBody728_164 : StackLang.HolProg 64 :=
.seq RemovedBody728_154 RemovedBody728_163

def RemovedBody728_165 : StackLang.HolProg 64 :=
.seq RemovedBody728_153 RemovedBody728_164

def RemovedBody728_166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody728_167 : StackLang.HolProg 64 :=
.seq RemovedBody728_165 RemovedBody728_166

def RemovedBody728_168 : StackLang.HolProg 64 :=
.call (some (RemovedBody728_152, 0, 728, 4)) (Sum.inl 78) (some (RemovedBody728_167, 728, 5))

def RemovedBody728_169 : StackLang.HolProg 64 :=
.seq RemovedBody728_131 RemovedBody728_168

def RemovedBody728_170 : StackLang.HolProg 64 :=
.seq RemovedBody728_130 RemovedBody728_169

def RemovedBody728_171 : StackLang.HolProg 64 :=
.seq RemovedBody728_129 RemovedBody728_170

def RemovedBody728_172 : StackLang.HolProg 64 :=
.seq RemovedBody728_100 RemovedBody728_171

def RemovedBody728_173 : StackLang.HolProg 64 :=
.seq RemovedBody728_97 RemovedBody728_172

def RemovedBody728_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody728_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody728_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody728_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3260#64)

def RemovedBody728_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody728_181 : StackLang.HolProg 64 :=
.seq RemovedBody728_179 RemovedBody728_180

def RemovedBody728_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody728_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody728_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody728_185 : StackLang.HolProg 64 :=
.seq RemovedBody728_183 RemovedBody728_184

def RemovedBody728_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody728_185 RemovedBody728_186

def RemovedBody728_188 : StackLang.HolProg 64 :=
.seq RemovedBody728_182 RemovedBody728_187

def RemovedBody728_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody728_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody728_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 728 7

def RemovedBody728_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody728_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody728_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody728_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody728_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody728_198 : StackLang.HolProg 64 :=
.seq RemovedBody728_196 RemovedBody728_197

def RemovedBody728_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody728_200 : StackLang.HolProg 64 :=
.seq RemovedBody728_198 RemovedBody728_199

def RemovedBody728_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody728_202 : StackLang.HolProg 64 :=
.seq RemovedBody728_200 RemovedBody728_201

def RemovedBody728_203 : StackLang.HolProg 64 :=
.seq RemovedBody728_195 RemovedBody728_202

def RemovedBody728_204 : StackLang.HolProg 64 :=
.seq RemovedBody728_194 RemovedBody728_203

def RemovedBody728_205 : StackLang.HolProg 64 :=
.seq RemovedBody728_193 RemovedBody728_204

def RemovedBody728_206 : StackLang.HolProg 64 :=
.seq RemovedBody728_192 RemovedBody728_205

def RemovedBody728_207 : StackLang.HolProg 64 :=
.seq RemovedBody728_191 RemovedBody728_206

def RemovedBody728_208 : StackLang.HolProg 64 :=
.seq RemovedBody728_190 RemovedBody728_207

def RemovedBody728_209 : StackLang.HolProg 64 :=
.seq RemovedBody728_189 RemovedBody728_208

def RemovedBody728_210 : StackLang.HolProg 64 :=
.seq RemovedBody728_188 RemovedBody728_209

def RemovedBody728_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody728_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody728_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody728_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody728_218 : StackLang.HolProg 64 :=
.seq RemovedBody728_216 RemovedBody728_217

def RemovedBody728_219 : StackLang.HolProg 64 :=
.seq RemovedBody728_215 RemovedBody728_218

def RemovedBody728_220 : StackLang.HolProg 64 :=
.seq RemovedBody728_214 RemovedBody728_219

def RemovedBody728_221 : StackLang.HolProg 64 :=
.seq RemovedBody728_213 RemovedBody728_220

def RemovedBody728_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody728_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody728_224 : StackLang.HolProg 64 :=
.seq RemovedBody728_222 RemovedBody728_223

def RemovedBody728_225 : StackLang.HolProg 64 :=
.call (some (RemovedBody728_221, 0, 728, 6)) (Sum.inl 726) (some (RemovedBody728_224, 728, 7))

def RemovedBody728_226 : StackLang.HolProg 64 :=
.seq RemovedBody728_212 RemovedBody728_225

def RemovedBody728_227 : StackLang.HolProg 64 :=
.seq RemovedBody728_211 RemovedBody728_226

def RemovedBody728_228 : StackLang.HolProg 64 :=
.seq RemovedBody728_210 RemovedBody728_227

def RemovedBody728_229 : StackLang.HolProg 64 :=
.seq RemovedBody728_181 RemovedBody728_228

def RemovedBody728_230 : StackLang.HolProg 64 :=
.seq RemovedBody728_178 RemovedBody728_229

def RemovedBody728_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody728_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody728_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody728_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody728_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody728_236 : StackLang.HolProg 64 :=
.seq RemovedBody728_234 RemovedBody728_235

def RemovedBody728_237 : StackLang.HolProg 64 :=
.seq RemovedBody728_233 RemovedBody728_236

def RemovedBody728_238 : StackLang.HolProg 64 :=
.seq RemovedBody728_232 RemovedBody728_237

def RemovedBody728_239 : StackLang.HolProg 64 :=
.seq RemovedBody728_231 RemovedBody728_238

def RemovedBody728_240 : StackLang.HolProg 64 :=
.seq RemovedBody728_230 RemovedBody728_239

def RemovedBody728_241 : StackLang.HolProg 64 :=
.seq RemovedBody728_177 RemovedBody728_240

def RemovedBody728_242 : StackLang.HolProg 64 :=
.seq RemovedBody728_176 RemovedBody728_241

def RemovedBody728_243 : StackLang.HolProg 64 :=
.seq RemovedBody728_175 RemovedBody728_242

def RemovedBody728_244 : StackLang.HolProg 64 :=
.seq RemovedBody728_174 RemovedBody728_243

def RemovedBody728_245 : StackLang.HolProg 64 :=
.seq RemovedBody728_173 RemovedBody728_244

def RemovedBody728_246 : StackLang.HolProg 64 :=
.seq RemovedBody728_96 RemovedBody728_245

def RemovedBody728_247 : StackLang.HolProg 64 :=
.seq RemovedBody728_83 RemovedBody728_246

def RemovedBody728_248 : StackLang.HolProg 64 :=
.seq RemovedBody728_82 RemovedBody728_247

def RemovedBody728_249 : StackLang.HolProg 64 :=
.seq RemovedBody728_81 RemovedBody728_248

def RemovedBody728_250 : StackLang.HolProg 64 :=
.seq RemovedBody728_80 RemovedBody728_249

def RemovedBody728_251 : StackLang.HolProg 64 :=
.seq RemovedBody728_23 RemovedBody728_250

def RemovedBody728_252 : StackLang.HolProg 64 :=
.seq RemovedBody728_20 RemovedBody728_251

def RemovedBody728_253 : StackLang.HolProg 64 :=
.seq RemovedBody728_19 RemovedBody728_252

def RemovedBody728_254 : StackLang.HolProg 64 :=
.seq RemovedBody728_18 RemovedBody728_253

def RemovedBody728_255 : StackLang.HolProg 64 :=
.seq RemovedBody728_17 RemovedBody728_254

def RemovedBody728_256 : StackLang.HolProg 64 :=
.seq RemovedBody728_16 RemovedBody728_255

def RemovedBody728_257 : StackLang.HolProg 64 :=
.seq RemovedBody728_15 RemovedBody728_256

def RemovedBody728_258 : StackLang.HolProg 64 :=
.seq RemovedBody728_14 RemovedBody728_257

def RemovedBody728_259 : StackLang.HolProg 64 :=
.seq RemovedBody728_13 RemovedBody728_258

def RemovedBody728_260 : StackLang.HolProg 64 :=
.seq RemovedBody728_12 RemovedBody728_259

def RemovedBody728_261 : StackLang.HolProg 64 :=
.seq RemovedBody728_11 RemovedBody728_260

def RemovedBody728_262 : StackLang.HolProg 64 :=
.seq RemovedBody728_10 RemovedBody728_261

def RemovedBody728_263 : StackLang.HolProg 64 :=
.seq RemovedBody728_9 RemovedBody728_262

def RemovedBody728_264 : StackLang.HolProg 64 :=
.seq RemovedBody728_6 RemovedBody728_263

def Removed728 : Nat × StackLang.HolProg 64 := (728, RemovedBody728_264)
theorem Removed728_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc728 = Removed728 := by
  kernel_rfl
#print axioms Removed728_eq
end InitECandidate.Proofs.BackendStages
