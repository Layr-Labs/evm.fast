import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc703
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody703_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody703_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody703_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody703_3 : StackLang.HolProg 64 :=
.seq RemovedBody703_1 RemovedBody703_2

def RemovedBody703_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody703_3 RemovedBody703_4

def RemovedBody703_6 : StackLang.HolProg 64 :=
.seq RemovedBody703_0 RemovedBody703_5

def RemovedBody703_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody703_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody703_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody703_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody703_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody703_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 96#64))

def RemovedBody703_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 192#64)

def RemovedBody703_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody703_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_19 : StackLang.HolProg 64 :=
.seq RemovedBody703_17 RemovedBody703_18

def RemovedBody703_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3146#64)

def RemovedBody703_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody703_23 : StackLang.HolProg 64 :=
.seq RemovedBody703_21 RemovedBody703_22

def RemovedBody703_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody703_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody703_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody703_27 : StackLang.HolProg 64 :=
.seq RemovedBody703_25 RemovedBody703_26

def RemovedBody703_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody703_27 RemovedBody703_28

def RemovedBody703_30 : StackLang.HolProg 64 :=
.seq RemovedBody703_24 RemovedBody703_29

def RemovedBody703_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody703_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody703_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 3

def RemovedBody703_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody703_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody703_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody703_40 : StackLang.HolProg 64 :=
.seq RemovedBody703_38 RemovedBody703_39

def RemovedBody703_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody703_42 : StackLang.HolProg 64 :=
.seq RemovedBody703_40 RemovedBody703_41

def RemovedBody703_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_44 : StackLang.HolProg 64 :=
.seq RemovedBody703_42 RemovedBody703_43

def RemovedBody703_45 : StackLang.HolProg 64 :=
.seq RemovedBody703_37 RemovedBody703_44

def RemovedBody703_46 : StackLang.HolProg 64 :=
.seq RemovedBody703_36 RemovedBody703_45

def RemovedBody703_47 : StackLang.HolProg 64 :=
.seq RemovedBody703_35 RemovedBody703_46

def RemovedBody703_48 : StackLang.HolProg 64 :=
.seq RemovedBody703_34 RemovedBody703_47

def RemovedBody703_49 : StackLang.HolProg 64 :=
.seq RemovedBody703_33 RemovedBody703_48

def RemovedBody703_50 : StackLang.HolProg 64 :=
.seq RemovedBody703_32 RemovedBody703_49

def RemovedBody703_51 : StackLang.HolProg 64 :=
.seq RemovedBody703_31 RemovedBody703_50

def RemovedBody703_52 : StackLang.HolProg 64 :=
.seq RemovedBody703_30 RemovedBody703_51

def RemovedBody703_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody703_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody703_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody703_61 : StackLang.HolProg 64 :=
.seq RemovedBody703_59 RemovedBody703_60

def RemovedBody703_62 : StackLang.HolProg 64 :=
.seq RemovedBody703_58 RemovedBody703_61

def RemovedBody703_63 : StackLang.HolProg 64 :=
.seq RemovedBody703_57 RemovedBody703_62

def RemovedBody703_64 : StackLang.HolProg 64 :=
.seq RemovedBody703_56 RemovedBody703_63

def RemovedBody703_65 : StackLang.HolProg 64 :=
.seq RemovedBody703_55 RemovedBody703_64

def RemovedBody703_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody703_68 : StackLang.HolProg 64 :=
.seq RemovedBody703_66 RemovedBody703_67

def RemovedBody703_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody703_65, 0, 703, 2)) (Sum.inl 94) (some (RemovedBody703_68, 703, 3))

def RemovedBody703_70 : StackLang.HolProg 64 :=
.seq RemovedBody703_54 RemovedBody703_69

def RemovedBody703_71 : StackLang.HolProg 64 :=
.seq RemovedBody703_53 RemovedBody703_70

def RemovedBody703_72 : StackLang.HolProg 64 :=
.seq RemovedBody703_52 RemovedBody703_71

def RemovedBody703_73 : StackLang.HolProg 64 :=
.seq RemovedBody703_23 RemovedBody703_72

def RemovedBody703_74 : StackLang.HolProg 64 :=
.seq RemovedBody703_20 RemovedBody703_73

def RemovedBody703_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody703_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 34000#64)

def RemovedBody703_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody703_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody703_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 45000#64)

def RemovedBody703_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody703_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody703_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody703_85 : StackLang.HolProg 64 :=
.seq RemovedBody703_83 RemovedBody703_84

def RemovedBody703_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3147#64)

def RemovedBody703_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody703_89 : StackLang.HolProg 64 :=
.seq RemovedBody703_87 RemovedBody703_88

def RemovedBody703_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody703_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody703_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody703_93 : StackLang.HolProg 64 :=
.seq RemovedBody703_91 RemovedBody703_92

def RemovedBody703_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody703_93 RemovedBody703_94

def RemovedBody703_96 : StackLang.HolProg 64 :=
.seq RemovedBody703_90 RemovedBody703_95

def RemovedBody703_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody703_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody703_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 5

def RemovedBody703_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody703_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody703_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody703_106 : StackLang.HolProg 64 :=
.seq RemovedBody703_104 RemovedBody703_105

def RemovedBody703_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody703_108 : StackLang.HolProg 64 :=
.seq RemovedBody703_106 RemovedBody703_107

def RemovedBody703_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_110 : StackLang.HolProg 64 :=
.seq RemovedBody703_108 RemovedBody703_109

def RemovedBody703_111 : StackLang.HolProg 64 :=
.seq RemovedBody703_103 RemovedBody703_110

def RemovedBody703_112 : StackLang.HolProg 64 :=
.seq RemovedBody703_102 RemovedBody703_111

def RemovedBody703_113 : StackLang.HolProg 64 :=
.seq RemovedBody703_101 RemovedBody703_112

def RemovedBody703_114 : StackLang.HolProg 64 :=
.seq RemovedBody703_100 RemovedBody703_113

def RemovedBody703_115 : StackLang.HolProg 64 :=
.seq RemovedBody703_99 RemovedBody703_114

def RemovedBody703_116 : StackLang.HolProg 64 :=
.seq RemovedBody703_98 RemovedBody703_115

def RemovedBody703_117 : StackLang.HolProg 64 :=
.seq RemovedBody703_97 RemovedBody703_116

def RemovedBody703_118 : StackLang.HolProg 64 :=
.seq RemovedBody703_96 RemovedBody703_117

def RemovedBody703_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody703_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody703_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody703_128 : StackLang.HolProg 64 :=
.seq RemovedBody703_126 RemovedBody703_127

def RemovedBody703_129 : StackLang.HolProg 64 :=
.seq RemovedBody703_125 RemovedBody703_128

def RemovedBody703_130 : StackLang.HolProg 64 :=
.seq RemovedBody703_124 RemovedBody703_129

def RemovedBody703_131 : StackLang.HolProg 64 :=
.seq RemovedBody703_123 RemovedBody703_130

def RemovedBody703_132 : StackLang.HolProg 64 :=
.seq RemovedBody703_122 RemovedBody703_131

def RemovedBody703_133 : StackLang.HolProg 64 :=
.seq RemovedBody703_121 RemovedBody703_132

def RemovedBody703_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody703_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody703_137 : StackLang.HolProg 64 :=
.seq RemovedBody703_135 RemovedBody703_136

def RemovedBody703_138 : StackLang.HolProg 64 :=
.seq RemovedBody703_134 RemovedBody703_137

def RemovedBody703_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody703_140 : StackLang.HolProg 64 :=
.seq RemovedBody703_138 RemovedBody703_139

def RemovedBody703_141 : StackLang.HolProg 64 :=
.call (some (RemovedBody703_133, 0, 703, 4)) (Sum.inl 470) (some (RemovedBody703_140, 703, 5))

def RemovedBody703_142 : StackLang.HolProg 64 :=
.seq RemovedBody703_120 RemovedBody703_141

def RemovedBody703_143 : StackLang.HolProg 64 :=
.seq RemovedBody703_119 RemovedBody703_142

def RemovedBody703_144 : StackLang.HolProg 64 :=
.seq RemovedBody703_118 RemovedBody703_143

def RemovedBody703_145 : StackLang.HolProg 64 :=
.seq RemovedBody703_89 RemovedBody703_144

def RemovedBody703_146 : StackLang.HolProg 64 :=
.seq RemovedBody703_86 RemovedBody703_145

def RemovedBody703_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody703_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody703_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody703_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody703_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody703_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody703_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_156 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody703_157 : StackLang.HolProg 64 :=
.seq RemovedBody703_155 RemovedBody703_156

def RemovedBody703_158 : StackLang.HolProg 64 :=
.seq RemovedBody703_154 RemovedBody703_157

def RemovedBody703_159 : StackLang.HolProg 64 :=
.seq RemovedBody703_153 RemovedBody703_158

def RemovedBody703_160 : StackLang.HolProg 64 :=
.seq RemovedBody703_152 RemovedBody703_159

def RemovedBody703_161 : StackLang.HolProg 64 :=
.seq RemovedBody703_151 RemovedBody703_160

def RemovedBody703_162 : StackLang.HolProg 64 :=
.seq RemovedBody703_150 RemovedBody703_161

def RemovedBody703_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody703_162 RemovedBody703_163

def RemovedBody703_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody703_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody703_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def RemovedBody703_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3148#64)

def RemovedBody703_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody703_173 : StackLang.HolProg 64 :=
.seq RemovedBody703_171 RemovedBody703_172

def RemovedBody703_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody703_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody703_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody703_177 : StackLang.HolProg 64 :=
.seq RemovedBody703_175 RemovedBody703_176

def RemovedBody703_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody703_177 RemovedBody703_178

def RemovedBody703_180 : StackLang.HolProg 64 :=
.seq RemovedBody703_174 RemovedBody703_179

def RemovedBody703_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody703_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody703_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 7

def RemovedBody703_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody703_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody703_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody703_190 : StackLang.HolProg 64 :=
.seq RemovedBody703_188 RemovedBody703_189

def RemovedBody703_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody703_192 : StackLang.HolProg 64 :=
.seq RemovedBody703_190 RemovedBody703_191

def RemovedBody703_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_194 : StackLang.HolProg 64 :=
.seq RemovedBody703_192 RemovedBody703_193

def RemovedBody703_195 : StackLang.HolProg 64 :=
.seq RemovedBody703_187 RemovedBody703_194

def RemovedBody703_196 : StackLang.HolProg 64 :=
.seq RemovedBody703_186 RemovedBody703_195

def RemovedBody703_197 : StackLang.HolProg 64 :=
.seq RemovedBody703_185 RemovedBody703_196

def RemovedBody703_198 : StackLang.HolProg 64 :=
.seq RemovedBody703_184 RemovedBody703_197

def RemovedBody703_199 : StackLang.HolProg 64 :=
.seq RemovedBody703_183 RemovedBody703_198

def RemovedBody703_200 : StackLang.HolProg 64 :=
.seq RemovedBody703_182 RemovedBody703_199

def RemovedBody703_201 : StackLang.HolProg 64 :=
.seq RemovedBody703_181 RemovedBody703_200

def RemovedBody703_202 : StackLang.HolProg 64 :=
.seq RemovedBody703_180 RemovedBody703_201

def RemovedBody703_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody703_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody703_210 : StackLang.HolProg 64 :=
.seq RemovedBody703_208 RemovedBody703_209

def RemovedBody703_211 : StackLang.HolProg 64 :=
.seq RemovedBody703_207 RemovedBody703_210

def RemovedBody703_212 : StackLang.HolProg 64 :=
.seq RemovedBody703_206 RemovedBody703_211

def RemovedBody703_213 : StackLang.HolProg 64 :=
.seq RemovedBody703_205 RemovedBody703_212

def RemovedBody703_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_215 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody703_216 : StackLang.HolProg 64 :=
.seq RemovedBody703_214 RemovedBody703_215

def RemovedBody703_217 : StackLang.HolProg 64 :=
.call (some (RemovedBody703_213, 0, 703, 6)) (Sum.inl 700) (some (RemovedBody703_216, 703, 7))

def RemovedBody703_218 : StackLang.HolProg 64 :=
.seq RemovedBody703_204 RemovedBody703_217

def RemovedBody703_219 : StackLang.HolProg 64 :=
.seq RemovedBody703_203 RemovedBody703_218

def RemovedBody703_220 : StackLang.HolProg 64 :=
.seq RemovedBody703_202 RemovedBody703_219

def RemovedBody703_221 : StackLang.HolProg 64 :=
.seq RemovedBody703_173 RemovedBody703_220

def RemovedBody703_222 : StackLang.HolProg 64 :=
.seq RemovedBody703_170 RemovedBody703_221

def RemovedBody703_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody703_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody703_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody703_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody703_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody703_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody703_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody703_233 : StackLang.HolProg 64 :=
.seq RemovedBody703_231 RemovedBody703_232

def RemovedBody703_234 : StackLang.HolProg 64 :=
.seq RemovedBody703_230 RemovedBody703_233

def RemovedBody703_235 : StackLang.HolProg 64 :=
.seq RemovedBody703_229 RemovedBody703_234

def RemovedBody703_236 : StackLang.HolProg 64 :=
.seq RemovedBody703_228 RemovedBody703_235

def RemovedBody703_237 : StackLang.HolProg 64 :=
.seq RemovedBody703_227 RemovedBody703_236

def RemovedBody703_238 : StackLang.HolProg 64 :=
.seq RemovedBody703_226 RemovedBody703_237

def RemovedBody703_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_240 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody703_238 RemovedBody703_239

def RemovedBody703_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody703_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody703_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody703_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3149#64)

def RemovedBody703_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody703_248 : StackLang.HolProg 64 :=
.seq RemovedBody703_246 RemovedBody703_247

def RemovedBody703_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody703_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody703_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody703_252 : StackLang.HolProg 64 :=
.seq RemovedBody703_250 RemovedBody703_251

def RemovedBody703_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_254 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody703_252 RemovedBody703_253

def RemovedBody703_255 : StackLang.HolProg 64 :=
.seq RemovedBody703_249 RemovedBody703_254

def RemovedBody703_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody703_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody703_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 9

def RemovedBody703_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody703_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody703_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody703_265 : StackLang.HolProg 64 :=
.seq RemovedBody703_263 RemovedBody703_264

def RemovedBody703_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody703_267 : StackLang.HolProg 64 :=
.seq RemovedBody703_265 RemovedBody703_266

def RemovedBody703_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_269 : StackLang.HolProg 64 :=
.seq RemovedBody703_267 RemovedBody703_268

def RemovedBody703_270 : StackLang.HolProg 64 :=
.seq RemovedBody703_262 RemovedBody703_269

def RemovedBody703_271 : StackLang.HolProg 64 :=
.seq RemovedBody703_261 RemovedBody703_270

def RemovedBody703_272 : StackLang.HolProg 64 :=
.seq RemovedBody703_260 RemovedBody703_271

def RemovedBody703_273 : StackLang.HolProg 64 :=
.seq RemovedBody703_259 RemovedBody703_272

def RemovedBody703_274 : StackLang.HolProg 64 :=
.seq RemovedBody703_258 RemovedBody703_273

def RemovedBody703_275 : StackLang.HolProg 64 :=
.seq RemovedBody703_257 RemovedBody703_274

def RemovedBody703_276 : StackLang.HolProg 64 :=
.seq RemovedBody703_256 RemovedBody703_275

def RemovedBody703_277 : StackLang.HolProg 64 :=
.seq RemovedBody703_255 RemovedBody703_276

def RemovedBody703_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody703_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody703_285 : StackLang.HolProg 64 :=
.seq RemovedBody703_283 RemovedBody703_284

def RemovedBody703_286 : StackLang.HolProg 64 :=
.seq RemovedBody703_282 RemovedBody703_285

def RemovedBody703_287 : StackLang.HolProg 64 :=
.seq RemovedBody703_281 RemovedBody703_286

def RemovedBody703_288 : StackLang.HolProg 64 :=
.seq RemovedBody703_280 RemovedBody703_287

def RemovedBody703_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_290 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody703_291 : StackLang.HolProg 64 :=
.seq RemovedBody703_289 RemovedBody703_290

def RemovedBody703_292 : StackLang.HolProg 64 :=
.call (some (RemovedBody703_288, 0, 703, 8)) (Sum.inl 68) (some (RemovedBody703_291, 703, 9))

def RemovedBody703_293 : StackLang.HolProg 64 :=
.seq RemovedBody703_279 RemovedBody703_292

def RemovedBody703_294 : StackLang.HolProg 64 :=
.seq RemovedBody703_278 RemovedBody703_293

def RemovedBody703_295 : StackLang.HolProg 64 :=
.seq RemovedBody703_277 RemovedBody703_294

def RemovedBody703_296 : StackLang.HolProg 64 :=
.seq RemovedBody703_248 RemovedBody703_295

def RemovedBody703_297 : StackLang.HolProg 64 :=
.seq RemovedBody703_245 RemovedBody703_296

def RemovedBody703_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody703_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody703_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody703_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody703_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3150#64)

def RemovedBody703_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody703_305 : StackLang.HolProg 64 :=
.seq RemovedBody703_303 RemovedBody703_304

def RemovedBody703_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody703_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody703_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody703_309 : StackLang.HolProg 64 :=
.seq RemovedBody703_307 RemovedBody703_308

def RemovedBody703_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_311 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody703_309 RemovedBody703_310

def RemovedBody703_312 : StackLang.HolProg 64 :=
.seq RemovedBody703_306 RemovedBody703_311

def RemovedBody703_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody703_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody703_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 11

def RemovedBody703_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody703_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody703_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody703_322 : StackLang.HolProg 64 :=
.seq RemovedBody703_320 RemovedBody703_321

def RemovedBody703_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody703_324 : StackLang.HolProg 64 :=
.seq RemovedBody703_322 RemovedBody703_323

def RemovedBody703_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_326 : StackLang.HolProg 64 :=
.seq RemovedBody703_324 RemovedBody703_325

def RemovedBody703_327 : StackLang.HolProg 64 :=
.seq RemovedBody703_319 RemovedBody703_326

def RemovedBody703_328 : StackLang.HolProg 64 :=
.seq RemovedBody703_318 RemovedBody703_327

def RemovedBody703_329 : StackLang.HolProg 64 :=
.seq RemovedBody703_317 RemovedBody703_328

def RemovedBody703_330 : StackLang.HolProg 64 :=
.seq RemovedBody703_316 RemovedBody703_329

def RemovedBody703_331 : StackLang.HolProg 64 :=
.seq RemovedBody703_315 RemovedBody703_330

def RemovedBody703_332 : StackLang.HolProg 64 :=
.seq RemovedBody703_314 RemovedBody703_331

def RemovedBody703_333 : StackLang.HolProg 64 :=
.seq RemovedBody703_313 RemovedBody703_332

def RemovedBody703_334 : StackLang.HolProg 64 :=
.seq RemovedBody703_312 RemovedBody703_333

def RemovedBody703_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody703_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody703_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody703_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody703_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_344 : StackLang.HolProg 64 :=
.seq RemovedBody703_342 RemovedBody703_343

def RemovedBody703_345 : StackLang.HolProg 64 :=
.seq RemovedBody703_341 RemovedBody703_344

def RemovedBody703_346 : StackLang.HolProg 64 :=
.seq RemovedBody703_340 RemovedBody703_345

def RemovedBody703_347 : StackLang.HolProg 64 :=
.seq RemovedBody703_339 RemovedBody703_346

def RemovedBody703_348 : StackLang.HolProg 64 :=
.seq RemovedBody703_338 RemovedBody703_347

def RemovedBody703_349 : StackLang.HolProg 64 :=
.seq RemovedBody703_337 RemovedBody703_348

def RemovedBody703_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody703_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody703_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody703_353 : StackLang.HolProg 64 :=
.seq RemovedBody703_351 RemovedBody703_352

def RemovedBody703_354 : StackLang.HolProg 64 :=
.seq RemovedBody703_350 RemovedBody703_353

def RemovedBody703_355 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody703_356 : StackLang.HolProg 64 :=
.seq RemovedBody703_354 RemovedBody703_355

def RemovedBody703_357 : StackLang.HolProg 64 :=
.call (some (RemovedBody703_349, 0, 703, 10)) (Sum.inl 78) (some (RemovedBody703_356, 703, 11))

def RemovedBody703_358 : StackLang.HolProg 64 :=
.seq RemovedBody703_336 RemovedBody703_357

def RemovedBody703_359 : StackLang.HolProg 64 :=
.seq RemovedBody703_335 RemovedBody703_358

def RemovedBody703_360 : StackLang.HolProg 64 :=
.seq RemovedBody703_334 RemovedBody703_359

def RemovedBody703_361 : StackLang.HolProg 64 :=
.seq RemovedBody703_305 RemovedBody703_360

def RemovedBody703_362 : StackLang.HolProg 64 :=
.seq RemovedBody703_302 RemovedBody703_361

def RemovedBody703_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody703_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def RemovedBody703_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody703_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody703_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody703_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody703_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody703_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody703_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody703_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody703_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody703_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody703_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody703_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody703_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody703_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody703_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody703_385 : StackLang.HolProg 64 :=
.seq RemovedBody703_383 RemovedBody703_384

def RemovedBody703_386 : StackLang.HolProg 64 :=
.seq RemovedBody703_382 RemovedBody703_385

def RemovedBody703_387 : StackLang.HolProg 64 :=
.seq RemovedBody703_381 RemovedBody703_386

def RemovedBody703_388 : StackLang.HolProg 64 :=
.seq RemovedBody703_380 RemovedBody703_387

def RemovedBody703_389 : StackLang.HolProg 64 :=
.seq RemovedBody703_379 RemovedBody703_388

def RemovedBody703_390 : StackLang.HolProg 64 :=
.seq RemovedBody703_378 RemovedBody703_389

def RemovedBody703_391 : StackLang.HolProg 64 :=
.seq RemovedBody703_377 RemovedBody703_390

def RemovedBody703_392 : StackLang.HolProg 64 :=
.seq RemovedBody703_376 RemovedBody703_391

def RemovedBody703_393 : StackLang.HolProg 64 :=
.seq RemovedBody703_375 RemovedBody703_392

def RemovedBody703_394 : StackLang.HolProg 64 :=
.seq RemovedBody703_374 RemovedBody703_393

def RemovedBody703_395 : StackLang.HolProg 64 :=
.seq RemovedBody703_373 RemovedBody703_394

def RemovedBody703_396 : StackLang.HolProg 64 :=
.seq RemovedBody703_372 RemovedBody703_395

def RemovedBody703_397 : StackLang.HolProg 64 :=
.seq RemovedBody703_371 RemovedBody703_396

def RemovedBody703_398 : StackLang.HolProg 64 :=
.seq RemovedBody703_370 RemovedBody703_397

def RemovedBody703_399 : StackLang.HolProg 64 :=
.seq RemovedBody703_369 RemovedBody703_398

def RemovedBody703_400 : StackLang.HolProg 64 :=
.seq RemovedBody703_368 RemovedBody703_399

def RemovedBody703_401 : StackLang.HolProg 64 :=
.seq RemovedBody703_367 RemovedBody703_400

def RemovedBody703_402 : StackLang.HolProg 64 :=
.seq RemovedBody703_366 RemovedBody703_401

def RemovedBody703_403 : StackLang.HolProg 64 :=
.seq RemovedBody703_365 RemovedBody703_402

def RemovedBody703_404 : StackLang.HolProg 64 :=
.seq RemovedBody703_364 RemovedBody703_403

def RemovedBody703_405 : StackLang.HolProg 64 :=
.seq RemovedBody703_363 RemovedBody703_404

def RemovedBody703_406 : StackLang.HolProg 64 :=
.seq RemovedBody703_362 RemovedBody703_405

def RemovedBody703_407 : StackLang.HolProg 64 :=
.seq RemovedBody703_301 RemovedBody703_406

def RemovedBody703_408 : StackLang.HolProg 64 :=
.seq RemovedBody703_300 RemovedBody703_407

def RemovedBody703_409 : StackLang.HolProg 64 :=
.seq RemovedBody703_299 RemovedBody703_408

def RemovedBody703_410 : StackLang.HolProg 64 :=
.seq RemovedBody703_298 RemovedBody703_409

def RemovedBody703_411 : StackLang.HolProg 64 :=
.seq RemovedBody703_297 RemovedBody703_410

def RemovedBody703_412 : StackLang.HolProg 64 :=
.seq RemovedBody703_244 RemovedBody703_411

def RemovedBody703_413 : StackLang.HolProg 64 :=
.seq RemovedBody703_243 RemovedBody703_412

def RemovedBody703_414 : StackLang.HolProg 64 :=
.seq RemovedBody703_242 RemovedBody703_413

def RemovedBody703_415 : StackLang.HolProg 64 :=
.seq RemovedBody703_241 RemovedBody703_414

def RemovedBody703_416 : StackLang.HolProg 64 :=
.seq RemovedBody703_240 RemovedBody703_415

def RemovedBody703_417 : StackLang.HolProg 64 :=
.seq RemovedBody703_225 RemovedBody703_416

def RemovedBody703_418 : StackLang.HolProg 64 :=
.seq RemovedBody703_224 RemovedBody703_417

def RemovedBody703_419 : StackLang.HolProg 64 :=
.seq RemovedBody703_223 RemovedBody703_418

def RemovedBody703_420 : StackLang.HolProg 64 :=
.seq RemovedBody703_222 RemovedBody703_419

def RemovedBody703_421 : StackLang.HolProg 64 :=
.seq RemovedBody703_169 RemovedBody703_420

def RemovedBody703_422 : StackLang.HolProg 64 :=
.seq RemovedBody703_168 RemovedBody703_421

def RemovedBody703_423 : StackLang.HolProg 64 :=
.seq RemovedBody703_167 RemovedBody703_422

def RemovedBody703_424 : StackLang.HolProg 64 :=
.seq RemovedBody703_166 RemovedBody703_423

def RemovedBody703_425 : StackLang.HolProg 64 :=
.seq RemovedBody703_165 RemovedBody703_424

def RemovedBody703_426 : StackLang.HolProg 64 :=
.seq RemovedBody703_164 RemovedBody703_425

def RemovedBody703_427 : StackLang.HolProg 64 :=
.seq RemovedBody703_149 RemovedBody703_426

def RemovedBody703_428 : StackLang.HolProg 64 :=
.seq RemovedBody703_148 RemovedBody703_427

def RemovedBody703_429 : StackLang.HolProg 64 :=
.seq RemovedBody703_147 RemovedBody703_428

def RemovedBody703_430 : StackLang.HolProg 64 :=
.seq RemovedBody703_146 RemovedBody703_429

def RemovedBody703_431 : StackLang.HolProg 64 :=
.seq RemovedBody703_85 RemovedBody703_430

def RemovedBody703_432 : StackLang.HolProg 64 :=
.seq RemovedBody703_82 RemovedBody703_431

def RemovedBody703_433 : StackLang.HolProg 64 :=
.seq RemovedBody703_81 RemovedBody703_432

def RemovedBody703_434 : StackLang.HolProg 64 :=
.seq RemovedBody703_80 RemovedBody703_433

def RemovedBody703_435 : StackLang.HolProg 64 :=
.seq RemovedBody703_79 RemovedBody703_434

def RemovedBody703_436 : StackLang.HolProg 64 :=
.seq RemovedBody703_78 RemovedBody703_435

def RemovedBody703_437 : StackLang.HolProg 64 :=
.seq RemovedBody703_77 RemovedBody703_436

def RemovedBody703_438 : StackLang.HolProg 64 :=
.seq RemovedBody703_76 RemovedBody703_437

def RemovedBody703_439 : StackLang.HolProg 64 :=
.seq RemovedBody703_75 RemovedBody703_438

def RemovedBody703_440 : StackLang.HolProg 64 :=
.seq RemovedBody703_74 RemovedBody703_439

def RemovedBody703_441 : StackLang.HolProg 64 :=
.seq RemovedBody703_19 RemovedBody703_440

def RemovedBody703_442 : StackLang.HolProg 64 :=
.seq RemovedBody703_16 RemovedBody703_441

def RemovedBody703_443 : StackLang.HolProg 64 :=
.seq RemovedBody703_15 RemovedBody703_442

def RemovedBody703_444 : StackLang.HolProg 64 :=
.seq RemovedBody703_14 RemovedBody703_443

def RemovedBody703_445 : StackLang.HolProg 64 :=
.seq RemovedBody703_13 RemovedBody703_444

def RemovedBody703_446 : StackLang.HolProg 64 :=
.seq RemovedBody703_12 RemovedBody703_445

def RemovedBody703_447 : StackLang.HolProg 64 :=
.seq RemovedBody703_11 RemovedBody703_446

def RemovedBody703_448 : StackLang.HolProg 64 :=
.seq RemovedBody703_10 RemovedBody703_447

def RemovedBody703_449 : StackLang.HolProg 64 :=
.seq RemovedBody703_9 RemovedBody703_448

def RemovedBody703_450 : StackLang.HolProg 64 :=
.seq RemovedBody703_8 RemovedBody703_449

def RemovedBody703_451 : StackLang.HolProg 64 :=
.seq RemovedBody703_7 RemovedBody703_450

def RemovedBody703_452 : StackLang.HolProg 64 :=
.seq RemovedBody703_6 RemovedBody703_451

def Removed703 : Nat × StackLang.HolProg 64 := (703, RemovedBody703_452)
theorem Removed703_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc703 = Removed703 := by
  kernel_rfl
#print axioms Removed703_eq
end InitECandidate.Proofs.BackendStages
