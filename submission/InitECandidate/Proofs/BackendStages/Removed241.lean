import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc241
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody241_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody241_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody241_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody241_3 : StackLang.HolProg 64 :=
.seq RemovedBody241_1 RemovedBody241_2

def RemovedBody241_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody241_3 RemovedBody241_4

def RemovedBody241_6 : StackLang.HolProg 64 :=
.seq RemovedBody241_0 RemovedBody241_5

def RemovedBody241_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody241_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def RemovedBody241_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody241_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody241_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody241_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody241_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody241_16 : StackLang.HolProg 64 :=
.seq RemovedBody241_14 RemovedBody241_15

def RemovedBody241_17 : StackLang.HolProg 64 :=
.seq RemovedBody241_13 RemovedBody241_16

def RemovedBody241_18 : StackLang.HolProg 64 :=
.seq RemovedBody241_12 RemovedBody241_17

def RemovedBody241_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 467#64)

def RemovedBody241_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody241_22 : StackLang.HolProg 64 :=
.seq RemovedBody241_20 RemovedBody241_21

def RemovedBody241_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody241_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody241_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody241_26 : StackLang.HolProg 64 :=
.seq RemovedBody241_24 RemovedBody241_25

def RemovedBody241_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody241_26 RemovedBody241_27

def RemovedBody241_29 : StackLang.HolProg 64 :=
.seq RemovedBody241_23 RemovedBody241_28

def RemovedBody241_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody241_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody241_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 241 3

def RemovedBody241_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody241_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody241_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody241_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody241_39 : StackLang.HolProg 64 :=
.seq RemovedBody241_37 RemovedBody241_38

def RemovedBody241_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody241_41 : StackLang.HolProg 64 :=
.seq RemovedBody241_39 RemovedBody241_40

def RemovedBody241_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody241_43 : StackLang.HolProg 64 :=
.seq RemovedBody241_41 RemovedBody241_42

def RemovedBody241_44 : StackLang.HolProg 64 :=
.seq RemovedBody241_36 RemovedBody241_43

def RemovedBody241_45 : StackLang.HolProg 64 :=
.seq RemovedBody241_35 RemovedBody241_44

def RemovedBody241_46 : StackLang.HolProg 64 :=
.seq RemovedBody241_34 RemovedBody241_45

def RemovedBody241_47 : StackLang.HolProg 64 :=
.seq RemovedBody241_33 RemovedBody241_46

def RemovedBody241_48 : StackLang.HolProg 64 :=
.seq RemovedBody241_32 RemovedBody241_47

def RemovedBody241_49 : StackLang.HolProg 64 :=
.seq RemovedBody241_31 RemovedBody241_48

def RemovedBody241_50 : StackLang.HolProg 64 :=
.seq RemovedBody241_30 RemovedBody241_49

def RemovedBody241_51 : StackLang.HolProg 64 :=
.seq RemovedBody241_29 RemovedBody241_50

def RemovedBody241_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody241_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody241_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody241_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody241_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_61 : StackLang.HolProg 64 :=
.seq RemovedBody241_59 RemovedBody241_60

def RemovedBody241_62 : StackLang.HolProg 64 :=
.seq RemovedBody241_58 RemovedBody241_61

def RemovedBody241_63 : StackLang.HolProg 64 :=
.seq RemovedBody241_57 RemovedBody241_62

def RemovedBody241_64 : StackLang.HolProg 64 :=
.seq RemovedBody241_56 RemovedBody241_63

def RemovedBody241_65 : StackLang.HolProg 64 :=
.seq RemovedBody241_55 RemovedBody241_64

def RemovedBody241_66 : StackLang.HolProg 64 :=
.seq RemovedBody241_54 RemovedBody241_65

def RemovedBody241_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody241_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_69 : StackLang.HolProg 64 :=
.seq RemovedBody241_67 RemovedBody241_68

def RemovedBody241_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody241_71 : StackLang.HolProg 64 :=
.seq RemovedBody241_69 RemovedBody241_70

def RemovedBody241_72 : StackLang.HolProg 64 :=
.call (some (RemovedBody241_66, 0, 241, 2)) (Sum.inl 68) (some (RemovedBody241_71, 241, 3))

def RemovedBody241_73 : StackLang.HolProg 64 :=
.seq RemovedBody241_53 RemovedBody241_72

def RemovedBody241_74 : StackLang.HolProg 64 :=
.seq RemovedBody241_52 RemovedBody241_73

def RemovedBody241_75 : StackLang.HolProg 64 :=
.seq RemovedBody241_51 RemovedBody241_74

def RemovedBody241_76 : StackLang.HolProg 64 :=
.seq RemovedBody241_22 RemovedBody241_75

def RemovedBody241_77 : StackLang.HolProg 64 :=
.seq RemovedBody241_19 RemovedBody241_76

def RemovedBody241_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody241_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody241_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody241_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_82 : StackLang.HolProg 64 :=
.seq RemovedBody241_80 RemovedBody241_81

def RemovedBody241_83 : StackLang.HolProg 64 :=
.seq RemovedBody241_79 RemovedBody241_82

def RemovedBody241_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 468#64)

def RemovedBody241_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody241_87 : StackLang.HolProg 64 :=
.seq RemovedBody241_85 RemovedBody241_86

def RemovedBody241_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody241_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody241_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody241_91 : StackLang.HolProg 64 :=
.seq RemovedBody241_89 RemovedBody241_90

def RemovedBody241_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody241_91 RemovedBody241_92

def RemovedBody241_94 : StackLang.HolProg 64 :=
.seq RemovedBody241_88 RemovedBody241_93

def RemovedBody241_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody241_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody241_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 241 5

def RemovedBody241_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody241_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody241_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody241_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody241_104 : StackLang.HolProg 64 :=
.seq RemovedBody241_102 RemovedBody241_103

def RemovedBody241_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody241_106 : StackLang.HolProg 64 :=
.seq RemovedBody241_104 RemovedBody241_105

def RemovedBody241_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody241_108 : StackLang.HolProg 64 :=
.seq RemovedBody241_106 RemovedBody241_107

def RemovedBody241_109 : StackLang.HolProg 64 :=
.seq RemovedBody241_101 RemovedBody241_108

def RemovedBody241_110 : StackLang.HolProg 64 :=
.seq RemovedBody241_100 RemovedBody241_109

def RemovedBody241_111 : StackLang.HolProg 64 :=
.seq RemovedBody241_99 RemovedBody241_110

def RemovedBody241_112 : StackLang.HolProg 64 :=
.seq RemovedBody241_98 RemovedBody241_111

def RemovedBody241_113 : StackLang.HolProg 64 :=
.seq RemovedBody241_97 RemovedBody241_112

def RemovedBody241_114 : StackLang.HolProg 64 :=
.seq RemovedBody241_96 RemovedBody241_113

def RemovedBody241_115 : StackLang.HolProg 64 :=
.seq RemovedBody241_95 RemovedBody241_114

def RemovedBody241_116 : StackLang.HolProg 64 :=
.seq RemovedBody241_94 RemovedBody241_115

def RemovedBody241_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody241_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody241_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody241_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody241_126 : StackLang.HolProg 64 :=
.seq RemovedBody241_124 RemovedBody241_125

def RemovedBody241_127 : StackLang.HolProg 64 :=
.seq RemovedBody241_123 RemovedBody241_126

def RemovedBody241_128 : StackLang.HolProg 64 :=
.seq RemovedBody241_122 RemovedBody241_127

def RemovedBody241_129 : StackLang.HolProg 64 :=
.seq RemovedBody241_121 RemovedBody241_128

def RemovedBody241_130 : StackLang.HolProg 64 :=
.seq RemovedBody241_120 RemovedBody241_129

def RemovedBody241_131 : StackLang.HolProg 64 :=
.seq RemovedBody241_119 RemovedBody241_130

def RemovedBody241_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody241_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody241_135 : StackLang.HolProg 64 :=
.seq RemovedBody241_133 RemovedBody241_134

def RemovedBody241_136 : StackLang.HolProg 64 :=
.seq RemovedBody241_132 RemovedBody241_135

def RemovedBody241_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody241_138 : StackLang.HolProg 64 :=
.seq RemovedBody241_136 RemovedBody241_137

def RemovedBody241_139 : StackLang.HolProg 64 :=
.call (some (RemovedBody241_131, 0, 241, 4)) (Sum.inl 77) (some (RemovedBody241_138, 241, 5))

def RemovedBody241_140 : StackLang.HolProg 64 :=
.seq RemovedBody241_118 RemovedBody241_139

def RemovedBody241_141 : StackLang.HolProg 64 :=
.seq RemovedBody241_117 RemovedBody241_140

def RemovedBody241_142 : StackLang.HolProg 64 :=
.seq RemovedBody241_116 RemovedBody241_141

def RemovedBody241_143 : StackLang.HolProg 64 :=
.seq RemovedBody241_87 RemovedBody241_142

def RemovedBody241_144 : StackLang.HolProg 64 :=
.seq RemovedBody241_84 RemovedBody241_143

def RemovedBody241_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody241_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody241_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody241_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody241_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody241_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_154 : StackLang.HolProg 64 :=
.seq RemovedBody241_152 RemovedBody241_153

def RemovedBody241_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 469#64)

def RemovedBody241_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody241_158 : StackLang.HolProg 64 :=
.seq RemovedBody241_156 RemovedBody241_157

def RemovedBody241_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody241_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody241_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody241_162 : StackLang.HolProg 64 :=
.seq RemovedBody241_160 RemovedBody241_161

def RemovedBody241_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody241_162 RemovedBody241_163

def RemovedBody241_165 : StackLang.HolProg 64 :=
.seq RemovedBody241_159 RemovedBody241_164

def RemovedBody241_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody241_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody241_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 241 7

def RemovedBody241_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody241_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody241_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody241_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody241_175 : StackLang.HolProg 64 :=
.seq RemovedBody241_173 RemovedBody241_174

def RemovedBody241_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody241_177 : StackLang.HolProg 64 :=
.seq RemovedBody241_175 RemovedBody241_176

def RemovedBody241_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody241_179 : StackLang.HolProg 64 :=
.seq RemovedBody241_177 RemovedBody241_178

def RemovedBody241_180 : StackLang.HolProg 64 :=
.seq RemovedBody241_172 RemovedBody241_179

def RemovedBody241_181 : StackLang.HolProg 64 :=
.seq RemovedBody241_171 RemovedBody241_180

def RemovedBody241_182 : StackLang.HolProg 64 :=
.seq RemovedBody241_170 RemovedBody241_181

def RemovedBody241_183 : StackLang.HolProg 64 :=
.seq RemovedBody241_169 RemovedBody241_182

def RemovedBody241_184 : StackLang.HolProg 64 :=
.seq RemovedBody241_168 RemovedBody241_183

def RemovedBody241_185 : StackLang.HolProg 64 :=
.seq RemovedBody241_167 RemovedBody241_184

def RemovedBody241_186 : StackLang.HolProg 64 :=
.seq RemovedBody241_166 RemovedBody241_185

def RemovedBody241_187 : StackLang.HolProg 64 :=
.seq RemovedBody241_165 RemovedBody241_186

def RemovedBody241_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody241_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody241_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody241_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody241_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody241_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_197 : StackLang.HolProg 64 :=
.seq RemovedBody241_195 RemovedBody241_196

def RemovedBody241_198 : StackLang.HolProg 64 :=
.seq RemovedBody241_194 RemovedBody241_197

def RemovedBody241_199 : StackLang.HolProg 64 :=
.seq RemovedBody241_193 RemovedBody241_198

def RemovedBody241_200 : StackLang.HolProg 64 :=
.seq RemovedBody241_192 RemovedBody241_199

def RemovedBody241_201 : StackLang.HolProg 64 :=
.seq RemovedBody241_191 RemovedBody241_200

def RemovedBody241_202 : StackLang.HolProg 64 :=
.seq RemovedBody241_190 RemovedBody241_201

def RemovedBody241_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody241_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody241_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody241_206 : StackLang.HolProg 64 :=
.seq RemovedBody241_204 RemovedBody241_205

def RemovedBody241_207 : StackLang.HolProg 64 :=
.seq RemovedBody241_203 RemovedBody241_206

def RemovedBody241_208 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody241_209 : StackLang.HolProg 64 :=
.seq RemovedBody241_207 RemovedBody241_208

def RemovedBody241_210 : StackLang.HolProg 64 :=
.call (some (RemovedBody241_202, 0, 241, 6)) (Sum.inl 78) (some (RemovedBody241_209, 241, 7))

def RemovedBody241_211 : StackLang.HolProg 64 :=
.seq RemovedBody241_189 RemovedBody241_210

def RemovedBody241_212 : StackLang.HolProg 64 :=
.seq RemovedBody241_188 RemovedBody241_211

def RemovedBody241_213 : StackLang.HolProg 64 :=
.seq RemovedBody241_187 RemovedBody241_212

def RemovedBody241_214 : StackLang.HolProg 64 :=
.seq RemovedBody241_158 RemovedBody241_213

def RemovedBody241_215 : StackLang.HolProg 64 :=
.seq RemovedBody241_155 RemovedBody241_214

def RemovedBody241_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody241_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody241_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody241_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody241_220 : StackLang.HolProg 64 :=
.seq RemovedBody241_218 RemovedBody241_219

def RemovedBody241_221 : StackLang.HolProg 64 :=
.seq RemovedBody241_217 RemovedBody241_220

def RemovedBody241_222 : StackLang.HolProg 64 :=
.seq RemovedBody241_216 RemovedBody241_221

def RemovedBody241_223 : StackLang.HolProg 64 :=
.seq RemovedBody241_215 RemovedBody241_222

def RemovedBody241_224 : StackLang.HolProg 64 :=
.seq RemovedBody241_154 RemovedBody241_223

def RemovedBody241_225 : StackLang.HolProg 64 :=
.seq RemovedBody241_151 RemovedBody241_224

def RemovedBody241_226 : StackLang.HolProg 64 :=
.seq RemovedBody241_150 RemovedBody241_225

def RemovedBody241_227 : StackLang.HolProg 64 :=
.seq RemovedBody241_149 RemovedBody241_226

def RemovedBody241_228 : StackLang.HolProg 64 :=
.seq RemovedBody241_148 RemovedBody241_227

def RemovedBody241_229 : StackLang.HolProg 64 :=
.seq RemovedBody241_147 RemovedBody241_228

def RemovedBody241_230 : StackLang.HolProg 64 :=
.seq RemovedBody241_146 RemovedBody241_229

def RemovedBody241_231 : StackLang.HolProg 64 :=
.seq RemovedBody241_145 RemovedBody241_230

def RemovedBody241_232 : StackLang.HolProg 64 :=
.seq RemovedBody241_144 RemovedBody241_231

def RemovedBody241_233 : StackLang.HolProg 64 :=
.seq RemovedBody241_83 RemovedBody241_232

def RemovedBody241_234 : StackLang.HolProg 64 :=
.seq RemovedBody241_78 RemovedBody241_233

def RemovedBody241_235 : StackLang.HolProg 64 :=
.seq RemovedBody241_77 RemovedBody241_234

def RemovedBody241_236 : StackLang.HolProg 64 :=
.seq RemovedBody241_18 RemovedBody241_235

def RemovedBody241_237 : StackLang.HolProg 64 :=
.seq RemovedBody241_11 RemovedBody241_236

def RemovedBody241_238 : StackLang.HolProg 64 :=
.seq RemovedBody241_10 RemovedBody241_237

def RemovedBody241_239 : StackLang.HolProg 64 :=
.seq RemovedBody241_9 RemovedBody241_238

def RemovedBody241_240 : StackLang.HolProg 64 :=
.seq RemovedBody241_8 RemovedBody241_239

def RemovedBody241_241 : StackLang.HolProg 64 :=
.seq RemovedBody241_7 RemovedBody241_240

def RemovedBody241_242 : StackLang.HolProg 64 :=
.seq RemovedBody241_6 RemovedBody241_241

def Removed241 : Nat × StackLang.HolProg 64 := (241, RemovedBody241_242)
theorem Removed241_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc241 = Removed241 := by
  kernel_rfl
#print axioms Removed241_eq
end InitECandidate.Proofs.BackendStages
