import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc605
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody605_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody605_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody605_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody605_3 : StackLang.HolProg 64 :=
.seq RemovedBody605_1 RemovedBody605_2

def RemovedBody605_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody605_3 RemovedBody605_4

def RemovedBody605_6 : StackLang.HolProg 64 :=
.seq RemovedBody605_0 RemovedBody605_5

def RemovedBody605_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody605_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody605_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody605_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody605_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody605_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody605_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 152#64))

def RemovedBody605_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody605_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody605_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody605_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody605_21 : StackLang.HolProg 64 :=
.seq RemovedBody605_19 RemovedBody605_20

def RemovedBody605_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2315#64)

def RemovedBody605_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody605_25 : StackLang.HolProg 64 :=
.seq RemovedBody605_23 RemovedBody605_24

def RemovedBody605_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody605_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody605_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody605_29 : StackLang.HolProg 64 :=
.seq RemovedBody605_27 RemovedBody605_28

def RemovedBody605_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody605_29 RemovedBody605_30

def RemovedBody605_32 : StackLang.HolProg 64 :=
.seq RemovedBody605_26 RemovedBody605_31

def RemovedBody605_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody605_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody605_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 605 3

def RemovedBody605_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody605_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody605_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody605_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody605_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody605_42 : StackLang.HolProg 64 :=
.seq RemovedBody605_40 RemovedBody605_41

def RemovedBody605_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody605_44 : StackLang.HolProg 64 :=
.seq RemovedBody605_42 RemovedBody605_43

def RemovedBody605_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody605_46 : StackLang.HolProg 64 :=
.seq RemovedBody605_44 RemovedBody605_45

def RemovedBody605_47 : StackLang.HolProg 64 :=
.seq RemovedBody605_39 RemovedBody605_46

def RemovedBody605_48 : StackLang.HolProg 64 :=
.seq RemovedBody605_38 RemovedBody605_47

def RemovedBody605_49 : StackLang.HolProg 64 :=
.seq RemovedBody605_37 RemovedBody605_48

def RemovedBody605_50 : StackLang.HolProg 64 :=
.seq RemovedBody605_36 RemovedBody605_49

def RemovedBody605_51 : StackLang.HolProg 64 :=
.seq RemovedBody605_35 RemovedBody605_50

def RemovedBody605_52 : StackLang.HolProg 64 :=
.seq RemovedBody605_34 RemovedBody605_51

def RemovedBody605_53 : StackLang.HolProg 64 :=
.seq RemovedBody605_33 RemovedBody605_52

def RemovedBody605_54 : StackLang.HolProg 64 :=
.seq RemovedBody605_32 RemovedBody605_53

def RemovedBody605_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody605_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody605_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody605_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_62 : StackLang.HolProg 64 :=
.seq RemovedBody605_60 RemovedBody605_61

def RemovedBody605_63 : StackLang.HolProg 64 :=
.seq RemovedBody605_59 RemovedBody605_62

def RemovedBody605_64 : StackLang.HolProg 64 :=
.seq RemovedBody605_58 RemovedBody605_63

def RemovedBody605_65 : StackLang.HolProg 64 :=
.seq RemovedBody605_57 RemovedBody605_64

def RemovedBody605_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody605_68 : StackLang.HolProg 64 :=
.seq RemovedBody605_66 RemovedBody605_67

def RemovedBody605_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody605_65, 0, 605, 2)) (Sum.inl 593) (some (RemovedBody605_68, 605, 3))

def RemovedBody605_70 : StackLang.HolProg 64 :=
.seq RemovedBody605_56 RemovedBody605_69

def RemovedBody605_71 : StackLang.HolProg 64 :=
.seq RemovedBody605_55 RemovedBody605_70

def RemovedBody605_72 : StackLang.HolProg 64 :=
.seq RemovedBody605_54 RemovedBody605_71

def RemovedBody605_73 : StackLang.HolProg 64 :=
.seq RemovedBody605_25 RemovedBody605_72

def RemovedBody605_74 : StackLang.HolProg 64 :=
.seq RemovedBody605_22 RemovedBody605_73

def RemovedBody605_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody605_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody605_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody605_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody605_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody605_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2316#64)

def RemovedBody605_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody605_84 : StackLang.HolProg 64 :=
.seq RemovedBody605_82 RemovedBody605_83

def RemovedBody605_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody605_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody605_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody605_88 : StackLang.HolProg 64 :=
.seq RemovedBody605_86 RemovedBody605_87

def RemovedBody605_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody605_88 RemovedBody605_89

def RemovedBody605_91 : StackLang.HolProg 64 :=
.seq RemovedBody605_85 RemovedBody605_90

def RemovedBody605_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody605_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody605_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 605 5

def RemovedBody605_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody605_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody605_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody605_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody605_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody605_101 : StackLang.HolProg 64 :=
.seq RemovedBody605_99 RemovedBody605_100

def RemovedBody605_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody605_103 : StackLang.HolProg 64 :=
.seq RemovedBody605_101 RemovedBody605_102

def RemovedBody605_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody605_105 : StackLang.HolProg 64 :=
.seq RemovedBody605_103 RemovedBody605_104

def RemovedBody605_106 : StackLang.HolProg 64 :=
.seq RemovedBody605_98 RemovedBody605_105

def RemovedBody605_107 : StackLang.HolProg 64 :=
.seq RemovedBody605_97 RemovedBody605_106

def RemovedBody605_108 : StackLang.HolProg 64 :=
.seq RemovedBody605_96 RemovedBody605_107

def RemovedBody605_109 : StackLang.HolProg 64 :=
.seq RemovedBody605_95 RemovedBody605_108

def RemovedBody605_110 : StackLang.HolProg 64 :=
.seq RemovedBody605_94 RemovedBody605_109

def RemovedBody605_111 : StackLang.HolProg 64 :=
.seq RemovedBody605_93 RemovedBody605_110

def RemovedBody605_112 : StackLang.HolProg 64 :=
.seq RemovedBody605_92 RemovedBody605_111

def RemovedBody605_113 : StackLang.HolProg 64 :=
.seq RemovedBody605_91 RemovedBody605_112

def RemovedBody605_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody605_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody605_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody605_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody605_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody605_122 : StackLang.HolProg 64 :=
.seq RemovedBody605_120 RemovedBody605_121

def RemovedBody605_123 : StackLang.HolProg 64 :=
.seq RemovedBody605_119 RemovedBody605_122

def RemovedBody605_124 : StackLang.HolProg 64 :=
.seq RemovedBody605_118 RemovedBody605_123

def RemovedBody605_125 : StackLang.HolProg 64 :=
.seq RemovedBody605_117 RemovedBody605_124

def RemovedBody605_126 : StackLang.HolProg 64 :=
.seq RemovedBody605_116 RemovedBody605_125

def RemovedBody605_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody605_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody605_129 : StackLang.HolProg 64 :=
.seq RemovedBody605_127 RemovedBody605_128

def RemovedBody605_130 : StackLang.HolProg 64 :=
.call (some (RemovedBody605_126, 0, 605, 4)) (Sum.inl 473) (some (RemovedBody605_129, 605, 5))

def RemovedBody605_131 : StackLang.HolProg 64 :=
.seq RemovedBody605_115 RemovedBody605_130

def RemovedBody605_132 : StackLang.HolProg 64 :=
.seq RemovedBody605_114 RemovedBody605_131

def RemovedBody605_133 : StackLang.HolProg 64 :=
.seq RemovedBody605_113 RemovedBody605_132

def RemovedBody605_134 : StackLang.HolProg 64 :=
.seq RemovedBody605_84 RemovedBody605_133

def RemovedBody605_135 : StackLang.HolProg 64 :=
.seq RemovedBody605_81 RemovedBody605_134

def RemovedBody605_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody605_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody605_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody605_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody605_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody605_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 200#64)))

def RemovedBody605_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody605_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody605_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody605_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def RemovedBody605_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody605_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody605_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody605_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody605_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody605_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_158 : StackLang.HolProg 64 :=
.seq RemovedBody605_156 RemovedBody605_157

def RemovedBody605_159 : StackLang.HolProg 64 :=
.seq RemovedBody605_155 RemovedBody605_158

def RemovedBody605_160 : StackLang.HolProg 64 :=
.seq RemovedBody605_154 RemovedBody605_159

def RemovedBody605_161 : StackLang.HolProg 64 :=
.seq RemovedBody605_153 RemovedBody605_160

def RemovedBody605_162 : StackLang.HolProg 64 :=
.seq RemovedBody605_152 RemovedBody605_161

def RemovedBody605_163 : StackLang.HolProg 64 :=
.seq RemovedBody605_151 RemovedBody605_162

def RemovedBody605_164 : StackLang.HolProg 64 :=
.seq RemovedBody605_150 RemovedBody605_163

def RemovedBody605_165 : StackLang.HolProg 64 :=
.seq RemovedBody605_149 RemovedBody605_164

def RemovedBody605_166 : StackLang.HolProg 64 :=
.seq RemovedBody605_148 RemovedBody605_165

def RemovedBody605_167 : StackLang.HolProg 64 :=
.seq RemovedBody605_147 RemovedBody605_166

def RemovedBody605_168 : StackLang.HolProg 64 :=
.seq RemovedBody605_146 RemovedBody605_167

def RemovedBody605_169 : StackLang.HolProg 64 :=
.seq RemovedBody605_145 RemovedBody605_168

def RemovedBody605_170 : StackLang.HolProg 64 :=
.seq RemovedBody605_144 RemovedBody605_169

def RemovedBody605_171 : StackLang.HolProg 64 :=
.seq RemovedBody605_143 RemovedBody605_170

def RemovedBody605_172 : StackLang.HolProg 64 :=
.seq RemovedBody605_142 RemovedBody605_171

def RemovedBody605_173 : StackLang.HolProg 64 :=
.seq RemovedBody605_141 RemovedBody605_172

def RemovedBody605_174 : StackLang.HolProg 64 :=
.seq RemovedBody605_140 RemovedBody605_173

def RemovedBody605_175 : StackLang.HolProg 64 :=
.seq RemovedBody605_139 RemovedBody605_174

def RemovedBody605_176 : StackLang.HolProg 64 :=
.seq RemovedBody605_138 RemovedBody605_175

def RemovedBody605_177 : StackLang.HolProg 64 :=
.seq RemovedBody605_137 RemovedBody605_176

def RemovedBody605_178 : StackLang.HolProg 64 :=
.seq RemovedBody605_136 RemovedBody605_177

def RemovedBody605_179 : StackLang.HolProg 64 :=
.seq RemovedBody605_135 RemovedBody605_178

def RemovedBody605_180 : StackLang.HolProg 64 :=
.seq RemovedBody605_80 RemovedBody605_179

def RemovedBody605_181 : StackLang.HolProg 64 :=
.seq RemovedBody605_79 RemovedBody605_180

def RemovedBody605_182 : StackLang.HolProg 64 :=
.seq RemovedBody605_78 RemovedBody605_181

def RemovedBody605_183 : StackLang.HolProg 64 :=
.seq RemovedBody605_77 RemovedBody605_182

def RemovedBody605_184 : StackLang.HolProg 64 :=
.seq RemovedBody605_76 RemovedBody605_183

def RemovedBody605_185 : StackLang.HolProg 64 :=
.seq RemovedBody605_75 RemovedBody605_184

def RemovedBody605_186 : StackLang.HolProg 64 :=
.seq RemovedBody605_74 RemovedBody605_185

def RemovedBody605_187 : StackLang.HolProg 64 :=
.seq RemovedBody605_21 RemovedBody605_186

def RemovedBody605_188 : StackLang.HolProg 64 :=
.seq RemovedBody605_18 RemovedBody605_187

def RemovedBody605_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody605_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody605_191 : StackLang.HolProg 64 :=
.seq RemovedBody605_189 RemovedBody605_190

def RemovedBody605_192 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody605_188 RemovedBody605_191

def RemovedBody605_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody605_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2317#64)

def RemovedBody605_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody605_198 : StackLang.HolProg 64 :=
.seq RemovedBody605_196 RemovedBody605_197

def RemovedBody605_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody605_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody605_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody605_202 : StackLang.HolProg 64 :=
.seq RemovedBody605_200 RemovedBody605_201

def RemovedBody605_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody605_202 RemovedBody605_203

def RemovedBody605_205 : StackLang.HolProg 64 :=
.seq RemovedBody605_199 RemovedBody605_204

def RemovedBody605_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody605_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody605_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 605 7

def RemovedBody605_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody605_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody605_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody605_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody605_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody605_215 : StackLang.HolProg 64 :=
.seq RemovedBody605_213 RemovedBody605_214

def RemovedBody605_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody605_217 : StackLang.HolProg 64 :=
.seq RemovedBody605_215 RemovedBody605_216

def RemovedBody605_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody605_219 : StackLang.HolProg 64 :=
.seq RemovedBody605_217 RemovedBody605_218

def RemovedBody605_220 : StackLang.HolProg 64 :=
.seq RemovedBody605_212 RemovedBody605_219

def RemovedBody605_221 : StackLang.HolProg 64 :=
.seq RemovedBody605_211 RemovedBody605_220

def RemovedBody605_222 : StackLang.HolProg 64 :=
.seq RemovedBody605_210 RemovedBody605_221

def RemovedBody605_223 : StackLang.HolProg 64 :=
.seq RemovedBody605_209 RemovedBody605_222

def RemovedBody605_224 : StackLang.HolProg 64 :=
.seq RemovedBody605_208 RemovedBody605_223

def RemovedBody605_225 : StackLang.HolProg 64 :=
.seq RemovedBody605_207 RemovedBody605_224

def RemovedBody605_226 : StackLang.HolProg 64 :=
.seq RemovedBody605_206 RemovedBody605_225

def RemovedBody605_227 : StackLang.HolProg 64 :=
.seq RemovedBody605_205 RemovedBody605_226

def RemovedBody605_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody605_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody605_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody605_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody605_235 : StackLang.HolProg 64 :=
.seq RemovedBody605_233 RemovedBody605_234

def RemovedBody605_236 : StackLang.HolProg 64 :=
.seq RemovedBody605_232 RemovedBody605_235

def RemovedBody605_237 : StackLang.HolProg 64 :=
.seq RemovedBody605_231 RemovedBody605_236

def RemovedBody605_238 : StackLang.HolProg 64 :=
.seq RemovedBody605_230 RemovedBody605_237

def RemovedBody605_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody605_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody605_241 : StackLang.HolProg 64 :=
.seq RemovedBody605_239 RemovedBody605_240

def RemovedBody605_242 : StackLang.HolProg 64 :=
.call (some (RemovedBody605_238, 0, 605, 6)) (Sum.inl 594) (some (RemovedBody605_241, 605, 7))

def RemovedBody605_243 : StackLang.HolProg 64 :=
.seq RemovedBody605_229 RemovedBody605_242

def RemovedBody605_244 : StackLang.HolProg 64 :=
.seq RemovedBody605_228 RemovedBody605_243

def RemovedBody605_245 : StackLang.HolProg 64 :=
.seq RemovedBody605_227 RemovedBody605_244

def RemovedBody605_246 : StackLang.HolProg 64 :=
.seq RemovedBody605_198 RemovedBody605_245

def RemovedBody605_247 : StackLang.HolProg 64 :=
.seq RemovedBody605_195 RemovedBody605_246

def RemovedBody605_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody605_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody605_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody605_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody605_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody605_253 : StackLang.HolProg 64 :=
.seq RemovedBody605_251 RemovedBody605_252

def RemovedBody605_254 : StackLang.HolProg 64 :=
.seq RemovedBody605_250 RemovedBody605_253

def RemovedBody605_255 : StackLang.HolProg 64 :=
.seq RemovedBody605_249 RemovedBody605_254

def RemovedBody605_256 : StackLang.HolProg 64 :=
.seq RemovedBody605_248 RemovedBody605_255

def RemovedBody605_257 : StackLang.HolProg 64 :=
.seq RemovedBody605_247 RemovedBody605_256

def RemovedBody605_258 : StackLang.HolProg 64 :=
.seq RemovedBody605_194 RemovedBody605_257

def RemovedBody605_259 : StackLang.HolProg 64 :=
.seq RemovedBody605_193 RemovedBody605_258

def RemovedBody605_260 : StackLang.HolProg 64 :=
.seq RemovedBody605_192 RemovedBody605_259

def RemovedBody605_261 : StackLang.HolProg 64 :=
.seq RemovedBody605_17 RemovedBody605_260

def RemovedBody605_262 : StackLang.HolProg 64 :=
.seq RemovedBody605_16 RemovedBody605_261

def RemovedBody605_263 : StackLang.HolProg 64 :=
.seq RemovedBody605_15 RemovedBody605_262

def RemovedBody605_264 : StackLang.HolProg 64 :=
.seq RemovedBody605_14 RemovedBody605_263

def RemovedBody605_265 : StackLang.HolProg 64 :=
.seq RemovedBody605_13 RemovedBody605_264

def RemovedBody605_266 : StackLang.HolProg 64 :=
.seq RemovedBody605_12 RemovedBody605_265

def RemovedBody605_267 : StackLang.HolProg 64 :=
.seq RemovedBody605_11 RemovedBody605_266

def RemovedBody605_268 : StackLang.HolProg 64 :=
.seq RemovedBody605_10 RemovedBody605_267

def RemovedBody605_269 : StackLang.HolProg 64 :=
.seq RemovedBody605_9 RemovedBody605_268

def RemovedBody605_270 : StackLang.HolProg 64 :=
.seq RemovedBody605_8 RemovedBody605_269

def RemovedBody605_271 : StackLang.HolProg 64 :=
.seq RemovedBody605_7 RemovedBody605_270

def RemovedBody605_272 : StackLang.HolProg 64 :=
.seq RemovedBody605_6 RemovedBody605_271

def Removed605 : Nat × StackLang.HolProg 64 := (605, RemovedBody605_272)
theorem Removed605_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc605 = Removed605 := by
  kernel_rfl
#print axioms Removed605_eq
end InitECandidate.Proofs.BackendStages
