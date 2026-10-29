import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc842
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody842_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def RemovedBody842_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody842_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody842_3 : StackLang.HolProg 64 :=
.seq RemovedBody842_1 RemovedBody842_2

def RemovedBody842_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody842_3 RemovedBody842_4

def RemovedBody842_6 : StackLang.HolProg 64 :=
.seq RemovedBody842_0 RemovedBody842_5

def RemovedBody842_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody842_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody842_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody842_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def RemovedBody842_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody842_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody842_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_18 : StackLang.HolProg 64 :=
.seq RemovedBody842_16 RemovedBody842_17

def RemovedBody842_19 : StackLang.HolProg 64 :=
.seq RemovedBody842_15 RemovedBody842_18

def RemovedBody842_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody842_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody842_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody842_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody842_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def RemovedBody842_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody842_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def RemovedBody842_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_34 : StackLang.HolProg 64 :=
.seq RemovedBody842_32 RemovedBody842_33

def RemovedBody842_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_38 : StackLang.HolProg 64 :=
.seq RemovedBody842_36 RemovedBody842_37

def RemovedBody842_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody842_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody842_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_44 : StackLang.HolProg 64 :=
.seq RemovedBody842_42 RemovedBody842_43

def RemovedBody842_45 : StackLang.HolProg 64 :=
.seq RemovedBody842_41 RemovedBody842_44

def RemovedBody842_46 : StackLang.HolProg 64 :=
.seq RemovedBody842_40 RemovedBody842_45

def RemovedBody842_47 : StackLang.HolProg 64 :=
.seq RemovedBody842_39 RemovedBody842_46

def RemovedBody842_48 : StackLang.HolProg 64 :=
.seq RemovedBody842_38 RemovedBody842_47

def RemovedBody842_49 : StackLang.HolProg 64 :=
.seq RemovedBody842_35 RemovedBody842_48

def RemovedBody842_50 : StackLang.HolProg 64 :=
.seq RemovedBody842_34 RemovedBody842_49

def RemovedBody842_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4209#64)

def RemovedBody842_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody842_54 : StackLang.HolProg 64 :=
.seq RemovedBody842_52 RemovedBody842_53

def RemovedBody842_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody842_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody842_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody842_58 : StackLang.HolProg 64 :=
.seq RemovedBody842_56 RemovedBody842_57

def RemovedBody842_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_60 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody842_58 RemovedBody842_59

def RemovedBody842_61 : StackLang.HolProg 64 :=
.seq RemovedBody842_55 RemovedBody842_60

def RemovedBody842_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody842_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody842_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 3

def RemovedBody842_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody842_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody842_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody842_71 : StackLang.HolProg 64 :=
.seq RemovedBody842_69 RemovedBody842_70

def RemovedBody842_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody842_73 : StackLang.HolProg 64 :=
.seq RemovedBody842_71 RemovedBody842_72

def RemovedBody842_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_75 : StackLang.HolProg 64 :=
.seq RemovedBody842_73 RemovedBody842_74

def RemovedBody842_76 : StackLang.HolProg 64 :=
.seq RemovedBody842_68 RemovedBody842_75

def RemovedBody842_77 : StackLang.HolProg 64 :=
.seq RemovedBody842_67 RemovedBody842_76

def RemovedBody842_78 : StackLang.HolProg 64 :=
.seq RemovedBody842_66 RemovedBody842_77

def RemovedBody842_79 : StackLang.HolProg 64 :=
.seq RemovedBody842_65 RemovedBody842_78

def RemovedBody842_80 : StackLang.HolProg 64 :=
.seq RemovedBody842_64 RemovedBody842_79

def RemovedBody842_81 : StackLang.HolProg 64 :=
.seq RemovedBody842_63 RemovedBody842_80

def RemovedBody842_82 : StackLang.HolProg 64 :=
.seq RemovedBody842_62 RemovedBody842_81

def RemovedBody842_83 : StackLang.HolProg 64 :=
.seq RemovedBody842_61 RemovedBody842_82

def RemovedBody842_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody842_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody842_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody842_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody842_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody842_95 : StackLang.HolProg 64 :=
.seq RemovedBody842_93 RemovedBody842_94

def RemovedBody842_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody842_98 : StackLang.HolProg 64 :=
.seq RemovedBody842_96 RemovedBody842_97

def RemovedBody842_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_101 : StackLang.HolProg 64 :=
.seq RemovedBody842_99 RemovedBody842_100

def RemovedBody842_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_104 : StackLang.HolProg 64 :=
.seq RemovedBody842_102 RemovedBody842_103

def RemovedBody842_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_107 : StackLang.HolProg 64 :=
.seq RemovedBody842_105 RemovedBody842_106

def RemovedBody842_108 : StackLang.HolProg 64 :=
.seq RemovedBody842_104 RemovedBody842_107

def RemovedBody842_109 : StackLang.HolProg 64 :=
.seq RemovedBody842_101 RemovedBody842_108

def RemovedBody842_110 : StackLang.HolProg 64 :=
.seq RemovedBody842_98 RemovedBody842_109

def RemovedBody842_111 : StackLang.HolProg 64 :=
.seq RemovedBody842_95 RemovedBody842_110

def RemovedBody842_112 : StackLang.HolProg 64 :=
.seq RemovedBody842_92 RemovedBody842_111

def RemovedBody842_113 : StackLang.HolProg 64 :=
.seq RemovedBody842_91 RemovedBody842_112

def RemovedBody842_114 : StackLang.HolProg 64 :=
.seq RemovedBody842_90 RemovedBody842_113

def RemovedBody842_115 : StackLang.HolProg 64 :=
.seq RemovedBody842_89 RemovedBody842_114

def RemovedBody842_116 : StackLang.HolProg 64 :=
.seq RemovedBody842_88 RemovedBody842_115

def RemovedBody842_117 : StackLang.HolProg 64 :=
.seq RemovedBody842_87 RemovedBody842_116

def RemovedBody842_118 : StackLang.HolProg 64 :=
.seq RemovedBody842_86 RemovedBody842_117

def RemovedBody842_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody842_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody842_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody842_123 : StackLang.HolProg 64 :=
.seq RemovedBody842_121 RemovedBody842_122

def RemovedBody842_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody842_126 : StackLang.HolProg 64 :=
.seq RemovedBody842_124 RemovedBody842_125

def RemovedBody842_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_129 : StackLang.HolProg 64 :=
.seq RemovedBody842_127 RemovedBody842_128

def RemovedBody842_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_132 : StackLang.HolProg 64 :=
.seq RemovedBody842_130 RemovedBody842_131

def RemovedBody842_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_135 : StackLang.HolProg 64 :=
.seq RemovedBody842_133 RemovedBody842_134

def RemovedBody842_136 : StackLang.HolProg 64 :=
.seq RemovedBody842_132 RemovedBody842_135

def RemovedBody842_137 : StackLang.HolProg 64 :=
.seq RemovedBody842_129 RemovedBody842_136

def RemovedBody842_138 : StackLang.HolProg 64 :=
.seq RemovedBody842_126 RemovedBody842_137

def RemovedBody842_139 : StackLang.HolProg 64 :=
.seq RemovedBody842_123 RemovedBody842_138

def RemovedBody842_140 : StackLang.HolProg 64 :=
.seq RemovedBody842_120 RemovedBody842_139

def RemovedBody842_141 : StackLang.HolProg 64 :=
.seq RemovedBody842_119 RemovedBody842_140

def RemovedBody842_142 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody842_143 : StackLang.HolProg 64 :=
.seq RemovedBody842_141 RemovedBody842_142

def RemovedBody842_144 : StackLang.HolProg 64 :=
.call (some (RemovedBody842_118, 0, 842, 2)) (Sum.inl 176) (some (RemovedBody842_143, 842, 3))

def RemovedBody842_145 : StackLang.HolProg 64 :=
.seq RemovedBody842_85 RemovedBody842_144

def RemovedBody842_146 : StackLang.HolProg 64 :=
.seq RemovedBody842_84 RemovedBody842_145

def RemovedBody842_147 : StackLang.HolProg 64 :=
.seq RemovedBody842_83 RemovedBody842_146

def RemovedBody842_148 : StackLang.HolProg 64 :=
.seq RemovedBody842_54 RemovedBody842_147

def RemovedBody842_149 : StackLang.HolProg 64 :=
.seq RemovedBody842_51 RemovedBody842_148

def RemovedBody842_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody842_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def RemovedBody842_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def RemovedBody842_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody842_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody842_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_162 : StackLang.HolProg 64 :=
.seq RemovedBody842_160 RemovedBody842_161

def RemovedBody842_163 : StackLang.HolProg 64 :=
.seq RemovedBody842_159 RemovedBody842_162

def RemovedBody842_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody842_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody842_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def RemovedBody842_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody842_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody842_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_175 : StackLang.HolProg 64 :=
.seq RemovedBody842_173 RemovedBody842_174

def RemovedBody842_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_178 : StackLang.HolProg 64 :=
.seq RemovedBody842_176 RemovedBody842_177

def RemovedBody842_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_181 : StackLang.HolProg 64 :=
.seq RemovedBody842_179 RemovedBody842_180

def RemovedBody842_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_184 : StackLang.HolProg 64 :=
.seq RemovedBody842_182 RemovedBody842_183

def RemovedBody842_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody842_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody842_188 : StackLang.HolProg 64 :=
.seq RemovedBody842_186 RemovedBody842_187

def RemovedBody842_189 : StackLang.HolProg 64 :=
.seq RemovedBody842_185 RemovedBody842_188

def RemovedBody842_190 : StackLang.HolProg 64 :=
.seq RemovedBody842_184 RemovedBody842_189

def RemovedBody842_191 : StackLang.HolProg 64 :=
.seq RemovedBody842_181 RemovedBody842_190

def RemovedBody842_192 : StackLang.HolProg 64 :=
.seq RemovedBody842_178 RemovedBody842_191

def RemovedBody842_193 : StackLang.HolProg 64 :=
.seq RemovedBody842_175 RemovedBody842_192

def RemovedBody842_194 : StackLang.HolProg 64 :=
.seq RemovedBody842_172 RemovedBody842_193

def RemovedBody842_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4210#64)

def RemovedBody842_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody842_198 : StackLang.HolProg 64 :=
.seq RemovedBody842_196 RemovedBody842_197

def RemovedBody842_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody842_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody842_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody842_202 : StackLang.HolProg 64 :=
.seq RemovedBody842_200 RemovedBody842_201

def RemovedBody842_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody842_202 RemovedBody842_203

def RemovedBody842_205 : StackLang.HolProg 64 :=
.seq RemovedBody842_199 RemovedBody842_204

def RemovedBody842_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody842_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody842_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 5

def RemovedBody842_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody842_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody842_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody842_215 : StackLang.HolProg 64 :=
.seq RemovedBody842_213 RemovedBody842_214

def RemovedBody842_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody842_217 : StackLang.HolProg 64 :=
.seq RemovedBody842_215 RemovedBody842_216

def RemovedBody842_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_219 : StackLang.HolProg 64 :=
.seq RemovedBody842_217 RemovedBody842_218

def RemovedBody842_220 : StackLang.HolProg 64 :=
.seq RemovedBody842_212 RemovedBody842_219

def RemovedBody842_221 : StackLang.HolProg 64 :=
.seq RemovedBody842_211 RemovedBody842_220

def RemovedBody842_222 : StackLang.HolProg 64 :=
.seq RemovedBody842_210 RemovedBody842_221

def RemovedBody842_223 : StackLang.HolProg 64 :=
.seq RemovedBody842_209 RemovedBody842_222

def RemovedBody842_224 : StackLang.HolProg 64 :=
.seq RemovedBody842_208 RemovedBody842_223

def RemovedBody842_225 : StackLang.HolProg 64 :=
.seq RemovedBody842_207 RemovedBody842_224

def RemovedBody842_226 : StackLang.HolProg 64 :=
.seq RemovedBody842_206 RemovedBody842_225

def RemovedBody842_227 : StackLang.HolProg 64 :=
.seq RemovedBody842_205 RemovedBody842_226

def RemovedBody842_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody842_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody842_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody842_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_239 : StackLang.HolProg 64 :=
.seq RemovedBody842_237 RemovedBody842_238

def RemovedBody842_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_242 : StackLang.HolProg 64 :=
.seq RemovedBody842_240 RemovedBody842_241

def RemovedBody842_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_245 : StackLang.HolProg 64 :=
.seq RemovedBody842_243 RemovedBody842_244

def RemovedBody842_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody842_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody842_249 : StackLang.HolProg 64 :=
.seq RemovedBody842_247 RemovedBody842_248

def RemovedBody842_250 : StackLang.HolProg 64 :=
.seq RemovedBody842_246 RemovedBody842_249

def RemovedBody842_251 : StackLang.HolProg 64 :=
.seq RemovedBody842_245 RemovedBody842_250

def RemovedBody842_252 : StackLang.HolProg 64 :=
.seq RemovedBody842_242 RemovedBody842_251

def RemovedBody842_253 : StackLang.HolProg 64 :=
.seq RemovedBody842_239 RemovedBody842_252

def RemovedBody842_254 : StackLang.HolProg 64 :=
.seq RemovedBody842_236 RemovedBody842_253

def RemovedBody842_255 : StackLang.HolProg 64 :=
.seq RemovedBody842_235 RemovedBody842_254

def RemovedBody842_256 : StackLang.HolProg 64 :=
.seq RemovedBody842_234 RemovedBody842_255

def RemovedBody842_257 : StackLang.HolProg 64 :=
.seq RemovedBody842_233 RemovedBody842_256

def RemovedBody842_258 : StackLang.HolProg 64 :=
.seq RemovedBody842_232 RemovedBody842_257

def RemovedBody842_259 : StackLang.HolProg 64 :=
.seq RemovedBody842_231 RemovedBody842_258

def RemovedBody842_260 : StackLang.HolProg 64 :=
.seq RemovedBody842_230 RemovedBody842_259

def RemovedBody842_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody842_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_265 : StackLang.HolProg 64 :=
.seq RemovedBody842_263 RemovedBody842_264

def RemovedBody842_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_268 : StackLang.HolProg 64 :=
.seq RemovedBody842_266 RemovedBody842_267

def RemovedBody842_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_271 : StackLang.HolProg 64 :=
.seq RemovedBody842_269 RemovedBody842_270

def RemovedBody842_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody842_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody842_275 : StackLang.HolProg 64 :=
.seq RemovedBody842_273 RemovedBody842_274

def RemovedBody842_276 : StackLang.HolProg 64 :=
.seq RemovedBody842_272 RemovedBody842_275

def RemovedBody842_277 : StackLang.HolProg 64 :=
.seq RemovedBody842_271 RemovedBody842_276

def RemovedBody842_278 : StackLang.HolProg 64 :=
.seq RemovedBody842_268 RemovedBody842_277

def RemovedBody842_279 : StackLang.HolProg 64 :=
.seq RemovedBody842_265 RemovedBody842_278

def RemovedBody842_280 : StackLang.HolProg 64 :=
.seq RemovedBody842_262 RemovedBody842_279

def RemovedBody842_281 : StackLang.HolProg 64 :=
.seq RemovedBody842_261 RemovedBody842_280

def RemovedBody842_282 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody842_283 : StackLang.HolProg 64 :=
.seq RemovedBody842_281 RemovedBody842_282

def RemovedBody842_284 : StackLang.HolProg 64 :=
.call (some (RemovedBody842_260, 0, 842, 4)) (Sum.inl 176) (some (RemovedBody842_283, 842, 5))

def RemovedBody842_285 : StackLang.HolProg 64 :=
.seq RemovedBody842_229 RemovedBody842_284

def RemovedBody842_286 : StackLang.HolProg 64 :=
.seq RemovedBody842_228 RemovedBody842_285

def RemovedBody842_287 : StackLang.HolProg 64 :=
.seq RemovedBody842_227 RemovedBody842_286

def RemovedBody842_288 : StackLang.HolProg 64 :=
.seq RemovedBody842_198 RemovedBody842_287

def RemovedBody842_289 : StackLang.HolProg 64 :=
.seq RemovedBody842_195 RemovedBody842_288

def RemovedBody842_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody842_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody842_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody842_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_297 : StackLang.HolProg 64 :=
.seq RemovedBody842_295 RemovedBody842_296

def RemovedBody842_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody842_299 : StackLang.HolProg 64 :=
.seq RemovedBody842_297 RemovedBody842_298

def RemovedBody842_300 : StackLang.HolProg 64 :=
.seq RemovedBody842_294 RemovedBody842_299

def RemovedBody842_301 : StackLang.HolProg 64 :=
.seq RemovedBody842_293 RemovedBody842_300

def RemovedBody842_302 : StackLang.HolProg 64 :=
.seq RemovedBody842_292 RemovedBody842_301

def RemovedBody842_303 : StackLang.HolProg 64 :=
.seq RemovedBody842_291 RemovedBody842_302

def RemovedBody842_304 : StackLang.HolProg 64 :=
.seq RemovedBody842_290 RemovedBody842_303

def RemovedBody842_305 : StackLang.HolProg 64 :=
.seq RemovedBody842_289 RemovedBody842_304

def RemovedBody842_306 : StackLang.HolProg 64 :=
.seq RemovedBody842_194 RemovedBody842_305

def RemovedBody842_307 : StackLang.HolProg 64 :=
.seq RemovedBody842_171 RemovedBody842_306

def RemovedBody842_308 : StackLang.HolProg 64 :=
.seq RemovedBody842_170 RemovedBody842_307

def RemovedBody842_309 : StackLang.HolProg 64 :=
.seq RemovedBody842_169 RemovedBody842_308

def RemovedBody842_310 : StackLang.HolProg 64 :=
.seq RemovedBody842_168 RemovedBody842_309

def RemovedBody842_311 : StackLang.HolProg 64 :=
.seq RemovedBody842_167 RemovedBody842_310

def RemovedBody842_312 : StackLang.HolProg 64 :=
.seq RemovedBody842_166 RemovedBody842_311

def RemovedBody842_313 : StackLang.HolProg 64 :=
.seq RemovedBody842_165 RemovedBody842_312

def RemovedBody842_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody842_316 : StackLang.HolProg 64 :=
.seq RemovedBody842_314 RemovedBody842_315

def RemovedBody842_317 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody842_313 RemovedBody842_316

def RemovedBody842_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody842_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody842_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody842_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody842_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_329 : StackLang.HolProg 64 :=
.seq RemovedBody842_327 RemovedBody842_328

def RemovedBody842_330 : StackLang.HolProg 64 :=
.seq RemovedBody842_326 RemovedBody842_329

def RemovedBody842_331 : StackLang.HolProg 64 :=
.seq RemovedBody842_325 RemovedBody842_330

def RemovedBody842_332 : StackLang.HolProg 64 :=
.seq RemovedBody842_324 RemovedBody842_331

def RemovedBody842_333 : StackLang.HolProg 64 :=
.seq RemovedBody842_323 RemovedBody842_332

def RemovedBody842_334 : StackLang.HolProg 64 :=
.seq RemovedBody842_322 RemovedBody842_333

def RemovedBody842_335 : StackLang.HolProg 64 :=
.seq RemovedBody842_321 RemovedBody842_334

def RemovedBody842_336 : StackLang.HolProg 64 :=
.seq RemovedBody842_320 RemovedBody842_335

def RemovedBody842_337 : StackLang.HolProg 64 :=
.seq RemovedBody842_319 RemovedBody842_336

def RemovedBody842_338 : StackLang.HolProg 64 :=
.seq RemovedBody842_318 RemovedBody842_337

def RemovedBody842_339 : StackLang.HolProg 64 :=
.seq RemovedBody842_317 RemovedBody842_338

def RemovedBody842_340 : StackLang.HolProg 64 :=
.seq RemovedBody842_164 RemovedBody842_339

def RemovedBody842_341 : StackLang.HolProg 64 :=
.loop RemovedBody842_340

def RemovedBody842_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4211#64)

def RemovedBody842_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody842_347 : StackLang.HolProg 64 :=
.seq RemovedBody842_345 RemovedBody842_346

def RemovedBody842_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody842_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody842_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody842_351 : StackLang.HolProg 64 :=
.seq RemovedBody842_349 RemovedBody842_350

def RemovedBody842_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_353 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody842_351 RemovedBody842_352

def RemovedBody842_354 : StackLang.HolProg 64 :=
.seq RemovedBody842_348 RemovedBody842_353

def RemovedBody842_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody842_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody842_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 7

def RemovedBody842_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody842_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody842_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody842_364 : StackLang.HolProg 64 :=
.seq RemovedBody842_362 RemovedBody842_363

def RemovedBody842_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody842_366 : StackLang.HolProg 64 :=
.seq RemovedBody842_364 RemovedBody842_365

def RemovedBody842_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_368 : StackLang.HolProg 64 :=
.seq RemovedBody842_366 RemovedBody842_367

def RemovedBody842_369 : StackLang.HolProg 64 :=
.seq RemovedBody842_361 RemovedBody842_368

def RemovedBody842_370 : StackLang.HolProg 64 :=
.seq RemovedBody842_360 RemovedBody842_369

def RemovedBody842_371 : StackLang.HolProg 64 :=
.seq RemovedBody842_359 RemovedBody842_370

def RemovedBody842_372 : StackLang.HolProg 64 :=
.seq RemovedBody842_358 RemovedBody842_371

def RemovedBody842_373 : StackLang.HolProg 64 :=
.seq RemovedBody842_357 RemovedBody842_372

def RemovedBody842_374 : StackLang.HolProg 64 :=
.seq RemovedBody842_356 RemovedBody842_373

def RemovedBody842_375 : StackLang.HolProg 64 :=
.seq RemovedBody842_355 RemovedBody842_374

def RemovedBody842_376 : StackLang.HolProg 64 :=
.seq RemovedBody842_354 RemovedBody842_375

def RemovedBody842_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody842_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody842_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_387 : StackLang.HolProg 64 :=
.seq RemovedBody842_385 RemovedBody842_386

def RemovedBody842_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_389 : StackLang.HolProg 64 :=
.seq RemovedBody842_387 RemovedBody842_388

def RemovedBody842_390 : StackLang.HolProg 64 :=
.seq RemovedBody842_384 RemovedBody842_389

def RemovedBody842_391 : StackLang.HolProg 64 :=
.seq RemovedBody842_383 RemovedBody842_390

def RemovedBody842_392 : StackLang.HolProg 64 :=
.seq RemovedBody842_382 RemovedBody842_391

def RemovedBody842_393 : StackLang.HolProg 64 :=
.seq RemovedBody842_381 RemovedBody842_392

def RemovedBody842_394 : StackLang.HolProg 64 :=
.seq RemovedBody842_380 RemovedBody842_393

def RemovedBody842_395 : StackLang.HolProg 64 :=
.seq RemovedBody842_379 RemovedBody842_394

def RemovedBody842_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_399 : StackLang.HolProg 64 :=
.seq RemovedBody842_397 RemovedBody842_398

def RemovedBody842_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody842_401 : StackLang.HolProg 64 :=
.seq RemovedBody842_399 RemovedBody842_400

def RemovedBody842_402 : StackLang.HolProg 64 :=
.seq RemovedBody842_396 RemovedBody842_401

def RemovedBody842_403 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody842_404 : StackLang.HolProg 64 :=
.seq RemovedBody842_402 RemovedBody842_403

def RemovedBody842_405 : StackLang.HolProg 64 :=
.call (some (RemovedBody842_395, 0, 842, 6)) (Sum.inl 840) (some (RemovedBody842_404, 842, 7))

def RemovedBody842_406 : StackLang.HolProg 64 :=
.seq RemovedBody842_378 RemovedBody842_405

def RemovedBody842_407 : StackLang.HolProg 64 :=
.seq RemovedBody842_377 RemovedBody842_406

def RemovedBody842_408 : StackLang.HolProg 64 :=
.seq RemovedBody842_376 RemovedBody842_407

def RemovedBody842_409 : StackLang.HolProg 64 :=
.seq RemovedBody842_347 RemovedBody842_408

def RemovedBody842_410 : StackLang.HolProg 64 :=
.seq RemovedBody842_344 RemovedBody842_409

def RemovedBody842_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody842_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody842_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody842_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4212#64)

def RemovedBody842_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody842_422 : StackLang.HolProg 64 :=
.seq RemovedBody842_420 RemovedBody842_421

def RemovedBody842_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody842_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody842_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody842_426 : StackLang.HolProg 64 :=
.seq RemovedBody842_424 RemovedBody842_425

def RemovedBody842_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_428 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody842_426 RemovedBody842_427

def RemovedBody842_429 : StackLang.HolProg 64 :=
.seq RemovedBody842_423 RemovedBody842_428

def RemovedBody842_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody842_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody842_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 9

def RemovedBody842_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody842_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody842_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody842_439 : StackLang.HolProg 64 :=
.seq RemovedBody842_437 RemovedBody842_438

def RemovedBody842_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody842_441 : StackLang.HolProg 64 :=
.seq RemovedBody842_439 RemovedBody842_440

def RemovedBody842_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_443 : StackLang.HolProg 64 :=
.seq RemovedBody842_441 RemovedBody842_442

def RemovedBody842_444 : StackLang.HolProg 64 :=
.seq RemovedBody842_436 RemovedBody842_443

def RemovedBody842_445 : StackLang.HolProg 64 :=
.seq RemovedBody842_435 RemovedBody842_444

def RemovedBody842_446 : StackLang.HolProg 64 :=
.seq RemovedBody842_434 RemovedBody842_445

def RemovedBody842_447 : StackLang.HolProg 64 :=
.seq RemovedBody842_433 RemovedBody842_446

def RemovedBody842_448 : StackLang.HolProg 64 :=
.seq RemovedBody842_432 RemovedBody842_447

def RemovedBody842_449 : StackLang.HolProg 64 :=
.seq RemovedBody842_431 RemovedBody842_448

def RemovedBody842_450 : StackLang.HolProg 64 :=
.seq RemovedBody842_430 RemovedBody842_449

def RemovedBody842_451 : StackLang.HolProg 64 :=
.seq RemovedBody842_429 RemovedBody842_450

def RemovedBody842_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody842_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody842_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody842_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody842_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody842_463 : StackLang.HolProg 64 :=
.seq RemovedBody842_461 RemovedBody842_462

def RemovedBody842_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody842_466 : StackLang.HolProg 64 :=
.seq RemovedBody842_464 RemovedBody842_465

def RemovedBody842_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_469 : StackLang.HolProg 64 :=
.seq RemovedBody842_467 RemovedBody842_468

def RemovedBody842_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_472 : StackLang.HolProg 64 :=
.seq RemovedBody842_470 RemovedBody842_471

def RemovedBody842_473 : StackLang.HolProg 64 :=
.seq RemovedBody842_469 RemovedBody842_472

def RemovedBody842_474 : StackLang.HolProg 64 :=
.seq RemovedBody842_466 RemovedBody842_473

def RemovedBody842_475 : StackLang.HolProg 64 :=
.seq RemovedBody842_463 RemovedBody842_474

def RemovedBody842_476 : StackLang.HolProg 64 :=
.seq RemovedBody842_460 RemovedBody842_475

def RemovedBody842_477 : StackLang.HolProg 64 :=
.seq RemovedBody842_459 RemovedBody842_476

def RemovedBody842_478 : StackLang.HolProg 64 :=
.seq RemovedBody842_458 RemovedBody842_477

def RemovedBody842_479 : StackLang.HolProg 64 :=
.seq RemovedBody842_457 RemovedBody842_478

def RemovedBody842_480 : StackLang.HolProg 64 :=
.seq RemovedBody842_456 RemovedBody842_479

def RemovedBody842_481 : StackLang.HolProg 64 :=
.seq RemovedBody842_455 RemovedBody842_480

def RemovedBody842_482 : StackLang.HolProg 64 :=
.seq RemovedBody842_454 RemovedBody842_481

def RemovedBody842_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody842_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody842_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody842_487 : StackLang.HolProg 64 :=
.seq RemovedBody842_485 RemovedBody842_486

def RemovedBody842_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody842_490 : StackLang.HolProg 64 :=
.seq RemovedBody842_488 RemovedBody842_489

def RemovedBody842_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_493 : StackLang.HolProg 64 :=
.seq RemovedBody842_491 RemovedBody842_492

def RemovedBody842_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody842_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_496 : StackLang.HolProg 64 :=
.seq RemovedBody842_494 RemovedBody842_495

def RemovedBody842_497 : StackLang.HolProg 64 :=
.seq RemovedBody842_493 RemovedBody842_496

def RemovedBody842_498 : StackLang.HolProg 64 :=
.seq RemovedBody842_490 RemovedBody842_497

def RemovedBody842_499 : StackLang.HolProg 64 :=
.seq RemovedBody842_487 RemovedBody842_498

def RemovedBody842_500 : StackLang.HolProg 64 :=
.seq RemovedBody842_484 RemovedBody842_499

def RemovedBody842_501 : StackLang.HolProg 64 :=
.seq RemovedBody842_483 RemovedBody842_500

def RemovedBody842_502 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody842_503 : StackLang.HolProg 64 :=
.seq RemovedBody842_501 RemovedBody842_502

def RemovedBody842_504 : StackLang.HolProg 64 :=
.call (some (RemovedBody842_482, 0, 842, 8)) (Sum.inl 176) (some (RemovedBody842_503, 842, 9))

def RemovedBody842_505 : StackLang.HolProg 64 :=
.seq RemovedBody842_453 RemovedBody842_504

def RemovedBody842_506 : StackLang.HolProg 64 :=
.seq RemovedBody842_452 RemovedBody842_505

def RemovedBody842_507 : StackLang.HolProg 64 :=
.seq RemovedBody842_451 RemovedBody842_506

def RemovedBody842_508 : StackLang.HolProg 64 :=
.seq RemovedBody842_422 RemovedBody842_507

def RemovedBody842_509 : StackLang.HolProg 64 :=
.seq RemovedBody842_419 RemovedBody842_508

def RemovedBody842_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody842_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody842_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_515 : StackLang.HolProg 64 :=
.seq RemovedBody842_513 RemovedBody842_514

def RemovedBody842_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4213#64)

def RemovedBody842_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody842_519 : StackLang.HolProg 64 :=
.seq RemovedBody842_517 RemovedBody842_518

def RemovedBody842_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody842_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody842_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody842_523 : StackLang.HolProg 64 :=
.seq RemovedBody842_521 RemovedBody842_522

def RemovedBody842_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_525 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody842_523 RemovedBody842_524

def RemovedBody842_526 : StackLang.HolProg 64 :=
.seq RemovedBody842_520 RemovedBody842_525

def RemovedBody842_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody842_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody842_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 11

def RemovedBody842_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody842_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody842_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody842_536 : StackLang.HolProg 64 :=
.seq RemovedBody842_534 RemovedBody842_535

def RemovedBody842_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody842_538 : StackLang.HolProg 64 :=
.seq RemovedBody842_536 RemovedBody842_537

def RemovedBody842_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_540 : StackLang.HolProg 64 :=
.seq RemovedBody842_538 RemovedBody842_539

def RemovedBody842_541 : StackLang.HolProg 64 :=
.seq RemovedBody842_533 RemovedBody842_540

def RemovedBody842_542 : StackLang.HolProg 64 :=
.seq RemovedBody842_532 RemovedBody842_541

def RemovedBody842_543 : StackLang.HolProg 64 :=
.seq RemovedBody842_531 RemovedBody842_542

def RemovedBody842_544 : StackLang.HolProg 64 :=
.seq RemovedBody842_530 RemovedBody842_543

def RemovedBody842_545 : StackLang.HolProg 64 :=
.seq RemovedBody842_529 RemovedBody842_544

def RemovedBody842_546 : StackLang.HolProg 64 :=
.seq RemovedBody842_528 RemovedBody842_545

def RemovedBody842_547 : StackLang.HolProg 64 :=
.seq RemovedBody842_527 RemovedBody842_546

def RemovedBody842_548 : StackLang.HolProg 64 :=
.seq RemovedBody842_526 RemovedBody842_547

def RemovedBody842_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody842_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody842_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody842_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody842_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_562 : StackLang.HolProg 64 :=
.seq RemovedBody842_560 RemovedBody842_561

def RemovedBody842_563 : StackLang.HolProg 64 :=
.seq RemovedBody842_559 RemovedBody842_562

def RemovedBody842_564 : StackLang.HolProg 64 :=
.seq RemovedBody842_558 RemovedBody842_563

def RemovedBody842_565 : StackLang.HolProg 64 :=
.seq RemovedBody842_557 RemovedBody842_564

def RemovedBody842_566 : StackLang.HolProg 64 :=
.seq RemovedBody842_556 RemovedBody842_565

def RemovedBody842_567 : StackLang.HolProg 64 :=
.seq RemovedBody842_555 RemovedBody842_566

def RemovedBody842_568 : StackLang.HolProg 64 :=
.seq RemovedBody842_554 RemovedBody842_567

def RemovedBody842_569 : StackLang.HolProg 64 :=
.seq RemovedBody842_553 RemovedBody842_568

def RemovedBody842_570 : StackLang.HolProg 64 :=
.seq RemovedBody842_552 RemovedBody842_569

def RemovedBody842_571 : StackLang.HolProg 64 :=
.seq RemovedBody842_551 RemovedBody842_570

def RemovedBody842_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody842_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody842_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody842_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody842_578 : StackLang.HolProg 64 :=
.seq RemovedBody842_576 RemovedBody842_577

def RemovedBody842_579 : StackLang.HolProg 64 :=
.seq RemovedBody842_575 RemovedBody842_578

def RemovedBody842_580 : StackLang.HolProg 64 :=
.seq RemovedBody842_574 RemovedBody842_579

def RemovedBody842_581 : StackLang.HolProg 64 :=
.seq RemovedBody842_573 RemovedBody842_580

def RemovedBody842_582 : StackLang.HolProg 64 :=
.seq RemovedBody842_572 RemovedBody842_581

def RemovedBody842_583 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody842_584 : StackLang.HolProg 64 :=
.seq RemovedBody842_582 RemovedBody842_583

def RemovedBody842_585 : StackLang.HolProg 64 :=
.call (some (RemovedBody842_571, 0, 842, 10)) (Sum.inl 840) (some (RemovedBody842_584, 842, 11))

def RemovedBody842_586 : StackLang.HolProg 64 :=
.seq RemovedBody842_550 RemovedBody842_585

def RemovedBody842_587 : StackLang.HolProg 64 :=
.seq RemovedBody842_549 RemovedBody842_586

def RemovedBody842_588 : StackLang.HolProg 64 :=
.seq RemovedBody842_548 RemovedBody842_587

def RemovedBody842_589 : StackLang.HolProg 64 :=
.seq RemovedBody842_519 RemovedBody842_588

def RemovedBody842_590 : StackLang.HolProg 64 :=
.seq RemovedBody842_516 RemovedBody842_589

def RemovedBody842_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody842_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody842_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_598 : StackLang.HolProg 64 :=
.seq RemovedBody842_596 RemovedBody842_597

def RemovedBody842_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody842_600 : StackLang.HolProg 64 :=
.seq RemovedBody842_598 RemovedBody842_599

def RemovedBody842_601 : StackLang.HolProg 64 :=
.seq RemovedBody842_595 RemovedBody842_600

def RemovedBody842_602 : StackLang.HolProg 64 :=
.seq RemovedBody842_594 RemovedBody842_601

def RemovedBody842_603 : StackLang.HolProg 64 :=
.seq RemovedBody842_593 RemovedBody842_602

def RemovedBody842_604 : StackLang.HolProg 64 :=
.seq RemovedBody842_592 RemovedBody842_603

def RemovedBody842_605 : StackLang.HolProg 64 :=
.seq RemovedBody842_591 RemovedBody842_604

def RemovedBody842_606 : StackLang.HolProg 64 :=
.seq RemovedBody842_590 RemovedBody842_605

def RemovedBody842_607 : StackLang.HolProg 64 :=
.seq RemovedBody842_515 RemovedBody842_606

def RemovedBody842_608 : StackLang.HolProg 64 :=
.seq RemovedBody842_512 RemovedBody842_607

def RemovedBody842_609 : StackLang.HolProg 64 :=
.seq RemovedBody842_511 RemovedBody842_608

def RemovedBody842_610 : StackLang.HolProg 64 :=
.seq RemovedBody842_510 RemovedBody842_609

def RemovedBody842_611 : StackLang.HolProg 64 :=
.seq RemovedBody842_509 RemovedBody842_610

def RemovedBody842_612 : StackLang.HolProg 64 :=
.seq RemovedBody842_418 RemovedBody842_611

def RemovedBody842_613 : StackLang.HolProg 64 :=
.seq RemovedBody842_417 RemovedBody842_612

def RemovedBody842_614 : StackLang.HolProg 64 :=
.seq RemovedBody842_416 RemovedBody842_613

def RemovedBody842_615 : StackLang.HolProg 64 :=
.seq RemovedBody842_415 RemovedBody842_614

def RemovedBody842_616 : StackLang.HolProg 64 :=
.seq RemovedBody842_414 RemovedBody842_615

def RemovedBody842_617 : StackLang.HolProg 64 :=
.seq RemovedBody842_413 RemovedBody842_616

def RemovedBody842_618 : StackLang.HolProg 64 :=
.seq RemovedBody842_412 RemovedBody842_617

def RemovedBody842_619 : StackLang.HolProg 64 :=
.seq RemovedBody842_411 RemovedBody842_618

def RemovedBody842_620 : StackLang.HolProg 64 :=
.seq RemovedBody842_410 RemovedBody842_619

def RemovedBody842_621 : StackLang.HolProg 64 :=
.seq RemovedBody842_343 RemovedBody842_620

def RemovedBody842_622 : StackLang.HolProg 64 :=
.seq RemovedBody842_342 RemovedBody842_621

def RemovedBody842_623 : StackLang.HolProg 64 :=
.seq RemovedBody842_341 RemovedBody842_622

def RemovedBody842_624 : StackLang.HolProg 64 :=
.seq RemovedBody842_163 RemovedBody842_623

def RemovedBody842_625 : StackLang.HolProg 64 :=
.seq RemovedBody842_158 RemovedBody842_624

def RemovedBody842_626 : StackLang.HolProg 64 :=
.seq RemovedBody842_157 RemovedBody842_625

def RemovedBody842_627 : StackLang.HolProg 64 :=
.seq RemovedBody842_156 RemovedBody842_626

def RemovedBody842_628 : StackLang.HolProg 64 :=
.seq RemovedBody842_155 RemovedBody842_627

def RemovedBody842_629 : StackLang.HolProg 64 :=
.seq RemovedBody842_154 RemovedBody842_628

def RemovedBody842_630 : StackLang.HolProg 64 :=
.seq RemovedBody842_153 RemovedBody842_629

def RemovedBody842_631 : StackLang.HolProg 64 :=
.seq RemovedBody842_152 RemovedBody842_630

def RemovedBody842_632 : StackLang.HolProg 64 :=
.seq RemovedBody842_151 RemovedBody842_631

def RemovedBody842_633 : StackLang.HolProg 64 :=
.seq RemovedBody842_150 RemovedBody842_632

def RemovedBody842_634 : StackLang.HolProg 64 :=
.seq RemovedBody842_149 RemovedBody842_633

def RemovedBody842_635 : StackLang.HolProg 64 :=
.seq RemovedBody842_50 RemovedBody842_634

def RemovedBody842_636 : StackLang.HolProg 64 :=
.seq RemovedBody842_31 RemovedBody842_635

def RemovedBody842_637 : StackLang.HolProg 64 :=
.seq RemovedBody842_30 RemovedBody842_636

def RemovedBody842_638 : StackLang.HolProg 64 :=
.seq RemovedBody842_29 RemovedBody842_637

def RemovedBody842_639 : StackLang.HolProg 64 :=
.seq RemovedBody842_28 RemovedBody842_638

def RemovedBody842_640 : StackLang.HolProg 64 :=
.seq RemovedBody842_27 RemovedBody842_639

def RemovedBody842_641 : StackLang.HolProg 64 :=
.seq RemovedBody842_26 RemovedBody842_640

def RemovedBody842_642 : StackLang.HolProg 64 :=
.seq RemovedBody842_25 RemovedBody842_641

def RemovedBody842_643 : StackLang.HolProg 64 :=
.seq RemovedBody842_24 RemovedBody842_642

def RemovedBody842_644 : StackLang.HolProg 64 :=
.seq RemovedBody842_23 RemovedBody842_643

def RemovedBody842_645 : StackLang.HolProg 64 :=
.seq RemovedBody842_22 RemovedBody842_644

def RemovedBody842_646 : StackLang.HolProg 64 :=
.seq RemovedBody842_21 RemovedBody842_645

def RemovedBody842_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody842_649 : StackLang.HolProg 64 :=
.seq RemovedBody842_647 RemovedBody842_648

def RemovedBody842_650 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody842_646 RemovedBody842_649

def RemovedBody842_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody842_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody842_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_655 : StackLang.HolProg 64 :=
.seq RemovedBody842_653 RemovedBody842_654

def RemovedBody842_656 : StackLang.HolProg 64 :=
.seq RemovedBody842_652 RemovedBody842_655

def RemovedBody842_657 : StackLang.HolProg 64 :=
.seq RemovedBody842_651 RemovedBody842_656

def RemovedBody842_658 : StackLang.HolProg 64 :=
.seq RemovedBody842_650 RemovedBody842_657

def RemovedBody842_659 : StackLang.HolProg 64 :=
.seq RemovedBody842_20 RemovedBody842_658

def RemovedBody842_660 : StackLang.HolProg 64 :=
.loop RemovedBody842_659

def RemovedBody842_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody842_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_665 : StackLang.HolProg 64 :=
.seq RemovedBody842_663 RemovedBody842_664

def RemovedBody842_666 : StackLang.HolProg 64 :=
.seq RemovedBody842_662 RemovedBody842_665

def RemovedBody842_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4214#64)

def RemovedBody842_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody842_670 : StackLang.HolProg 64 :=
.seq RemovedBody842_668 RemovedBody842_669

def RemovedBody842_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody842_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody842_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody842_674 : StackLang.HolProg 64 :=
.seq RemovedBody842_672 RemovedBody842_673

def RemovedBody842_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_676 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody842_674 RemovedBody842_675

def RemovedBody842_677 : StackLang.HolProg 64 :=
.seq RemovedBody842_671 RemovedBody842_676

def RemovedBody842_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody842_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody842_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 13

def RemovedBody842_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody842_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody842_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody842_687 : StackLang.HolProg 64 :=
.seq RemovedBody842_685 RemovedBody842_686

def RemovedBody842_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody842_689 : StackLang.HolProg 64 :=
.seq RemovedBody842_687 RemovedBody842_688

def RemovedBody842_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_691 : StackLang.HolProg 64 :=
.seq RemovedBody842_689 RemovedBody842_690

def RemovedBody842_692 : StackLang.HolProg 64 :=
.seq RemovedBody842_684 RemovedBody842_691

def RemovedBody842_693 : StackLang.HolProg 64 :=
.seq RemovedBody842_683 RemovedBody842_692

def RemovedBody842_694 : StackLang.HolProg 64 :=
.seq RemovedBody842_682 RemovedBody842_693

def RemovedBody842_695 : StackLang.HolProg 64 :=
.seq RemovedBody842_681 RemovedBody842_694

def RemovedBody842_696 : StackLang.HolProg 64 :=
.seq RemovedBody842_680 RemovedBody842_695

def RemovedBody842_697 : StackLang.HolProg 64 :=
.seq RemovedBody842_679 RemovedBody842_696

def RemovedBody842_698 : StackLang.HolProg 64 :=
.seq RemovedBody842_678 RemovedBody842_697

def RemovedBody842_699 : StackLang.HolProg 64 :=
.seq RemovedBody842_677 RemovedBody842_698

def RemovedBody842_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody842_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody842_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody842_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody842_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody842_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_708 : StackLang.HolProg 64 :=
.seq RemovedBody842_706 RemovedBody842_707

def RemovedBody842_709 : StackLang.HolProg 64 :=
.seq RemovedBody842_705 RemovedBody842_708

def RemovedBody842_710 : StackLang.HolProg 64 :=
.seq RemovedBody842_704 RemovedBody842_709

def RemovedBody842_711 : StackLang.HolProg 64 :=
.seq RemovedBody842_703 RemovedBody842_710

def RemovedBody842_712 : StackLang.HolProg 64 :=
.seq RemovedBody842_702 RemovedBody842_711

def RemovedBody842_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody842_714 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody842_715 : StackLang.HolProg 64 :=
.seq RemovedBody842_713 RemovedBody842_714

def RemovedBody842_716 : StackLang.HolProg 64 :=
.call (some (RemovedBody842_712, 0, 842, 12)) (Sum.inl 840) (some (RemovedBody842_715, 842, 13))

def RemovedBody842_717 : StackLang.HolProg 64 :=
.seq RemovedBody842_701 RemovedBody842_716

def RemovedBody842_718 : StackLang.HolProg 64 :=
.seq RemovedBody842_700 RemovedBody842_717

def RemovedBody842_719 : StackLang.HolProg 64 :=
.seq RemovedBody842_699 RemovedBody842_718

def RemovedBody842_720 : StackLang.HolProg 64 :=
.seq RemovedBody842_670 RemovedBody842_719

def RemovedBody842_721 : StackLang.HolProg 64 :=
.seq RemovedBody842_667 RemovedBody842_720

def RemovedBody842_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody842_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody842_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def RemovedBody842_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody842_726 : StackLang.HolProg 64 :=
.seq RemovedBody842_724 RemovedBody842_725

def RemovedBody842_727 : StackLang.HolProg 64 :=
.seq RemovedBody842_723 RemovedBody842_726

def RemovedBody842_728 : StackLang.HolProg 64 :=
.seq RemovedBody842_722 RemovedBody842_727

def RemovedBody842_729 : StackLang.HolProg 64 :=
.seq RemovedBody842_721 RemovedBody842_728

def RemovedBody842_730 : StackLang.HolProg 64 :=
.seq RemovedBody842_666 RemovedBody842_729

def RemovedBody842_731 : StackLang.HolProg 64 :=
.seq RemovedBody842_661 RemovedBody842_730

def RemovedBody842_732 : StackLang.HolProg 64 :=
.seq RemovedBody842_660 RemovedBody842_731

def RemovedBody842_733 : StackLang.HolProg 64 :=
.seq RemovedBody842_19 RemovedBody842_732

def RemovedBody842_734 : StackLang.HolProg 64 :=
.seq RemovedBody842_14 RemovedBody842_733

def RemovedBody842_735 : StackLang.HolProg 64 :=
.seq RemovedBody842_13 RemovedBody842_734

def RemovedBody842_736 : StackLang.HolProg 64 :=
.seq RemovedBody842_12 RemovedBody842_735

def RemovedBody842_737 : StackLang.HolProg 64 :=
.seq RemovedBody842_11 RemovedBody842_736

def RemovedBody842_738 : StackLang.HolProg 64 :=
.seq RemovedBody842_10 RemovedBody842_737

def RemovedBody842_739 : StackLang.HolProg 64 :=
.seq RemovedBody842_9 RemovedBody842_738

def RemovedBody842_740 : StackLang.HolProg 64 :=
.seq RemovedBody842_8 RemovedBody842_739

def RemovedBody842_741 : StackLang.HolProg 64 :=
.seq RemovedBody842_7 RemovedBody842_740

def RemovedBody842_742 : StackLang.HolProg 64 :=
.seq RemovedBody842_6 RemovedBody842_741

def Removed842 : Nat × StackLang.HolProg 64 := (842, RemovedBody842_742)
theorem Removed842_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc842 = Removed842 := by
  kernel_rfl
#print axioms Removed842_eq
end InitECandidate.Proofs.BackendStages
