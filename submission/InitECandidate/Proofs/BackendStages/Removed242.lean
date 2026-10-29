import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc242
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody242_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody242_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody242_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody242_3 : StackLang.HolProg 64 :=
.seq RemovedBody242_1 RemovedBody242_2

def RemovedBody242_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody242_3 RemovedBody242_4

def RemovedBody242_6 : StackLang.HolProg 64 :=
.seq RemovedBody242_0 RemovedBody242_5

def RemovedBody242_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody242_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody242_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody242_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody242_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody242_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody242_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody242_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody242_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody242_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody242_17 : StackLang.HolProg 64 :=
.seq RemovedBody242_15 RemovedBody242_16

def RemovedBody242_18 : StackLang.HolProg 64 :=
.seq RemovedBody242_14 RemovedBody242_17

def RemovedBody242_19 : StackLang.HolProg 64 :=
.seq RemovedBody242_13 RemovedBody242_18

def RemovedBody242_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 470#64)

def RemovedBody242_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody242_23 : StackLang.HolProg 64 :=
.seq RemovedBody242_21 RemovedBody242_22

def RemovedBody242_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody242_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody242_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody242_27 : StackLang.HolProg 64 :=
.seq RemovedBody242_25 RemovedBody242_26

def RemovedBody242_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody242_27 RemovedBody242_28

def RemovedBody242_30 : StackLang.HolProg 64 :=
.seq RemovedBody242_24 RemovedBody242_29

def RemovedBody242_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody242_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody242_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 3

def RemovedBody242_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody242_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody242_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody242_40 : StackLang.HolProg 64 :=
.seq RemovedBody242_38 RemovedBody242_39

def RemovedBody242_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody242_42 : StackLang.HolProg 64 :=
.seq RemovedBody242_40 RemovedBody242_41

def RemovedBody242_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_44 : StackLang.HolProg 64 :=
.seq RemovedBody242_42 RemovedBody242_43

def RemovedBody242_45 : StackLang.HolProg 64 :=
.seq RemovedBody242_37 RemovedBody242_44

def RemovedBody242_46 : StackLang.HolProg 64 :=
.seq RemovedBody242_36 RemovedBody242_45

def RemovedBody242_47 : StackLang.HolProg 64 :=
.seq RemovedBody242_35 RemovedBody242_46

def RemovedBody242_48 : StackLang.HolProg 64 :=
.seq RemovedBody242_34 RemovedBody242_47

def RemovedBody242_49 : StackLang.HolProg 64 :=
.seq RemovedBody242_33 RemovedBody242_48

def RemovedBody242_50 : StackLang.HolProg 64 :=
.seq RemovedBody242_32 RemovedBody242_49

def RemovedBody242_51 : StackLang.HolProg 64 :=
.seq RemovedBody242_31 RemovedBody242_50

def RemovedBody242_52 : StackLang.HolProg 64 :=
.seq RemovedBody242_30 RemovedBody242_51

def RemovedBody242_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody242_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody242_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody242_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody242_62 : StackLang.HolProg 64 :=
.seq RemovedBody242_60 RemovedBody242_61

def RemovedBody242_63 : StackLang.HolProg 64 :=
.seq RemovedBody242_59 RemovedBody242_62

def RemovedBody242_64 : StackLang.HolProg 64 :=
.seq RemovedBody242_58 RemovedBody242_63

def RemovedBody242_65 : StackLang.HolProg 64 :=
.seq RemovedBody242_57 RemovedBody242_64

def RemovedBody242_66 : StackLang.HolProg 64 :=
.seq RemovedBody242_56 RemovedBody242_65

def RemovedBody242_67 : StackLang.HolProg 64 :=
.seq RemovedBody242_55 RemovedBody242_66

def RemovedBody242_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody242_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody242_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody242_71 : StackLang.HolProg 64 :=
.seq RemovedBody242_69 RemovedBody242_70

def RemovedBody242_72 : StackLang.HolProg 64 :=
.seq RemovedBody242_68 RemovedBody242_71

def RemovedBody242_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody242_74 : StackLang.HolProg 64 :=
.seq RemovedBody242_72 RemovedBody242_73

def RemovedBody242_75 : StackLang.HolProg 64 :=
.call (some (RemovedBody242_67, 0, 242, 2)) (Sum.inl 78) (some (RemovedBody242_74, 242, 3))

def RemovedBody242_76 : StackLang.HolProg 64 :=
.seq RemovedBody242_54 RemovedBody242_75

def RemovedBody242_77 : StackLang.HolProg 64 :=
.seq RemovedBody242_53 RemovedBody242_76

def RemovedBody242_78 : StackLang.HolProg 64 :=
.seq RemovedBody242_52 RemovedBody242_77

def RemovedBody242_79 : StackLang.HolProg 64 :=
.seq RemovedBody242_23 RemovedBody242_78

def RemovedBody242_80 : StackLang.HolProg 64 :=
.seq RemovedBody242_20 RemovedBody242_79

def RemovedBody242_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody242_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody242_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 471#64)

def RemovedBody242_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody242_86 : StackLang.HolProg 64 :=
.seq RemovedBody242_84 RemovedBody242_85

def RemovedBody242_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody242_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody242_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody242_90 : StackLang.HolProg 64 :=
.seq RemovedBody242_88 RemovedBody242_89

def RemovedBody242_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody242_90 RemovedBody242_91

def RemovedBody242_93 : StackLang.HolProg 64 :=
.seq RemovedBody242_87 RemovedBody242_92

def RemovedBody242_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody242_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody242_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 5

def RemovedBody242_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody242_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody242_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody242_103 : StackLang.HolProg 64 :=
.seq RemovedBody242_101 RemovedBody242_102

def RemovedBody242_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody242_105 : StackLang.HolProg 64 :=
.seq RemovedBody242_103 RemovedBody242_104

def RemovedBody242_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_107 : StackLang.HolProg 64 :=
.seq RemovedBody242_105 RemovedBody242_106

def RemovedBody242_108 : StackLang.HolProg 64 :=
.seq RemovedBody242_100 RemovedBody242_107

def RemovedBody242_109 : StackLang.HolProg 64 :=
.seq RemovedBody242_99 RemovedBody242_108

def RemovedBody242_110 : StackLang.HolProg 64 :=
.seq RemovedBody242_98 RemovedBody242_109

def RemovedBody242_111 : StackLang.HolProg 64 :=
.seq RemovedBody242_97 RemovedBody242_110

def RemovedBody242_112 : StackLang.HolProg 64 :=
.seq RemovedBody242_96 RemovedBody242_111

def RemovedBody242_113 : StackLang.HolProg 64 :=
.seq RemovedBody242_95 RemovedBody242_112

def RemovedBody242_114 : StackLang.HolProg 64 :=
.seq RemovedBody242_94 RemovedBody242_113

def RemovedBody242_115 : StackLang.HolProg 64 :=
.seq RemovedBody242_93 RemovedBody242_114

def RemovedBody242_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody242_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody242_123 : StackLang.HolProg 64 :=
.seq RemovedBody242_121 RemovedBody242_122

def RemovedBody242_124 : StackLang.HolProg 64 :=
.seq RemovedBody242_120 RemovedBody242_123

def RemovedBody242_125 : StackLang.HolProg 64 :=
.seq RemovedBody242_119 RemovedBody242_124

def RemovedBody242_126 : StackLang.HolProg 64 :=
.seq RemovedBody242_118 RemovedBody242_125

def RemovedBody242_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody242_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody242_129 : StackLang.HolProg 64 :=
.seq RemovedBody242_127 RemovedBody242_128

def RemovedBody242_130 : StackLang.HolProg 64 :=
.call (some (RemovedBody242_126, 0, 242, 4)) (Sum.inl 77) (some (RemovedBody242_129, 242, 5))

def RemovedBody242_131 : StackLang.HolProg 64 :=
.seq RemovedBody242_117 RemovedBody242_130

def RemovedBody242_132 : StackLang.HolProg 64 :=
.seq RemovedBody242_116 RemovedBody242_131

def RemovedBody242_133 : StackLang.HolProg 64 :=
.seq RemovedBody242_115 RemovedBody242_132

def RemovedBody242_134 : StackLang.HolProg 64 :=
.seq RemovedBody242_86 RemovedBody242_133

def RemovedBody242_135 : StackLang.HolProg 64 :=
.seq RemovedBody242_83 RemovedBody242_134

def RemovedBody242_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody242_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody242_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody242_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody242_141 : StackLang.HolProg 64 :=
.seq RemovedBody242_139 RemovedBody242_140

def RemovedBody242_142 : StackLang.HolProg 64 :=
.seq RemovedBody242_138 RemovedBody242_141

def RemovedBody242_143 : StackLang.HolProg 64 :=
.seq RemovedBody242_137 RemovedBody242_142

def RemovedBody242_144 : StackLang.HolProg 64 :=
.seq RemovedBody242_136 RemovedBody242_143

def RemovedBody242_145 : StackLang.HolProg 64 :=
.seq RemovedBody242_135 RemovedBody242_144

def RemovedBody242_146 : StackLang.HolProg 64 :=
.seq RemovedBody242_82 RemovedBody242_145

def RemovedBody242_147 : StackLang.HolProg 64 :=
.seq RemovedBody242_81 RemovedBody242_146

def RemovedBody242_148 : StackLang.HolProg 64 :=
.seq RemovedBody242_80 RemovedBody242_147

def RemovedBody242_149 : StackLang.HolProg 64 :=
.seq RemovedBody242_19 RemovedBody242_148

def RemovedBody242_150 : StackLang.HolProg 64 :=
.seq RemovedBody242_12 RemovedBody242_149

def RemovedBody242_151 : StackLang.HolProg 64 :=
.seq RemovedBody242_11 RemovedBody242_150

def RemovedBody242_152 : StackLang.HolProg 64 :=
.seq RemovedBody242_10 RemovedBody242_151

def RemovedBody242_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody242_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody242_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody242_157 : StackLang.HolProg 64 :=
.seq RemovedBody242_155 RemovedBody242_156

def RemovedBody242_158 : StackLang.HolProg 64 :=
.seq RemovedBody242_154 RemovedBody242_157

def RemovedBody242_159 : StackLang.HolProg 64 :=
.seq RemovedBody242_153 RemovedBody242_158

def RemovedBody242_160 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody242_152 RemovedBody242_159

def RemovedBody242_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody242_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody242_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 472#64)

def RemovedBody242_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody242_167 : StackLang.HolProg 64 :=
.seq RemovedBody242_165 RemovedBody242_166

def RemovedBody242_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody242_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody242_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody242_171 : StackLang.HolProg 64 :=
.seq RemovedBody242_169 RemovedBody242_170

def RemovedBody242_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_173 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody242_171 RemovedBody242_172

def RemovedBody242_174 : StackLang.HolProg 64 :=
.seq RemovedBody242_168 RemovedBody242_173

def RemovedBody242_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody242_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody242_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 7

def RemovedBody242_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody242_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody242_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody242_184 : StackLang.HolProg 64 :=
.seq RemovedBody242_182 RemovedBody242_183

def RemovedBody242_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody242_186 : StackLang.HolProg 64 :=
.seq RemovedBody242_184 RemovedBody242_185

def RemovedBody242_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_188 : StackLang.HolProg 64 :=
.seq RemovedBody242_186 RemovedBody242_187

def RemovedBody242_189 : StackLang.HolProg 64 :=
.seq RemovedBody242_181 RemovedBody242_188

def RemovedBody242_190 : StackLang.HolProg 64 :=
.seq RemovedBody242_180 RemovedBody242_189

def RemovedBody242_191 : StackLang.HolProg 64 :=
.seq RemovedBody242_179 RemovedBody242_190

def RemovedBody242_192 : StackLang.HolProg 64 :=
.seq RemovedBody242_178 RemovedBody242_191

def RemovedBody242_193 : StackLang.HolProg 64 :=
.seq RemovedBody242_177 RemovedBody242_192

def RemovedBody242_194 : StackLang.HolProg 64 :=
.seq RemovedBody242_176 RemovedBody242_193

def RemovedBody242_195 : StackLang.HolProg 64 :=
.seq RemovedBody242_175 RemovedBody242_194

def RemovedBody242_196 : StackLang.HolProg 64 :=
.seq RemovedBody242_174 RemovedBody242_195

def RemovedBody242_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody242_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody242_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody242_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody242_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody242_208 : StackLang.HolProg 64 :=
.seq RemovedBody242_206 RemovedBody242_207

def RemovedBody242_209 : StackLang.HolProg 64 :=
.seq RemovedBody242_205 RemovedBody242_208

def RemovedBody242_210 : StackLang.HolProg 64 :=
.seq RemovedBody242_204 RemovedBody242_209

def RemovedBody242_211 : StackLang.HolProg 64 :=
.seq RemovedBody242_203 RemovedBody242_210

def RemovedBody242_212 : StackLang.HolProg 64 :=
.seq RemovedBody242_202 RemovedBody242_211

def RemovedBody242_213 : StackLang.HolProg 64 :=
.seq RemovedBody242_201 RemovedBody242_212

def RemovedBody242_214 : StackLang.HolProg 64 :=
.seq RemovedBody242_200 RemovedBody242_213

def RemovedBody242_215 : StackLang.HolProg 64 :=
.seq RemovedBody242_199 RemovedBody242_214

def RemovedBody242_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody242_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody242_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody242_220 : StackLang.HolProg 64 :=
.seq RemovedBody242_218 RemovedBody242_219

def RemovedBody242_221 : StackLang.HolProg 64 :=
.seq RemovedBody242_217 RemovedBody242_220

def RemovedBody242_222 : StackLang.HolProg 64 :=
.seq RemovedBody242_216 RemovedBody242_221

def RemovedBody242_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody242_224 : StackLang.HolProg 64 :=
.seq RemovedBody242_222 RemovedBody242_223

def RemovedBody242_225 : StackLang.HolProg 64 :=
.call (some (RemovedBody242_215, 0, 242, 6)) (Sum.inl 69) (some (RemovedBody242_224, 242, 7))

def RemovedBody242_226 : StackLang.HolProg 64 :=
.seq RemovedBody242_198 RemovedBody242_225

def RemovedBody242_227 : StackLang.HolProg 64 :=
.seq RemovedBody242_197 RemovedBody242_226

def RemovedBody242_228 : StackLang.HolProg 64 :=
.seq RemovedBody242_196 RemovedBody242_227

def RemovedBody242_229 : StackLang.HolProg 64 :=
.seq RemovedBody242_167 RemovedBody242_228

def RemovedBody242_230 : StackLang.HolProg 64 :=
.seq RemovedBody242_164 RemovedBody242_229

def RemovedBody242_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody242_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody242_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody242_234 : StackLang.HolProg 64 :=
.seq RemovedBody242_232 RemovedBody242_233

def RemovedBody242_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 473#64)

def RemovedBody242_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody242_238 : StackLang.HolProg 64 :=
.seq RemovedBody242_236 RemovedBody242_237

def RemovedBody242_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody242_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody242_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody242_242 : StackLang.HolProg 64 :=
.seq RemovedBody242_240 RemovedBody242_241

def RemovedBody242_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_244 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody242_242 RemovedBody242_243

def RemovedBody242_245 : StackLang.HolProg 64 :=
.seq RemovedBody242_239 RemovedBody242_244

def RemovedBody242_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody242_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody242_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 9

def RemovedBody242_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody242_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody242_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody242_255 : StackLang.HolProg 64 :=
.seq RemovedBody242_253 RemovedBody242_254

def RemovedBody242_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody242_257 : StackLang.HolProg 64 :=
.seq RemovedBody242_255 RemovedBody242_256

def RemovedBody242_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_259 : StackLang.HolProg 64 :=
.seq RemovedBody242_257 RemovedBody242_258

def RemovedBody242_260 : StackLang.HolProg 64 :=
.seq RemovedBody242_252 RemovedBody242_259

def RemovedBody242_261 : StackLang.HolProg 64 :=
.seq RemovedBody242_251 RemovedBody242_260

def RemovedBody242_262 : StackLang.HolProg 64 :=
.seq RemovedBody242_250 RemovedBody242_261

def RemovedBody242_263 : StackLang.HolProg 64 :=
.seq RemovedBody242_249 RemovedBody242_262

def RemovedBody242_264 : StackLang.HolProg 64 :=
.seq RemovedBody242_248 RemovedBody242_263

def RemovedBody242_265 : StackLang.HolProg 64 :=
.seq RemovedBody242_247 RemovedBody242_264

def RemovedBody242_266 : StackLang.HolProg 64 :=
.seq RemovedBody242_246 RemovedBody242_265

def RemovedBody242_267 : StackLang.HolProg 64 :=
.seq RemovedBody242_245 RemovedBody242_266

def RemovedBody242_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody242_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody242_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody242_276 : StackLang.HolProg 64 :=
.seq RemovedBody242_274 RemovedBody242_275

def RemovedBody242_277 : StackLang.HolProg 64 :=
.seq RemovedBody242_273 RemovedBody242_276

def RemovedBody242_278 : StackLang.HolProg 64 :=
.seq RemovedBody242_272 RemovedBody242_277

def RemovedBody242_279 : StackLang.HolProg 64 :=
.seq RemovedBody242_271 RemovedBody242_278

def RemovedBody242_280 : StackLang.HolProg 64 :=
.seq RemovedBody242_270 RemovedBody242_279

def RemovedBody242_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody242_282 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody242_283 : StackLang.HolProg 64 :=
.seq RemovedBody242_281 RemovedBody242_282

def RemovedBody242_284 : StackLang.HolProg 64 :=
.call (some (RemovedBody242_280, 0, 242, 8)) (Sum.inl 241) (some (RemovedBody242_283, 242, 9))

def RemovedBody242_285 : StackLang.HolProg 64 :=
.seq RemovedBody242_269 RemovedBody242_284

def RemovedBody242_286 : StackLang.HolProg 64 :=
.seq RemovedBody242_268 RemovedBody242_285

def RemovedBody242_287 : StackLang.HolProg 64 :=
.seq RemovedBody242_267 RemovedBody242_286

def RemovedBody242_288 : StackLang.HolProg 64 :=
.seq RemovedBody242_238 RemovedBody242_287

def RemovedBody242_289 : StackLang.HolProg 64 :=
.seq RemovedBody242_235 RemovedBody242_288

def RemovedBody242_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody242_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody242_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody242_293 : StackLang.HolProg 64 :=
.seq RemovedBody242_291 RemovedBody242_292

def RemovedBody242_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 474#64)

def RemovedBody242_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody242_297 : StackLang.HolProg 64 :=
.seq RemovedBody242_295 RemovedBody242_296

def RemovedBody242_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody242_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody242_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody242_301 : StackLang.HolProg 64 :=
.seq RemovedBody242_299 RemovedBody242_300

def RemovedBody242_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_303 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody242_301 RemovedBody242_302

def RemovedBody242_304 : StackLang.HolProg 64 :=
.seq RemovedBody242_298 RemovedBody242_303

def RemovedBody242_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody242_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody242_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 11

def RemovedBody242_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody242_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody242_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody242_314 : StackLang.HolProg 64 :=
.seq RemovedBody242_312 RemovedBody242_313

def RemovedBody242_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody242_316 : StackLang.HolProg 64 :=
.seq RemovedBody242_314 RemovedBody242_315

def RemovedBody242_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_318 : StackLang.HolProg 64 :=
.seq RemovedBody242_316 RemovedBody242_317

def RemovedBody242_319 : StackLang.HolProg 64 :=
.seq RemovedBody242_311 RemovedBody242_318

def RemovedBody242_320 : StackLang.HolProg 64 :=
.seq RemovedBody242_310 RemovedBody242_319

def RemovedBody242_321 : StackLang.HolProg 64 :=
.seq RemovedBody242_309 RemovedBody242_320

def RemovedBody242_322 : StackLang.HolProg 64 :=
.seq RemovedBody242_308 RemovedBody242_321

def RemovedBody242_323 : StackLang.HolProg 64 :=
.seq RemovedBody242_307 RemovedBody242_322

def RemovedBody242_324 : StackLang.HolProg 64 :=
.seq RemovedBody242_306 RemovedBody242_323

def RemovedBody242_325 : StackLang.HolProg 64 :=
.seq RemovedBody242_305 RemovedBody242_324

def RemovedBody242_326 : StackLang.HolProg 64 :=
.seq RemovedBody242_304 RemovedBody242_325

def RemovedBody242_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody242_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody242_334 : StackLang.HolProg 64 :=
.seq RemovedBody242_332 RemovedBody242_333

def RemovedBody242_335 : StackLang.HolProg 64 :=
.seq RemovedBody242_331 RemovedBody242_334

def RemovedBody242_336 : StackLang.HolProg 64 :=
.seq RemovedBody242_330 RemovedBody242_335

def RemovedBody242_337 : StackLang.HolProg 64 :=
.seq RemovedBody242_329 RemovedBody242_336

def RemovedBody242_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody242_339 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody242_340 : StackLang.HolProg 64 :=
.seq RemovedBody242_338 RemovedBody242_339

def RemovedBody242_341 : StackLang.HolProg 64 :=
.call (some (RemovedBody242_337, 0, 242, 10)) (Sum.inl 235) (some (RemovedBody242_340, 242, 11))

def RemovedBody242_342 : StackLang.HolProg 64 :=
.seq RemovedBody242_328 RemovedBody242_341

def RemovedBody242_343 : StackLang.HolProg 64 :=
.seq RemovedBody242_327 RemovedBody242_342

def RemovedBody242_344 : StackLang.HolProg 64 :=
.seq RemovedBody242_326 RemovedBody242_343

def RemovedBody242_345 : StackLang.HolProg 64 :=
.seq RemovedBody242_297 RemovedBody242_344

def RemovedBody242_346 : StackLang.HolProg 64 :=
.seq RemovedBody242_294 RemovedBody242_345

def RemovedBody242_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody242_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody242_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 475#64)

def RemovedBody242_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody242_352 : StackLang.HolProg 64 :=
.seq RemovedBody242_350 RemovedBody242_351

def RemovedBody242_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody242_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody242_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody242_356 : StackLang.HolProg 64 :=
.seq RemovedBody242_354 RemovedBody242_355

def RemovedBody242_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_358 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody242_356 RemovedBody242_357

def RemovedBody242_359 : StackLang.HolProg 64 :=
.seq RemovedBody242_353 RemovedBody242_358

def RemovedBody242_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody242_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody242_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 242 13

def RemovedBody242_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody242_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody242_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody242_369 : StackLang.HolProg 64 :=
.seq RemovedBody242_367 RemovedBody242_368

def RemovedBody242_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody242_371 : StackLang.HolProg 64 :=
.seq RemovedBody242_369 RemovedBody242_370

def RemovedBody242_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_373 : StackLang.HolProg 64 :=
.seq RemovedBody242_371 RemovedBody242_372

def RemovedBody242_374 : StackLang.HolProg 64 :=
.seq RemovedBody242_366 RemovedBody242_373

def RemovedBody242_375 : StackLang.HolProg 64 :=
.seq RemovedBody242_365 RemovedBody242_374

def RemovedBody242_376 : StackLang.HolProg 64 :=
.seq RemovedBody242_364 RemovedBody242_375

def RemovedBody242_377 : StackLang.HolProg 64 :=
.seq RemovedBody242_363 RemovedBody242_376

def RemovedBody242_378 : StackLang.HolProg 64 :=
.seq RemovedBody242_362 RemovedBody242_377

def RemovedBody242_379 : StackLang.HolProg 64 :=
.seq RemovedBody242_361 RemovedBody242_378

def RemovedBody242_380 : StackLang.HolProg 64 :=
.seq RemovedBody242_360 RemovedBody242_379

def RemovedBody242_381 : StackLang.HolProg 64 :=
.seq RemovedBody242_359 RemovedBody242_380

def RemovedBody242_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody242_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody242_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody242_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody242_389 : StackLang.HolProg 64 :=
.seq RemovedBody242_387 RemovedBody242_388

def RemovedBody242_390 : StackLang.HolProg 64 :=
.seq RemovedBody242_386 RemovedBody242_389

def RemovedBody242_391 : StackLang.HolProg 64 :=
.seq RemovedBody242_385 RemovedBody242_390

def RemovedBody242_392 : StackLang.HolProg 64 :=
.seq RemovedBody242_384 RemovedBody242_391

def RemovedBody242_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody242_394 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody242_395 : StackLang.HolProg 64 :=
.seq RemovedBody242_393 RemovedBody242_394

def RemovedBody242_396 : StackLang.HolProg 64 :=
.call (some (RemovedBody242_392, 0, 242, 12)) (Sum.inl 70) (some (RemovedBody242_395, 242, 13))

def RemovedBody242_397 : StackLang.HolProg 64 :=
.seq RemovedBody242_383 RemovedBody242_396

def RemovedBody242_398 : StackLang.HolProg 64 :=
.seq RemovedBody242_382 RemovedBody242_397

def RemovedBody242_399 : StackLang.HolProg 64 :=
.seq RemovedBody242_381 RemovedBody242_398

def RemovedBody242_400 : StackLang.HolProg 64 :=
.seq RemovedBody242_352 RemovedBody242_399

def RemovedBody242_401 : StackLang.HolProg 64 :=
.seq RemovedBody242_349 RemovedBody242_400

def RemovedBody242_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody242_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody242_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody242_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody242_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody242_407 : StackLang.HolProg 64 :=
.seq RemovedBody242_405 RemovedBody242_406

def RemovedBody242_408 : StackLang.HolProg 64 :=
.seq RemovedBody242_404 RemovedBody242_407

def RemovedBody242_409 : StackLang.HolProg 64 :=
.seq RemovedBody242_403 RemovedBody242_408

def RemovedBody242_410 : StackLang.HolProg 64 :=
.seq RemovedBody242_402 RemovedBody242_409

def RemovedBody242_411 : StackLang.HolProg 64 :=
.seq RemovedBody242_401 RemovedBody242_410

def RemovedBody242_412 : StackLang.HolProg 64 :=
.seq RemovedBody242_348 RemovedBody242_411

def RemovedBody242_413 : StackLang.HolProg 64 :=
.seq RemovedBody242_347 RemovedBody242_412

def RemovedBody242_414 : StackLang.HolProg 64 :=
.seq RemovedBody242_346 RemovedBody242_413

def RemovedBody242_415 : StackLang.HolProg 64 :=
.seq RemovedBody242_293 RemovedBody242_414

def RemovedBody242_416 : StackLang.HolProg 64 :=
.seq RemovedBody242_290 RemovedBody242_415

def RemovedBody242_417 : StackLang.HolProg 64 :=
.seq RemovedBody242_289 RemovedBody242_416

def RemovedBody242_418 : StackLang.HolProg 64 :=
.seq RemovedBody242_234 RemovedBody242_417

def RemovedBody242_419 : StackLang.HolProg 64 :=
.seq RemovedBody242_231 RemovedBody242_418

def RemovedBody242_420 : StackLang.HolProg 64 :=
.seq RemovedBody242_230 RemovedBody242_419

def RemovedBody242_421 : StackLang.HolProg 64 :=
.seq RemovedBody242_163 RemovedBody242_420

def RemovedBody242_422 : StackLang.HolProg 64 :=
.seq RemovedBody242_162 RemovedBody242_421

def RemovedBody242_423 : StackLang.HolProg 64 :=
.seq RemovedBody242_161 RemovedBody242_422

def RemovedBody242_424 : StackLang.HolProg 64 :=
.seq RemovedBody242_160 RemovedBody242_423

def RemovedBody242_425 : StackLang.HolProg 64 :=
.seq RemovedBody242_9 RemovedBody242_424

def RemovedBody242_426 : StackLang.HolProg 64 :=
.seq RemovedBody242_8 RemovedBody242_425

def RemovedBody242_427 : StackLang.HolProg 64 :=
.seq RemovedBody242_7 RemovedBody242_426

def RemovedBody242_428 : StackLang.HolProg 64 :=
.seq RemovedBody242_6 RemovedBody242_427

def Removed242 : Nat × StackLang.HolProg 64 := (242, RemovedBody242_428)
theorem Removed242_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc242 = Removed242 := by
  kernel_rfl
#print axioms Removed242_eq
end InitECandidate.Proofs.BackendStages
