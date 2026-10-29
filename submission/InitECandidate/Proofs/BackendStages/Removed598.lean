import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc598
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody598_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody598_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody598_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody598_3 : StackLang.HolProg 64 :=
.seq RemovedBody598_1 RemovedBody598_2

def RemovedBody598_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody598_3 RemovedBody598_4

def RemovedBody598_6 : StackLang.HolProg 64 :=
.seq RemovedBody598_0 RemovedBody598_5

def RemovedBody598_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody598_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody598_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody598_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody598_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody598_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 136#64))

def RemovedBody598_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody598_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 56#64))

def RemovedBody598_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 64#64))

def RemovedBody598_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 72#64))

def RemovedBody598_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 80#64))

def RemovedBody598_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody598_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody598_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody598_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody598_31 : StackLang.HolProg 64 :=
.seq RemovedBody598_29 RemovedBody598_30

def RemovedBody598_32 : StackLang.HolProg 64 :=
.seq RemovedBody598_28 RemovedBody598_31

def RemovedBody598_33 : StackLang.HolProg 64 :=
.seq RemovedBody598_27 RemovedBody598_32

def RemovedBody598_34 : StackLang.HolProg 64 :=
.seq RemovedBody598_26 RemovedBody598_33

def RemovedBody598_35 : StackLang.HolProg 64 :=
.seq RemovedBody598_25 RemovedBody598_34

def RemovedBody598_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2267#64)

def RemovedBody598_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody598_39 : StackLang.HolProg 64 :=
.seq RemovedBody598_37 RemovedBody598_38

def RemovedBody598_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody598_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody598_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody598_43 : StackLang.HolProg 64 :=
.seq RemovedBody598_41 RemovedBody598_42

def RemovedBody598_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody598_43 RemovedBody598_44

def RemovedBody598_46 : StackLang.HolProg 64 :=
.seq RemovedBody598_40 RemovedBody598_45

def RemovedBody598_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody598_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody598_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 598 3

def RemovedBody598_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody598_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody598_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody598_56 : StackLang.HolProg 64 :=
.seq RemovedBody598_54 RemovedBody598_55

def RemovedBody598_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody598_58 : StackLang.HolProg 64 :=
.seq RemovedBody598_56 RemovedBody598_57

def RemovedBody598_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_60 : StackLang.HolProg 64 :=
.seq RemovedBody598_58 RemovedBody598_59

def RemovedBody598_61 : StackLang.HolProg 64 :=
.seq RemovedBody598_53 RemovedBody598_60

def RemovedBody598_62 : StackLang.HolProg 64 :=
.seq RemovedBody598_52 RemovedBody598_61

def RemovedBody598_63 : StackLang.HolProg 64 :=
.seq RemovedBody598_51 RemovedBody598_62

def RemovedBody598_64 : StackLang.HolProg 64 :=
.seq RemovedBody598_50 RemovedBody598_63

def RemovedBody598_65 : StackLang.HolProg 64 :=
.seq RemovedBody598_49 RemovedBody598_64

def RemovedBody598_66 : StackLang.HolProg 64 :=
.seq RemovedBody598_48 RemovedBody598_65

def RemovedBody598_67 : StackLang.HolProg 64 :=
.seq RemovedBody598_47 RemovedBody598_66

def RemovedBody598_68 : StackLang.HolProg 64 :=
.seq RemovedBody598_46 RemovedBody598_67

def RemovedBody598_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody598_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody598_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody598_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody598_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody598_81 : StackLang.HolProg 64 :=
.seq RemovedBody598_79 RemovedBody598_80

def RemovedBody598_82 : StackLang.HolProg 64 :=
.seq RemovedBody598_78 RemovedBody598_81

def RemovedBody598_83 : StackLang.HolProg 64 :=
.seq RemovedBody598_77 RemovedBody598_82

def RemovedBody598_84 : StackLang.HolProg 64 :=
.seq RemovedBody598_76 RemovedBody598_83

def RemovedBody598_85 : StackLang.HolProg 64 :=
.seq RemovedBody598_75 RemovedBody598_84

def RemovedBody598_86 : StackLang.HolProg 64 :=
.seq RemovedBody598_74 RemovedBody598_85

def RemovedBody598_87 : StackLang.HolProg 64 :=
.seq RemovedBody598_73 RemovedBody598_86

def RemovedBody598_88 : StackLang.HolProg 64 :=
.seq RemovedBody598_72 RemovedBody598_87

def RemovedBody598_89 : StackLang.HolProg 64 :=
.seq RemovedBody598_71 RemovedBody598_88

def RemovedBody598_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody598_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody598_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody598_95 : StackLang.HolProg 64 :=
.seq RemovedBody598_93 RemovedBody598_94

def RemovedBody598_96 : StackLang.HolProg 64 :=
.seq RemovedBody598_92 RemovedBody598_95

def RemovedBody598_97 : StackLang.HolProg 64 :=
.seq RemovedBody598_91 RemovedBody598_96

def RemovedBody598_98 : StackLang.HolProg 64 :=
.seq RemovedBody598_90 RemovedBody598_97

def RemovedBody598_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody598_100 : StackLang.HolProg 64 :=
.seq RemovedBody598_98 RemovedBody598_99

def RemovedBody598_101 : StackLang.HolProg 64 :=
.call (some (RemovedBody598_89, 0, 598, 2)) (Sum.inl 102) (some (RemovedBody598_100, 598, 3))

def RemovedBody598_102 : StackLang.HolProg 64 :=
.seq RemovedBody598_70 RemovedBody598_101

def RemovedBody598_103 : StackLang.HolProg 64 :=
.seq RemovedBody598_69 RemovedBody598_102

def RemovedBody598_104 : StackLang.HolProg 64 :=
.seq RemovedBody598_68 RemovedBody598_103

def RemovedBody598_105 : StackLang.HolProg 64 :=
.seq RemovedBody598_39 RemovedBody598_104

def RemovedBody598_106 : StackLang.HolProg 64 :=
.seq RemovedBody598_36 RemovedBody598_105

def RemovedBody598_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody598_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 16#64))

def RemovedBody598_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 32#64))

def RemovedBody598_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody598_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody598_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody598_120 : StackLang.HolProg 64 :=
.seq RemovedBody598_118 RemovedBody598_119

def RemovedBody598_121 : StackLang.HolProg 64 :=
.seq RemovedBody598_117 RemovedBody598_120

def RemovedBody598_122 : StackLang.HolProg 64 :=
.seq RemovedBody598_116 RemovedBody598_121

def RemovedBody598_123 : StackLang.HolProg 64 :=
.seq RemovedBody598_115 RemovedBody598_122

def RemovedBody598_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2268#64)

def RemovedBody598_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody598_127 : StackLang.HolProg 64 :=
.seq RemovedBody598_125 RemovedBody598_126

def RemovedBody598_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody598_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody598_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody598_131 : StackLang.HolProg 64 :=
.seq RemovedBody598_129 RemovedBody598_130

def RemovedBody598_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody598_131 RemovedBody598_132

def RemovedBody598_134 : StackLang.HolProg 64 :=
.seq RemovedBody598_128 RemovedBody598_133

def RemovedBody598_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody598_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody598_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 598 5

def RemovedBody598_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody598_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody598_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody598_144 : StackLang.HolProg 64 :=
.seq RemovedBody598_142 RemovedBody598_143

def RemovedBody598_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody598_146 : StackLang.HolProg 64 :=
.seq RemovedBody598_144 RemovedBody598_145

def RemovedBody598_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_148 : StackLang.HolProg 64 :=
.seq RemovedBody598_146 RemovedBody598_147

def RemovedBody598_149 : StackLang.HolProg 64 :=
.seq RemovedBody598_141 RemovedBody598_148

def RemovedBody598_150 : StackLang.HolProg 64 :=
.seq RemovedBody598_140 RemovedBody598_149

def RemovedBody598_151 : StackLang.HolProg 64 :=
.seq RemovedBody598_139 RemovedBody598_150

def RemovedBody598_152 : StackLang.HolProg 64 :=
.seq RemovedBody598_138 RemovedBody598_151

def RemovedBody598_153 : StackLang.HolProg 64 :=
.seq RemovedBody598_137 RemovedBody598_152

def RemovedBody598_154 : StackLang.HolProg 64 :=
.seq RemovedBody598_136 RemovedBody598_153

def RemovedBody598_155 : StackLang.HolProg 64 :=
.seq RemovedBody598_135 RemovedBody598_154

def RemovedBody598_156 : StackLang.HolProg 64 :=
.seq RemovedBody598_134 RemovedBody598_155

def RemovedBody598_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody598_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_164 : StackLang.HolProg 64 :=
.seq RemovedBody598_162 RemovedBody598_163

def RemovedBody598_165 : StackLang.HolProg 64 :=
.seq RemovedBody598_161 RemovedBody598_164

def RemovedBody598_166 : StackLang.HolProg 64 :=
.seq RemovedBody598_160 RemovedBody598_165

def RemovedBody598_167 : StackLang.HolProg 64 :=
.seq RemovedBody598_159 RemovedBody598_166

def RemovedBody598_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody598_170 : StackLang.HolProg 64 :=
.seq RemovedBody598_168 RemovedBody598_169

def RemovedBody598_171 : StackLang.HolProg 64 :=
.call (some (RemovedBody598_167, 0, 598, 4)) (Sum.inl 427) (some (RemovedBody598_170, 598, 5))

def RemovedBody598_172 : StackLang.HolProg 64 :=
.seq RemovedBody598_158 RemovedBody598_171

def RemovedBody598_173 : StackLang.HolProg 64 :=
.seq RemovedBody598_157 RemovedBody598_172

def RemovedBody598_174 : StackLang.HolProg 64 :=
.seq RemovedBody598_156 RemovedBody598_173

def RemovedBody598_175 : StackLang.HolProg 64 :=
.seq RemovedBody598_127 RemovedBody598_174

def RemovedBody598_176 : StackLang.HolProg 64 :=
.seq RemovedBody598_124 RemovedBody598_175

def RemovedBody598_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody598_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody598_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def RemovedBody598_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2269#64)

def RemovedBody598_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody598_187 : StackLang.HolProg 64 :=
.seq RemovedBody598_185 RemovedBody598_186

def RemovedBody598_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody598_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody598_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody598_191 : StackLang.HolProg 64 :=
.seq RemovedBody598_189 RemovedBody598_190

def RemovedBody598_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody598_191 RemovedBody598_192

def RemovedBody598_194 : StackLang.HolProg 64 :=
.seq RemovedBody598_188 RemovedBody598_193

def RemovedBody598_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody598_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody598_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 598 7

def RemovedBody598_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody598_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody598_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody598_204 : StackLang.HolProg 64 :=
.seq RemovedBody598_202 RemovedBody598_203

def RemovedBody598_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody598_206 : StackLang.HolProg 64 :=
.seq RemovedBody598_204 RemovedBody598_205

def RemovedBody598_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_208 : StackLang.HolProg 64 :=
.seq RemovedBody598_206 RemovedBody598_207

def RemovedBody598_209 : StackLang.HolProg 64 :=
.seq RemovedBody598_201 RemovedBody598_208

def RemovedBody598_210 : StackLang.HolProg 64 :=
.seq RemovedBody598_200 RemovedBody598_209

def RemovedBody598_211 : StackLang.HolProg 64 :=
.seq RemovedBody598_199 RemovedBody598_210

def RemovedBody598_212 : StackLang.HolProg 64 :=
.seq RemovedBody598_198 RemovedBody598_211

def RemovedBody598_213 : StackLang.HolProg 64 :=
.seq RemovedBody598_197 RemovedBody598_212

def RemovedBody598_214 : StackLang.HolProg 64 :=
.seq RemovedBody598_196 RemovedBody598_213

def RemovedBody598_215 : StackLang.HolProg 64 :=
.seq RemovedBody598_195 RemovedBody598_214

def RemovedBody598_216 : StackLang.HolProg 64 :=
.seq RemovedBody598_194 RemovedBody598_215

def RemovedBody598_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody598_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody598_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody598_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody598_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody598_229 : StackLang.HolProg 64 :=
.seq RemovedBody598_227 RemovedBody598_228

def RemovedBody598_230 : StackLang.HolProg 64 :=
.seq RemovedBody598_226 RemovedBody598_229

def RemovedBody598_231 : StackLang.HolProg 64 :=
.seq RemovedBody598_225 RemovedBody598_230

def RemovedBody598_232 : StackLang.HolProg 64 :=
.seq RemovedBody598_224 RemovedBody598_231

def RemovedBody598_233 : StackLang.HolProg 64 :=
.seq RemovedBody598_223 RemovedBody598_232

def RemovedBody598_234 : StackLang.HolProg 64 :=
.seq RemovedBody598_222 RemovedBody598_233

def RemovedBody598_235 : StackLang.HolProg 64 :=
.seq RemovedBody598_221 RemovedBody598_234

def RemovedBody598_236 : StackLang.HolProg 64 :=
.seq RemovedBody598_220 RemovedBody598_235

def RemovedBody598_237 : StackLang.HolProg 64 :=
.seq RemovedBody598_219 RemovedBody598_236

def RemovedBody598_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody598_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody598_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody598_243 : StackLang.HolProg 64 :=
.seq RemovedBody598_241 RemovedBody598_242

def RemovedBody598_244 : StackLang.HolProg 64 :=
.seq RemovedBody598_240 RemovedBody598_243

def RemovedBody598_245 : StackLang.HolProg 64 :=
.seq RemovedBody598_239 RemovedBody598_244

def RemovedBody598_246 : StackLang.HolProg 64 :=
.seq RemovedBody598_238 RemovedBody598_245

def RemovedBody598_247 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody598_248 : StackLang.HolProg 64 :=
.seq RemovedBody598_246 RemovedBody598_247

def RemovedBody598_249 : StackLang.HolProg 64 :=
.call (some (RemovedBody598_237, 0, 598, 6)) (Sum.inl 79) (some (RemovedBody598_248, 598, 7))

def RemovedBody598_250 : StackLang.HolProg 64 :=
.seq RemovedBody598_218 RemovedBody598_249

def RemovedBody598_251 : StackLang.HolProg 64 :=
.seq RemovedBody598_217 RemovedBody598_250

def RemovedBody598_252 : StackLang.HolProg 64 :=
.seq RemovedBody598_216 RemovedBody598_251

def RemovedBody598_253 : StackLang.HolProg 64 :=
.seq RemovedBody598_187 RemovedBody598_252

def RemovedBody598_254 : StackLang.HolProg 64 :=
.seq RemovedBody598_184 RemovedBody598_253

def RemovedBody598_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody598_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 16#64))

def RemovedBody598_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 32#64))

def RemovedBody598_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2270#64)

def RemovedBody598_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody598_267 : StackLang.HolProg 64 :=
.seq RemovedBody598_265 RemovedBody598_266

def RemovedBody598_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody598_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody598_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody598_271 : StackLang.HolProg 64 :=
.seq RemovedBody598_269 RemovedBody598_270

def RemovedBody598_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_273 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody598_271 RemovedBody598_272

def RemovedBody598_274 : StackLang.HolProg 64 :=
.seq RemovedBody598_268 RemovedBody598_273

def RemovedBody598_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody598_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody598_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 598 9

def RemovedBody598_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody598_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody598_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody598_284 : StackLang.HolProg 64 :=
.seq RemovedBody598_282 RemovedBody598_283

def RemovedBody598_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody598_286 : StackLang.HolProg 64 :=
.seq RemovedBody598_284 RemovedBody598_285

def RemovedBody598_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_288 : StackLang.HolProg 64 :=
.seq RemovedBody598_286 RemovedBody598_287

def RemovedBody598_289 : StackLang.HolProg 64 :=
.seq RemovedBody598_281 RemovedBody598_288

def RemovedBody598_290 : StackLang.HolProg 64 :=
.seq RemovedBody598_280 RemovedBody598_289

def RemovedBody598_291 : StackLang.HolProg 64 :=
.seq RemovedBody598_279 RemovedBody598_290

def RemovedBody598_292 : StackLang.HolProg 64 :=
.seq RemovedBody598_278 RemovedBody598_291

def RemovedBody598_293 : StackLang.HolProg 64 :=
.seq RemovedBody598_277 RemovedBody598_292

def RemovedBody598_294 : StackLang.HolProg 64 :=
.seq RemovedBody598_276 RemovedBody598_293

def RemovedBody598_295 : StackLang.HolProg 64 :=
.seq RemovedBody598_275 RemovedBody598_294

def RemovedBody598_296 : StackLang.HolProg 64 :=
.seq RemovedBody598_274 RemovedBody598_295

def RemovedBody598_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody598_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_304 : StackLang.HolProg 64 :=
.seq RemovedBody598_302 RemovedBody598_303

def RemovedBody598_305 : StackLang.HolProg 64 :=
.seq RemovedBody598_301 RemovedBody598_304

def RemovedBody598_306 : StackLang.HolProg 64 :=
.seq RemovedBody598_300 RemovedBody598_305

def RemovedBody598_307 : StackLang.HolProg 64 :=
.seq RemovedBody598_299 RemovedBody598_306

def RemovedBody598_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_309 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody598_310 : StackLang.HolProg 64 :=
.seq RemovedBody598_308 RemovedBody598_309

def RemovedBody598_311 : StackLang.HolProg 64 :=
.call (some (RemovedBody598_307, 0, 598, 8)) (Sum.inl 585) (some (RemovedBody598_310, 598, 9))

def RemovedBody598_312 : StackLang.HolProg 64 :=
.seq RemovedBody598_298 RemovedBody598_311

def RemovedBody598_313 : StackLang.HolProg 64 :=
.seq RemovedBody598_297 RemovedBody598_312

def RemovedBody598_314 : StackLang.HolProg 64 :=
.seq RemovedBody598_296 RemovedBody598_313

def RemovedBody598_315 : StackLang.HolProg 64 :=
.seq RemovedBody598_267 RemovedBody598_314

def RemovedBody598_316 : StackLang.HolProg 64 :=
.seq RemovedBody598_264 RemovedBody598_315

def RemovedBody598_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_319 : StackLang.HolProg 64 :=
.seq RemovedBody598_317 RemovedBody598_318

def RemovedBody598_320 : StackLang.HolProg 64 :=
.seq RemovedBody598_316 RemovedBody598_319

def RemovedBody598_321 : StackLang.HolProg 64 :=
.seq RemovedBody598_263 RemovedBody598_320

def RemovedBody598_322 : StackLang.HolProg 64 :=
.seq RemovedBody598_262 RemovedBody598_321

def RemovedBody598_323 : StackLang.HolProg 64 :=
.seq RemovedBody598_261 RemovedBody598_322

def RemovedBody598_324 : StackLang.HolProg 64 :=
.seq RemovedBody598_260 RemovedBody598_323

def RemovedBody598_325 : StackLang.HolProg 64 :=
.seq RemovedBody598_259 RemovedBody598_324

def RemovedBody598_326 : StackLang.HolProg 64 :=
.seq RemovedBody598_258 RemovedBody598_325

def RemovedBody598_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_329 : StackLang.HolProg 64 :=
.seq RemovedBody598_327 RemovedBody598_328

def RemovedBody598_330 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody598_326 RemovedBody598_329

def RemovedBody598_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_333 : StackLang.HolProg 64 :=
.seq RemovedBody598_331 RemovedBody598_332

def RemovedBody598_334 : StackLang.HolProg 64 :=
.seq RemovedBody598_330 RemovedBody598_333

def RemovedBody598_335 : StackLang.HolProg 64 :=
.seq RemovedBody598_257 RemovedBody598_334

def RemovedBody598_336 : StackLang.HolProg 64 :=
.seq RemovedBody598_256 RemovedBody598_335

def RemovedBody598_337 : StackLang.HolProg 64 :=
.seq RemovedBody598_255 RemovedBody598_336

def RemovedBody598_338 : StackLang.HolProg 64 :=
.seq RemovedBody598_254 RemovedBody598_337

def RemovedBody598_339 : StackLang.HolProg 64 :=
.seq RemovedBody598_183 RemovedBody598_338

def RemovedBody598_340 : StackLang.HolProg 64 :=
.seq RemovedBody598_182 RemovedBody598_339

def RemovedBody598_341 : StackLang.HolProg 64 :=
.seq RemovedBody598_181 RemovedBody598_340

def RemovedBody598_342 : StackLang.HolProg 64 :=
.seq RemovedBody598_180 RemovedBody598_341

def RemovedBody598_343 : StackLang.HolProg 64 :=
.seq RemovedBody598_179 RemovedBody598_342

def RemovedBody598_344 : StackLang.HolProg 64 :=
.seq RemovedBody598_178 RemovedBody598_343

def RemovedBody598_345 : StackLang.HolProg 64 :=
.seq RemovedBody598_177 RemovedBody598_344

def RemovedBody598_346 : StackLang.HolProg 64 :=
.seq RemovedBody598_176 RemovedBody598_345

def RemovedBody598_347 : StackLang.HolProg 64 :=
.seq RemovedBody598_123 RemovedBody598_346

def RemovedBody598_348 : StackLang.HolProg 64 :=
.seq RemovedBody598_114 RemovedBody598_347

def RemovedBody598_349 : StackLang.HolProg 64 :=
.seq RemovedBody598_113 RemovedBody598_348

def RemovedBody598_350 : StackLang.HolProg 64 :=
.seq RemovedBody598_112 RemovedBody598_349

def RemovedBody598_351 : StackLang.HolProg 64 :=
.seq RemovedBody598_111 RemovedBody598_350

def RemovedBody598_352 : StackLang.HolProg 64 :=
.seq RemovedBody598_110 RemovedBody598_351

def RemovedBody598_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_355 : StackLang.HolProg 64 :=
.seq RemovedBody598_353 RemovedBody598_354

def RemovedBody598_356 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody598_352 RemovedBody598_355

def RemovedBody598_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_359 : StackLang.HolProg 64 :=
.seq RemovedBody598_357 RemovedBody598_358

def RemovedBody598_360 : StackLang.HolProg 64 :=
.seq RemovedBody598_356 RemovedBody598_359

def RemovedBody598_361 : StackLang.HolProg 64 :=
.seq RemovedBody598_109 RemovedBody598_360

def RemovedBody598_362 : StackLang.HolProg 64 :=
.seq RemovedBody598_108 RemovedBody598_361

def RemovedBody598_363 : StackLang.HolProg 64 :=
.seq RemovedBody598_107 RemovedBody598_362

def RemovedBody598_364 : StackLang.HolProg 64 :=
.seq RemovedBody598_106 RemovedBody598_363

def RemovedBody598_365 : StackLang.HolProg 64 :=
.seq RemovedBody598_35 RemovedBody598_364

def RemovedBody598_366 : StackLang.HolProg 64 :=
.seq RemovedBody598_24 RemovedBody598_365

def RemovedBody598_367 : StackLang.HolProg 64 :=
.seq RemovedBody598_23 RemovedBody598_366

def RemovedBody598_368 : StackLang.HolProg 64 :=
.seq RemovedBody598_22 RemovedBody598_367

def RemovedBody598_369 : StackLang.HolProg 64 :=
.seq RemovedBody598_21 RemovedBody598_368

def RemovedBody598_370 : StackLang.HolProg 64 :=
.seq RemovedBody598_20 RemovedBody598_369

def RemovedBody598_371 : StackLang.HolProg 64 :=
.seq RemovedBody598_19 RemovedBody598_370

def RemovedBody598_372 : StackLang.HolProg 64 :=
.seq RemovedBody598_18 RemovedBody598_371

def RemovedBody598_373 : StackLang.HolProg 64 :=
.seq RemovedBody598_17 RemovedBody598_372

def RemovedBody598_374 : StackLang.HolProg 64 :=
.seq RemovedBody598_16 RemovedBody598_373

def RemovedBody598_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody598_377 : StackLang.HolProg 64 :=
.seq RemovedBody598_375 RemovedBody598_376

def RemovedBody598_378 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody598_374 RemovedBody598_377

def RemovedBody598_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 104#64))

def RemovedBody598_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody598_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2271#64)

def RemovedBody598_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody598_389 : StackLang.HolProg 64 :=
.seq RemovedBody598_387 RemovedBody598_388

def RemovedBody598_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody598_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody598_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody598_393 : StackLang.HolProg 64 :=
.seq RemovedBody598_391 RemovedBody598_392

def RemovedBody598_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_395 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody598_393 RemovedBody598_394

def RemovedBody598_396 : StackLang.HolProg 64 :=
.seq RemovedBody598_390 RemovedBody598_395

def RemovedBody598_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody598_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody598_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 598 11

def RemovedBody598_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody598_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody598_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody598_406 : StackLang.HolProg 64 :=
.seq RemovedBody598_404 RemovedBody598_405

def RemovedBody598_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody598_408 : StackLang.HolProg 64 :=
.seq RemovedBody598_406 RemovedBody598_407

def RemovedBody598_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_410 : StackLang.HolProg 64 :=
.seq RemovedBody598_408 RemovedBody598_409

def RemovedBody598_411 : StackLang.HolProg 64 :=
.seq RemovedBody598_403 RemovedBody598_410

def RemovedBody598_412 : StackLang.HolProg 64 :=
.seq RemovedBody598_402 RemovedBody598_411

def RemovedBody598_413 : StackLang.HolProg 64 :=
.seq RemovedBody598_401 RemovedBody598_412

def RemovedBody598_414 : StackLang.HolProg 64 :=
.seq RemovedBody598_400 RemovedBody598_413

def RemovedBody598_415 : StackLang.HolProg 64 :=
.seq RemovedBody598_399 RemovedBody598_414

def RemovedBody598_416 : StackLang.HolProg 64 :=
.seq RemovedBody598_398 RemovedBody598_415

def RemovedBody598_417 : StackLang.HolProg 64 :=
.seq RemovedBody598_397 RemovedBody598_416

def RemovedBody598_418 : StackLang.HolProg 64 :=
.seq RemovedBody598_396 RemovedBody598_417

def RemovedBody598_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody598_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody598_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_427 : StackLang.HolProg 64 :=
.seq RemovedBody598_425 RemovedBody598_426

def RemovedBody598_428 : StackLang.HolProg 64 :=
.seq RemovedBody598_424 RemovedBody598_427

def RemovedBody598_429 : StackLang.HolProg 64 :=
.seq RemovedBody598_423 RemovedBody598_428

def RemovedBody598_430 : StackLang.HolProg 64 :=
.seq RemovedBody598_422 RemovedBody598_429

def RemovedBody598_431 : StackLang.HolProg 64 :=
.seq RemovedBody598_421 RemovedBody598_430

def RemovedBody598_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody598_433 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody598_434 : StackLang.HolProg 64 :=
.seq RemovedBody598_432 RemovedBody598_433

def RemovedBody598_435 : StackLang.HolProg 64 :=
.call (some (RemovedBody598_431, 0, 598, 10)) (Sum.inl 829) (some (RemovedBody598_434, 598, 11))

def RemovedBody598_436 : StackLang.HolProg 64 :=
.seq RemovedBody598_420 RemovedBody598_435

def RemovedBody598_437 : StackLang.HolProg 64 :=
.seq RemovedBody598_419 RemovedBody598_436

def RemovedBody598_438 : StackLang.HolProg 64 :=
.seq RemovedBody598_418 RemovedBody598_437

def RemovedBody598_439 : StackLang.HolProg 64 :=
.seq RemovedBody598_389 RemovedBody598_438

def RemovedBody598_440 : StackLang.HolProg 64 :=
.seq RemovedBody598_386 RemovedBody598_439

def RemovedBody598_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody598_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody598_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 168#64))

def RemovedBody598_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody598_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2272#64)

def RemovedBody598_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody598_453 : StackLang.HolProg 64 :=
.seq RemovedBody598_451 RemovedBody598_452

def RemovedBody598_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody598_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody598_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody598_457 : StackLang.HolProg 64 :=
.seq RemovedBody598_455 RemovedBody598_456

def RemovedBody598_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_459 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody598_457 RemovedBody598_458

def RemovedBody598_460 : StackLang.HolProg 64 :=
.seq RemovedBody598_454 RemovedBody598_459

def RemovedBody598_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody598_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody598_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 598 13

def RemovedBody598_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody598_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody598_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody598_470 : StackLang.HolProg 64 :=
.seq RemovedBody598_468 RemovedBody598_469

def RemovedBody598_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody598_472 : StackLang.HolProg 64 :=
.seq RemovedBody598_470 RemovedBody598_471

def RemovedBody598_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_474 : StackLang.HolProg 64 :=
.seq RemovedBody598_472 RemovedBody598_473

def RemovedBody598_475 : StackLang.HolProg 64 :=
.seq RemovedBody598_467 RemovedBody598_474

def RemovedBody598_476 : StackLang.HolProg 64 :=
.seq RemovedBody598_466 RemovedBody598_475

def RemovedBody598_477 : StackLang.HolProg 64 :=
.seq RemovedBody598_465 RemovedBody598_476

def RemovedBody598_478 : StackLang.HolProg 64 :=
.seq RemovedBody598_464 RemovedBody598_477

def RemovedBody598_479 : StackLang.HolProg 64 :=
.seq RemovedBody598_463 RemovedBody598_478

def RemovedBody598_480 : StackLang.HolProg 64 :=
.seq RemovedBody598_462 RemovedBody598_479

def RemovedBody598_481 : StackLang.HolProg 64 :=
.seq RemovedBody598_461 RemovedBody598_480

def RemovedBody598_482 : StackLang.HolProg 64 :=
.seq RemovedBody598_460 RemovedBody598_481

def RemovedBody598_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody598_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody598_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody598_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody598_490 : StackLang.HolProg 64 :=
.seq RemovedBody598_488 RemovedBody598_489

def RemovedBody598_491 : StackLang.HolProg 64 :=
.seq RemovedBody598_487 RemovedBody598_490

def RemovedBody598_492 : StackLang.HolProg 64 :=
.seq RemovedBody598_486 RemovedBody598_491

def RemovedBody598_493 : StackLang.HolProg 64 :=
.seq RemovedBody598_485 RemovedBody598_492

def RemovedBody598_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody598_495 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody598_496 : StackLang.HolProg 64 :=
.seq RemovedBody598_494 RemovedBody598_495

def RemovedBody598_497 : StackLang.HolProg 64 :=
.call (some (RemovedBody598_493, 0, 598, 12)) (Sum.inl 837) (some (RemovedBody598_496, 598, 13))

def RemovedBody598_498 : StackLang.HolProg 64 :=
.seq RemovedBody598_484 RemovedBody598_497

def RemovedBody598_499 : StackLang.HolProg 64 :=
.seq RemovedBody598_483 RemovedBody598_498

def RemovedBody598_500 : StackLang.HolProg 64 :=
.seq RemovedBody598_482 RemovedBody598_499

def RemovedBody598_501 : StackLang.HolProg 64 :=
.seq RemovedBody598_453 RemovedBody598_500

def RemovedBody598_502 : StackLang.HolProg 64 :=
.seq RemovedBody598_450 RemovedBody598_501

def RemovedBody598_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_505 : StackLang.HolProg 64 :=
.seq RemovedBody598_503 RemovedBody598_504

def RemovedBody598_506 : StackLang.HolProg 64 :=
.seq RemovedBody598_502 RemovedBody598_505

def RemovedBody598_507 : StackLang.HolProg 64 :=
.seq RemovedBody598_449 RemovedBody598_506

def RemovedBody598_508 : StackLang.HolProg 64 :=
.seq RemovedBody598_448 RemovedBody598_507

def RemovedBody598_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody598_511 : StackLang.HolProg 64 :=
.seq RemovedBody598_509 RemovedBody598_510

def RemovedBody598_512 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody598_508 RemovedBody598_511

def RemovedBody598_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody598_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody598_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody598_518 : StackLang.HolProg 64 :=
.seq RemovedBody598_516 RemovedBody598_517

def RemovedBody598_519 : StackLang.HolProg 64 :=
.seq RemovedBody598_515 RemovedBody598_518

def RemovedBody598_520 : StackLang.HolProg 64 :=
.seq RemovedBody598_514 RemovedBody598_519

def RemovedBody598_521 : StackLang.HolProg 64 :=
.seq RemovedBody598_513 RemovedBody598_520

def RemovedBody598_522 : StackLang.HolProg 64 :=
.seq RemovedBody598_512 RemovedBody598_521

def RemovedBody598_523 : StackLang.HolProg 64 :=
.seq RemovedBody598_447 RemovedBody598_522

def RemovedBody598_524 : StackLang.HolProg 64 :=
.seq RemovedBody598_446 RemovedBody598_523

def RemovedBody598_525 : StackLang.HolProg 64 :=
.seq RemovedBody598_445 RemovedBody598_524

def RemovedBody598_526 : StackLang.HolProg 64 :=
.seq RemovedBody598_444 RemovedBody598_525

def RemovedBody598_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody598_528 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody598_526 RemovedBody598_527

def RemovedBody598_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_532 : StackLang.HolProg 64 :=
.seq RemovedBody598_530 RemovedBody598_531

def RemovedBody598_533 : StackLang.HolProg 64 :=
.seq RemovedBody598_529 RemovedBody598_532

def RemovedBody598_534 : StackLang.HolProg 64 :=
.seq RemovedBody598_528 RemovedBody598_533

def RemovedBody598_535 : StackLang.HolProg 64 :=
.seq RemovedBody598_443 RemovedBody598_534

def RemovedBody598_536 : StackLang.HolProg 64 :=
.seq RemovedBody598_442 RemovedBody598_535

def RemovedBody598_537 : StackLang.HolProg 64 :=
.seq RemovedBody598_441 RemovedBody598_536

def RemovedBody598_538 : StackLang.HolProg 64 :=
.seq RemovedBody598_440 RemovedBody598_537

def RemovedBody598_539 : StackLang.HolProg 64 :=
.seq RemovedBody598_385 RemovedBody598_538

def RemovedBody598_540 : StackLang.HolProg 64 :=
.seq RemovedBody598_384 RemovedBody598_539

def RemovedBody598_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody598_543 : StackLang.HolProg 64 :=
.seq RemovedBody598_541 RemovedBody598_542

def RemovedBody598_544 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody598_540 RemovedBody598_543

def RemovedBody598_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody598_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody598_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody598_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody598_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody598_550 : StackLang.HolProg 64 :=
.seq RemovedBody598_548 RemovedBody598_549

def RemovedBody598_551 : StackLang.HolProg 64 :=
.seq RemovedBody598_547 RemovedBody598_550

def RemovedBody598_552 : StackLang.HolProg 64 :=
.seq RemovedBody598_546 RemovedBody598_551

def RemovedBody598_553 : StackLang.HolProg 64 :=
.seq RemovedBody598_545 RemovedBody598_552

def RemovedBody598_554 : StackLang.HolProg 64 :=
.seq RemovedBody598_544 RemovedBody598_553

def RemovedBody598_555 : StackLang.HolProg 64 :=
.seq RemovedBody598_383 RemovedBody598_554

def RemovedBody598_556 : StackLang.HolProg 64 :=
.seq RemovedBody598_382 RemovedBody598_555

def RemovedBody598_557 : StackLang.HolProg 64 :=
.seq RemovedBody598_381 RemovedBody598_556

def RemovedBody598_558 : StackLang.HolProg 64 :=
.seq RemovedBody598_380 RemovedBody598_557

def RemovedBody598_559 : StackLang.HolProg 64 :=
.seq RemovedBody598_379 RemovedBody598_558

def RemovedBody598_560 : StackLang.HolProg 64 :=
.seq RemovedBody598_378 RemovedBody598_559

def RemovedBody598_561 : StackLang.HolProg 64 :=
.seq RemovedBody598_15 RemovedBody598_560

def RemovedBody598_562 : StackLang.HolProg 64 :=
.seq RemovedBody598_14 RemovedBody598_561

def RemovedBody598_563 : StackLang.HolProg 64 :=
.seq RemovedBody598_13 RemovedBody598_562

def RemovedBody598_564 : StackLang.HolProg 64 :=
.seq RemovedBody598_12 RemovedBody598_563

def RemovedBody598_565 : StackLang.HolProg 64 :=
.seq RemovedBody598_11 RemovedBody598_564

def RemovedBody598_566 : StackLang.HolProg 64 :=
.seq RemovedBody598_10 RemovedBody598_565

def RemovedBody598_567 : StackLang.HolProg 64 :=
.seq RemovedBody598_9 RemovedBody598_566

def RemovedBody598_568 : StackLang.HolProg 64 :=
.seq RemovedBody598_8 RemovedBody598_567

def RemovedBody598_569 : StackLang.HolProg 64 :=
.seq RemovedBody598_7 RemovedBody598_568

def RemovedBody598_570 : StackLang.HolProg 64 :=
.seq RemovedBody598_6 RemovedBody598_569

def Removed598 : Nat × StackLang.HolProg 64 := (598, RemovedBody598_570)
theorem Removed598_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc598 = Removed598 := by
  kernel_rfl
#print axioms Removed598_eq
end InitECandidate.Proofs.BackendStages
