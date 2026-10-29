import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc472
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody472_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody472_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody472_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody472_3 : StackLang.HolProg 64 :=
.seq RemovedBody472_1 RemovedBody472_2

def RemovedBody472_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody472_3 RemovedBody472_4

def RemovedBody472_6 : StackLang.HolProg 64 :=
.seq RemovedBody472_0 RemovedBody472_5

def RemovedBody472_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody472_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody472_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody472_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody472_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 192#64))

def RemovedBody472_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody472_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody472_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody472_16 : StackLang.HolProg 64 :=
.seq RemovedBody472_14 RemovedBody472_15

def RemovedBody472_17 : StackLang.HolProg 64 :=
.seq RemovedBody472_13 RemovedBody472_16

def RemovedBody472_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1495#64)

def RemovedBody472_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody472_21 : StackLang.HolProg 64 :=
.seq RemovedBody472_19 RemovedBody472_20

def RemovedBody472_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody472_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody472_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody472_25 : StackLang.HolProg 64 :=
.seq RemovedBody472_23 RemovedBody472_24

def RemovedBody472_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody472_25 RemovedBody472_26

def RemovedBody472_28 : StackLang.HolProg 64 :=
.seq RemovedBody472_22 RemovedBody472_27

def RemovedBody472_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody472_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody472_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 472 3

def RemovedBody472_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody472_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody472_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody472_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody472_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody472_38 : StackLang.HolProg 64 :=
.seq RemovedBody472_36 RemovedBody472_37

def RemovedBody472_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody472_40 : StackLang.HolProg 64 :=
.seq RemovedBody472_38 RemovedBody472_39

def RemovedBody472_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody472_42 : StackLang.HolProg 64 :=
.seq RemovedBody472_40 RemovedBody472_41

def RemovedBody472_43 : StackLang.HolProg 64 :=
.seq RemovedBody472_35 RemovedBody472_42

def RemovedBody472_44 : StackLang.HolProg 64 :=
.seq RemovedBody472_34 RemovedBody472_43

def RemovedBody472_45 : StackLang.HolProg 64 :=
.seq RemovedBody472_33 RemovedBody472_44

def RemovedBody472_46 : StackLang.HolProg 64 :=
.seq RemovedBody472_32 RemovedBody472_45

def RemovedBody472_47 : StackLang.HolProg 64 :=
.seq RemovedBody472_31 RemovedBody472_46

def RemovedBody472_48 : StackLang.HolProg 64 :=
.seq RemovedBody472_30 RemovedBody472_47

def RemovedBody472_49 : StackLang.HolProg 64 :=
.seq RemovedBody472_29 RemovedBody472_48

def RemovedBody472_50 : StackLang.HolProg 64 :=
.seq RemovedBody472_28 RemovedBody472_49

def RemovedBody472_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody472_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody472_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody472_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody472_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody472_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody472_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody472_61 : StackLang.HolProg 64 :=
.seq RemovedBody472_59 RemovedBody472_60

def RemovedBody472_62 : StackLang.HolProg 64 :=
.seq RemovedBody472_58 RemovedBody472_61

def RemovedBody472_63 : StackLang.HolProg 64 :=
.seq RemovedBody472_57 RemovedBody472_62

def RemovedBody472_64 : StackLang.HolProg 64 :=
.seq RemovedBody472_56 RemovedBody472_63

def RemovedBody472_65 : StackLang.HolProg 64 :=
.seq RemovedBody472_55 RemovedBody472_64

def RemovedBody472_66 : StackLang.HolProg 64 :=
.seq RemovedBody472_54 RemovedBody472_65

def RemovedBody472_67 : StackLang.HolProg 64 :=
.seq RemovedBody472_53 RemovedBody472_66

def RemovedBody472_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody472_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody472_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody472_71 : StackLang.HolProg 64 :=
.seq RemovedBody472_69 RemovedBody472_70

def RemovedBody472_72 : StackLang.HolProg 64 :=
.seq RemovedBody472_68 RemovedBody472_71

def RemovedBody472_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody472_74 : StackLang.HolProg 64 :=
.seq RemovedBody472_72 RemovedBody472_73

def RemovedBody472_75 : StackLang.HolProg 64 :=
.call (some (RemovedBody472_67, 0, 472, 2)) (Sum.inl 92) (some (RemovedBody472_74, 472, 3))

def RemovedBody472_76 : StackLang.HolProg 64 :=
.seq RemovedBody472_52 RemovedBody472_75

def RemovedBody472_77 : StackLang.HolProg 64 :=
.seq RemovedBody472_51 RemovedBody472_76

def RemovedBody472_78 : StackLang.HolProg 64 :=
.seq RemovedBody472_50 RemovedBody472_77

def RemovedBody472_79 : StackLang.HolProg 64 :=
.seq RemovedBody472_21 RemovedBody472_78

def RemovedBody472_80 : StackLang.HolProg 64 :=
.seq RemovedBody472_18 RemovedBody472_79

def RemovedBody472_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody472_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody472_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody472_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody472_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody472_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody472_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def RemovedBody472_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody472_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody472_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody472_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody472_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody472_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody472_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody472_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody472_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody472_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 72#64))

def RemovedBody472_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody472_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody472_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody472_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody472_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody472_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody472_113 : StackLang.HolProg 64 :=
.seq RemovedBody472_111 RemovedBody472_112

def RemovedBody472_114 : StackLang.HolProg 64 :=
.seq RemovedBody472_110 RemovedBody472_113

def RemovedBody472_115 : StackLang.HolProg 64 :=
.seq RemovedBody472_109 RemovedBody472_114

def RemovedBody472_116 : StackLang.HolProg 64 :=
.seq RemovedBody472_108 RemovedBody472_115

def RemovedBody472_117 : StackLang.HolProg 64 :=
.seq RemovedBody472_107 RemovedBody472_116

def RemovedBody472_118 : StackLang.HolProg 64 :=
.seq RemovedBody472_106 RemovedBody472_117

def RemovedBody472_119 : StackLang.HolProg 64 :=
.seq RemovedBody472_105 RemovedBody472_118

def RemovedBody472_120 : StackLang.HolProg 64 :=
.seq RemovedBody472_104 RemovedBody472_119

def RemovedBody472_121 : StackLang.HolProg 64 :=
.seq RemovedBody472_103 RemovedBody472_120

def RemovedBody472_122 : StackLang.HolProg 64 :=
.seq RemovedBody472_102 RemovedBody472_121

def RemovedBody472_123 : StackLang.HolProg 64 :=
.seq RemovedBody472_101 RemovedBody472_122

def RemovedBody472_124 : StackLang.HolProg 64 :=
.seq RemovedBody472_100 RemovedBody472_123

def RemovedBody472_125 : StackLang.HolProg 64 :=
.seq RemovedBody472_99 RemovedBody472_124

def RemovedBody472_126 : StackLang.HolProg 64 :=
.seq RemovedBody472_98 RemovedBody472_125

def RemovedBody472_127 : StackLang.HolProg 64 :=
.seq RemovedBody472_97 RemovedBody472_126

def RemovedBody472_128 : StackLang.HolProg 64 :=
.seq RemovedBody472_96 RemovedBody472_127

def RemovedBody472_129 : StackLang.HolProg 64 :=
.seq RemovedBody472_95 RemovedBody472_128

def RemovedBody472_130 : StackLang.HolProg 64 :=
.seq RemovedBody472_94 RemovedBody472_129

def RemovedBody472_131 : StackLang.HolProg 64 :=
.seq RemovedBody472_93 RemovedBody472_130

def RemovedBody472_132 : StackLang.HolProg 64 :=
.seq RemovedBody472_92 RemovedBody472_131

def RemovedBody472_133 : StackLang.HolProg 64 :=
.seq RemovedBody472_91 RemovedBody472_132

def RemovedBody472_134 : StackLang.HolProg 64 :=
.seq RemovedBody472_90 RemovedBody472_133

def RemovedBody472_135 : StackLang.HolProg 64 :=
.seq RemovedBody472_89 RemovedBody472_134

def RemovedBody472_136 : StackLang.HolProg 64 :=
.seq RemovedBody472_88 RemovedBody472_135

def RemovedBody472_137 : StackLang.HolProg 64 :=
.seq RemovedBody472_87 RemovedBody472_136

def RemovedBody472_138 : StackLang.HolProg 64 :=
.seq RemovedBody472_86 RemovedBody472_137

def RemovedBody472_139 : StackLang.HolProg 64 :=
.seq RemovedBody472_85 RemovedBody472_138

def RemovedBody472_140 : StackLang.HolProg 64 :=
.seq RemovedBody472_84 RemovedBody472_139

def RemovedBody472_141 : StackLang.HolProg 64 :=
.seq RemovedBody472_83 RemovedBody472_140

def RemovedBody472_142 : StackLang.HolProg 64 :=
.seq RemovedBody472_82 RemovedBody472_141

def RemovedBody472_143 : StackLang.HolProg 64 :=
.seq RemovedBody472_81 RemovedBody472_142

def RemovedBody472_144 : StackLang.HolProg 64 :=
.seq RemovedBody472_80 RemovedBody472_143

def RemovedBody472_145 : StackLang.HolProg 64 :=
.seq RemovedBody472_17 RemovedBody472_144

def RemovedBody472_146 : StackLang.HolProg 64 :=
.seq RemovedBody472_12 RemovedBody472_145

def RemovedBody472_147 : StackLang.HolProg 64 :=
.seq RemovedBody472_11 RemovedBody472_146

def RemovedBody472_148 : StackLang.HolProg 64 :=
.seq RemovedBody472_10 RemovedBody472_147

def RemovedBody472_149 : StackLang.HolProg 64 :=
.seq RemovedBody472_9 RemovedBody472_148

def RemovedBody472_150 : StackLang.HolProg 64 :=
.seq RemovedBody472_8 RemovedBody472_149

def RemovedBody472_151 : StackLang.HolProg 64 :=
.seq RemovedBody472_7 RemovedBody472_150

def RemovedBody472_152 : StackLang.HolProg 64 :=
.seq RemovedBody472_6 RemovedBody472_151

def Removed472 : Nat × StackLang.HolProg 64 := (472, RemovedBody472_152)
theorem Removed472_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc472 = Removed472 := by
  kernel_rfl
#print axioms Removed472_eq
end InitECandidate.Proofs.BackendStages
