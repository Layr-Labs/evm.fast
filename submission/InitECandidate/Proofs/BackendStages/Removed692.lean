import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc692
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody692_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody692_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody692_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody692_3 : StackLang.HolProg 64 :=
.seq RemovedBody692_1 RemovedBody692_2

def RemovedBody692_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody692_3 RemovedBody692_4

def RemovedBody692_6 : StackLang.HolProg 64 :=
.seq RemovedBody692_0 RemovedBody692_5

def RemovedBody692_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody692_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody692_9 : StackLang.HolProg 64 :=
.seq RemovedBody692_7 RemovedBody692_8

def RemovedBody692_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 12#64)

def RemovedBody692_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody692_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody692_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody692_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody692_16 : StackLang.HolProg 64 :=
.seq RemovedBody692_14 RemovedBody692_15

def RemovedBody692_17 : StackLang.HolProg 64 :=
.seq RemovedBody692_13 RemovedBody692_16

def RemovedBody692_18 : StackLang.HolProg 64 :=
.seq RemovedBody692_12 RemovedBody692_17

def RemovedBody692_19 : StackLang.HolProg 64 :=
.seq RemovedBody692_11 RemovedBody692_18

def RemovedBody692_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2969#64)

def RemovedBody692_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody692_23 : StackLang.HolProg 64 :=
.seq RemovedBody692_21 RemovedBody692_22

def RemovedBody692_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody692_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody692_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody692_27 : StackLang.HolProg 64 :=
.seq RemovedBody692_25 RemovedBody692_26

def RemovedBody692_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody692_27 RemovedBody692_28

def RemovedBody692_30 : StackLang.HolProg 64 :=
.seq RemovedBody692_24 RemovedBody692_29

def RemovedBody692_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody692_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody692_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 692 3

def RemovedBody692_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody692_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody692_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody692_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody692_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody692_40 : StackLang.HolProg 64 :=
.seq RemovedBody692_38 RemovedBody692_39

def RemovedBody692_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody692_42 : StackLang.HolProg 64 :=
.seq RemovedBody692_40 RemovedBody692_41

def RemovedBody692_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody692_44 : StackLang.HolProg 64 :=
.seq RemovedBody692_42 RemovedBody692_43

def RemovedBody692_45 : StackLang.HolProg 64 :=
.seq RemovedBody692_37 RemovedBody692_44

def RemovedBody692_46 : StackLang.HolProg 64 :=
.seq RemovedBody692_36 RemovedBody692_45

def RemovedBody692_47 : StackLang.HolProg 64 :=
.seq RemovedBody692_35 RemovedBody692_46

def RemovedBody692_48 : StackLang.HolProg 64 :=
.seq RemovedBody692_34 RemovedBody692_47

def RemovedBody692_49 : StackLang.HolProg 64 :=
.seq RemovedBody692_33 RemovedBody692_48

def RemovedBody692_50 : StackLang.HolProg 64 :=
.seq RemovedBody692_32 RemovedBody692_49

def RemovedBody692_51 : StackLang.HolProg 64 :=
.seq RemovedBody692_31 RemovedBody692_50

def RemovedBody692_52 : StackLang.HolProg 64 :=
.seq RemovedBody692_30 RemovedBody692_51

def RemovedBody692_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody692_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody692_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody692_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody692_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody692_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_63 : StackLang.HolProg 64 :=
.seq RemovedBody692_61 RemovedBody692_62

def RemovedBody692_64 : StackLang.HolProg 64 :=
.seq RemovedBody692_60 RemovedBody692_63

def RemovedBody692_65 : StackLang.HolProg 64 :=
.seq RemovedBody692_59 RemovedBody692_64

def RemovedBody692_66 : StackLang.HolProg 64 :=
.seq RemovedBody692_58 RemovedBody692_65

def RemovedBody692_67 : StackLang.HolProg 64 :=
.seq RemovedBody692_57 RemovedBody692_66

def RemovedBody692_68 : StackLang.HolProg 64 :=
.seq RemovedBody692_56 RemovedBody692_67

def RemovedBody692_69 : StackLang.HolProg 64 :=
.seq RemovedBody692_55 RemovedBody692_68

def RemovedBody692_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody692_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody692_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_74 : StackLang.HolProg 64 :=
.seq RemovedBody692_72 RemovedBody692_73

def RemovedBody692_75 : StackLang.HolProg 64 :=
.seq RemovedBody692_71 RemovedBody692_74

def RemovedBody692_76 : StackLang.HolProg 64 :=
.seq RemovedBody692_70 RemovedBody692_75

def RemovedBody692_77 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody692_78 : StackLang.HolProg 64 :=
.seq RemovedBody692_76 RemovedBody692_77

def RemovedBody692_79 : StackLang.HolProg 64 :=
.call (some (RemovedBody692_69, 0, 692, 2)) (Sum.inl 679) (some (RemovedBody692_78, 692, 3))

def RemovedBody692_80 : StackLang.HolProg 64 :=
.seq RemovedBody692_54 RemovedBody692_79

def RemovedBody692_81 : StackLang.HolProg 64 :=
.seq RemovedBody692_53 RemovedBody692_80

def RemovedBody692_82 : StackLang.HolProg 64 :=
.seq RemovedBody692_52 RemovedBody692_81

def RemovedBody692_83 : StackLang.HolProg 64 :=
.seq RemovedBody692_23 RemovedBody692_82

def RemovedBody692_84 : StackLang.HolProg 64 :=
.seq RemovedBody692_20 RemovedBody692_83

def RemovedBody692_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody692_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody692_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody692_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody692_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody692_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody692_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody692_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody692_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody692_102 : StackLang.HolProg 64 :=
.seq RemovedBody692_100 RemovedBody692_101

def RemovedBody692_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody692_105 : StackLang.HolProg 64 :=
.seq RemovedBody692_103 RemovedBody692_104

def RemovedBody692_106 : StackLang.HolProg 64 :=
.seq RemovedBody692_102 RemovedBody692_105

def RemovedBody692_107 : StackLang.HolProg 64 :=
.seq RemovedBody692_99 RemovedBody692_106

def RemovedBody692_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2970#64)

def RemovedBody692_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody692_111 : StackLang.HolProg 64 :=
.seq RemovedBody692_109 RemovedBody692_110

def RemovedBody692_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody692_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody692_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody692_115 : StackLang.HolProg 64 :=
.seq RemovedBody692_113 RemovedBody692_114

def RemovedBody692_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody692_115 RemovedBody692_116

def RemovedBody692_118 : StackLang.HolProg 64 :=
.seq RemovedBody692_112 RemovedBody692_117

def RemovedBody692_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody692_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody692_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 692 5

def RemovedBody692_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody692_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody692_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody692_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody692_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody692_128 : StackLang.HolProg 64 :=
.seq RemovedBody692_126 RemovedBody692_127

def RemovedBody692_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody692_130 : StackLang.HolProg 64 :=
.seq RemovedBody692_128 RemovedBody692_129

def RemovedBody692_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody692_132 : StackLang.HolProg 64 :=
.seq RemovedBody692_130 RemovedBody692_131

def RemovedBody692_133 : StackLang.HolProg 64 :=
.seq RemovedBody692_125 RemovedBody692_132

def RemovedBody692_134 : StackLang.HolProg 64 :=
.seq RemovedBody692_124 RemovedBody692_133

def RemovedBody692_135 : StackLang.HolProg 64 :=
.seq RemovedBody692_123 RemovedBody692_134

def RemovedBody692_136 : StackLang.HolProg 64 :=
.seq RemovedBody692_122 RemovedBody692_135

def RemovedBody692_137 : StackLang.HolProg 64 :=
.seq RemovedBody692_121 RemovedBody692_136

def RemovedBody692_138 : StackLang.HolProg 64 :=
.seq RemovedBody692_120 RemovedBody692_137

def RemovedBody692_139 : StackLang.HolProg 64 :=
.seq RemovedBody692_119 RemovedBody692_138

def RemovedBody692_140 : StackLang.HolProg 64 :=
.seq RemovedBody692_118 RemovedBody692_139

def RemovedBody692_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody692_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody692_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody692_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody692_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody692_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody692_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody692_152 : StackLang.HolProg 64 :=
.seq RemovedBody692_150 RemovedBody692_151

def RemovedBody692_153 : StackLang.HolProg 64 :=
.seq RemovedBody692_149 RemovedBody692_152

def RemovedBody692_154 : StackLang.HolProg 64 :=
.seq RemovedBody692_148 RemovedBody692_153

def RemovedBody692_155 : StackLang.HolProg 64 :=
.seq RemovedBody692_147 RemovedBody692_154

def RemovedBody692_156 : StackLang.HolProg 64 :=
.seq RemovedBody692_146 RemovedBody692_155

def RemovedBody692_157 : StackLang.HolProg 64 :=
.seq RemovedBody692_145 RemovedBody692_156

def RemovedBody692_158 : StackLang.HolProg 64 :=
.seq RemovedBody692_144 RemovedBody692_157

def RemovedBody692_159 : StackLang.HolProg 64 :=
.seq RemovedBody692_143 RemovedBody692_158

def RemovedBody692_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody692_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody692_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody692_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody692_165 : StackLang.HolProg 64 :=
.seq RemovedBody692_163 RemovedBody692_164

def RemovedBody692_166 : StackLang.HolProg 64 :=
.seq RemovedBody692_162 RemovedBody692_165

def RemovedBody692_167 : StackLang.HolProg 64 :=
.seq RemovedBody692_161 RemovedBody692_166

def RemovedBody692_168 : StackLang.HolProg 64 :=
.seq RemovedBody692_160 RemovedBody692_167

def RemovedBody692_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody692_170 : StackLang.HolProg 64 :=
.seq RemovedBody692_168 RemovedBody692_169

def RemovedBody692_171 : StackLang.HolProg 64 :=
.call (some (RemovedBody692_159, 0, 692, 4)) (Sum.inl 669) (some (RemovedBody692_170, 692, 5))

def RemovedBody692_172 : StackLang.HolProg 64 :=
.seq RemovedBody692_142 RemovedBody692_171

def RemovedBody692_173 : StackLang.HolProg 64 :=
.seq RemovedBody692_141 RemovedBody692_172

def RemovedBody692_174 : StackLang.HolProg 64 :=
.seq RemovedBody692_140 RemovedBody692_173

def RemovedBody692_175 : StackLang.HolProg 64 :=
.seq RemovedBody692_111 RemovedBody692_174

def RemovedBody692_176 : StackLang.HolProg 64 :=
.seq RemovedBody692_108 RemovedBody692_175

def RemovedBody692_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_179 : StackLang.HolProg 64 :=
.seq RemovedBody692_177 RemovedBody692_178

def RemovedBody692_180 : StackLang.HolProg 64 :=
.seq RemovedBody692_176 RemovedBody692_179

def RemovedBody692_181 : StackLang.HolProg 64 :=
.seq RemovedBody692_107 RemovedBody692_180

def RemovedBody692_182 : StackLang.HolProg 64 :=
.seq RemovedBody692_98 RemovedBody692_181

def RemovedBody692_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody692_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody692_187 : StackLang.HolProg 64 :=
.seq RemovedBody692_185 RemovedBody692_186

def RemovedBody692_188 : StackLang.HolProg 64 :=
.seq RemovedBody692_184 RemovedBody692_187

def RemovedBody692_189 : StackLang.HolProg 64 :=
.seq RemovedBody692_183 RemovedBody692_188

def RemovedBody692_190 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody692_182 RemovedBody692_189

def RemovedBody692_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody692_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody692_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody692_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody692_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody692_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody692_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody692_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody692_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody692_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody692_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody692_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody692_211 : StackLang.HolProg 64 :=
.seq RemovedBody692_209 RemovedBody692_210

def RemovedBody692_212 : StackLang.HolProg 64 :=
.seq RemovedBody692_208 RemovedBody692_211

def RemovedBody692_213 : StackLang.HolProg 64 :=
.seq RemovedBody692_207 RemovedBody692_212

def RemovedBody692_214 : StackLang.HolProg 64 :=
.seq RemovedBody692_206 RemovedBody692_213

def RemovedBody692_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2971#64)

def RemovedBody692_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody692_218 : StackLang.HolProg 64 :=
.seq RemovedBody692_216 RemovedBody692_217

def RemovedBody692_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody692_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody692_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody692_222 : StackLang.HolProg 64 :=
.seq RemovedBody692_220 RemovedBody692_221

def RemovedBody692_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_224 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody692_222 RemovedBody692_223

def RemovedBody692_225 : StackLang.HolProg 64 :=
.seq RemovedBody692_219 RemovedBody692_224

def RemovedBody692_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody692_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody692_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 692 7

def RemovedBody692_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody692_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody692_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody692_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody692_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody692_235 : StackLang.HolProg 64 :=
.seq RemovedBody692_233 RemovedBody692_234

def RemovedBody692_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody692_237 : StackLang.HolProg 64 :=
.seq RemovedBody692_235 RemovedBody692_236

def RemovedBody692_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody692_239 : StackLang.HolProg 64 :=
.seq RemovedBody692_237 RemovedBody692_238

def RemovedBody692_240 : StackLang.HolProg 64 :=
.seq RemovedBody692_232 RemovedBody692_239

def RemovedBody692_241 : StackLang.HolProg 64 :=
.seq RemovedBody692_231 RemovedBody692_240

def RemovedBody692_242 : StackLang.HolProg 64 :=
.seq RemovedBody692_230 RemovedBody692_241

def RemovedBody692_243 : StackLang.HolProg 64 :=
.seq RemovedBody692_229 RemovedBody692_242

def RemovedBody692_244 : StackLang.HolProg 64 :=
.seq RemovedBody692_228 RemovedBody692_243

def RemovedBody692_245 : StackLang.HolProg 64 :=
.seq RemovedBody692_227 RemovedBody692_244

def RemovedBody692_246 : StackLang.HolProg 64 :=
.seq RemovedBody692_226 RemovedBody692_245

def RemovedBody692_247 : StackLang.HolProg 64 :=
.seq RemovedBody692_225 RemovedBody692_246

def RemovedBody692_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody692_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody692_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody692_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody692_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody692_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody692_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody692_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody692_260 : StackLang.HolProg 64 :=
.seq RemovedBody692_258 RemovedBody692_259

def RemovedBody692_261 : StackLang.HolProg 64 :=
.seq RemovedBody692_257 RemovedBody692_260

def RemovedBody692_262 : StackLang.HolProg 64 :=
.seq RemovedBody692_256 RemovedBody692_261

def RemovedBody692_263 : StackLang.HolProg 64 :=
.seq RemovedBody692_255 RemovedBody692_262

def RemovedBody692_264 : StackLang.HolProg 64 :=
.seq RemovedBody692_254 RemovedBody692_263

def RemovedBody692_265 : StackLang.HolProg 64 :=
.seq RemovedBody692_253 RemovedBody692_264

def RemovedBody692_266 : StackLang.HolProg 64 :=
.seq RemovedBody692_252 RemovedBody692_265

def RemovedBody692_267 : StackLang.HolProg 64 :=
.seq RemovedBody692_251 RemovedBody692_266

def RemovedBody692_268 : StackLang.HolProg 64 :=
.seq RemovedBody692_250 RemovedBody692_267

def RemovedBody692_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody692_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody692_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody692_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody692_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody692_275 : StackLang.HolProg 64 :=
.seq RemovedBody692_273 RemovedBody692_274

def RemovedBody692_276 : StackLang.HolProg 64 :=
.seq RemovedBody692_272 RemovedBody692_275

def RemovedBody692_277 : StackLang.HolProg 64 :=
.seq RemovedBody692_271 RemovedBody692_276

def RemovedBody692_278 : StackLang.HolProg 64 :=
.seq RemovedBody692_270 RemovedBody692_277

def RemovedBody692_279 : StackLang.HolProg 64 :=
.seq RemovedBody692_269 RemovedBody692_278

def RemovedBody692_280 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody692_281 : StackLang.HolProg 64 :=
.seq RemovedBody692_279 RemovedBody692_280

def RemovedBody692_282 : StackLang.HolProg 64 :=
.call (some (RemovedBody692_268, 0, 692, 6)) (Sum.inl 668) (some (RemovedBody692_281, 692, 7))

def RemovedBody692_283 : StackLang.HolProg 64 :=
.seq RemovedBody692_249 RemovedBody692_282

def RemovedBody692_284 : StackLang.HolProg 64 :=
.seq RemovedBody692_248 RemovedBody692_283

def RemovedBody692_285 : StackLang.HolProg 64 :=
.seq RemovedBody692_247 RemovedBody692_284

def RemovedBody692_286 : StackLang.HolProg 64 :=
.seq RemovedBody692_218 RemovedBody692_285

def RemovedBody692_287 : StackLang.HolProg 64 :=
.seq RemovedBody692_215 RemovedBody692_286

def RemovedBody692_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def RemovedBody692_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_291 : StackLang.HolProg 64 :=
.seq RemovedBody692_289 RemovedBody692_290

def RemovedBody692_292 : StackLang.HolProg 64 :=
.seq RemovedBody692_288 RemovedBody692_291

def RemovedBody692_293 : StackLang.HolProg 64 :=
.seq RemovedBody692_287 RemovedBody692_292

def RemovedBody692_294 : StackLang.HolProg 64 :=
.seq RemovedBody692_214 RemovedBody692_293

def RemovedBody692_295 : StackLang.HolProg 64 :=
.seq RemovedBody692_205 RemovedBody692_294

def RemovedBody692_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody692_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody692_299 : StackLang.HolProg 64 :=
.seq RemovedBody692_297 RemovedBody692_298

def RemovedBody692_300 : StackLang.HolProg 64 :=
.seq RemovedBody692_296 RemovedBody692_299

def RemovedBody692_301 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody692_295 RemovedBody692_300

def RemovedBody692_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody692_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody692_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody692_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_307 : StackLang.HolProg 64 :=
.seq RemovedBody692_305 RemovedBody692_306

def RemovedBody692_308 : StackLang.HolProg 64 :=
.seq RemovedBody692_304 RemovedBody692_307

def RemovedBody692_309 : StackLang.HolProg 64 :=
.seq RemovedBody692_303 RemovedBody692_308

def RemovedBody692_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody692_311 : StackLang.HolProg 64 :=
.seq RemovedBody692_309 RemovedBody692_310

def RemovedBody692_312 : StackLang.HolProg 64 :=
.seq RemovedBody692_302 RemovedBody692_311

def RemovedBody692_313 : StackLang.HolProg 64 :=
.seq RemovedBody692_301 RemovedBody692_312

def RemovedBody692_314 : StackLang.HolProg 64 :=
.seq RemovedBody692_204 RemovedBody692_313

def RemovedBody692_315 : StackLang.HolProg 64 :=
.seq RemovedBody692_203 RemovedBody692_314

def RemovedBody692_316 : StackLang.HolProg 64 :=
.seq RemovedBody692_202 RemovedBody692_315

def RemovedBody692_317 : StackLang.HolProg 64 :=
.seq RemovedBody692_201 RemovedBody692_316

def RemovedBody692_318 : StackLang.HolProg 64 :=
.seq RemovedBody692_200 RemovedBody692_317

def RemovedBody692_319 : StackLang.HolProg 64 :=
.seq RemovedBody692_199 RemovedBody692_318

def RemovedBody692_320 : StackLang.HolProg 64 :=
.seq RemovedBody692_198 RemovedBody692_319

def RemovedBody692_321 : StackLang.HolProg 64 :=
.seq RemovedBody692_197 RemovedBody692_320

def RemovedBody692_322 : StackLang.HolProg 64 :=
.seq RemovedBody692_196 RemovedBody692_321

def RemovedBody692_323 : StackLang.HolProg 64 :=
.seq RemovedBody692_195 RemovedBody692_322

def RemovedBody692_324 : StackLang.HolProg 64 :=
.seq RemovedBody692_194 RemovedBody692_323

def RemovedBody692_325 : StackLang.HolProg 64 :=
.seq RemovedBody692_193 RemovedBody692_324

def RemovedBody692_326 : StackLang.HolProg 64 :=
.seq RemovedBody692_192 RemovedBody692_325

def RemovedBody692_327 : StackLang.HolProg 64 :=
.seq RemovedBody692_191 RemovedBody692_326

def RemovedBody692_328 : StackLang.HolProg 64 :=
.seq RemovedBody692_190 RemovedBody692_327

def RemovedBody692_329 : StackLang.HolProg 64 :=
.seq RemovedBody692_97 RemovedBody692_328

def RemovedBody692_330 : StackLang.HolProg 64 :=
.seq RemovedBody692_96 RemovedBody692_329

def RemovedBody692_331 : StackLang.HolProg 64 :=
.seq RemovedBody692_95 RemovedBody692_330

def RemovedBody692_332 : StackLang.HolProg 64 :=
.seq RemovedBody692_94 RemovedBody692_331

def RemovedBody692_333 : StackLang.HolProg 64 :=
.seq RemovedBody692_93 RemovedBody692_332

def RemovedBody692_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody692_336 : StackLang.HolProg 64 :=
.seq RemovedBody692_334 RemovedBody692_335

def RemovedBody692_337 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody692_333 RemovedBody692_336

def RemovedBody692_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody692_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody692_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody692_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody692_343 : StackLang.HolProg 64 :=
.seq RemovedBody692_341 RemovedBody692_342

def RemovedBody692_344 : StackLang.HolProg 64 :=
.seq RemovedBody692_340 RemovedBody692_343

def RemovedBody692_345 : StackLang.HolProg 64 :=
.seq RemovedBody692_339 RemovedBody692_344

def RemovedBody692_346 : StackLang.HolProg 64 :=
.seq RemovedBody692_338 RemovedBody692_345

def RemovedBody692_347 : StackLang.HolProg 64 :=
.seq RemovedBody692_337 RemovedBody692_346

def RemovedBody692_348 : StackLang.HolProg 64 :=
.seq RemovedBody692_92 RemovedBody692_347

def RemovedBody692_349 : StackLang.HolProg 64 :=
.seq RemovedBody692_91 RemovedBody692_348

def RemovedBody692_350 : StackLang.HolProg 64 :=
.loop RemovedBody692_349

def RemovedBody692_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody692_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody692_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody692_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody692_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody692_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody692_357 : StackLang.HolProg 64 :=
.seq RemovedBody692_355 RemovedBody692_356

def RemovedBody692_358 : StackLang.HolProg 64 :=
.seq RemovedBody692_354 RemovedBody692_357

def RemovedBody692_359 : StackLang.HolProg 64 :=
.seq RemovedBody692_353 RemovedBody692_358

def RemovedBody692_360 : StackLang.HolProg 64 :=
.seq RemovedBody692_352 RemovedBody692_359

def RemovedBody692_361 : StackLang.HolProg 64 :=
.seq RemovedBody692_351 RemovedBody692_360

def RemovedBody692_362 : StackLang.HolProg 64 :=
.seq RemovedBody692_350 RemovedBody692_361

def RemovedBody692_363 : StackLang.HolProg 64 :=
.seq RemovedBody692_90 RemovedBody692_362

def RemovedBody692_364 : StackLang.HolProg 64 :=
.seq RemovedBody692_89 RemovedBody692_363

def RemovedBody692_365 : StackLang.HolProg 64 :=
.seq RemovedBody692_88 RemovedBody692_364

def RemovedBody692_366 : StackLang.HolProg 64 :=
.seq RemovedBody692_87 RemovedBody692_365

def RemovedBody692_367 : StackLang.HolProg 64 :=
.seq RemovedBody692_86 RemovedBody692_366

def RemovedBody692_368 : StackLang.HolProg 64 :=
.seq RemovedBody692_85 RemovedBody692_367

def RemovedBody692_369 : StackLang.HolProg 64 :=
.seq RemovedBody692_84 RemovedBody692_368

def RemovedBody692_370 : StackLang.HolProg 64 :=
.seq RemovedBody692_19 RemovedBody692_369

def RemovedBody692_371 : StackLang.HolProg 64 :=
.seq RemovedBody692_10 RemovedBody692_370

def RemovedBody692_372 : StackLang.HolProg 64 :=
.seq RemovedBody692_9 RemovedBody692_371

def RemovedBody692_373 : StackLang.HolProg 64 :=
.seq RemovedBody692_6 RemovedBody692_372

def Removed692 : Nat × StackLang.HolProg 64 := (692, RemovedBody692_373)
theorem Removed692_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc692 = Removed692 := by
  kernel_rfl
#print axioms Removed692_eq
end InitECandidate.Proofs.BackendStages
