import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc686
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody686_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def RemovedBody686_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody686_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody686_3 : StackLang.HolProg 64 :=
.seq RemovedBody686_1 RemovedBody686_2

def RemovedBody686_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody686_3 RemovedBody686_4

def RemovedBody686_6 : StackLang.HolProg 64 :=
.seq RemovedBody686_0 RemovedBody686_5

def RemovedBody686_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody686_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1152#64)

def RemovedBody686_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody686_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody686_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody686_12 : StackLang.HolProg 64 :=
.seq RemovedBody686_10 RemovedBody686_11

def RemovedBody686_13 : StackLang.HolProg 64 :=
.seq RemovedBody686_9 RemovedBody686_12

def RemovedBody686_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2923#64)

def RemovedBody686_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody686_17 : StackLang.HolProg 64 :=
.seq RemovedBody686_15 RemovedBody686_16

def RemovedBody686_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody686_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody686_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody686_21 : StackLang.HolProg 64 :=
.seq RemovedBody686_19 RemovedBody686_20

def RemovedBody686_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody686_21 RemovedBody686_22

def RemovedBody686_24 : StackLang.HolProg 64 :=
.seq RemovedBody686_18 RemovedBody686_23

def RemovedBody686_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody686_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody686_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 686 3

def RemovedBody686_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody686_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody686_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody686_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody686_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody686_34 : StackLang.HolProg 64 :=
.seq RemovedBody686_32 RemovedBody686_33

def RemovedBody686_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody686_36 : StackLang.HolProg 64 :=
.seq RemovedBody686_34 RemovedBody686_35

def RemovedBody686_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody686_38 : StackLang.HolProg 64 :=
.seq RemovedBody686_36 RemovedBody686_37

def RemovedBody686_39 : StackLang.HolProg 64 :=
.seq RemovedBody686_31 RemovedBody686_38

def RemovedBody686_40 : StackLang.HolProg 64 :=
.seq RemovedBody686_30 RemovedBody686_39

def RemovedBody686_41 : StackLang.HolProg 64 :=
.seq RemovedBody686_29 RemovedBody686_40

def RemovedBody686_42 : StackLang.HolProg 64 :=
.seq RemovedBody686_28 RemovedBody686_41

def RemovedBody686_43 : StackLang.HolProg 64 :=
.seq RemovedBody686_27 RemovedBody686_42

def RemovedBody686_44 : StackLang.HolProg 64 :=
.seq RemovedBody686_26 RemovedBody686_43

def RemovedBody686_45 : StackLang.HolProg 64 :=
.seq RemovedBody686_25 RemovedBody686_44

def RemovedBody686_46 : StackLang.HolProg 64 :=
.seq RemovedBody686_24 RemovedBody686_45

def RemovedBody686_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody686_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody686_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody686_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody686_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody686_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody686_56 : StackLang.HolProg 64 :=
.seq RemovedBody686_54 RemovedBody686_55

def RemovedBody686_57 : StackLang.HolProg 64 :=
.seq RemovedBody686_53 RemovedBody686_56

def RemovedBody686_58 : StackLang.HolProg 64 :=
.seq RemovedBody686_52 RemovedBody686_57

def RemovedBody686_59 : StackLang.HolProg 64 :=
.seq RemovedBody686_51 RemovedBody686_58

def RemovedBody686_60 : StackLang.HolProg 64 :=
.seq RemovedBody686_50 RemovedBody686_59

def RemovedBody686_61 : StackLang.HolProg 64 :=
.seq RemovedBody686_49 RemovedBody686_60

def RemovedBody686_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody686_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody686_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody686_65 : StackLang.HolProg 64 :=
.seq RemovedBody686_63 RemovedBody686_64

def RemovedBody686_66 : StackLang.HolProg 64 :=
.seq RemovedBody686_62 RemovedBody686_65

def RemovedBody686_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody686_68 : StackLang.HolProg 64 :=
.seq RemovedBody686_66 RemovedBody686_67

def RemovedBody686_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody686_61, 0, 686, 2)) (Sum.inl 78) (some (RemovedBody686_68, 686, 3))

def RemovedBody686_70 : StackLang.HolProg 64 :=
.seq RemovedBody686_48 RemovedBody686_69

def RemovedBody686_71 : StackLang.HolProg 64 :=
.seq RemovedBody686_47 RemovedBody686_70

def RemovedBody686_72 : StackLang.HolProg 64 :=
.seq RemovedBody686_46 RemovedBody686_71

def RemovedBody686_73 : StackLang.HolProg 64 :=
.seq RemovedBody686_17 RemovedBody686_72

def RemovedBody686_74 : StackLang.HolProg 64 :=
.seq RemovedBody686_14 RemovedBody686_73

def RemovedBody686_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody686_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody686_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody686_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody686_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody686_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody686_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody686_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody686_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody686_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody686_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody686_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody686_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def RemovedBody686_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def RemovedBody686_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def RemovedBody686_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 9#64)

def RemovedBody686_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody686_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody686_106 : StackLang.HolProg 64 :=
.seq RemovedBody686_104 RemovedBody686_105

def RemovedBody686_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody686_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody686_109 : StackLang.HolProg 64 :=
.seq RemovedBody686_107 RemovedBody686_108

def RemovedBody686_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody686_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody686_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody686_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody686_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody686_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody686_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody686_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody686_118 : StackLang.HolProg 64 :=
.seq RemovedBody686_116 RemovedBody686_117

def RemovedBody686_119 : StackLang.HolProg 64 :=
.seq RemovedBody686_115 RemovedBody686_118

def RemovedBody686_120 : StackLang.HolProg 64 :=
.seq RemovedBody686_114 RemovedBody686_119

def RemovedBody686_121 : StackLang.HolProg 64 :=
.seq RemovedBody686_113 RemovedBody686_120

def RemovedBody686_122 : StackLang.HolProg 64 :=
.seq RemovedBody686_112 RemovedBody686_121

def RemovedBody686_123 : StackLang.HolProg 64 :=
.seq RemovedBody686_111 RemovedBody686_122

def RemovedBody686_124 : StackLang.HolProg 64 :=
.seq RemovedBody686_110 RemovedBody686_123

def RemovedBody686_125 : StackLang.HolProg 64 :=
.seq RemovedBody686_109 RemovedBody686_124

def RemovedBody686_126 : StackLang.HolProg 64 :=
.seq RemovedBody686_106 RemovedBody686_125

def RemovedBody686_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2924#64)

def RemovedBody686_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody686_130 : StackLang.HolProg 64 :=
.seq RemovedBody686_128 RemovedBody686_129

def RemovedBody686_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody686_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody686_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody686_134 : StackLang.HolProg 64 :=
.seq RemovedBody686_132 RemovedBody686_133

def RemovedBody686_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody686_134 RemovedBody686_135

def RemovedBody686_137 : StackLang.HolProg 64 :=
.seq RemovedBody686_131 RemovedBody686_136

def RemovedBody686_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody686_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody686_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 686 5

def RemovedBody686_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody686_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody686_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody686_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody686_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody686_147 : StackLang.HolProg 64 :=
.seq RemovedBody686_145 RemovedBody686_146

def RemovedBody686_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody686_149 : StackLang.HolProg 64 :=
.seq RemovedBody686_147 RemovedBody686_148

def RemovedBody686_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody686_151 : StackLang.HolProg 64 :=
.seq RemovedBody686_149 RemovedBody686_150

def RemovedBody686_152 : StackLang.HolProg 64 :=
.seq RemovedBody686_144 RemovedBody686_151

def RemovedBody686_153 : StackLang.HolProg 64 :=
.seq RemovedBody686_143 RemovedBody686_152

def RemovedBody686_154 : StackLang.HolProg 64 :=
.seq RemovedBody686_142 RemovedBody686_153

def RemovedBody686_155 : StackLang.HolProg 64 :=
.seq RemovedBody686_141 RemovedBody686_154

def RemovedBody686_156 : StackLang.HolProg 64 :=
.seq RemovedBody686_140 RemovedBody686_155

def RemovedBody686_157 : StackLang.HolProg 64 :=
.seq RemovedBody686_139 RemovedBody686_156

def RemovedBody686_158 : StackLang.HolProg 64 :=
.seq RemovedBody686_138 RemovedBody686_157

def RemovedBody686_159 : StackLang.HolProg 64 :=
.seq RemovedBody686_137 RemovedBody686_158

def RemovedBody686_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody686_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody686_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody686_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody686_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody686_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody686_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody686_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody686_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody686_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody686_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody686_174 : StackLang.HolProg 64 :=
.seq RemovedBody686_172 RemovedBody686_173

def RemovedBody686_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody686_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody686_177 : StackLang.HolProg 64 :=
.seq RemovedBody686_175 RemovedBody686_176

def RemovedBody686_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody686_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody686_180 : StackLang.HolProg 64 :=
.seq RemovedBody686_178 RemovedBody686_179

def RemovedBody686_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody686_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody686_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody686_184 : StackLang.HolProg 64 :=
.seq RemovedBody686_182 RemovedBody686_183

def RemovedBody686_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody686_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody686_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody686_188 : StackLang.HolProg 64 :=
.seq RemovedBody686_186 RemovedBody686_187

def RemovedBody686_189 : StackLang.HolProg 64 :=
.seq RemovedBody686_185 RemovedBody686_188

def RemovedBody686_190 : StackLang.HolProg 64 :=
.seq RemovedBody686_184 RemovedBody686_189

def RemovedBody686_191 : StackLang.HolProg 64 :=
.seq RemovedBody686_181 RemovedBody686_190

def RemovedBody686_192 : StackLang.HolProg 64 :=
.seq RemovedBody686_180 RemovedBody686_191

def RemovedBody686_193 : StackLang.HolProg 64 :=
.seq RemovedBody686_177 RemovedBody686_192

def RemovedBody686_194 : StackLang.HolProg 64 :=
.seq RemovedBody686_174 RemovedBody686_193

def RemovedBody686_195 : StackLang.HolProg 64 :=
.seq RemovedBody686_171 RemovedBody686_194

def RemovedBody686_196 : StackLang.HolProg 64 :=
.seq RemovedBody686_170 RemovedBody686_195

def RemovedBody686_197 : StackLang.HolProg 64 :=
.seq RemovedBody686_169 RemovedBody686_196

def RemovedBody686_198 : StackLang.HolProg 64 :=
.seq RemovedBody686_168 RemovedBody686_197

def RemovedBody686_199 : StackLang.HolProg 64 :=
.seq RemovedBody686_167 RemovedBody686_198

def RemovedBody686_200 : StackLang.HolProg 64 :=
.seq RemovedBody686_166 RemovedBody686_199

def RemovedBody686_201 : StackLang.HolProg 64 :=
.seq RemovedBody686_165 RemovedBody686_200

def RemovedBody686_202 : StackLang.HolProg 64 :=
.seq RemovedBody686_164 RemovedBody686_201

def RemovedBody686_203 : StackLang.HolProg 64 :=
.seq RemovedBody686_163 RemovedBody686_202

def RemovedBody686_204 : StackLang.HolProg 64 :=
.seq RemovedBody686_162 RemovedBody686_203

def RemovedBody686_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody686_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody686_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody686_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody686_209 : StackLang.HolProg 64 :=
.seq RemovedBody686_207 RemovedBody686_208

def RemovedBody686_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody686_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody686_212 : StackLang.HolProg 64 :=
.seq RemovedBody686_210 RemovedBody686_211

def RemovedBody686_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody686_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody686_215 : StackLang.HolProg 64 :=
.seq RemovedBody686_213 RemovedBody686_214

def RemovedBody686_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody686_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody686_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody686_219 : StackLang.HolProg 64 :=
.seq RemovedBody686_217 RemovedBody686_218

def RemovedBody686_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody686_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody686_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody686_223 : StackLang.HolProg 64 :=
.seq RemovedBody686_221 RemovedBody686_222

def RemovedBody686_224 : StackLang.HolProg 64 :=
.seq RemovedBody686_220 RemovedBody686_223

def RemovedBody686_225 : StackLang.HolProg 64 :=
.seq RemovedBody686_219 RemovedBody686_224

def RemovedBody686_226 : StackLang.HolProg 64 :=
.seq RemovedBody686_216 RemovedBody686_225

def RemovedBody686_227 : StackLang.HolProg 64 :=
.seq RemovedBody686_215 RemovedBody686_226

def RemovedBody686_228 : StackLang.HolProg 64 :=
.seq RemovedBody686_212 RemovedBody686_227

def RemovedBody686_229 : StackLang.HolProg 64 :=
.seq RemovedBody686_209 RemovedBody686_228

def RemovedBody686_230 : StackLang.HolProg 64 :=
.seq RemovedBody686_206 RemovedBody686_229

def RemovedBody686_231 : StackLang.HolProg 64 :=
.seq RemovedBody686_205 RemovedBody686_230

def RemovedBody686_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody686_233 : StackLang.HolProg 64 :=
.seq RemovedBody686_231 RemovedBody686_232

def RemovedBody686_234 : StackLang.HolProg 64 :=
.call (some (RemovedBody686_204, 0, 686, 4)) (Sum.inl 665) (some (RemovedBody686_233, 686, 5))

def RemovedBody686_235 : StackLang.HolProg 64 :=
.seq RemovedBody686_161 RemovedBody686_234

def RemovedBody686_236 : StackLang.HolProg 64 :=
.seq RemovedBody686_160 RemovedBody686_235

def RemovedBody686_237 : StackLang.HolProg 64 :=
.seq RemovedBody686_159 RemovedBody686_236

def RemovedBody686_238 : StackLang.HolProg 64 :=
.seq RemovedBody686_130 RemovedBody686_237

def RemovedBody686_239 : StackLang.HolProg 64 :=
.seq RemovedBody686_127 RemovedBody686_238

def RemovedBody686_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody686_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2925#64)

def RemovedBody686_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody686_245 : StackLang.HolProg 64 :=
.seq RemovedBody686_243 RemovedBody686_244

def RemovedBody686_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody686_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody686_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody686_249 : StackLang.HolProg 64 :=
.seq RemovedBody686_247 RemovedBody686_248

def RemovedBody686_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_251 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody686_249 RemovedBody686_250

def RemovedBody686_252 : StackLang.HolProg 64 :=
.seq RemovedBody686_246 RemovedBody686_251

def RemovedBody686_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody686_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody686_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 686 7

def RemovedBody686_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody686_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody686_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody686_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody686_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody686_262 : StackLang.HolProg 64 :=
.seq RemovedBody686_260 RemovedBody686_261

def RemovedBody686_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody686_264 : StackLang.HolProg 64 :=
.seq RemovedBody686_262 RemovedBody686_263

def RemovedBody686_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody686_266 : StackLang.HolProg 64 :=
.seq RemovedBody686_264 RemovedBody686_265

def RemovedBody686_267 : StackLang.HolProg 64 :=
.seq RemovedBody686_259 RemovedBody686_266

def RemovedBody686_268 : StackLang.HolProg 64 :=
.seq RemovedBody686_258 RemovedBody686_267

def RemovedBody686_269 : StackLang.HolProg 64 :=
.seq RemovedBody686_257 RemovedBody686_268

def RemovedBody686_270 : StackLang.HolProg 64 :=
.seq RemovedBody686_256 RemovedBody686_269

def RemovedBody686_271 : StackLang.HolProg 64 :=
.seq RemovedBody686_255 RemovedBody686_270

def RemovedBody686_272 : StackLang.HolProg 64 :=
.seq RemovedBody686_254 RemovedBody686_271

def RemovedBody686_273 : StackLang.HolProg 64 :=
.seq RemovedBody686_253 RemovedBody686_272

def RemovedBody686_274 : StackLang.HolProg 64 :=
.seq RemovedBody686_252 RemovedBody686_273

def RemovedBody686_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody686_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody686_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody686_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody686_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody686_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody686_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody686_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody686_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody686_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody686_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody686_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody686_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody686_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody686_292 : StackLang.HolProg 64 :=
.seq RemovedBody686_290 RemovedBody686_291

def RemovedBody686_293 : StackLang.HolProg 64 :=
.seq RemovedBody686_289 RemovedBody686_292

def RemovedBody686_294 : StackLang.HolProg 64 :=
.seq RemovedBody686_288 RemovedBody686_293

def RemovedBody686_295 : StackLang.HolProg 64 :=
.seq RemovedBody686_287 RemovedBody686_294

def RemovedBody686_296 : StackLang.HolProg 64 :=
.seq RemovedBody686_286 RemovedBody686_295

def RemovedBody686_297 : StackLang.HolProg 64 :=
.seq RemovedBody686_285 RemovedBody686_296

def RemovedBody686_298 : StackLang.HolProg 64 :=
.seq RemovedBody686_284 RemovedBody686_297

def RemovedBody686_299 : StackLang.HolProg 64 :=
.seq RemovedBody686_283 RemovedBody686_298

def RemovedBody686_300 : StackLang.HolProg 64 :=
.seq RemovedBody686_282 RemovedBody686_299

def RemovedBody686_301 : StackLang.HolProg 64 :=
.seq RemovedBody686_281 RemovedBody686_300

def RemovedBody686_302 : StackLang.HolProg 64 :=
.seq RemovedBody686_280 RemovedBody686_301

def RemovedBody686_303 : StackLang.HolProg 64 :=
.seq RemovedBody686_279 RemovedBody686_302

def RemovedBody686_304 : StackLang.HolProg 64 :=
.seq RemovedBody686_278 RemovedBody686_303

def RemovedBody686_305 : StackLang.HolProg 64 :=
.seq RemovedBody686_277 RemovedBody686_304

def RemovedBody686_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody686_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody686_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody686_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody686_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody686_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody686_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody686_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody686_314 : StackLang.HolProg 64 :=
.seq RemovedBody686_312 RemovedBody686_313

def RemovedBody686_315 : StackLang.HolProg 64 :=
.seq RemovedBody686_311 RemovedBody686_314

def RemovedBody686_316 : StackLang.HolProg 64 :=
.seq RemovedBody686_310 RemovedBody686_315

def RemovedBody686_317 : StackLang.HolProg 64 :=
.seq RemovedBody686_309 RemovedBody686_316

def RemovedBody686_318 : StackLang.HolProg 64 :=
.seq RemovedBody686_308 RemovedBody686_317

def RemovedBody686_319 : StackLang.HolProg 64 :=
.seq RemovedBody686_307 RemovedBody686_318

def RemovedBody686_320 : StackLang.HolProg 64 :=
.seq RemovedBody686_306 RemovedBody686_319

def RemovedBody686_321 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody686_322 : StackLang.HolProg 64 :=
.seq RemovedBody686_320 RemovedBody686_321

def RemovedBody686_323 : StackLang.HolProg 64 :=
.call (some (RemovedBody686_305, 0, 686, 6)) (Sum.inl 659) (some (RemovedBody686_322, 686, 7))

def RemovedBody686_324 : StackLang.HolProg 64 :=
.seq RemovedBody686_276 RemovedBody686_323

def RemovedBody686_325 : StackLang.HolProg 64 :=
.seq RemovedBody686_275 RemovedBody686_324

def RemovedBody686_326 : StackLang.HolProg 64 :=
.seq RemovedBody686_274 RemovedBody686_325

def RemovedBody686_327 : StackLang.HolProg 64 :=
.seq RemovedBody686_245 RemovedBody686_326

def RemovedBody686_328 : StackLang.HolProg 64 :=
.seq RemovedBody686_242 RemovedBody686_327

def RemovedBody686_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody686_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody686_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody686_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_336 : StackLang.HolProg 64 :=
.seq RemovedBody686_334 RemovedBody686_335

def RemovedBody686_337 : StackLang.HolProg 64 :=
.seq RemovedBody686_333 RemovedBody686_336

def RemovedBody686_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_340 : StackLang.HolProg 64 :=
.seq RemovedBody686_338 RemovedBody686_339

def RemovedBody686_341 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody686_337 RemovedBody686_340

def RemovedBody686_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody686_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody686_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_348 : StackLang.HolProg 64 :=
.seq RemovedBody686_346 RemovedBody686_347

def RemovedBody686_349 : StackLang.HolProg 64 :=
.seq RemovedBody686_345 RemovedBody686_348

def RemovedBody686_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_352 : StackLang.HolProg 64 :=
.seq RemovedBody686_350 RemovedBody686_351

def RemovedBody686_353 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody686_349 RemovedBody686_352

def RemovedBody686_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 384#64)

def RemovedBody686_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody686_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody686_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def RemovedBody686_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody686_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody686_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody686_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody686_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def RemovedBody686_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def RemovedBody686_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody686_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody686_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody686_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody686_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody686_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody686_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody686_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody686_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody686_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody686_390 : StackLang.HolProg 64 :=
.seq RemovedBody686_388 RemovedBody686_389

def RemovedBody686_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody686_392 : StackLang.HolProg 64 :=
.seq RemovedBody686_390 RemovedBody686_391

def RemovedBody686_393 : StackLang.HolProg 64 :=
.seq RemovedBody686_387 RemovedBody686_392

def RemovedBody686_394 : StackLang.HolProg 64 :=
.seq RemovedBody686_386 RemovedBody686_393

def RemovedBody686_395 : StackLang.HolProg 64 :=
.seq RemovedBody686_385 RemovedBody686_394

def RemovedBody686_396 : StackLang.HolProg 64 :=
.seq RemovedBody686_384 RemovedBody686_395

def RemovedBody686_397 : StackLang.HolProg 64 :=
.seq RemovedBody686_383 RemovedBody686_396

def RemovedBody686_398 : StackLang.HolProg 64 :=
.seq RemovedBody686_382 RemovedBody686_397

def RemovedBody686_399 : StackLang.HolProg 64 :=
.seq RemovedBody686_381 RemovedBody686_398

def RemovedBody686_400 : StackLang.HolProg 64 :=
.seq RemovedBody686_380 RemovedBody686_399

def RemovedBody686_401 : StackLang.HolProg 64 :=
.seq RemovedBody686_379 RemovedBody686_400

def RemovedBody686_402 : StackLang.HolProg 64 :=
.seq RemovedBody686_378 RemovedBody686_401

def RemovedBody686_403 : StackLang.HolProg 64 :=
.seq RemovedBody686_377 RemovedBody686_402

def RemovedBody686_404 : StackLang.HolProg 64 :=
.seq RemovedBody686_376 RemovedBody686_403

def RemovedBody686_405 : StackLang.HolProg 64 :=
.seq RemovedBody686_375 RemovedBody686_404

def RemovedBody686_406 : StackLang.HolProg 64 :=
.seq RemovedBody686_374 RemovedBody686_405

def RemovedBody686_407 : StackLang.HolProg 64 :=
.seq RemovedBody686_373 RemovedBody686_406

def RemovedBody686_408 : StackLang.HolProg 64 :=
.seq RemovedBody686_372 RemovedBody686_407

def RemovedBody686_409 : StackLang.HolProg 64 :=
.seq RemovedBody686_371 RemovedBody686_408

def RemovedBody686_410 : StackLang.HolProg 64 :=
.seq RemovedBody686_370 RemovedBody686_409

def RemovedBody686_411 : StackLang.HolProg 64 :=
.seq RemovedBody686_369 RemovedBody686_410

def RemovedBody686_412 : StackLang.HolProg 64 :=
.seq RemovedBody686_368 RemovedBody686_411

def RemovedBody686_413 : StackLang.HolProg 64 :=
.seq RemovedBody686_367 RemovedBody686_412

def RemovedBody686_414 : StackLang.HolProg 64 :=
.seq RemovedBody686_366 RemovedBody686_413

def RemovedBody686_415 : StackLang.HolProg 64 :=
.seq RemovedBody686_365 RemovedBody686_414

def RemovedBody686_416 : StackLang.HolProg 64 :=
.seq RemovedBody686_364 RemovedBody686_415

def RemovedBody686_417 : StackLang.HolProg 64 :=
.seq RemovedBody686_363 RemovedBody686_416

def RemovedBody686_418 : StackLang.HolProg 64 :=
.seq RemovedBody686_362 RemovedBody686_417

def RemovedBody686_419 : StackLang.HolProg 64 :=
.seq RemovedBody686_361 RemovedBody686_418

def RemovedBody686_420 : StackLang.HolProg 64 :=
.seq RemovedBody686_360 RemovedBody686_419

def RemovedBody686_421 : StackLang.HolProg 64 :=
.seq RemovedBody686_359 RemovedBody686_420

def RemovedBody686_422 : StackLang.HolProg 64 :=
.seq RemovedBody686_358 RemovedBody686_421

def RemovedBody686_423 : StackLang.HolProg 64 :=
.seq RemovedBody686_357 RemovedBody686_422

def RemovedBody686_424 : StackLang.HolProg 64 :=
.seq RemovedBody686_356 RemovedBody686_423

def RemovedBody686_425 : StackLang.HolProg 64 :=
.seq RemovedBody686_355 RemovedBody686_424

def RemovedBody686_426 : StackLang.HolProg 64 :=
.seq RemovedBody686_354 RemovedBody686_425

def RemovedBody686_427 : StackLang.HolProg 64 :=
.seq RemovedBody686_353 RemovedBody686_426

def RemovedBody686_428 : StackLang.HolProg 64 :=
.seq RemovedBody686_344 RemovedBody686_427

def RemovedBody686_429 : StackLang.HolProg 64 :=
.seq RemovedBody686_343 RemovedBody686_428

def RemovedBody686_430 : StackLang.HolProg 64 :=
.seq RemovedBody686_342 RemovedBody686_429

def RemovedBody686_431 : StackLang.HolProg 64 :=
.seq RemovedBody686_341 RemovedBody686_430

def RemovedBody686_432 : StackLang.HolProg 64 :=
.seq RemovedBody686_332 RemovedBody686_431

def RemovedBody686_433 : StackLang.HolProg 64 :=
.seq RemovedBody686_331 RemovedBody686_432

def RemovedBody686_434 : StackLang.HolProg 64 :=
.seq RemovedBody686_330 RemovedBody686_433

def RemovedBody686_435 : StackLang.HolProg 64 :=
.seq RemovedBody686_329 RemovedBody686_434

def RemovedBody686_436 : StackLang.HolProg 64 :=
.seq RemovedBody686_328 RemovedBody686_435

def RemovedBody686_437 : StackLang.HolProg 64 :=
.seq RemovedBody686_241 RemovedBody686_436

def RemovedBody686_438 : StackLang.HolProg 64 :=
.seq RemovedBody686_240 RemovedBody686_437

def RemovedBody686_439 : StackLang.HolProg 64 :=
.seq RemovedBody686_239 RemovedBody686_438

def RemovedBody686_440 : StackLang.HolProg 64 :=
.seq RemovedBody686_126 RemovedBody686_439

def RemovedBody686_441 : StackLang.HolProg 64 :=
.seq RemovedBody686_103 RemovedBody686_440

def RemovedBody686_442 : StackLang.HolProg 64 :=
.seq RemovedBody686_102 RemovedBody686_441

def RemovedBody686_443 : StackLang.HolProg 64 :=
.seq RemovedBody686_101 RemovedBody686_442

def RemovedBody686_444 : StackLang.HolProg 64 :=
.seq RemovedBody686_100 RemovedBody686_443

def RemovedBody686_445 : StackLang.HolProg 64 :=
.seq RemovedBody686_99 RemovedBody686_444

def RemovedBody686_446 : StackLang.HolProg 64 :=
.seq RemovedBody686_98 RemovedBody686_445

def RemovedBody686_447 : StackLang.HolProg 64 :=
.seq RemovedBody686_97 RemovedBody686_446

def RemovedBody686_448 : StackLang.HolProg 64 :=
.seq RemovedBody686_96 RemovedBody686_447

def RemovedBody686_449 : StackLang.HolProg 64 :=
.seq RemovedBody686_95 RemovedBody686_448

def RemovedBody686_450 : StackLang.HolProg 64 :=
.seq RemovedBody686_94 RemovedBody686_449

def RemovedBody686_451 : StackLang.HolProg 64 :=
.seq RemovedBody686_93 RemovedBody686_450

def RemovedBody686_452 : StackLang.HolProg 64 :=
.seq RemovedBody686_92 RemovedBody686_451

def RemovedBody686_453 : StackLang.HolProg 64 :=
.seq RemovedBody686_91 RemovedBody686_452

def RemovedBody686_454 : StackLang.HolProg 64 :=
.seq RemovedBody686_90 RemovedBody686_453

def RemovedBody686_455 : StackLang.HolProg 64 :=
.seq RemovedBody686_89 RemovedBody686_454

def RemovedBody686_456 : StackLang.HolProg 64 :=
.seq RemovedBody686_88 RemovedBody686_455

def RemovedBody686_457 : StackLang.HolProg 64 :=
.seq RemovedBody686_87 RemovedBody686_456

def RemovedBody686_458 : StackLang.HolProg 64 :=
.seq RemovedBody686_86 RemovedBody686_457

def RemovedBody686_459 : StackLang.HolProg 64 :=
.seq RemovedBody686_85 RemovedBody686_458

def RemovedBody686_460 : StackLang.HolProg 64 :=
.seq RemovedBody686_84 RemovedBody686_459

def RemovedBody686_461 : StackLang.HolProg 64 :=
.seq RemovedBody686_83 RemovedBody686_460

def RemovedBody686_462 : StackLang.HolProg 64 :=
.seq RemovedBody686_82 RemovedBody686_461

def RemovedBody686_463 : StackLang.HolProg 64 :=
.seq RemovedBody686_81 RemovedBody686_462

def RemovedBody686_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody686_466 : StackLang.HolProg 64 :=
.seq RemovedBody686_464 RemovedBody686_465

def RemovedBody686_467 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody686_463 RemovedBody686_466

def RemovedBody686_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody686_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody686_471 : StackLang.HolProg 64 :=
.seq RemovedBody686_469 RemovedBody686_470

def RemovedBody686_472 : StackLang.HolProg 64 :=
.seq RemovedBody686_468 RemovedBody686_471

def RemovedBody686_473 : StackLang.HolProg 64 :=
.seq RemovedBody686_467 RemovedBody686_472

def RemovedBody686_474 : StackLang.HolProg 64 :=
.seq RemovedBody686_80 RemovedBody686_473

def RemovedBody686_475 : StackLang.HolProg 64 :=
.seq RemovedBody686_79 RemovedBody686_474

def RemovedBody686_476 : StackLang.HolProg 64 :=
.loop RemovedBody686_475

def RemovedBody686_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody686_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody686_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody686_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody686_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def RemovedBody686_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody686_483 : StackLang.HolProg 64 :=
.seq RemovedBody686_481 RemovedBody686_482

def RemovedBody686_484 : StackLang.HolProg 64 :=
.seq RemovedBody686_480 RemovedBody686_483

def RemovedBody686_485 : StackLang.HolProg 64 :=
.seq RemovedBody686_479 RemovedBody686_484

def RemovedBody686_486 : StackLang.HolProg 64 :=
.seq RemovedBody686_478 RemovedBody686_485

def RemovedBody686_487 : StackLang.HolProg 64 :=
.seq RemovedBody686_477 RemovedBody686_486

def RemovedBody686_488 : StackLang.HolProg 64 :=
.seq RemovedBody686_476 RemovedBody686_487

def RemovedBody686_489 : StackLang.HolProg 64 :=
.seq RemovedBody686_78 RemovedBody686_488

def RemovedBody686_490 : StackLang.HolProg 64 :=
.seq RemovedBody686_77 RemovedBody686_489

def RemovedBody686_491 : StackLang.HolProg 64 :=
.seq RemovedBody686_76 RemovedBody686_490

def RemovedBody686_492 : StackLang.HolProg 64 :=
.seq RemovedBody686_75 RemovedBody686_491

def RemovedBody686_493 : StackLang.HolProg 64 :=
.seq RemovedBody686_74 RemovedBody686_492

def RemovedBody686_494 : StackLang.HolProg 64 :=
.seq RemovedBody686_13 RemovedBody686_493

def RemovedBody686_495 : StackLang.HolProg 64 :=
.seq RemovedBody686_8 RemovedBody686_494

def RemovedBody686_496 : StackLang.HolProg 64 :=
.seq RemovedBody686_7 RemovedBody686_495

def RemovedBody686_497 : StackLang.HolProg 64 :=
.seq RemovedBody686_6 RemovedBody686_496

def Removed686 : Nat × StackLang.HolProg 64 := (686, RemovedBody686_497)
theorem Removed686_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc686 = Removed686 := by
  kernel_rfl
#print axioms Removed686_eq
end InitECandidate.Proofs.BackendStages
