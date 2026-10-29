import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc830
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody830_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody830_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody830_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody830_3 : StackLang.HolProg 64 :=
.seq RemovedBody830_1 RemovedBody830_2

def RemovedBody830_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody830_3 RemovedBody830_4

def RemovedBody830_6 : StackLang.HolProg 64 :=
.seq RemovedBody830_0 RemovedBody830_5

def RemovedBody830_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody830_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody830_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody830_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody830_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody830_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def RemovedBody830_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody830_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody830_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody830_18 : StackLang.HolProg 64 :=
.seq RemovedBody830_16 RemovedBody830_17

def RemovedBody830_19 : StackLang.HolProg 64 :=
.seq RemovedBody830_15 RemovedBody830_18

def RemovedBody830_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4122#64)

def RemovedBody830_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody830_23 : StackLang.HolProg 64 :=
.seq RemovedBody830_21 RemovedBody830_22

def RemovedBody830_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody830_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody830_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody830_27 : StackLang.HolProg 64 :=
.seq RemovedBody830_25 RemovedBody830_26

def RemovedBody830_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody830_27 RemovedBody830_28

def RemovedBody830_30 : StackLang.HolProg 64 :=
.seq RemovedBody830_24 RemovedBody830_29

def RemovedBody830_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody830_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody830_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 830 3

def RemovedBody830_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody830_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody830_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody830_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody830_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody830_40 : StackLang.HolProg 64 :=
.seq RemovedBody830_38 RemovedBody830_39

def RemovedBody830_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody830_42 : StackLang.HolProg 64 :=
.seq RemovedBody830_40 RemovedBody830_41

def RemovedBody830_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody830_44 : StackLang.HolProg 64 :=
.seq RemovedBody830_42 RemovedBody830_43

def RemovedBody830_45 : StackLang.HolProg 64 :=
.seq RemovedBody830_37 RemovedBody830_44

def RemovedBody830_46 : StackLang.HolProg 64 :=
.seq RemovedBody830_36 RemovedBody830_45

def RemovedBody830_47 : StackLang.HolProg 64 :=
.seq RemovedBody830_35 RemovedBody830_46

def RemovedBody830_48 : StackLang.HolProg 64 :=
.seq RemovedBody830_34 RemovedBody830_47

def RemovedBody830_49 : StackLang.HolProg 64 :=
.seq RemovedBody830_33 RemovedBody830_48

def RemovedBody830_50 : StackLang.HolProg 64 :=
.seq RemovedBody830_32 RemovedBody830_49

def RemovedBody830_51 : StackLang.HolProg 64 :=
.seq RemovedBody830_31 RemovedBody830_50

def RemovedBody830_52 : StackLang.HolProg 64 :=
.seq RemovedBody830_30 RemovedBody830_51

def RemovedBody830_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody830_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody830_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody830_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody830_60 : StackLang.HolProg 64 :=
.seq RemovedBody830_58 RemovedBody830_59

def RemovedBody830_61 : StackLang.HolProg 64 :=
.seq RemovedBody830_57 RemovedBody830_60

def RemovedBody830_62 : StackLang.HolProg 64 :=
.seq RemovedBody830_56 RemovedBody830_61

def RemovedBody830_63 : StackLang.HolProg 64 :=
.seq RemovedBody830_55 RemovedBody830_62

def RemovedBody830_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody830_66 : StackLang.HolProg 64 :=
.seq RemovedBody830_64 RemovedBody830_65

def RemovedBody830_67 : StackLang.HolProg 64 :=
.call (some (RemovedBody830_63, 0, 830, 2)) (Sum.inl 465) (some (RemovedBody830_66, 830, 3))

def RemovedBody830_68 : StackLang.HolProg 64 :=
.seq RemovedBody830_54 RemovedBody830_67

def RemovedBody830_69 : StackLang.HolProg 64 :=
.seq RemovedBody830_53 RemovedBody830_68

def RemovedBody830_70 : StackLang.HolProg 64 :=
.seq RemovedBody830_52 RemovedBody830_69

def RemovedBody830_71 : StackLang.HolProg 64 :=
.seq RemovedBody830_23 RemovedBody830_70

def RemovedBody830_72 : StackLang.HolProg 64 :=
.seq RemovedBody830_20 RemovedBody830_71

def RemovedBody830_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody830_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 3#64)

def RemovedBody830_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody830_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def RemovedBody830_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4123#64)

def RemovedBody830_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody830_84 : StackLang.HolProg 64 :=
.seq RemovedBody830_82 RemovedBody830_83

def RemovedBody830_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody830_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody830_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody830_88 : StackLang.HolProg 64 :=
.seq RemovedBody830_86 RemovedBody830_87

def RemovedBody830_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody830_88 RemovedBody830_89

def RemovedBody830_91 : StackLang.HolProg 64 :=
.seq RemovedBody830_85 RemovedBody830_90

def RemovedBody830_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody830_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody830_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 830 5

def RemovedBody830_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody830_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody830_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody830_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody830_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody830_101 : StackLang.HolProg 64 :=
.seq RemovedBody830_99 RemovedBody830_100

def RemovedBody830_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody830_103 : StackLang.HolProg 64 :=
.seq RemovedBody830_101 RemovedBody830_102

def RemovedBody830_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody830_105 : StackLang.HolProg 64 :=
.seq RemovedBody830_103 RemovedBody830_104

def RemovedBody830_106 : StackLang.HolProg 64 :=
.seq RemovedBody830_98 RemovedBody830_105

def RemovedBody830_107 : StackLang.HolProg 64 :=
.seq RemovedBody830_97 RemovedBody830_106

def RemovedBody830_108 : StackLang.HolProg 64 :=
.seq RemovedBody830_96 RemovedBody830_107

def RemovedBody830_109 : StackLang.HolProg 64 :=
.seq RemovedBody830_95 RemovedBody830_108

def RemovedBody830_110 : StackLang.HolProg 64 :=
.seq RemovedBody830_94 RemovedBody830_109

def RemovedBody830_111 : StackLang.HolProg 64 :=
.seq RemovedBody830_93 RemovedBody830_110

def RemovedBody830_112 : StackLang.HolProg 64 :=
.seq RemovedBody830_92 RemovedBody830_111

def RemovedBody830_113 : StackLang.HolProg 64 :=
.seq RemovedBody830_91 RemovedBody830_112

def RemovedBody830_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody830_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody830_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody830_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody830_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody830_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody830_123 : StackLang.HolProg 64 :=
.seq RemovedBody830_121 RemovedBody830_122

def RemovedBody830_124 : StackLang.HolProg 64 :=
.seq RemovedBody830_120 RemovedBody830_123

def RemovedBody830_125 : StackLang.HolProg 64 :=
.seq RemovedBody830_119 RemovedBody830_124

def RemovedBody830_126 : StackLang.HolProg 64 :=
.seq RemovedBody830_118 RemovedBody830_125

def RemovedBody830_127 : StackLang.HolProg 64 :=
.seq RemovedBody830_117 RemovedBody830_126

def RemovedBody830_128 : StackLang.HolProg 64 :=
.seq RemovedBody830_116 RemovedBody830_127

def RemovedBody830_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody830_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody830_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody830_132 : StackLang.HolProg 64 :=
.seq RemovedBody830_130 RemovedBody830_131

def RemovedBody830_133 : StackLang.HolProg 64 :=
.seq RemovedBody830_129 RemovedBody830_132

def RemovedBody830_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody830_135 : StackLang.HolProg 64 :=
.seq RemovedBody830_133 RemovedBody830_134

def RemovedBody830_136 : StackLang.HolProg 64 :=
.call (some (RemovedBody830_128, 0, 830, 4)) (Sum.inl 470) (some (RemovedBody830_135, 830, 5))

def RemovedBody830_137 : StackLang.HolProg 64 :=
.seq RemovedBody830_115 RemovedBody830_136

def RemovedBody830_138 : StackLang.HolProg 64 :=
.seq RemovedBody830_114 RemovedBody830_137

def RemovedBody830_139 : StackLang.HolProg 64 :=
.seq RemovedBody830_113 RemovedBody830_138

def RemovedBody830_140 : StackLang.HolProg 64 :=
.seq RemovedBody830_84 RemovedBody830_139

def RemovedBody830_141 : StackLang.HolProg 64 :=
.seq RemovedBody830_81 RemovedBody830_140

def RemovedBody830_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody830_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody830_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody830_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody830_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody830_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody830_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 88#64))

def RemovedBody830_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody830_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody830_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody830_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody830_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody830_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody830_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody830_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody830_161 : StackLang.HolProg 64 :=
.seq RemovedBody830_159 RemovedBody830_160

def RemovedBody830_162 : StackLang.HolProg 64 :=
.seq RemovedBody830_158 RemovedBody830_161

def RemovedBody830_163 : StackLang.HolProg 64 :=
.seq RemovedBody830_157 RemovedBody830_162

def RemovedBody830_164 : StackLang.HolProg 64 :=
.seq RemovedBody830_156 RemovedBody830_163

def RemovedBody830_165 : StackLang.HolProg 64 :=
.seq RemovedBody830_155 RemovedBody830_164

def RemovedBody830_166 : StackLang.HolProg 64 :=
.seq RemovedBody830_154 RemovedBody830_165

def RemovedBody830_167 : StackLang.HolProg 64 :=
.seq RemovedBody830_153 RemovedBody830_166

def RemovedBody830_168 : StackLang.HolProg 64 :=
.seq RemovedBody830_152 RemovedBody830_167

def RemovedBody830_169 : StackLang.HolProg 64 :=
.seq RemovedBody830_151 RemovedBody830_168

def RemovedBody830_170 : StackLang.HolProg 64 :=
.seq RemovedBody830_150 RemovedBody830_169

def RemovedBody830_171 : StackLang.HolProg 64 :=
.seq RemovedBody830_149 RemovedBody830_170

def RemovedBody830_172 : StackLang.HolProg 64 :=
.seq RemovedBody830_148 RemovedBody830_171

def RemovedBody830_173 : StackLang.HolProg 64 :=
.seq RemovedBody830_147 RemovedBody830_172

def RemovedBody830_174 : StackLang.HolProg 64 :=
.seq RemovedBody830_146 RemovedBody830_173

def RemovedBody830_175 : StackLang.HolProg 64 :=
.seq RemovedBody830_145 RemovedBody830_174

def RemovedBody830_176 : StackLang.HolProg 64 :=
.seq RemovedBody830_144 RemovedBody830_175

def RemovedBody830_177 : StackLang.HolProg 64 :=
.seq RemovedBody830_143 RemovedBody830_176

def RemovedBody830_178 : StackLang.HolProg 64 :=
.seq RemovedBody830_142 RemovedBody830_177

def RemovedBody830_179 : StackLang.HolProg 64 :=
.seq RemovedBody830_141 RemovedBody830_178

def RemovedBody830_180 : StackLang.HolProg 64 :=
.seq RemovedBody830_80 RemovedBody830_179

def RemovedBody830_181 : StackLang.HolProg 64 :=
.seq RemovedBody830_79 RemovedBody830_180

def RemovedBody830_182 : StackLang.HolProg 64 :=
.seq RemovedBody830_78 RemovedBody830_181

def RemovedBody830_183 : StackLang.HolProg 64 :=
.seq RemovedBody830_77 RemovedBody830_182

def RemovedBody830_184 : StackLang.HolProg 64 :=
.seq RemovedBody830_76 RemovedBody830_183

def RemovedBody830_185 : StackLang.HolProg 64 :=
.seq RemovedBody830_75 RemovedBody830_184

def RemovedBody830_186 : StackLang.HolProg 64 :=
.seq RemovedBody830_74 RemovedBody830_185

def RemovedBody830_187 : StackLang.HolProg 64 :=
.seq RemovedBody830_73 RemovedBody830_186

def RemovedBody830_188 : StackLang.HolProg 64 :=
.seq RemovedBody830_72 RemovedBody830_187

def RemovedBody830_189 : StackLang.HolProg 64 :=
.seq RemovedBody830_19 RemovedBody830_188

def RemovedBody830_190 : StackLang.HolProg 64 :=
.seq RemovedBody830_14 RemovedBody830_189

def RemovedBody830_191 : StackLang.HolProg 64 :=
.seq RemovedBody830_13 RemovedBody830_190

def RemovedBody830_192 : StackLang.HolProg 64 :=
.seq RemovedBody830_12 RemovedBody830_191

def RemovedBody830_193 : StackLang.HolProg 64 :=
.seq RemovedBody830_11 RemovedBody830_192

def RemovedBody830_194 : StackLang.HolProg 64 :=
.seq RemovedBody830_10 RemovedBody830_193

def RemovedBody830_195 : StackLang.HolProg 64 :=
.seq RemovedBody830_9 RemovedBody830_194

def RemovedBody830_196 : StackLang.HolProg 64 :=
.seq RemovedBody830_8 RemovedBody830_195

def RemovedBody830_197 : StackLang.HolProg 64 :=
.seq RemovedBody830_7 RemovedBody830_196

def RemovedBody830_198 : StackLang.HolProg 64 :=
.seq RemovedBody830_6 RemovedBody830_197

def Removed830 : Nat × StackLang.HolProg 64 := (830, RemovedBody830_198)
theorem Removed830_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc830 = Removed830 := by
  kernel_rfl
#print axioms Removed830_eq
end InitECandidate.Proofs.BackendStages
